(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1756224517)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp160578 (list)) (__tmp160577 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp160578
         '(type classes ssxi methods)
         __tmp160577
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args160549%_
        (apply make-instance gxc#optimizer-info::t _%$args160549%_)))
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
      (lambda (_%self160536%_)
        (let ((_%self160539%_ _%self160536%_))
          (if (let ((__tmp160579
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self160539%_))))
                (declare (not safe))
                (##fx< '4 __tmp160579))
              (begin
                (let ((__tmp160580
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self160539%_
                   __tmp160580
                   '1
                   '#f
                   '#f))
                (let ((__tmp160581
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self160539%_
                   __tmp160581
                   '2
                   '#f
                   '#f))
                (let ((__tmp160582
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self160539%_
                   __tmp160582
                   '3
                   '#f
                   '#f))
                (let ((__tmp160583
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self160539%_
                   __tmp160583
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp160584
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self160539%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self160539%_
                       '4
                       __tmp160584))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp160586 (list))
            (__tmp160585
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp160586
         '(id)
         __tmp160585
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args160411%_
        (apply make-instance gxc#!type::t _%$args160411%_)))
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
      (let ((__tmp160588 (list gxc#!type::t))
            (__tmp160587 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp160588
         '()
         __tmp160587
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args160408%_
        (apply make-instance gxc#!abort::t _%$args160408%_)))
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
      (let ((__tmp160590 (list gxc#!type::t))
            (__tmp160589 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp160590
         '()
         __tmp160589
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args160405%_
        (apply make-instance gxc#!alias::t _%$args160405%_)))
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
      (let ((__tmp160592 (list))
            (__tmp160591
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp160592
         '(return effect arguments unchecked origin)
         __tmp160591
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args160402%_
        (apply make-instance gxc#!signature::t _%$args160402%_)))
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
      (let ((__tmp160594 (list gxc#!type::t))
            (__tmp160593
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp160594
         '(signature)
         __tmp160593
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
      (lambda (_%id160381%_ _%signature160382%_)
        (if ((lambda (_%$obj160385%_)
               (or (not _%$obj160385%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj160385%_
                      'gxc#!signature::t))))
             _%signature160382%_)
            (let ((_%signature160392%_ _%signature160382%_))
              (gxc#__make-!procedure _%id160381%_ _%signature160392%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature160382%_)
              '#!void))))
    (define gxc#__make-!procedure
      (lambda (_%id160367%_ _%signature160369%_)
        (let ((_%signature160372%_ _%signature160369%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id160367%_ _%signature160372%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj160336%_ _%signature160337%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj160336%_ 'gxc#!procedure::t))
            (let ((_%$obj160341%_ _%$obj160336%_))
              (if ((lambda (_%$obj160350%_)
                     (or (not _%$obj160350%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj160350%_
                            'gxc#!signature::t))))
                   _%signature160337%_)
                  (let ((_%signature160357%_ _%signature160337%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj160341%_
                     _%signature160357%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature160337%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj160336%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj160313%_ _%signature160315%_)
        (let* ((_%$obj160319%_ _%$obj160313%_)
               (_%signature160327%_ _%signature160315%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj160319%_
           _%signature160327%_
           '2
           '#f
           '#f))))
    (define gxc#!class-meta::t
      (let ((__tmp160596 (list gxc#!type::t))
            (__tmp160595 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp160596
         '(class)
         __tmp160595
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args160310%_
        (apply make-instance gxc#!class-meta::t _%$args160310%_)))
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
      (let ((__tmp160598 (list gxc#!type::t))
            (__tmp160597
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
         __tmp160598
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp160597
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args160307%_
        (apply make-instance gxc#!class::t _%$args160307%_)))
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
      (let ((__tmp160600 (list gxc#!procedure::t))
            (__tmp160599 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp160600
         '()
         __tmp160599
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args160304%_
        (apply make-instance gxc#!predicate::t _%$args160304%_)))
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
      (let ((__tmp160602 (list gxc#!procedure::t))
            (__tmp160601 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp160602
         '()
         __tmp160601
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args160301%_
        (apply make-instance gxc#!constructor::t _%$args160301%_)))
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
      (let ((__tmp160604 (list gxc#!procedure::t))
            (__tmp160603 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp160604
         '(slot checked?)
         __tmp160603
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args160298%_
        (apply make-instance gxc#!accessor::t _%$args160298%_)))
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
      (let ((__tmp160606 (list gxc#!procedure::t))
            (__tmp160605 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp160606
         '(slot checked?)
         __tmp160605
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args160295%_
        (apply make-instance gxc#!mutator::t _%$args160295%_)))
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
      (let ((__tmp160608 (list gxc#!type::t))
            (__tmp160607 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp160608
         '(methods)
         __tmp160607
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args160292%_
        (apply make-instance gxc#!interface::t _%$args160292%_)))
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
      (let ((__tmp160610 (list gxc#!procedure::t))
            (__tmp160609
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp160610
         '(arity dispatch inline inline-typedecl)
         __tmp160609
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args160289%_
        (apply make-instance gxc#!lambda::t _%$args160289%_)))
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
      (let ((__tmp160612 (list gxc#!procedure::t))
            (__tmp160611 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp160612
         '(clauses)
         __tmp160611
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args160286%_
        (apply make-instance gxc#!case-lambda::t _%$args160286%_)))
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
      (let ((__tmp160614 (list gxc#!procedure::t))
            (__tmp160613
             (cons (cons 'struct: '#t) '((equal: table dispatch)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp160614
         '(table dispatch)
         __tmp160613
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args160283%_
        (apply make-instance gxc#!kw-lambda::t _%$args160283%_)))
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
      (let ((__tmp160616 (list gxc#!procedure::t))
            (__tmp160615 (cons (cons 'struct: '#t) '((equal: keys main)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp160616
         '(keys main)
         __tmp160615
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args160280%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args160280%_)))
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
      (let ((__tmp160617 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp160617
         '()
         '((equal:))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args160277%_
        (apply make-instance gxc#!primitive::t _%$args160277%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp160619 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp160618 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp160619
         '()
         __tmp160618
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args160274%_
        (apply make-instance gxc#!primitive-predicate::t _%$args160274%_)))
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
      (let ((__tmp160621 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp160620 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp160621
         '()
         __tmp160620
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args160271%_
        (apply make-instance gxc#!primitive-lambda::t _%$args160271%_)))
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
      (let ((__tmp160623 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp160622 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp160623
         '()
         __tmp160622
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args160268%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args160268%_)))
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
      (lambda (_%self160255%_)
        (let ((_%self160258%_ _%self160255%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self160258%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self160118%_ _%klass160119%_)
        (let ((_%self160122%_ _%self160118%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self160122%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self160122%_
             _%klass160119%_
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
      (lambda (_%self159808%_
               _%id159809%_
               _%super159810%_
               _%slots159811%_
               _%ctor-method159812%_
               _%struct?159813%_
               _%final?159814%_
               _%system?159815%_
               _%metaclass159816%_)
        (let ((_%self159819%_ _%self159808%_))
          (let _%lp159830%_ ((_%rest159832%_ _%super159810%_))
            (let* ((_%rest159833159841%_ _%rest159832%_)
                   (_%else159835159849%_ (lambda () '#!void))
                   (_%K159837159855%_
                    (lambda (_%rest159852%_ _%super-id159853%_)
                      (if (let ((__tmp160624
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id159809%_ '()))
                                  _%super-id159853%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp160624 '8 '#f '#f))
                          (let ((__tmp160625
                                 (cons '!class (cons _%id159809%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp160625
                             _%super-id159853%_))
                          '#!void)
                      (_%lp159830%_ _%rest159852%_))))
              (if (pair? _%rest159833159841%_)
                  (let ((_%hd159838159858%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest159833159841%_)))
                        (_%tl159839159860%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest159833159841%_))))
                    (let* ((_%super-id159863%_ _%hd159838159858%_)
                           (_%rest159865%_ _%tl159839159860%_))
                      (_%K159837159855%_ _%rest159865%_ _%super-id159863%_)))
                  '#!void)))
          (let* ((_%ctor-method159916%_
                  (let ((_%$e159867%_ _%ctor-method159812%_))
                    (if _%$e159867%_
                        _%$e159867%_
                        (let _%lp159870%_ ((_%rest159872%_ _%super159810%_)
                                           (_%method159873%_ '#f))
                          (let* ((_%rest159874159882%_ _%rest159872%_)
                                 (_%else159876159890%_
                                  (lambda () _%method159873%_))
                                 (_%K159878159904%_
                                  (lambda (_%rest159893%_ _%super-id159894%_)
                                    (let* ((_%klass159896%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id159809%_ '()))
                                             _%super-id159894%_))
                                           (_%$e159898%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass159896%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e159898%_
                                          ((lambda (_%ctor-method159901%_)
                                             (if _%method159873%_
                                                 (if (eq? _%ctor-method159901%_
                                                          _%method159873%_)
                                                     (_%lp159870%_
                                                      _%rest159893%_
                                                      _%ctor-method159901%_)
                                                     (let ((__tmp160626
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id159809%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp160626
                _%method159873%_
                _%ctor-method159901%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp159870%_
                                                  _%rest159893%_
                                                  _%ctor-method159901%_)))
                                           _%$e159898%_)
                                          (_%lp159870%_
                                           _%rest159893%_
                                           _%method159873%_))))))
                            (if (pair? _%rest159874159882%_)
                                (let ((_%hd159879159907%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest159874159882%_)))
                                      (_%tl159880159909%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest159874159882%_))))
                                  (let* ((_%super-id159912%_
                                          _%hd159879159907%_)
                                         (_%rest159914%_ _%tl159880159909%_))
                                    (_%K159878159904%_
                                     _%rest159914%_
                                     _%super-id159912%_)))
                                (_%else159876159890%_)))))))
                 (_g160627_
                  (let ((__tmp160631
                         (lambda (_%klass-id159918%_)
                           (cons _%klass-id159918%_
                                 (let ((__tmp160632
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id159809%_ '()))
                                         _%klass-id159918%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp160632
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp160629
                         (lambda (_%klass-id159920%_)
                           (let ((__tmp160630
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id159809%_ '()))
                                   _%klass-id159920%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp160630
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp160631
                     __tmp160629
                     eq?
                     identity
                     '()
                     _%super159810%_))))
            (begin
              (let ((_g160628_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g160627_)
                           (##values-length _g160627_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g160628_ 2)))
                    (error "Context expects 2 values" _g160628_)))
              (let ((_%precedence-list159922%_
                     (let () (declare (not safe)) (##values-ref _g160627_ 0)))
                    (_%base-struct159923%_
                     (let () (declare (not safe)) (##values-ref _g160627_ 1))))
                (let* ((_%precedence-list159967%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id159809%_ '(t object class)))
                            _%precedence-list159922%_
                            (if (memq 'object::t _%precedence-list159922%_)
                                _%precedence-list159922%_
                                (if _%system?159815%_
                                    (if (memq 't::t _%precedence-list159922%_)
                                        _%precedence-list159922%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list159922%_
                                           '(t::t))))
                                    (let _%loop159929%_ ((_%tail159931%_
                                                          _%precedence-list159922%_)
                                                         (_%head159932%_ '()))
                                      (let* ((_%tail159933159941%_
                                              _%tail159931%_)
                                             (_%else159935159949%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head159932%_))))
                                             (_%K159937159955%_
                                              (lambda (_%rest159952%_
                                                       _%hd159953%_)
                                                (if (eq? _%hd159953%_ 't::t)
                                                    (let ((__tmp160633
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail159931%_)))
              (declare (not safe))
              (__foldl1 cons __tmp160633 _%head159932%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop159929%_
                                                     _%rest159952%_
                                                     (cons _%hd159953%_
                                                           _%head159932%_))))))
                                        (if (pair? _%tail159933159941%_)
                                            (let ((_%hd159938159958%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail159933159941%_)))
                                                  (_%tl159939159960%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail159933159941%_))))
                                              (let* ((_%hd159963%_
                                                      _%hd159938159958%_)
                                                     (_%rest159965%_
                                                      _%tl159939159960%_))
                                                (_%K159937159955%_
                                                 _%rest159965%_
                                                 _%hd159963%_)))
                                            (_%else159935159949%_))))))))
                       (_%fields159969%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id159809%_ '()))
                         _%base-struct159923%_
                         _%precedence-list159967%_
                         _%slots159811%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self159819%_
                     _%id159809%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self159819%_
                     _%super159810%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self159819%_
                     _%precedence-list159967%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self159819%_
                     _%slots159811%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self159819%_
                     _%fields159969%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self159819%_
                     _%ctor-method159916%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self159819%_
                     _%struct?159813%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self159819%_
                     _%final?159814%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self159819%_
                     _%metaclass159816%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self159972%_
               _%id159973%_
               _%super159974%_
               _%precedence-list159975%_
               _%slots159976%_
               _%fields159977%_
               _%constructor159978%_
               _%struct?159979%_
               _%final?159980%_
               _%system?159981%_
               _%metaclass159982%_
               _%methods159983%_)
        (let ((_%self159986%_ _%self159972%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159986%_
             _%id159973%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159986%_
             _%super159974%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159986%_
             _%precedence-list159975%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159986%_
             _%slots159976%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159986%_
             _%fields159977%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159986%_
             _%constructor159978%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159986%_
             _%struct?159979%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159986%_
             _%final?159980%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159986%_
             _%metaclass159982%_
             '10
             '#f
             '#f))
          (if _%methods159983%_
              (let ((__tmp160634
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods159983%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self159986%_
                 __tmp160634
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g160635_
        (let ((_g160636_ (let () (declare (not safe)) (##length _g160635_))))
          (cond ((let () (declare (not safe)) (##fx= _g160636_ 9))
                 (apply gxc#!class:::init!__0 _g160635_))
                ((let () (declare (not safe)) (##fx= _g160636_ 12))
                 (apply gxc#!class:::init!__1 _g160635_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g160635_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where159660%_
               _%base-struct159661%_
               _%precedence-list159662%_
               _%direct-slots159663%_)
        (let* ((_%base-fields159665%_
                (if _%base-struct159661%_
                    (let ((__tmp160637
                           (gxc#optimizer-resolve-class
                            _%where159660%_
                            _%base-struct159661%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp160637 '5 '#f '#f))
                    '()))
               (_%r-fields159667%_ (reverse _%base-fields159665%_))
               (_%seen-slots159675%_
                (let ((_%tab159669%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g159670159672%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab159669%_ _%g159670159672%_ '#t)))
                   _%base-fields159665%_)
                  _%tab159669%_))
               (_%process-slot159679%_
                (lambda (_%slot159677%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots159675%_ _%slot159677%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots159675%_
                           _%slot159677%_
                           '#t))
                        (set! _%r-fields159667%_
                              (cons _%slot159677%_ _%r-fields159667%_)))))))
          (for-each
           (lambda (_%mixin159682%_)
             (let ((_%klass159684%_
                    (gxc#optimizer-resolve-class
                     _%where159660%_
                     _%mixin159682%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass159684%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot159679%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass159684%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list159662%_)
          (for-each _%process-slot159679%_ _%direct-slots159663%_)
          (let () (declare (not safe)) (##reverse _%r-fields159667%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass159619%_ _%slot159620%_)
        (let _%lp159622%_ ((_%rest159624%_
                            (##structure-ref
                             _%klass159619%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset159625%_ '1))
          (let* ((_%rest159626159634%_ _%rest159624%_)
                 (_%else159628159642%_
                  (lambda ()
                    (let ((__tmp160639
                           (##structure-ref
                            _%klass159619%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp160638
                           (##structure-ref
                            _%klass159619%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp160639
                       __tmp160638
                       _%slot159620%_))))
                 (_%K159630159648%_
                  (lambda (_%rest159645%_ _%s159646%_)
                    (if (eq? _%s159646%_ _%slot159620%_)
                        _%offset159625%_
                        (_%lp159622%_
                         _%rest159645%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset159625%_ '1)))))))
            (if (pair? _%rest159626159634%_)
                (let ((_%hd159631159651%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest159626159634%_)))
                      (_%tl159632159653%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest159626159634%_))))
                  (let* ((_%s159656%_ _%hd159631159651%_)
                         (_%rest159658%_ _%tl159632159653%_))
                    (_%K159630159648%_ _%rest159658%_ _%s159656%_)))
                (_%else159628159642%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass159577%_ _%slot159578%_)
        (if (gxc#!class-struct-slot? _%klass159577%_ _%slot159578%_)
            _%klass159577%_
            (let _%lp159580%_ ((_%rest159582%_
                                (##structure-ref
                                 _%klass159577%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest159583159591%_ _%rest159582%_)
                     (_%else159585159599%_ (lambda () '#f))
                     (_%K159587159607%_
                      (lambda (_%rest159602%_ _%super159603%_)
                        (let ((_%super-class159605%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass159577%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot159578%_ '())))
                                _%super159603%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class159605%_
                               _%slot159578%_)
                              _%super-class159605%_
                              (_%lp159580%_ _%rest159602%_))))))
                (if (pair? _%rest159583159591%_)
                    (let ((_%hd159588159610%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest159583159591%_)))
                          (_%tl159589159612%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest159583159591%_))))
                      (let* ((_%super159615%_ _%hd159588159610%_)
                             (_%rest159617%_ _%tl159589159612%_))
                        (_%K159587159607%_ _%rest159617%_ _%super159615%_)))
                    (_%else159585159599%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass159574%_ _%slot159575%_)
        (if (##structure-ref _%klass159574%_ '7 gxc#!class::t '#f)
            (memq _%slot159575%_
                  (##structure-ref _%klass159574%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self159559%_ _%id159560%_)
        (let ((_%self159563%_ _%self159559%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159563%_
             _%id159560%_
             '1
             '#f
             '#f))
          (let ((__tmp160640
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
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj160572
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj160572
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj160572)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159563%_
             __tmp160640
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self159422%_ _%id159423%_)
        (let ((_%self159426%_ _%self159422%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159426%_
             _%id159423%_
             '1
             '#f
             '#f))
          (let ((__tmp160641
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
                      _%id159423%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj160573
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj160573)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159426%_
             __tmp160641
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
      (lambda (_%self159283%_ _%id159284%_ _%slot159285%_ _%checked?159286%_)
        (let ((_%self159289%_ _%self159283%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159289%_
             _%id159284%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159289%_
             _%slot159285%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159289%_
             _%checked?159286%_
             '4
             '#f
             '#f))
          (let ((__tmp160642
                 (let ((__obj160574
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
                     (##unchecked-structure-set! __obj160574 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj160574
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp160643 (cons _%id159284%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj160574
                      __tmp160643
                      '3
                      '#f
                      '#f))
                   __obj160574)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159289%_
             __tmp160642
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self159144%_ _%id159145%_ _%slot159146%_ _%checked?159147%_)
        (let ((_%self159150%_ _%self159144%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159150%_
             _%id159145%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159150%_
             _%slot159146%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159150%_
             _%checked?159147%_
             '4
             '#f
             '#f))
          (let ((__tmp160644
                 (let ((__obj160575
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
                      __obj160575
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj160575
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp160645 (cons _%id159145%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj160575
                      __tmp160645
                      '3
                      '#f
                      '#f))
                   __obj160575)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159150%_
             __tmp160644
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords158987%_
               _%signature158984158988%_
               _%self158990%_
               _%arity158991%_
               _%dispatch158992%_)
        (let* ((_%signature158994%_
                (if (eq? _%signature158984158988%_ absent-value)
                    '#f
                    _%signature158984158988%_))
               (_%self158997%_ _%self158990%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self158997%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158997%_
             _%arity158991%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158997%_
             _%dispatch158992%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158997%_
             _%signature158994%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords159012%_ . _%args159013%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords159012%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords159012%_
                  'signature:
                  absent-value))
               _%args159013%_)))
    (define gxc#!lambda:::init!
      (lambda _%args158985159019%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args158985159019%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords158827%_
               _%signature158824158828%_
               _%self158830%_
               _%clauses158831%_)
        (let* ((_%signature158833%_
                (if (eq? _%signature158824158828%_ absent-value)
                    '#f
                    _%signature158824158828%_))
               (_%self158836%_ _%self158830%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self158836%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158836%_
             _%signature158833%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158836%_
             _%clauses158831%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords158851%_ . _%args158852%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords158851%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords158851%_
                  'signature:
                  absent-value))
               _%args158852%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args158825158858%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args158825158858%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self158685%_ _%tab158686%_ _%dispatch158687%_)
        (let ((_%self158690%_ _%self158685%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self158690%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158690%_
             _%tab158686%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158690%_
             _%dispatch158687%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self158547%_ _%keys158548%_ _%main158549%_)
        (let ((_%self158552%_ _%self158547%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self158552%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158552%_
             _%keys158548%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158552%_
             _%main158549%_
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
      (lambda (_%self158166%_ _%id158167%_)
        (let ((_%self158170%_ _%self158166%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158170%_
             _%id158167%_
             '1
             '#f
             '#f))
          (let ((__tmp160646
                 (let ((__obj160576
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
                      __obj160576
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj160576
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj160576
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj160576)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158170%_
             __tmp160646
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
      (lambda (_%klass158035%_)
        (let ((_%$e158037%_
               (##structure-ref _%klass158035%_ '11 gxc#!class::t '#f)))
          (if _%$e158037%_
              _%$e158037%_
              (let ((_%tab158041%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass158035%_
                 _%tab158041%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab158041%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass158026%_ _%method158027%_)
        (let ((_%tab158028158030%_
               (##structure-ref _%klass158026%_ '11 gxc#!class::t '#f)))
          (if _%tab158028158030%_
              (let ((_%tab158033%_ _%tab158028158030%_))
                (declare (not safe))
                (hash-get _%tab158033%_ _%method158027%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a158014%_ _%type-b158015%_)
        (if _%type-a158014%_
            (if _%type-b158015%_
                (let ((_%$e158017%_ (eq? _%type-a158014%_ _%type-b158015%_)))
                  (if _%$e158017%_
                      _%$e158017%_
                      (let ((_%$e158020%_
                             (eq? (##structure-ref
                                   _%type-b158015%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e158020%_
                            _%$e158020%_
                            (let ((_%$e158023%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a158014%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b158015%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e158023%_
                                  _%$e158023%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a158014%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b158015%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a158014%_
                                           _%type-b158015%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a157965%_ _%klass-b157966%_)
        (let ((_%$e157968%_
               (eq? (##structure-ref _%klass-a157965%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b157966%_ '1 gxc#!type::t '#f))))
          (if _%$e157968%_
              _%$e157968%_
              (let ((_%klass-id-b157971%_
                     (##structure-ref _%klass-b157966%_ '1 gxc#!type::t '#f))
                    (_%precedence-list157972%_
                     (##structure-ref _%klass-a157965%_ '3 gxc#!class::t '#f)))
                (let _%loop157974%_ ((_%rest157976%_
                                      _%precedence-list157972%_))
                  (let* ((_%rest157977157985%_ _%rest157976%_)
                         (_%else157979157993%_ (lambda () '#f))
                         (_%K157981158002%_
                          (lambda (_%rest157996%_ _%klass-name157997%_)
                            (let ((_%$e157999%_
                                   (eq? (let ((__tmp160647
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a157965%_
                                                            (cons _%klass-b157966%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name157997%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp160647
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b157971%_)))
                              (if _%$e157999%_
                                  _%$e157999%_
                                  (_%loop157974%_ _%rest157996%_))))))
                    (if (pair? _%rest157977157985%_)
                        (let ((_%hd157982158005%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest157977157985%_)))
                              (_%tl157983158007%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest157977157985%_))))
                          (let* ((_%klass-name158010%_ _%hd157982158005%_)
                                 (_%rest158012%_ _%tl157983158007%_))
                            (_%K157981158002%_
                             _%rest158012%_
                             _%klass-name158010%_)))
                        (_%else157979157993%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type157963%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type157963%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type157963%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc157952%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc157952%_ 'gxc#!procedure::t))
            (let ((_%proc157955%_ _%proc157952%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc157955%_ '2 '#f '#f))
                  (let ((__tmp160648
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc157955%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp160648 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@378.11-378.15"
               'contract:
               '!procedure?
               'value:
               _%proc157952%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym157934%_ _%type157935%_ _%local?157936%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type157935%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym157934%_
                     _%type157935%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym157934%_ '" " _%type157935%_))
        (let ((_%table157938%_
               (if _%local?157936%_
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
          (hash-put! _%table157938%_ _%sym157934%_ _%type157935%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym157943%_ _%type157944%_)
        (let ((_%local?157946%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym157943%_
           _%type157944%_
           _%local?157946%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g160649_
        (let ((_g160650_ (let () (declare (not safe)) (##length _g160649_))))
          (cond ((let () (declare (not safe)) (##fx= _g160650_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g160649_))
                ((let () (declare (not safe)) (##fx= _g160650_ 3))
                 (apply gxc#optimizer-declare-type!__% _g160649_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g160649_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym157928%_ _%type157929%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type157929%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym157928%_
                     _%type157929%_)))
        (let ((_%table157931%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp160651
                 (let () (declare (not safe)) (struct->list _%type157929%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym157928%_ '" " __tmp160651))
          (let ()
            (declare (not safe))
            (hash-put! _%table157931%_ _%sym157928%_ _%type157929%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table157931%_ _%type157929%_ _%sym157928%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym157923%_ _%type157924%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type157924%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym157923%_
                     _%type157924%_)))
        (let ((_%table157926%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table157926%_ _%sym157923%_))
              '#!void
              (begin
                (let ((__tmp160652
                       (let ()
                         (declare (not safe))
                         (struct->list _%type157924%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym157923%_
                   '" "
                   __tmp160652))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table157926%_ _%sym157923%_ _%type157924%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table157926%_
                   _%type157924%_
                   _%sym157923%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym157921%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym157921%_))
        (let ((__tmp160653
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp160653 _%sym157921%_))
        (let ((__tmp160654
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp160654 _%sym157921%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t157889%_
               _%method157890%_
               _%sym157891%_
               _%rebind?157892%_)
        (let ((__tmp160655
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp160655 _%sym157891%_ '#t))
        (let ((_%klass157894%_ (gxc#optimizer-lookup-class _%type-t157889%_)))
          (if _%klass157894%_
              (let* ((_%vtab157896%_ (gxc#!class-method-table _%klass157894%_))
                     (_%$e157898%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab157896%_ _%method157890%_))))
                (if _%$e157898%_
                    ((lambda (_%existing157901%_)
                       (if _%rebind?157892%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t157889%_
                                '" "
                                _%method157890%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab157896%_
                                _%method157890%_
                                _%sym157891%_)))
                           (if (eq? _%existing157901%_ _%sym157891%_)
                               '#!void
                               (let ((__tmp160656
                                      (cons 'bind-method!
                                            (cons _%type-t157889%_
                                                  (cons _%method157890%_
                                                        (cons _%sym157891%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp160656
                                  _%method157890%_)))))
                     _%$e157898%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t157889%_
                         '" "
                         _%method157890%_
                         '" => "
                         _%sym157891%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab157896%_
                         _%method157890%_
                         _%sym157891%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t157889%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t157910%_ _%method157911%_ _%sym157912%_)
        (let ((_%rebind?157914%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t157910%_
           _%method157911%_
           _%sym157912%_
           _%rebind?157914%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g160657_
        (let ((_g160658_ (let () (declare (not safe)) (##length _g160657_))))
          (cond ((let () (declare (not safe)) (##fx= _g160658_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g160657_))
                ((let () (declare (not safe)) (##fx= _g160658_ 4))
                 (apply gxc#optimizer-declare-method!__% _g160657_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g160657_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym157874%_)
        (let ((_%$e157876%_
               (let ((__tmp160659
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym157874%_ __tmp160659))))
          (if _%$e157876%_
              _%$e157876%_
              (let ((_%$e157885%_
                     (let ((_%ht157878157880%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht157878157880%_
                           (let ((_%ht157883%_ _%ht157878157880%_))
                             (declare (not safe))
                             (hash-get _%ht157883%_ _%sym157874%_))
                           '#f))))
                (if _%$e157885%_
                    _%$e157885%_
                    (let ((__tmp160660
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp160660 _%sym157874%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym157866%_)
        (let ((_%type157867157869%_ (gxc#optimizer-lookup-type _%sym157866%_)))
          (if _%type157867157869%_
              (let ((_%type157872%_ _%type157867157869%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type157872%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type157872%_ '1 '#f '#f)))
                    _%type157872%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym157862%_)
        (let ((_%table157864%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table157864%_ _%sym157862%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where157847%_ _%sym157848%_)
        (let ((_%$e157851%_ (gxc#optimizer-lookup-class _%sym157848%_)))
          (if _%$e157851%_
              ((lambda (_%g157853157855%_)
                 (let ((_%val157858%_ _%g157853157855%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val157858%_
                          'gxc#!class::t))
                       _%val157858%_
                       (let ()
                         (declare (not safe))
                         (error '"bad cast" gxc#!class::t _%val157858%_)))))
               _%$e157851%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where157847%_
                   _%sym157848%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass157845%_)
        (let ((__tmp160661
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp160661 _%klass157845%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t157842%_ _%method157843%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t157842%_)
         _%method157843%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym157840%_)
        (let ((__tmp160662
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp160662 _%sym157840%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e157722%_
                  (lambda (_%t157823%_)
                    (if (symbol? _%t157823%_)
                        (_%type-e157722%_
                         (gxc#optimizer-lookup-type _%t157823%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t157823%_
                               'gxc#!lambda::t))
                            (_%__lambda-type157724%_ _%t157823%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t157823%_
                                   'gxc#!kw-lambda::t))
                                (_%__kw-lambda-type157726%_ _%t157823%_)
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t157823%_
                                       'gxc#!kw-lambda-primary::t))
                                    (_%__kw-lambda-primary-type157728%_
                                     _%t157823%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t157823%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t157830%_ _%t157823%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t157830%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp160663
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t157830%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp160663
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t157823%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t157823%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%lambda-type157723%_
                  (lambda (_%t157811%_)
                    (let ((_%t157814%_ _%t157811%_))
                      (_%__lambda-type157724%_ _%t157814%_))))
                 (_%__lambda-type157724%_
                  (lambda (_%t157799%_)
                    (let ((_%t157802%_ _%t157799%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t157802%_ '4 '#f '#f))
                          (_%type-e157722%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t157802%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t157802%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp160664
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t157802%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp160664
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%kw-lambda-type157725%_
                  (lambda (_%t157787%_)
                    (let ((_%t157790%_ _%t157787%_))
                      (_%__kw-lambda-type157726%_ _%t157790%_))))
                 (_%__kw-lambda-type157726%_
                  (lambda (_%t157775%_)
                    (let ((_%t157778%_ _%t157775%_))
                      (_%type-e157722%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t157778%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type157727%_
                  (lambda (_%t157763%_)
                    (let ((_%t157766%_ _%t157763%_))
                      (_%__kw-lambda-primary-type157728%_ _%t157766%_))))
                 (_%__kw-lambda-primary-type157728%_
                  (lambda (_%t157749%_)
                    (let ((_%t157752%_ _%t157749%_))
                      (_%type-e157722%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t157752%_
                          '4
                          '#f
                          '#f)))))))
          (let* ((_%ht1157730%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2157732%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result157734%_
                  (if _%ht1157730%_
                      (let () (declare (not safe)) (hash->list _%ht1157730%_))
                      '()))
                 (_%result157736%_
                  (if _%ht2157732%_
                      (let ((__tmp160665
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2157732%_))))
                        (declare (not safe))
                        (__foldl1 cons _%result157734%_ __tmp160665))
                      _%result157734%_)))
            (for-each
             (lambda (_%p157739%_)
               (let* ((_%t157741%_ (cdr _%p157739%_))
                      (_%tr157743%_ (_%type-e157722%_ _%t157741%_)))
                 (set-cdr! _%p157739%_ _%tr157743%_)))
             _%result157736%_)
            (list-sort
             (lambda (_%a157746%_ _%b157747%_)
               (let ((__tmp160667 (symbol->string (car _%a157746%_)))
                     (__tmp160666 (symbol->string (car _%b157747%_))))
                 (declare (not safe))
                 (##string<? __tmp160667 __tmp160666)))
             _%result157736%_)))))))
