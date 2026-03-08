(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1773009272)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp210694 (list)) (__tmp210693 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp210694
         '(type classes ssxi methods)
         __tmp210693
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args210613%_
        (apply make-instance gxc#optimizer-info::t _%$args210613%_)))
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
      (lambda (_%self210600%_)
        (let ((_%self210603%_ _%self210600%_))
          (if (let ((__tmp210695
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self210603%_))))
                (declare (not safe))
                (##fx< '4 __tmp210695))
              (begin
                (let ((__tmp210696
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self210603%_
                   __tmp210696
                   '1
                   '#f
                   '#f))
                (let ((__tmp210697
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self210603%_
                   __tmp210697
                   '2
                   '#f
                   '#f))
                (let ((__tmp210698
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self210603%_
                   __tmp210698
                   '3
                   '#f
                   '#f))
                (let ((__tmp210699
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self210603%_
                   __tmp210699
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp210700
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self210603%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self210603%_
                       '4
                       __tmp210700))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp210702 (list))
            (__tmp210701
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp210702
         '(id)
         __tmp210701
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args210475%_
        (apply make-instance gxc#!type::t _%$args210475%_)))
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
      (let ((__tmp210704 (list gxc#!type::t))
            (__tmp210703 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp210704
         '()
         __tmp210703
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args210472%_
        (apply make-instance gxc#!abort::t _%$args210472%_)))
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
      (let ((__tmp210706 (list gxc#!type::t))
            (__tmp210705 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp210706
         '()
         __tmp210705
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args210469%_
        (apply make-instance gxc#!alias::t _%$args210469%_)))
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
      (let ((__tmp210708 (list))
            (__tmp210707
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp210708
         '(return effect arguments unchecked origin)
         __tmp210707
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args210466%_
        (apply make-instance gxc#!signature::t _%$args210466%_)))
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
      (let ((__tmp210710 (list gxc#!type::t))
            (__tmp210709
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp210710
         '(signature)
         __tmp210709
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
    (define gxc#__make-!procedure
      (lambda (_%id210453%_ _%signature210454%_)
        (let ((_%signature210457%_ _%signature210454%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id210453%_ _%signature210457%_))))
    (define gxc#make-!procedure
      (lambda (_%id207278%_ _%signature207280%_)
        (if ((lambda (_%$obj207284%_)
               (or (not _%$obj207284%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj207284%_
                      'gxc#!signature::t))))
             _%signature207280%_)
            (let ((_%signature207291%_ _%signature207280%_))
              (gxc#__make-!procedure _%id207278%_ _%signature207291%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature207280%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj210432%_ _%signature210433%_)
        (let* ((_%$obj210436%_ _%$obj210432%_)
               (_%signature210444%_ _%signature210433%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj210436%_
           _%signature210444%_
           '2
           '#f
           '#f))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj207421%_ _%signature207423%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj207421%_ 'gxc#!procedure::t))
            (let ((_%$obj207427%_ _%$obj207421%_))
              (if ((lambda (_%$obj207436%_)
                     (or (not _%$obj207436%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj207436%_
                            'gxc#!signature::t))))
                   _%signature207423%_)
                  (let ((_%signature207443%_ _%signature207423%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj207427%_
                     _%signature207443%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature207423%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj207421%_)
              '#!void))))
    (define gxc#!class-meta::t
      (let ((__tmp210712 (list gxc#!type::t))
            (__tmp210711 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp210712
         '(class)
         __tmp210711
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args210429%_
        (apply make-instance gxc#!class-meta::t _%$args210429%_)))
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
      (let ((__tmp210714 (list gxc#!type::t))
            (__tmp210713
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
         __tmp210714
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp210713
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args210426%_
        (apply make-instance gxc#!class::t _%$args210426%_)))
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
      (let ((__tmp210716 (list gxc#!procedure::t))
            (__tmp210715 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp210716
         '()
         __tmp210715
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args210423%_
        (apply make-instance gxc#!predicate::t _%$args210423%_)))
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
      (let ((__tmp210718 (list gxc#!procedure::t))
            (__tmp210717 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp210718
         '()
         __tmp210717
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args210420%_
        (apply make-instance gxc#!constructor::t _%$args210420%_)))
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
      (let ((__tmp210720 (list gxc#!procedure::t))
            (__tmp210719 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp210720
         '(slot checked?)
         __tmp210719
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args210417%_
        (apply make-instance gxc#!accessor::t _%$args210417%_)))
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
      (let ((__tmp210722 (list gxc#!procedure::t))
            (__tmp210721 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp210722
         '(slot checked?)
         __tmp210721
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args210414%_
        (apply make-instance gxc#!mutator::t _%$args210414%_)))
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
      (let ((__tmp210724 (list gxc#!type::t))
            (__tmp210723 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp210724
         '(methods)
         __tmp210723
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args210411%_
        (apply make-instance gxc#!interface::t _%$args210411%_)))
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
      (let ((__tmp210726 (list gxc#!procedure::t))
            (__tmp210725
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp210726
         '(arity dispatch inline inline-typedecl)
         __tmp210725
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args210408%_
        (apply make-instance gxc#!lambda::t _%$args210408%_)))
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
      (let ((__tmp210728 (list gxc#!procedure::t))
            (__tmp210727 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp210728
         '(clauses)
         __tmp210727
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args210405%_
        (apply make-instance gxc#!case-lambda::t _%$args210405%_)))
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
      (let ((__tmp210730 (list gxc#!procedure::t))
            (__tmp210729
             (cons (cons 'struct: '#t) '((equal: table dispatch)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp210730
         '(table dispatch)
         __tmp210729
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args210402%_
        (apply make-instance gxc#!kw-lambda::t _%$args210402%_)))
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
      (let ((__tmp210732 (list gxc#!procedure::t))
            (__tmp210731 (cons (cons 'struct: '#t) '((equal: keys main)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp210732
         '(keys main)
         __tmp210731
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args210399%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args210399%_)))
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
      (let ((__tmp210733 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp210733
         '()
         '((equal:))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args210396%_
        (apply make-instance gxc#!primitive::t _%$args210396%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp210735 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp210734 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp210735
         '()
         __tmp210734
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args210393%_
        (apply make-instance gxc#!primitive-predicate::t _%$args210393%_)))
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
      (let ((__tmp210737 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp210736 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp210737
         '()
         __tmp210736
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args210390%_
        (apply make-instance gxc#!primitive-lambda::t _%$args210390%_)))
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
      (let ((__tmp210739 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp210738 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp210739
         '()
         __tmp210738
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args210387%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args210387%_)))
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
      (lambda (_%self210374%_)
        (let ((_%self210377%_ _%self210374%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self210377%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self210237%_ _%klass210238%_)
        (let ((_%self210241%_ _%self210237%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self210241%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210241%_
             _%klass210238%_
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
      (lambda (_%self209927%_
               _%id209928%_
               _%super209929%_
               _%slots209930%_
               _%ctor-method209931%_
               _%struct?209932%_
               _%final?209933%_
               _%system?209934%_
               _%metaclass209935%_)
        (let ((_%self209938%_ _%self209927%_))
          (let _%lp209949%_ ((_%rest209951%_ _%super209929%_))
            (let* ((_%rest209952209960%_ _%rest209951%_)
                   (_%else209954209968%_ (lambda () '#!void))
                   (_%K209956209974%_
                    (lambda (_%rest209971%_ _%super-id209972%_)
                      (if (let ((__tmp210740
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id209928%_ '()))
                                  _%super-id209972%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp210740 '8 '#f '#f))
                          (let ((__tmp210741
                                 (cons '!class (cons _%id209928%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp210741
                             _%super-id209972%_))
                          '#!void)
                      (_%lp209949%_ _%rest209971%_))))
              (if (pair? _%rest209952209960%_)
                  (let ((_%hd209957209977%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest209952209960%_)))
                        (_%tl209958209979%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest209952209960%_))))
                    (let* ((_%super-id209982%_ _%hd209957209977%_)
                           (_%rest209984%_ _%tl209958209979%_))
                      (_%K209956209974%_ _%rest209984%_ _%super-id209982%_)))
                  '#!void)))
          (let* ((_%ctor-method210035%_
                  (let ((_%$e209986%_ _%ctor-method209931%_))
                    (if _%$e209986%_
                        _%$e209986%_
                        (let _%lp209989%_ ((_%rest209991%_ _%super209929%_)
                                           (_%method209992%_ '#f))
                          (let* ((_%rest209993210001%_ _%rest209991%_)
                                 (_%else209995210009%_
                                  (lambda () _%method209992%_))
                                 (_%K209997210023%_
                                  (lambda (_%rest210012%_ _%super-id210013%_)
                                    (let* ((_%klass210015%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id209928%_ '()))
                                             _%super-id210013%_))
                                           (_%$e210017%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass210015%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e210017%_
                                          ((lambda (_%ctor-method210020%_)
                                             (if _%method209992%_
                                                 (if (eq? _%ctor-method210020%_
                                                          _%method209992%_)
                                                     (_%lp209989%_
                                                      _%rest210012%_
                                                      _%ctor-method210020%_)
                                                     (let ((__tmp210742
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id209928%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp210742
                _%method209992%_
                _%ctor-method210020%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp209989%_
                                                  _%rest210012%_
                                                  _%ctor-method210020%_)))
                                           _%$e210017%_)
                                          (_%lp209989%_
                                           _%rest210012%_
                                           _%method209992%_))))))
                            (if (pair? _%rest209993210001%_)
                                (let ((_%hd209998210026%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest209993210001%_)))
                                      (_%tl209999210028%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest209993210001%_))))
                                  (let* ((_%super-id210031%_
                                          _%hd209998210026%_)
                                         (_%rest210033%_ _%tl209999210028%_))
                                    (_%K209997210023%_
                                     _%rest210033%_
                                     _%super-id210031%_)))
                                (_%else209995210009%_)))))))
                 (_g210743_
                  (let ((__tmp210747
                         (lambda (_%klass-id210037%_)
                           (cons _%klass-id210037%_
                                 (let ((__tmp210748
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id209928%_ '()))
                                         _%klass-id210037%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp210748
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp210745
                         (lambda (_%klass-id210039%_)
                           (let ((__tmp210746
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id209928%_ '()))
                                   _%klass-id210039%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp210746
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp210747
                     __tmp210745
                     eq?
                     identity
                     '()
                     _%super209929%_))))
            (begin
              (let ((_g210744_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g210743_)
                           (##values-length _g210743_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g210744_ 2)))
                    (error "Context expects 2 values" _g210744_)))
              (let ((_%precedence-list210041%_
                     (let () (declare (not safe)) (##values-ref _g210743_ 0)))
                    (_%base-struct210042%_
                     (let () (declare (not safe)) (##values-ref _g210743_ 1))))
                (let* ((_%precedence-list210086%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id209928%_ '(t object class)))
                            _%precedence-list210041%_
                            (if (memq 'object::t _%precedence-list210041%_)
                                _%precedence-list210041%_
                                (if _%system?209934%_
                                    (if (memq 't::t _%precedence-list210041%_)
                                        _%precedence-list210041%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list210041%_
                                           '(t::t))))
                                    (let _%loop210048%_ ((_%tail210050%_
                                                          _%precedence-list210041%_)
                                                         (_%head210051%_ '()))
                                      (let* ((_%tail210052210060%_
                                              _%tail210050%_)
                                             (_%else210054210068%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (foldl__0
                                                   cons
                                                   '(object::t t::t)
                                                   _%head210051%_))))
                                             (_%K210056210074%_
                                              (lambda (_%rest210071%_
                                                       _%hd210072%_)
                                                (if (eq? _%hd210072%_ 't::t)
                                                    (let ((__tmp210749
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail210050%_)))
              (declare (not safe))
              (foldl__0 cons __tmp210749 _%head210051%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop210048%_
                                                     _%rest210071%_
                                                     (cons _%hd210072%_
                                                           _%head210051%_))))))
                                        (if (pair? _%tail210052210060%_)
                                            (let ((_%hd210057210077%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail210052210060%_)))
                                                  (_%tl210058210079%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail210052210060%_))))
                                              (let* ((_%hd210082%_
                                                      _%hd210057210077%_)
                                                     (_%rest210084%_
                                                      _%tl210058210079%_))
                                                (_%K210056210074%_
                                                 _%rest210084%_
                                                 _%hd210082%_)))
                                            (_%else210054210068%_))))))))
                       (_%fields210088%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id209928%_ '()))
                         _%precedence-list210086%_
                         _%slots209930%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self209938%_
                     _%id209928%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self209938%_
                     _%super209929%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self209938%_
                     _%precedence-list210086%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self209938%_
                     _%slots209930%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self209938%_
                     _%fields210088%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self209938%_
                     _%ctor-method210035%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self209938%_
                     _%struct?209932%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self209938%_
                     _%final?209933%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self209938%_
                     _%metaclass209935%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self210091%_
               _%id210092%_
               _%super210093%_
               _%precedence-list210094%_
               _%slots210095%_
               _%fields210096%_
               _%constructor210097%_
               _%struct?210098%_
               _%final?210099%_
               _%system?210100%_
               _%metaclass210101%_
               _%methods210102%_)
        (let ((_%self210105%_ _%self210091%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210105%_
             _%id210092%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210105%_
             _%super210093%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210105%_
             _%precedence-list210094%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210105%_
             _%slots210095%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210105%_
             _%fields210096%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210105%_
             _%constructor210097%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210105%_
             _%struct?210098%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210105%_
             _%final?210099%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210105%_
             _%metaclass210101%_
             '10
             '#f
             '#f))
          (if _%methods210102%_
              (let ((__tmp210750
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods210102%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self210105%_
                 __tmp210750
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g210751_
        (let ((_g210752_ (let () (declare (not safe)) (##length _g210751_))))
          (cond ((let () (declare (not safe)) (##fx= _g210752_ 9))
                 (apply gxc#!class:::init!__0 _g210751_))
                ((let () (declare (not safe)) (##fx= _g210752_ 12))
                 (apply gxc#!class:::init!__1 _g210751_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g210751_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where209796%_
               _%precedence-list209797%_
               _%direct-slots209798%_)
        (let ((__tmp210754
               (lambda (_%mixin209800%_)
                 (let ((__tmp210755
                        (gxc#optimizer-resolve-class
                         _%where209796%_
                         _%mixin209800%_)))
                   (declare (not safe))
                   (##unchecked-structure-ref __tmp210755 '5 '#f '#f))))
              (__tmp210753
               (lambda (_%slot-list209802%_ _%slot-table209803%_)
                 (cdr _%slot-list209802%_))))
          (declare (not safe))
          (c4-compute-class-slots
           _%precedence-list209797%_
           _%direct-slots209798%_
           __tmp210754
           __tmp210753))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass209755%_ _%slot209756%_)
        (let _%lp209758%_ ((_%rest209760%_
                            (##structure-ref
                             _%klass209755%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset209761%_ '1))
          (let* ((_%rest209762209770%_ _%rest209760%_)
                 (_%else209764209778%_
                  (lambda ()
                    (let ((__tmp210757
                           (##structure-ref
                            _%klass209755%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp210756
                           (##structure-ref
                            _%klass209755%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp210757
                       __tmp210756
                       _%slot209756%_))))
                 (_%K209766209784%_
                  (lambda (_%rest209781%_ _%s209782%_)
                    (if (eq? _%s209782%_ _%slot209756%_)
                        _%offset209761%_
                        (_%lp209758%_
                         _%rest209781%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset209761%_ '1)))))))
            (if (pair? _%rest209762209770%_)
                (let ((_%hd209767209787%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest209762209770%_)))
                      (_%tl209768209789%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest209762209770%_))))
                  (let* ((_%s209792%_ _%hd209767209787%_)
                         (_%rest209794%_ _%tl209768209789%_))
                    (_%K209766209784%_ _%rest209794%_ _%s209792%_)))
                (_%else209764209778%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass209713%_ _%slot209714%_)
        (if (gxc#!class-struct-slot? _%klass209713%_ _%slot209714%_)
            _%klass209713%_
            (let _%lp209716%_ ((_%rest209718%_
                                (##structure-ref
                                 _%klass209713%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest209719209727%_ _%rest209718%_)
                     (_%else209721209735%_ (lambda () '#f))
                     (_%K209723209743%_
                      (lambda (_%rest209738%_ _%super209739%_)
                        (let ((_%super-class209741%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass209713%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot209714%_ '())))
                                _%super209739%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class209741%_
                               _%slot209714%_)
                              _%super-class209741%_
                              (_%lp209716%_ _%rest209738%_))))))
                (if (pair? _%rest209719209727%_)
                    (let ((_%hd209724209746%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest209719209727%_)))
                          (_%tl209725209748%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest209719209727%_))))
                      (let* ((_%super209751%_ _%hd209724209746%_)
                             (_%rest209753%_ _%tl209725209748%_))
                        (_%K209723209743%_ _%rest209753%_ _%super209751%_)))
                    (_%else209721209735%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass209710%_ _%slot209711%_)
        (if (##structure-ref _%klass209710%_ '7 gxc#!class::t '#f)
            (memq _%slot209711%_
                  (##structure-ref _%klass209710%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self209695%_ _%id209696%_)
        (let ((_%self209699%_ _%self209695%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209699%_
             _%id209696%_
             '1
             '#f
             '#f))
          (let ((__tmp210758
                 (let ((__obj210688
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
                      __obj210688
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210688
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210688
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj210688)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209699%_
             __tmp210758
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self209558%_ _%id209559%_)
        (let ((_%self209562%_ _%self209558%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209562%_
             _%id209559%_
             '1
             '#f
             '#f))
          (let ((__tmp210759
                 (let ((__obj210689
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
                      __obj210689
                      _%id209559%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210689
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj210689)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209562%_
             __tmp210759
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
      (lambda (_%self209419%_ _%id209420%_ _%slot209421%_ _%checked?209422%_)
        (let ((_%self209425%_ _%self209419%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209425%_
             _%id209420%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209425%_
             _%slot209421%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209425%_
             _%checked?209422%_
             '4
             '#f
             '#f))
          (let ((__tmp210760
                 (let ((__obj210690
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
                     (##unchecked-structure-set! __obj210690 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210690
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp210761 (cons _%id209420%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210690
                      __tmp210761
                      '3
                      '#f
                      '#f))
                   __obj210690)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209425%_
             __tmp210760
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self209280%_ _%id209281%_ _%slot209282%_ _%checked?209283%_)
        (let ((_%self209286%_ _%self209280%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209286%_
             _%id209281%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209286%_
             _%slot209282%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209286%_
             _%checked?209283%_
             '4
             '#f
             '#f))
          (let ((__tmp210762
                 (let ((__obj210691
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
                      __obj210691
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210691
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp210763 (cons _%id209281%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210691
                      __tmp210763
                      '3
                      '#f
                      '#f))
                   __obj210691)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209286%_
             __tmp210762
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords209124%_
               _%signature209121209125%_
               _%self209126%_
               _%arity209127%_
               _%dispatch209128%_)
        (let* ((_%signature209130%_
                (if (eq? _%signature209121209125%_ absent-value)
                    '#f
                    _%signature209121209125%_))
               (_%self209133%_ _%self209126%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self209133%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209133%_
             _%arity209127%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209133%_
             _%dispatch209128%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209133%_
             _%signature209130%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords209148%_ . _%args209149%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords209148%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords209148%_
                  'signature:
                  absent-value))
               _%args209149%_)))
    (define gxc#!lambda:::init!
      (lambda _%args209122209155%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args209122209155%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords208965%_
               _%signature208962208966%_
               _%self208967%_
               _%clauses208968%_)
        (let* ((_%signature208970%_
                (if (eq? _%signature208962208966%_ absent-value)
                    '#f
                    _%signature208962208966%_))
               (_%self208973%_ _%self208967%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self208973%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208973%_
             _%signature208970%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208973%_
             _%clauses208968%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords208988%_ . _%args208989%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords208988%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords208988%_
                  'signature:
                  absent-value))
               _%args208989%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args208963208995%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args208963208995%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self208823%_ _%tab208824%_ _%dispatch208825%_)
        (let ((_%self208828%_ _%self208823%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self208828%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208828%_
             _%tab208824%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208828%_
             _%dispatch208825%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self208685%_ _%keys208686%_ _%main208687%_)
        (let ((_%self208690%_ _%self208685%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self208690%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208690%_
             _%keys208686%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208690%_
             _%main208687%_
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
      (lambda (_%self208304%_ _%id208305%_)
        (let ((_%self208308%_ _%self208304%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208308%_
             _%id208305%_
             '1
             '#f
             '#f))
          (let ((__tmp210764
                 (let ((__obj210692
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
                      __obj210692
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210692
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210692
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj210692)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208308%_
             __tmp210764
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
      (lambda (_%klass208174%_)
        (let ((_%$e208176%_
               (##structure-ref _%klass208174%_ '11 gxc#!class::t '#f)))
          (if _%$e208176%_
              _%$e208176%_
              (let ((_%tab208180%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass208174%_
                 _%tab208180%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab208180%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass208166%_ _%method208167%_)
        (let ((_%tab208168208170%_
               (##structure-ref _%klass208166%_ '11 gxc#!class::t '#f)))
          (if _%tab208168208170%_
              (let ((_%tab208172%_ _%tab208168208170%_))
                (declare (not safe))
                (hash-get _%tab208172%_ _%method208167%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a208151%_ _%type-b208152%_)
        (if _%type-a208151%_
            (if _%type-b208152%_
                (let ((_%$e208154%_ (eq? _%type-a208151%_ _%type-b208152%_)))
                  (if _%$e208154%_
                      _%$e208154%_
                      (let ((_%$e208157%_
                             (eq? (##structure-ref
                                   _%type-b208152%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e208157%_
                            _%$e208157%_
                            (let ((_%$e208160%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a208151%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b208152%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e208160%_
                                  _%$e208160%_
                                  (let ((_%$e208163%_
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-instance-of?
                                                _%type-a208151%_
                                                'gxc#!class::t))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-instance-of?
                                                    _%type-b208152%_
                                                    'gxc#!class::t))
                                                 (gxc#!class-subclass?
                                                  _%type-a208151%_
                                                  _%type-b208152%_)
                                                 '#f)
                                             '#f)))
                                    (if _%$e208163%_
                                        _%$e208163%_
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%type-a208151%_
                                               'gxc#!interface::t))
                                            (eq? (##structure-ref
                                                  _%type-b208152%_
                                                  '1
                                                  gxc#!type::t
                                                  '#f)
                                                 'gerbil#interface-descriptor::t)
                                            '#f)))))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a208102%_ _%klass-b208103%_)
        (let ((_%$e208105%_
               (eq? (##structure-ref _%klass-a208102%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b208103%_ '1 gxc#!type::t '#f))))
          (if _%$e208105%_
              _%$e208105%_
              (let ((_%klass-id-b208108%_
                     (##structure-ref _%klass-b208103%_ '1 gxc#!type::t '#f))
                    (_%precedence-list208109%_
                     (##structure-ref _%klass-a208102%_ '3 gxc#!class::t '#f)))
                (let _%loop208111%_ ((_%rest208113%_
                                      _%precedence-list208109%_))
                  (let* ((_%rest208114208122%_ _%rest208113%_)
                         (_%else208116208130%_ (lambda () '#f))
                         (_%K208118208139%_
                          (lambda (_%rest208133%_ _%klass-name208134%_)
                            (let ((_%$e208136%_
                                   (eq? (let ((__tmp210765
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a208102%_
                                                            (cons _%klass-b208103%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name208134%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp210765
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b208108%_)))
                              (if _%$e208136%_
                                  _%$e208136%_
                                  (_%loop208111%_ _%rest208133%_))))))
                    (if (pair? _%rest208114208122%_)
                        (let ((_%hd208119208142%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest208114208122%_)))
                              (_%tl208120208144%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest208114208122%_))))
                          (let* ((_%klass-name208147%_ _%hd208119208142%_)
                                 (_%rest208149%_ _%tl208120208144%_))
                            (_%K208118208139%_
                             _%rest208149%_
                             _%klass-name208147%_)))
                        (_%else208116208130%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type208100%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type208100%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type208100%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc208089%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc208089%_ 'gxc#!procedure::t))
            (let ((_%proc208092%_ _%proc208089%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc208092%_ '2 '#f '#f))
                  (let ((__tmp210766
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc208092%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp210766 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@365.11-365.15"
               'contract:
               '!procedure?
               'value:
               _%proc208089%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym208071%_ _%type208072%_ _%local?208073%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type208072%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym208071%_
                     _%type208072%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym208071%_ '" " _%type208072%_))
        (let ((_%table208075%_
               (if _%local?208073%_
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
          (hash-put! _%table208075%_ _%sym208071%_ _%type208072%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym208080%_ _%type208081%_)
        (let ((_%local?208083%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym208080%_
           _%type208081%_
           _%local?208083%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g210767_
        (let ((_g210768_ (let () (declare (not safe)) (##length _g210767_))))
          (cond ((let () (declare (not safe)) (##fx= _g210768_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g210767_))
                ((let () (declare (not safe)) (##fx= _g210768_ 3))
                 (apply gxc#optimizer-declare-type!__% _g210767_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g210767_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym208065%_ _%type208066%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type208066%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym208065%_
                     _%type208066%_)))
        (let ((_%table208068%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp210769
                 (let () (declare (not safe)) (struct->list _%type208066%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym208065%_ '" " __tmp210769))
          (let ()
            (declare (not safe))
            (hash-put! _%table208068%_ _%sym208065%_ _%type208066%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table208068%_ _%type208066%_ _%sym208065%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym208060%_ _%type208061%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type208061%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym208060%_
                     _%type208061%_)))
        (let ((_%table208063%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table208063%_ _%sym208060%_))
              '#!void
              (begin
                (let ((__tmp210770
                       (let ()
                         (declare (not safe))
                         (struct->list _%type208061%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym208060%_
                   '" "
                   __tmp210770))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table208063%_ _%sym208060%_ _%type208061%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table208063%_
                   _%type208061%_
                   _%sym208060%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym208058%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym208058%_))
        (let ((__tmp210771
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp210771 _%sym208058%_))
        (let ((__tmp210772
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp210772 _%sym208058%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t208026%_
               _%method208027%_
               _%sym208028%_
               _%rebind?208029%_)
        (let ((__tmp210773
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp210773 _%sym208028%_ '#t))
        (let ((_%klass208031%_ (gxc#optimizer-lookup-class _%type-t208026%_)))
          (if _%klass208031%_
              (let* ((_%vtab208033%_ (gxc#!class-method-table _%klass208031%_))
                     (_%$e208035%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab208033%_ _%method208027%_))))
                (if _%$e208035%_
                    ((lambda (_%existing208038%_)
                       (if _%rebind?208029%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t208026%_
                                '" "
                                _%method208027%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab208033%_
                                _%method208027%_
                                _%sym208028%_)))
                           (if (eq? _%existing208038%_ _%sym208028%_)
                               '#!void
                               (let ((__tmp210774
                                      (cons 'bind-method!
                                            (cons _%type-t208026%_
                                                  (cons _%method208027%_
                                                        (cons _%sym208028%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp210774
                                  _%method208027%_)))))
                     _%$e208035%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t208026%_
                         '" "
                         _%method208027%_
                         '" => "
                         _%sym208028%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab208033%_
                         _%method208027%_
                         _%sym208028%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t208026%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t208047%_ _%method208048%_ _%sym208049%_)
        (let ((_%rebind?208051%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t208047%_
           _%method208048%_
           _%sym208049%_
           _%rebind?208051%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g210775_
        (let ((_g210776_ (let () (declare (not safe)) (##length _g210775_))))
          (cond ((let () (declare (not safe)) (##fx= _g210776_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g210775_))
                ((let () (declare (not safe)) (##fx= _g210776_ 4))
                 (apply gxc#optimizer-declare-method!__% _g210775_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g210775_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym208012%_)
        (let ((_%$e208014%_
               (let ((__tmp210777
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym208012%_ __tmp210777))))
          (if _%$e208014%_
              _%$e208014%_
              (let ((_%$e208022%_
                     (let ((_%ht208016208018%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht208016208018%_
                           (let ((_%ht208020%_ _%ht208016208018%_))
                             (declare (not safe))
                             (hash-get _%ht208020%_ _%sym208012%_))
                           '#f))))
                (if _%$e208022%_
                    _%$e208022%_
                    (let ((__tmp210778
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp210778 _%sym208012%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym208005%_)
        (let ((_%type208006208008%_ (gxc#optimizer-lookup-type _%sym208005%_)))
          (if _%type208006208008%_
              (let ((_%type208010%_ _%type208006208008%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type208010%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type208010%_ '1 '#f '#f)))
                    _%type208010%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym208001%_)
        (let ((_%table208003%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table208003%_ _%sym208001%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where207986%_ _%sym207987%_)
        (let ((_%$e207990%_ (gxc#optimizer-lookup-class _%sym207987%_)))
          (if _%$e207990%_
              ((lambda (_%g207992207994%_)
                 (let ((_%val207997%_ _%g207992207994%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val207997%_
                          'gxc#!class::t))
                       _%val207997%_
                       (begin
                         (raise-contract-violation-error
                          '"contract violation"
                          'context:
                          'gerbil/compiler/optimize-base
                          'contract:
                          '(!class? val)
                          'value:
                          _%val207997%_)
                         '#!void))))
               _%$e207990%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where207986%_
                   _%sym207987%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass207984%_)
        (let ((__tmp210779
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp210779 _%klass207984%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t207981%_ _%method207982%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t207981%_)
         _%method207982%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym207979%_)
        (let ((__tmp210780
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp210780 _%sym207979%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e207454%_
                  (lambda (_%t207920%_)
                    (if (symbol? _%t207920%_)
                        (_%type-e207454%_
                         (gxc#optimizer-lookup-type _%t207920%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t207920%_
                               'gxc#!lambda::t))
                            (let* ((_%t207924%_ _%t207920%_)
                                   (_%t207928%_ _%t207924%_))
                              (_%__lambda-type207580%_ _%t207928%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t207920%_
                                   'gxc#!kw-lambda::t))
                                (let* ((_%t207940%_ _%t207920%_)
                                       (_%t207944%_ _%t207940%_))
                                  (_%__kw-lambda-type207703%_ _%t207944%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t207920%_
                                       'gxc#!kw-lambda-primary::t))
                                    (let* ((_%t207955%_ _%t207920%_)
                                           (_%t207959%_ _%t207955%_))
                                      (_%__kw-lambda-primary-type207826%_
                                       _%t207959%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t207920%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t207970%_ _%t207920%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t207970%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp210781
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t207970%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp210781
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t207920%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t207920%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%__lambda-type207580%_
                  (lambda (_%t207908%_)
                    (let ((_%t207911%_ _%t207908%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t207911%_ '4 '#f '#f))
                          (_%type-e207454%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t207911%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t207911%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp210782
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t207911%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp210782
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%lambda-type207581%_
                  (lambda (_%t207896%_)
                    (let ((_%t207899%_ _%t207896%_))
                      (_%__lambda-type207580%_ _%t207899%_))))
                 (_%__kw-lambda-type207703%_
                  (lambda (_%t207884%_)
                    (let ((_%t207887%_ _%t207884%_))
                      (_%type-e207454%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t207887%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-type207704%_
                  (lambda (_%t207872%_)
                    (let ((_%t207875%_ _%t207872%_))
                      (_%__kw-lambda-type207703%_ _%t207875%_))))
                 (_%__kw-lambda-primary-type207826%_
                  (lambda (_%t207860%_)
                    (let ((_%t207863%_ _%t207860%_))
                      (_%type-e207454%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t207863%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type207827%_
                  (lambda (_%t207848%_)
                    (let ((_%t207851%_ _%t207848%_))
                      (_%__kw-lambda-primary-type207826%_ _%t207851%_)))))
          (let* ((_%ht1207829%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2207831%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result207833%_
                  (if _%ht1207829%_
                      (let () (declare (not safe)) (hash->list _%ht1207829%_))
                      '()))
                 (_%result207835%_
                  (if _%ht2207831%_
                      (let ((__tmp210783
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2207831%_))))
                        (declare (not safe))
                        (foldl__0 cons _%result207833%_ __tmp210783))
                      _%result207833%_)))
            (for-each
             (lambda (_%p207838%_)
               (let* ((_%t207840%_ (cdr _%p207838%_))
                      (_%tr207842%_ (_%type-e207454%_ _%t207840%_)))
                 (set-cdr! _%p207838%_ _%tr207842%_)))
             _%result207835%_)
            (list-sort
             (lambda (_%a207845%_ _%b207846%_)
               (let ((__tmp210785 (symbol->string (car _%a207845%_)))
                     (__tmp210784 (symbol->string (car _%b207846%_))))
                 (declare (not safe))
                 (##string<? __tmp210785 __tmp210784)))
             _%result207835%_)))))))
