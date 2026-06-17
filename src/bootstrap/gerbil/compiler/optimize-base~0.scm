(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1781697566)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp214851 (list)) (__tmp214850 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp214851
         '(type classes ssxi methods)
         __tmp214850
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args214770%_
        (apply make-instance gxc#optimizer-info::t _%$args214770%_)))
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
      (lambda (_%self214757%_)
        (let ((_%self214760%_ _%self214757%_))
          (if (let ((__tmp214852
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self214760%_))))
                (declare (not safe))
                (##fx< '4 __tmp214852))
              (begin
                (let ((__tmp214853
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self214760%_
                   __tmp214853
                   '1
                   '#f
                   '#f))
                (let ((__tmp214854
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self214760%_
                   __tmp214854
                   '2
                   '#f
                   '#f))
                (let ((__tmp214855
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self214760%_
                   __tmp214855
                   '3
                   '#f
                   '#f))
                (let ((__tmp214856
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self214760%_
                   __tmp214856
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp214857
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self214760%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self214760%_
                       '4
                       __tmp214857))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp214859 (list))
            (__tmp214858
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp214859
         '(id)
         __tmp214858
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args214632%_
        (apply make-instance gxc#!type::t _%$args214632%_)))
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
      (let ((__tmp214861 (list gxc#!type::t))
            (__tmp214860 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp214861
         '()
         __tmp214860
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args214629%_
        (apply make-instance gxc#!abort::t _%$args214629%_)))
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
      (let ((__tmp214863 (list gxc#!type::t))
            (__tmp214862 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp214863
         '()
         __tmp214862
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args214626%_
        (apply make-instance gxc#!alias::t _%$args214626%_)))
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
      (let ((__tmp214865 (list))
            (__tmp214864
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp214865
         '(return effect arguments unchecked origin)
         __tmp214864
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args214623%_
        (apply make-instance gxc#!signature::t _%$args214623%_)))
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
      (let ((__tmp214867 (list gxc#!type::t))
            (__tmp214866
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp214867
         '(signature)
         __tmp214866
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
      (lambda (_%id214610%_ _%signature214611%_)
        (let ((_%signature214614%_ _%signature214611%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id214610%_ _%signature214614%_))))
    (define gxc#make-!procedure
      (lambda (_%id214588%_ _%signature214590%_)
        (if (or (not _%signature214590%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%signature214590%_
                   'gxc#!signature::t)))
            (let ((_%signature214600%_ _%signature214590%_))
              (gxc#__make-!procedure _%id214588%_ _%signature214600%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature214590%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj214567%_ _%signature214568%_)
        (let* ((_%$obj214571%_ _%$obj214567%_)
               (_%signature214579%_ _%signature214568%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj214571%_
           _%signature214579%_
           '2
           '#f
           '#f))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj214534%_ _%signature214536%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj214534%_ 'gxc#!procedure::t))
            (let ((_%$obj214541%_ _%$obj214534%_))
              (if (or (not _%signature214536%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature214536%_
                         'gxc#!signature::t)))
                  (let ((_%signature214557%_ _%signature214536%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj214541%_
                     _%signature214557%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature214536%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj214534%_)
              '#!void))))
    (define gxc#!class-meta::t
      (let ((__tmp214869 (list gxc#!type::t))
            (__tmp214868 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp214869
         '(class)
         __tmp214868
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args214531%_
        (apply make-instance gxc#!class-meta::t _%$args214531%_)))
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
      (let ((__tmp214871 (list gxc#!type::t))
            (__tmp214870
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
         __tmp214871
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp214870
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args214528%_
        (apply make-instance gxc#!class::t _%$args214528%_)))
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
      (let ((__tmp214873 (list gxc#!procedure::t))
            (__tmp214872 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp214873
         '()
         __tmp214872
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args214525%_
        (apply make-instance gxc#!predicate::t _%$args214525%_)))
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
      (let ((__tmp214875 (list gxc#!procedure::t))
            (__tmp214874 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp214875
         '()
         __tmp214874
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args214522%_
        (apply make-instance gxc#!constructor::t _%$args214522%_)))
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
      (let ((__tmp214877 (list gxc#!procedure::t))
            (__tmp214876 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp214877
         '(slot checked?)
         __tmp214876
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args214519%_
        (apply make-instance gxc#!accessor::t _%$args214519%_)))
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
      (let ((__tmp214879 (list gxc#!procedure::t))
            (__tmp214878 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp214879
         '(slot checked?)
         __tmp214878
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args214516%_
        (apply make-instance gxc#!mutator::t _%$args214516%_)))
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
      (let ((__tmp214881 (list gxc#!type::t))
            (__tmp214880 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp214881
         '(methods)
         __tmp214880
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args214513%_
        (apply make-instance gxc#!interface::t _%$args214513%_)))
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
      (let ((__tmp214883 (list gxc#!procedure::t))
            (__tmp214882
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp214883
         '(arity dispatch inline inline-typedecl)
         __tmp214882
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args214510%_
        (apply make-instance gxc#!lambda::t _%$args214510%_)))
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
      (let ((__tmp214885 (list gxc#!procedure::t))
            (__tmp214884 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp214885
         '(clauses)
         __tmp214884
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args214507%_
        (apply make-instance gxc#!case-lambda::t _%$args214507%_)))
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
      (let ((__tmp214887 (list gxc#!procedure::t))
            (__tmp214886
             (cons (cons 'struct: '#t) '((equal: table dispatch)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp214887
         '(table dispatch)
         __tmp214886
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args214504%_
        (apply make-instance gxc#!kw-lambda::t _%$args214504%_)))
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
      (let ((__tmp214889 (list gxc#!procedure::t))
            (__tmp214888 (cons (cons 'struct: '#t) '((equal: keys main)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp214889
         '(keys main)
         __tmp214888
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args214501%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args214501%_)))
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
      (let ((__tmp214890 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp214890
         '()
         '((equal:))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args214498%_
        (apply make-instance gxc#!primitive::t _%$args214498%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp214892 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp214891 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp214892
         '()
         __tmp214891
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args214495%_
        (apply make-instance gxc#!primitive-predicate::t _%$args214495%_)))
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
      (let ((__tmp214894 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp214893 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp214894
         '()
         __tmp214893
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args214492%_
        (apply make-instance gxc#!primitive-lambda::t _%$args214492%_)))
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
      (let ((__tmp214896 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp214895 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp214896
         '()
         __tmp214895
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args214489%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args214489%_)))
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
      (lambda (_%self214476%_)
        (let ((_%self214479%_ _%self214476%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self214479%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self214339%_ _%klass214340%_)
        (let ((_%self214343%_ _%self214339%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self214343%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self214343%_
             _%klass214340%_
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
      (lambda (_%self214029%_
               _%id214030%_
               _%super214031%_
               _%slots214032%_
               _%ctor-method214033%_
               _%struct?214034%_
               _%final?214035%_
               _%system?214036%_
               _%metaclass214037%_)
        (let ((_%self214040%_ _%self214029%_))
          (let _%lp214051%_ ((_%rest214053%_ _%super214031%_))
            (let* ((_%$%rest214054214062%_ _%rest214053%_)
                   (_%$%else214056214070%_ (lambda () '#!void))
                   (_%$%K214058214076%_
                    (lambda (_%rest214073%_ _%super-id214074%_)
                      (if (let ((__tmp214897
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id214030%_ '()))
                                  _%super-id214074%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp214897 '8 '#f '#f))
                          (let ((__tmp214898
                                 (cons '!class (cons _%id214030%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp214898
                             _%super-id214074%_))
                          '#!void)
                      (_%lp214051%_ _%rest214073%_))))
              (if (pair? _%$%rest214054214062%_)
                  (let ((_%$%hd214059214079%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest214054214062%_)))
                        (_%$%tl214060214081%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest214054214062%_))))
                    (let* ((_%super-id214084%_ _%$%hd214059214079%_)
                           (_%rest214086%_ _%$%tl214060214081%_))
                      (_%$%K214058214076%_ _%rest214086%_ _%super-id214084%_)))
                  '#!void)))
          (let* ((_%ctor-method214137%_
                  (let ((_%$e214088%_ _%ctor-method214033%_))
                    (if _%$e214088%_
                        _%$e214088%_
                        (let _%lp214091%_ ((_%rest214093%_ _%super214031%_)
                                           (_%method214094%_ '#f))
                          (let* ((_%$%rest214095214103%_ _%rest214093%_)
                                 (_%$%else214097214111%_
                                  (lambda () _%method214094%_))
                                 (_%$%K214099214125%_
                                  (lambda (_%rest214114%_ _%super-id214115%_)
                                    (let* ((_%klass214117%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id214030%_ '()))
                                             _%super-id214115%_))
                                           (_%$e214119%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass214117%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e214119%_
                                          (if _%method214094%_
                                              (if (eq? _%$e214119%_
                                                       _%method214094%_)
                                                  (_%lp214091%_
                                                   _%rest214114%_
                                                   _%$e214119%_)
                                                  (let ((__tmp214899
                                                         (cons '!class
                                                               (cons _%id214030%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#raise-compile-error
                                                     '"conflicting implicit constructor methods"
                                                     __tmp214899
                                                     _%method214094%_
                                                     _%$e214119%_)))
                                              (_%lp214091%_
                                               _%rest214114%_
                                               _%$e214119%_))
                                          (_%lp214091%_
                                           _%rest214114%_
                                           _%method214094%_))))))
                            (if (pair? _%$%rest214095214103%_)
                                (let ((_%$%hd214100214128%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%rest214095214103%_)))
                                      (_%$%tl214101214130%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%rest214095214103%_))))
                                  (let* ((_%super-id214133%_
                                          _%$%hd214100214128%_)
                                         (_%rest214135%_ _%$%tl214101214130%_))
                                    (_%$%K214099214125%_
                                     _%rest214135%_
                                     _%super-id214133%_)))
                                (_%$%else214097214111%_)))))))
                 (_g214900_
                  (let ((__tmp214904
                         (lambda (_%klass-id214139%_)
                           (cons _%klass-id214139%_
                                 (let ((__tmp214905
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id214030%_ '()))
                                         _%klass-id214139%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp214905
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp214902
                         (lambda (_%klass-id214141%_)
                           (let ((__tmp214903
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id214030%_ '()))
                                   _%klass-id214141%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp214903
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp214904
                     __tmp214902
                     eq?
                     identity
                     '()
                     _%super214031%_))))
            (begin
              (let ((_g214901_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g214900_)
                           (##values-length _g214900_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g214901_ 2)))
                    (error "Context expects 2 values" _g214901_)))
              (let ((_%precedence-list214143%_
                     (let () (declare (not safe)) (##values-ref _g214900_ 0)))
                    (_%base-struct214144%_
                     (let () (declare (not safe)) (##values-ref _g214900_ 1))))
                (let* ((_%precedence-list214188%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id214030%_ '(t object class)))
                            _%precedence-list214143%_
                            (if (memq 'object::t _%precedence-list214143%_)
                                _%precedence-list214143%_
                                (if _%system?214036%_
                                    (if (memq 't::t _%precedence-list214143%_)
                                        _%precedence-list214143%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list214143%_
                                           '(t::t))))
                                    (let _%loop214150%_ ((_%tail214152%_
                                                          _%precedence-list214143%_)
                                                         (_%head214153%_ '()))
                                      (let* ((_%$%tail214154214162%_
                                              _%tail214152%_)
                                             (_%$%else214156214170%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (foldl__0
                                                   cons
                                                   '(object::t t::t)
                                                   _%head214153%_))))
                                             (_%$%K214158214176%_
                                              (lambda (_%rest214173%_
                                                       _%hd214174%_)
                                                (if (eq? _%hd214174%_ 't::t)
                                                    (let ((__tmp214906
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail214152%_)))
              (declare (not safe))
              (foldl__0 cons __tmp214906 _%head214153%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop214150%_
                                                     _%rest214173%_
                                                     (cons _%hd214174%_
                                                           _%head214153%_))))))
                                        (if (pair? _%$%tail214154214162%_)
                                            (let ((_%$%hd214159214179%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%tail214154214162%_)))
                                                  (_%$%tl214160214181%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%tail214154214162%_))))
                                              (let* ((_%hd214184%_
                                                      _%$%hd214159214179%_)
                                                     (_%rest214186%_
                                                      _%$%tl214160214181%_))
                                                (_%$%K214158214176%_
                                                 _%rest214186%_
                                                 _%hd214184%_)))
                                            (_%$%else214156214170%_))))))))
                       (_%fields214190%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id214030%_ '()))
                         _%precedence-list214188%_
                         _%slots214032%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self214040%_
                     _%id214030%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self214040%_
                     _%super214031%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self214040%_
                     _%precedence-list214188%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self214040%_
                     _%slots214032%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self214040%_
                     _%fields214190%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self214040%_
                     _%ctor-method214137%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self214040%_
                     _%struct?214034%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self214040%_
                     _%final?214035%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self214040%_
                     _%metaclass214037%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self214193%_
               _%id214194%_
               _%super214195%_
               _%precedence-list214196%_
               _%slots214197%_
               _%fields214198%_
               _%constructor214199%_
               _%struct?214200%_
               _%final?214201%_
               _%system?214202%_
               _%metaclass214203%_
               _%methods214204%_)
        (let ((_%self214207%_ _%self214193%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self214207%_
             _%id214194%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self214207%_
             _%super214195%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self214207%_
             _%precedence-list214196%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self214207%_
             _%slots214197%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self214207%_
             _%fields214198%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self214207%_
             _%constructor214199%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self214207%_
             _%struct?214200%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self214207%_
             _%final?214201%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self214207%_
             _%metaclass214203%_
             '10
             '#f
             '#f))
          (if _%methods214204%_
              (let ((__tmp214907
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods214204%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self214207%_
                 __tmp214907
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g214908_
        (let ((_g214909_ (let () (declare (not safe)) (##length _g214908_))))
          (cond ((let () (declare (not safe)) (##fx= _g214909_ 9))
                 (apply gxc#!class:::init!__0 _g214908_))
                ((let () (declare (not safe)) (##fx= _g214909_ 12))
                 (apply gxc#!class:::init!__1 _g214908_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g214908_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where213898%_
               _%precedence-list213899%_
               _%direct-slots213900%_)
        (let ((__tmp214911
               (lambda (_%mixin213902%_)
                 (let ((__tmp214912
                        (gxc#optimizer-resolve-class
                         _%where213898%_
                         _%mixin213902%_)))
                   (declare (not safe))
                   (##unchecked-structure-ref __tmp214912 '5 '#f '#f))))
              (__tmp214910
               (lambda (_%slot-list213904%_ _%slot-table213905%_)
                 (cdr _%slot-list213904%_))))
          (declare (not safe))
          (c4-compute-class-slots
           _%precedence-list213899%_
           _%direct-slots213900%_
           __tmp214911
           __tmp214910))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass213857%_ _%slot213858%_)
        (let _%lp213860%_ ((_%rest213862%_
                            (##structure-ref
                             _%klass213857%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset213863%_ '1))
          (let* ((_%$%rest213864213872%_ _%rest213862%_)
                 (_%$%else213866213880%_
                  (lambda ()
                    (let ((__tmp214914
                           (##structure-ref
                            _%klass213857%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp214913
                           (##structure-ref
                            _%klass213857%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp214914
                       __tmp214913
                       _%slot213858%_))))
                 (_%$%K213868213886%_
                  (lambda (_%rest213883%_ _%s213884%_)
                    (if (eq? _%s213884%_ _%slot213858%_)
                        _%offset213863%_
                        (_%lp213860%_
                         _%rest213883%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset213863%_ '1)))))))
            (if (pair? _%$%rest213864213872%_)
                (let ((_%$%hd213869213889%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest213864213872%_)))
                      (_%$%tl213870213891%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest213864213872%_))))
                  (let* ((_%s213894%_ _%$%hd213869213889%_)
                         (_%rest213896%_ _%$%tl213870213891%_))
                    (_%$%K213868213886%_ _%rest213896%_ _%s213894%_)))
                (_%$%else213866213880%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass213815%_ _%slot213816%_)
        (if (gxc#!class-struct-slot? _%klass213815%_ _%slot213816%_)
            _%klass213815%_
            (let _%lp213818%_ ((_%rest213820%_
                                (##structure-ref
                                 _%klass213815%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%$%rest213821213829%_ _%rest213820%_)
                     (_%$%else213823213837%_ (lambda () '#f))
                     (_%$%K213825213845%_
                      (lambda (_%rest213840%_ _%super213841%_)
                        (let ((_%super-class213843%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass213815%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot213816%_ '())))
                                _%super213841%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class213843%_
                               _%slot213816%_)
                              _%super-class213843%_
                              (_%lp213818%_ _%rest213840%_))))))
                (if (pair? _%$%rest213821213829%_)
                    (let ((_%$%hd213826213848%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest213821213829%_)))
                          (_%$%tl213827213850%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest213821213829%_))))
                      (let* ((_%super213853%_ _%$%hd213826213848%_)
                             (_%rest213855%_ _%$%tl213827213850%_))
                        (_%$%K213825213845%_ _%rest213855%_ _%super213853%_)))
                    (_%$%else213823213837%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass213812%_ _%slot213813%_)
        (if (##structure-ref _%klass213812%_ '7 gxc#!class::t '#f)
            (memq _%slot213813%_
                  (##structure-ref _%klass213812%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self213797%_ _%id213798%_)
        (let ((_%self213801%_ _%self213797%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self213801%_
             _%id213798%_
             '1
             '#f
             '#f))
          (let ((__tmp214915
                 (let ((__obj214845
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
                      __obj214845
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj214845
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj214845
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj214845)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self213801%_
             __tmp214915
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self213660%_ _%id213661%_)
        (let ((_%self213664%_ _%self213660%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self213664%_
             _%id213661%_
             '1
             '#f
             '#f))
          (let ((__tmp214916
                 (let ((__obj214846
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
                      __obj214846
                      _%id213661%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj214846
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj214846)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self213664%_
             __tmp214916
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
      (lambda (_%self213521%_ _%id213522%_ _%slot213523%_ _%checked?213524%_)
        (let ((_%self213527%_ _%self213521%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self213527%_
             _%id213522%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self213527%_
             _%slot213523%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self213527%_
             _%checked?213524%_
             '4
             '#f
             '#f))
          (let ((__tmp214917
                 (let ((__obj214847
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
                     (##unchecked-structure-set! __obj214847 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj214847
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp214918 (cons _%id213522%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj214847
                      __tmp214918
                      '3
                      '#f
                      '#f))
                   __obj214847)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self213527%_
             __tmp214917
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self213382%_ _%id213383%_ _%slot213384%_ _%checked?213385%_)
        (let ((_%self213388%_ _%self213382%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self213388%_
             _%id213383%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self213388%_
             _%slot213384%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self213388%_
             _%checked?213385%_
             '4
             '#f
             '#f))
          (let ((__tmp214919
                 (let ((__obj214848
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
                      __obj214848
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj214848
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp214920 (cons _%id213383%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj214848
                      __tmp214920
                      '3
                      '#f
                      '#f))
                   __obj214848)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self213388%_
             __tmp214919
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords213226%_
               _%$%signature213223213227%_
               _%self213228%_
               _%arity213229%_
               _%dispatch213230%_)
        (let* ((_%signature213232%_
                (if (eq? _%$%signature213223213227%_ absent-value)
                    '#f
                    _%$%signature213223213227%_))
               (_%self213235%_ _%self213228%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self213235%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self213235%_
             _%arity213229%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self213235%_
             _%dispatch213230%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self213235%_
             _%signature213232%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords213250%_ . _%args213251%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords213250%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords213250%_
                  'signature:
                  absent-value))
               _%args213251%_)))
    (define gxc#!lambda:::init!
      (lambda _%$%args213224213257%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%$%args213224213257%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords213067%_
               _%$%signature213064213068%_
               _%self213069%_
               _%clauses213070%_)
        (let* ((_%signature213072%_
                (if (eq? _%$%signature213064213068%_ absent-value)
                    '#f
                    _%$%signature213064213068%_))
               (_%self213075%_ _%self213069%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self213075%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self213075%_
             _%signature213072%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self213075%_
             _%clauses213070%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords213090%_ . _%args213091%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords213090%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords213090%_
                  'signature:
                  absent-value))
               _%args213091%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%$%args213065213097%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%$%args213065213097%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self212925%_ _%tab212926%_ _%dispatch212927%_)
        (let ((_%self212930%_ _%self212925%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self212930%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self212930%_
             _%tab212926%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self212930%_
             _%dispatch212927%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self212787%_ _%keys212788%_ _%main212789%_)
        (let ((_%self212792%_ _%self212787%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self212792%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self212792%_
             _%keys212788%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self212792%_
             _%main212789%_
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
      (lambda (_%self212406%_ _%id212407%_)
        (let ((_%self212410%_ _%self212406%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self212410%_
             _%id212407%_
             '1
             '#f
             '#f))
          (let ((__tmp214921
                 (let ((__obj214849
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
                      __obj214849
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj214849
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj214849
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj214849)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self212410%_
             __tmp214921
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
      (lambda (_%klass212276%_)
        (let ((_%$e212278%_
               (##structure-ref _%klass212276%_ '11 gxc#!class::t '#f)))
          (if _%$e212278%_
              _%$e212278%_
              (let ((_%tab212282%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass212276%_
                 _%tab212282%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab212282%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass212268%_ _%method212269%_)
        (let ((_%$%tab212270212272%_
               (##structure-ref _%klass212268%_ '11 gxc#!class::t '#f)))
          (if _%$%tab212270212272%_
              (let ((_%tab212274%_ _%$%tab212270212272%_))
                (declare (not safe))
                (hash-get _%tab212274%_ _%method212269%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a212253%_ _%type-b212254%_)
        (if _%type-a212253%_
            (if _%type-b212254%_
                (let ((_%$e212256%_ (eq? _%type-a212253%_ _%type-b212254%_)))
                  (if _%$e212256%_
                      _%$e212256%_
                      (let ((_%$e212259%_
                             (eq? (##structure-ref
                                   _%type-b212254%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e212259%_
                            _%$e212259%_
                            (let ((_%$e212262%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a212253%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b212254%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e212262%_
                                  _%$e212262%_
                                  (let ((_%$e212265%_
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-instance-of?
                                                _%type-a212253%_
                                                'gxc#!class::t))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-instance-of?
                                                    _%type-b212254%_
                                                    'gxc#!class::t))
                                                 (gxc#!class-subclass?
                                                  _%type-a212253%_
                                                  _%type-b212254%_)
                                                 '#f)
                                             '#f)))
                                    (if _%$e212265%_
                                        _%$e212265%_
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%type-a212253%_
                                               'gxc#!interface::t))
                                            (eq? (##structure-ref
                                                  _%type-b212254%_
                                                  '1
                                                  gxc#!type::t
                                                  '#f)
                                                 'interface-descriptor::t)
                                            '#f)))))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a212204%_ _%klass-b212205%_)
        (let ((_%$e212207%_
               (eq? (##structure-ref _%klass-a212204%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b212205%_ '1 gxc#!type::t '#f))))
          (if _%$e212207%_
              _%$e212207%_
              (let ((_%klass-id-b212210%_
                     (##structure-ref _%klass-b212205%_ '1 gxc#!type::t '#f))
                    (_%precedence-list212211%_
                     (##structure-ref _%klass-a212204%_ '3 gxc#!class::t '#f)))
                (let _%loop212213%_ ((_%rest212215%_
                                      _%precedence-list212211%_))
                  (let* ((_%$%rest212216212224%_ _%rest212215%_)
                         (_%$%else212218212232%_ (lambda () '#f))
                         (_%$%K212220212241%_
                          (lambda (_%rest212235%_ _%klass-name212236%_)
                            (let ((_%$e212238%_
                                   (eq? (let ((__tmp214922
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a212204%_
                                                            (cons _%klass-b212205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name212236%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp214922
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b212210%_)))
                              (if _%$e212238%_
                                  _%$e212238%_
                                  (_%loop212213%_ _%rest212235%_))))))
                    (if (pair? _%$%rest212216212224%_)
                        (let ((_%$%hd212221212244%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest212216212224%_)))
                              (_%$%tl212222212246%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest212216212224%_))))
                          (let* ((_%klass-name212249%_ _%$%hd212221212244%_)
                                 (_%rest212251%_ _%$%tl212222212246%_))
                            (_%$%K212220212241%_
                             _%rest212251%_
                             _%klass-name212249%_)))
                        (_%$%else212218212232%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type212202%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type212202%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type212202%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc212191%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc212191%_ 'gxc#!procedure::t))
            (let ((_%proc212194%_ _%proc212191%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc212194%_ '2 '#f '#f))
                  (let ((__tmp214923
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc212194%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp214923 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@365.11-365.15"
               'contract:
               '!procedure?
               'value:
               _%proc212191%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym212173%_ _%type212174%_ _%local?212175%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type212174%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym212173%_
                     _%type212174%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym212173%_ '" " _%type212174%_))
        (let ((_%table212177%_
               (if _%local?212175%_
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
          (hash-put! _%table212177%_ _%sym212173%_ _%type212174%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym212182%_ _%type212183%_)
        (let ((_%local?212185%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym212182%_
           _%type212183%_
           _%local?212185%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g214924_
        (let ((_g214925_ (let () (declare (not safe)) (##length _g214924_))))
          (cond ((let () (declare (not safe)) (##fx= _g214925_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g214924_))
                ((let () (declare (not safe)) (##fx= _g214925_ 3))
                 (apply gxc#optimizer-declare-type!__% _g214924_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g214924_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym212167%_ _%type212168%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type212168%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym212167%_
                     _%type212168%_)))
        (let ((_%table212170%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp214926
                 (let () (declare (not safe)) (struct->list _%type212168%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym212167%_ '" " __tmp214926))
          (let ()
            (declare (not safe))
            (hash-put! _%table212170%_ _%sym212167%_ _%type212168%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table212170%_ _%type212168%_ _%sym212167%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym212162%_ _%type212163%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type212163%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym212162%_
                     _%type212163%_)))
        (let ((_%table212165%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table212165%_ _%sym212162%_))
              '#!void
              (begin
                (let ((__tmp214927
                       (let ()
                         (declare (not safe))
                         (struct->list _%type212163%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym212162%_
                   '" "
                   __tmp214927))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table212165%_ _%sym212162%_ _%type212163%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table212165%_
                   _%type212163%_
                   _%sym212162%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym212160%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym212160%_))
        (let ((__tmp214928
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp214928 _%sym212160%_))
        (let ((__tmp214929
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp214929 _%sym212160%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t212128%_
               _%method212129%_
               _%sym212130%_
               _%rebind?212131%_)
        (let ((__tmp214930
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp214930 _%sym212130%_ '#t))
        (let ((_%klass212133%_ (gxc#optimizer-lookup-class _%type-t212128%_)))
          (if _%klass212133%_
              (let* ((_%vtab212135%_ (gxc#!class-method-table _%klass212133%_))
                     (_%$e212137%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab212135%_ _%method212129%_))))
                (if _%$e212137%_
                    (if _%rebind?212131%_
                        (let ()
                          (let ()
                            (declare (not safe))
                            (gxc#verbose
                             '"declare-method: rebind existing method"
                             _%type-t212128%_
                             '" "
                             _%method212129%_))
                          (let ()
                            (declare (not safe))
                            (hash-put!
                             _%vtab212135%_
                             _%method212129%_
                             _%sym212130%_)))
                        (if (eq? _%$e212137%_ _%sym212130%_)
                            '#!void
                            (let ((__tmp214931
                                   (cons 'bind-method!
                                         (cons _%type-t212128%_
                                               (cons _%method212129%_
                                                     (cons _%sym212130%_
                                                           '()))))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"declare-method: duplicate method declaration"
                               __tmp214931
                               _%method212129%_))))
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t212128%_
                         '" "
                         _%method212129%_
                         '" => "
                         _%sym212130%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab212135%_
                         _%method212129%_
                         _%sym212130%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t212128%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t212149%_ _%method212150%_ _%sym212151%_)
        (let ((_%rebind?212153%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t212149%_
           _%method212150%_
           _%sym212151%_
           _%rebind?212153%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g214932_
        (let ((_g214933_ (let () (declare (not safe)) (##length _g214932_))))
          (cond ((let () (declare (not safe)) (##fx= _g214933_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g214932_))
                ((let () (declare (not safe)) (##fx= _g214933_ 4))
                 (apply gxc#optimizer-declare-method!__% _g214932_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g214932_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym212114%_)
        (let ((_%$e212116%_
               (let ((__tmp214934
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym212114%_ __tmp214934))))
          (if _%$e212116%_
              _%$e212116%_
              (let ((_%$e212124%_
                     (let ((_%$%ht212118212120%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%$%ht212118212120%_
                           (let ((_%ht212122%_ _%$%ht212118212120%_))
                             (declare (not safe))
                             (hash-get _%ht212122%_ _%sym212114%_))
                           '#f))))
                (if _%$e212124%_
                    _%$e212124%_
                    (let ((__tmp214935
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp214935 _%sym212114%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym212107%_)
        (let ((_%$%type212108212110%_
               (gxc#optimizer-lookup-type _%sym212107%_)))
          (if _%$%type212108212110%_
              (let ((_%type212112%_ _%$%type212108212110%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type212112%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type212112%_ '1 '#f '#f)))
                    _%type212112%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym212103%_)
        (let ((_%table212105%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table212105%_ _%sym212103%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where212088%_ _%sym212089%_)
        (let ((_%$e212092%_ (gxc#optimizer-lookup-class _%sym212089%_)))
          (if _%$e212092%_
              (let ((_%val212099%_ _%$e212092%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%val212099%_ 'gxc#!class::t))
                    _%val212099%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/compiler/optimize-base
                       'contract:
                       '(!class? val)
                       'value:
                       _%val212099%_)
                      '#!void)))
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where212088%_
                   _%sym212089%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass212086%_)
        (let ((__tmp214936
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp214936 _%klass212086%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t212083%_ _%method212084%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t212083%_)
         _%method212084%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym212081%_)
        (let ((__tmp214937
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp214937 _%sym212081%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e211556%_
                  (lambda (_%t212022%_)
                    (if (symbol? _%t212022%_)
                        (_%type-e211556%_
                         (gxc#optimizer-lookup-type _%t212022%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t212022%_
                               'gxc#!lambda::t))
                            (let* ((_%t212026%_ _%t212022%_)
                                   (_%t212030%_ _%t212026%_))
                              (_%__lambda-type211682%_ _%t212030%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t212022%_
                                   'gxc#!kw-lambda::t))
                                (let* ((_%t212042%_ _%t212022%_)
                                       (_%t212046%_ _%t212042%_))
                                  (_%__kw-lambda-type211805%_ _%t212046%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t212022%_
                                       'gxc#!kw-lambda-primary::t))
                                    (let* ((_%t212057%_ _%t212022%_)
                                           (_%t212061%_ _%t212057%_))
                                      (_%__kw-lambda-primary-type211928%_
                                       _%t212061%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t212022%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t212072%_ _%t212022%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t212072%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp214938
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t212072%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp214938
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t212022%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t212022%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%__lambda-type211682%_
                  (lambda (_%t212010%_)
                    (let ((_%t212013%_ _%t212010%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t212013%_ '4 '#f '#f))
                          (_%type-e211556%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t212013%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t212013%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp214939
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t212013%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp214939
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%lambda-type211683%_
                  (lambda (_%t211998%_)
                    (let ((_%t212001%_ _%t211998%_))
                      (_%__lambda-type211682%_ _%t212001%_))))
                 (_%__kw-lambda-type211805%_
                  (lambda (_%t211986%_)
                    (let ((_%t211989%_ _%t211986%_))
                      (_%type-e211556%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t211989%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-type211806%_
                  (lambda (_%t211974%_)
                    (let ((_%t211977%_ _%t211974%_))
                      (_%__kw-lambda-type211805%_ _%t211977%_))))
                 (_%__kw-lambda-primary-type211928%_
                  (lambda (_%t211962%_)
                    (let ((_%t211965%_ _%t211962%_))
                      (_%type-e211556%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t211965%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type211929%_
                  (lambda (_%t211950%_)
                    (let ((_%t211953%_ _%t211950%_))
                      (_%__kw-lambda-primary-type211928%_ _%t211953%_)))))
          (let* ((_%ht1211931%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2211933%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result211935%_
                  (if _%ht1211931%_
                      (let () (declare (not safe)) (hash->list _%ht1211931%_))
                      '()))
                 (_%result211937%_
                  (if _%ht2211933%_
                      (let ((__tmp214940
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2211933%_))))
                        (declare (not safe))
                        (foldl__0 cons _%result211935%_ __tmp214940))
                      _%result211935%_)))
            (for-each
             (lambda (_%p211940%_)
               (let* ((_%t211942%_ (cdr _%p211940%_))
                      (_%tr211944%_ (_%type-e211556%_ _%t211942%_)))
                 (set-cdr! _%p211940%_ _%tr211944%_)))
             _%result211937%_)
            (list-sort
             (lambda (_%a211947%_ _%b211948%_)
               (let ((__tmp214942 (symbol->string (car _%a211947%_)))
                     (__tmp214941 (symbol->string (car _%b211948%_))))
                 (declare (not safe))
                 (##string<? __tmp214942 __tmp214941)))
             _%result211937%_)))))))
