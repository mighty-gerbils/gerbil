(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1712997788)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp150352 (list)) (__tmp150351 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp150352
         '(type classes ssxi methods)
         __tmp150351
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args150323%_
        (apply make-instance gxc#optimizer-info::t _%$args150323%_)))
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
      (lambda (_%self147464150308%_)
        (let* ((_%self150311%_ _%self147464150308%_)
               (_%self150313%_ _%self150311%_))
          (if (let ((__tmp150353
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self150313%_))))
                (declare (not safe))
                (##fx< '4 __tmp150353))
              (begin
                (let ((__tmp150354
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self150313%_
                   __tmp150354
                   '1
                   '#f
                   '#f))
                (let ((__tmp150355
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self150313%_
                   __tmp150355
                   '2
                   '#f
                   '#f))
                (let ((__tmp150356
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self150313%_
                   __tmp150356
                   '3
                   '#f
                   '#f))
                (let ((__tmp150357
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self150313%_
                   __tmp150357
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp150358
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self150313%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self150313%_
                       '4
                       __tmp150358))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp150360 (list))
            (__tmp150359
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp150360
         '(id)
         __tmp150359
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args150183%_
        (apply make-instance gxc#!type::t _%$args150183%_)))
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
      (let ((__tmp150362 (list gxc#!type::t))
            (__tmp150361 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp150362
         '()
         __tmp150361
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args150180%_
        (apply make-instance gxc#!abort::t _%$args150180%_)))
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
      (let ((__tmp150364 (list gxc#!type::t))
            (__tmp150363 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp150364
         '()
         __tmp150363
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args150177%_
        (apply make-instance gxc#!alias::t _%$args150177%_)))
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
      (let ((__tmp150366 (list))
            (__tmp150365
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp150366
         '(return effect arguments unchecked origin)
         __tmp150365
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args150174%_
        (apply make-instance gxc#!signature::t _%$args150174%_)))
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
      (let ((__tmp150368 (list gxc#!type::t))
            (__tmp150367
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp150368
         '(signature)
         __tmp150367
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
      (lambda (_%id150153%_ _%signature150154%_)
        (if ((lambda (_%$obj150157%_)
               (or (not _%$obj150157%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj150157%_
                      'gxc#!signature::t))))
             _%signature150154%_)
            (let ((_%signature150164%_ _%signature150154%_))
              (gxc#__make-!procedure _%id150153%_ _%signature150164%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature150154%_)
              '#!void))))
    (define gxc#__make-!procedure
      (lambda (_%id150139%_ _%signature150141%_)
        (let ((_%signature150144%_ _%signature150141%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id150139%_ _%signature150144%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj150108%_ _%signature150109%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj150108%_ 'gxc#!procedure::t))
            (let ((_%$obj150113%_ _%$obj150108%_))
              (if ((lambda (_%$obj150122%_)
                     (or (not _%$obj150122%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj150122%_
                            'gxc#!signature::t))))
                   _%signature150109%_)
                  (let ((_%signature150129%_ _%signature150109%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj150113%_
                     _%signature150129%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature150109%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj150108%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj150085%_ _%signature150087%_)
        (let* ((_%$obj150091%_ _%$obj150085%_)
               (_%signature150099%_ _%signature150087%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj150091%_
           _%signature150099%_
           '2
           '#f
           '#f))))
    (define gxc#!class-meta::t
      (let ((__tmp150370 (list gxc#!type::t))
            (__tmp150369 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp150370
         '(class)
         __tmp150369
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args150082%_
        (apply make-instance gxc#!class-meta::t _%$args150082%_)))
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
      (let ((__tmp150372 (list gxc#!type::t))
            (__tmp150371
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
         __tmp150372
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp150371
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args150079%_
        (apply make-instance gxc#!class::t _%$args150079%_)))
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
      (let ((__tmp150374 (list gxc#!procedure::t))
            (__tmp150373 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp150374
         '()
         __tmp150373
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args150076%_
        (apply make-instance gxc#!predicate::t _%$args150076%_)))
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
      (let ((__tmp150376 (list gxc#!procedure::t))
            (__tmp150375 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp150376
         '()
         __tmp150375
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args150073%_
        (apply make-instance gxc#!constructor::t _%$args150073%_)))
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
      (let ((__tmp150378 (list gxc#!procedure::t))
            (__tmp150377 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp150378
         '(slot checked?)
         __tmp150377
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args150070%_
        (apply make-instance gxc#!accessor::t _%$args150070%_)))
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
      (let ((__tmp150380 (list gxc#!procedure::t))
            (__tmp150379 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp150380
         '(slot checked?)
         __tmp150379
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args150067%_
        (apply make-instance gxc#!mutator::t _%$args150067%_)))
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
      (let ((__tmp150382 (list gxc#!type::t))
            (__tmp150381 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp150382
         '(methods)
         __tmp150381
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args150064%_
        (apply make-instance gxc#!interface::t _%$args150064%_)))
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
      (let ((__tmp150384 (list gxc#!procedure::t))
            (__tmp150383
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp150384
         '(arity dispatch inline inline-typedecl)
         __tmp150383
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args150061%_
        (apply make-instance gxc#!lambda::t _%$args150061%_)))
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
      (let ((__tmp150386 (list gxc#!procedure::t))
            (__tmp150385 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp150386
         '(clauses)
         __tmp150385
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args150058%_
        (apply make-instance gxc#!case-lambda::t _%$args150058%_)))
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
      (let ((__tmp150388 (list gxc#!procedure::t))
            (__tmp150387
             (cons (cons 'struct: '#t) '((equal: table dispatch)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp150388
         '(table dispatch)
         __tmp150387
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args150055%_
        (apply make-instance gxc#!kw-lambda::t _%$args150055%_)))
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
      (let ((__tmp150390 (list gxc#!procedure::t))
            (__tmp150389 (cons (cons 'struct: '#t) '((equal: keys main)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp150390
         '(keys main)
         __tmp150389
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args150052%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args150052%_)))
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
      (let ((__tmp150391 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp150391
         '()
         '((equal:))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args150049%_
        (apply make-instance gxc#!primitive::t _%$args150049%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp150393 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp150392 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp150393
         '()
         __tmp150392
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args150046%_
        (apply make-instance gxc#!primitive-predicate::t _%$args150046%_)))
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
      (let ((__tmp150395 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp150394 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp150395
         '()
         __tmp150394
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args150043%_
        (apply make-instance gxc#!primitive-lambda::t _%$args150043%_)))
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
      (let ((__tmp150397 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp150396 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp150397
         '()
         __tmp150396
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args150040%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args150040%_)))
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
      (lambda (_%self147465150025%_)
        (let* ((_%self150028%_ _%self147465150025%_)
               (_%self150030%_ _%self150028%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self150030%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self147466149887%_ _%klass149889%_)
        (let* ((_%self149891%_ _%self147466149887%_)
               (_%self149893%_ _%self149891%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self149893%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149893%_
             _%klass149889%_
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
      (lambda (_%self147467149575%_
               _%id149577%_
               _%super149578%_
               _%slots149579%_
               _%ctor-method149580%_
               _%struct?149581%_
               _%final?149582%_
               _%system?149583%_
               _%metaclass149584%_)
        (let* ((_%self149586%_ _%self147467149575%_)
               (_%self149588%_ _%self149586%_))
          (let _%lp149598%_ ((_%rest149600%_ _%super149578%_))
            (let* ((_%rest149601149609%_ _%rest149600%_)
                   (_%else149603149617%_ (lambda () '#!void))
                   (_%K149605149623%_
                    (lambda (_%rest149620%_ _%super-id149621%_)
                      (if (let ((__tmp150398
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id149577%_ '()))
                                  _%super-id149621%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp150398 '8 '#f '#f))
                          (let ((__tmp150399
                                 (cons '!class (cons _%id149577%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp150399
                             _%super-id149621%_))
                          '#!void)
                      (_%lp149598%_ _%rest149620%_))))
              (if (let () (declare (not safe)) (##pair? _%rest149601149609%_))
                  (let ((_%hd149606149626%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest149601149609%_)))
                        (_%tl149607149628%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest149601149609%_))))
                    (let* ((_%super-id149631%_ _%hd149606149626%_)
                           (_%rest149633%_ _%tl149607149628%_))
                      (_%K149605149623%_ _%rest149633%_ _%super-id149631%_)))
                  '#!void)))
          (let* ((_%ctor-method149684%_
                  (let ((_%$e149635%_ _%ctor-method149580%_))
                    (if _%$e149635%_
                        _%$e149635%_
                        (let _%lp149638%_ ((_%rest149640%_ _%super149578%_)
                                           (_%method149641%_ '#f))
                          (let* ((_%rest149642149650%_ _%rest149640%_)
                                 (_%else149644149658%_
                                  (lambda () _%method149641%_))
                                 (_%K149646149672%_
                                  (lambda (_%rest149661%_ _%super-id149662%_)
                                    (let* ((_%klass149664%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id149577%_ '()))
                                             _%super-id149662%_))
                                           (_%$e149666%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass149664%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e149666%_
                                          ((lambda (_%ctor-method149669%_)
                                             (if _%method149641%_
                                                 (if (eq? _%ctor-method149669%_
                                                          _%method149641%_)
                                                     (_%lp149638%_
                                                      _%rest149661%_
                                                      _%ctor-method149669%_)
                                                     (let ((__tmp150400
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id149577%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp150400
                _%method149641%_
                _%ctor-method149669%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp149638%_
                                                  _%rest149661%_
                                                  _%ctor-method149669%_)))
                                           _%$e149666%_)
                                          (_%lp149638%_
                                           _%rest149661%_
                                           _%method149641%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest149642149650%_))
                                (let ((_%hd149647149675%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest149642149650%_)))
                                      (_%tl149648149677%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest149642149650%_))))
                                  (let* ((_%super-id149680%_
                                          _%hd149647149675%_)
                                         (_%rest149682%_ _%tl149648149677%_))
                                    (_%K149646149672%_
                                     _%rest149682%_
                                     _%super-id149680%_)))
                                (_%else149644149658%_)))))))
                 (_g150401_
                  (let ((__tmp150405
                         (lambda (_%klass-id149686%_)
                           (cons _%klass-id149686%_
                                 (let ((__tmp150406
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id149577%_ '()))
                                         _%klass-id149686%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp150406
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp150403
                         (lambda (_%klass-id149688%_)
                           (let ((__tmp150404
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id149577%_ '()))
                                   _%klass-id149688%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp150404
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp150405
                     __tmp150403
                     eq?
                     identity
                     '()
                     _%super149578%_))))
            (begin
              (let ((_g150402_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g150401_)
                           (##vector-length _g150401_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g150402_ 2)))
                    (error "Context expects 2 values" _g150402_)))
              (let ((_%precedence-list149690%_
                     (let () (declare (not safe)) (##vector-ref _g150401_ 0)))
                    (_%base-struct149691%_
                     (let () (declare (not safe)) (##vector-ref _g150401_ 1))))
                (let* ((_%precedence-list149735%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id149577%_ '(t object class)))
                            _%precedence-list149690%_
                            (if (memq 'object::t _%precedence-list149690%_)
                                _%precedence-list149690%_
                                (if _%system?149583%_
                                    (if (memq 't::t _%precedence-list149690%_)
                                        _%precedence-list149690%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list149690%_
                                           '(t::t))))
                                    (let _%loop149697%_ ((_%tail149699%_
                                                          _%precedence-list149690%_)
                                                         (_%head149700%_ '()))
                                      (let* ((_%tail149701149709%_
                                              _%tail149699%_)
                                             (_%else149703149717%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head149700%_))))
                                             (_%K149705149723%_
                                              (lambda (_%rest149720%_
                                                       _%hd149721%_)
                                                (if (eq? _%hd149721%_ 't::t)
                                                    (let ((__tmp150407
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail149699%_)))
              (declare (not safe))
              (__foldl1 cons __tmp150407 _%head149700%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop149697%_
                                                     _%rest149720%_
                                                     (cons _%hd149721%_
                                                           _%head149700%_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tail149701149709%_))
                                            (let ((_%hd149706149726%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail149701149709%_)))
                                                  (_%tl149707149728%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail149701149709%_))))
                                              (let* ((_%hd149731%_
                                                      _%hd149706149726%_)
                                                     (_%rest149733%_
                                                      _%tl149707149728%_))
                                                (_%K149705149723%_
                                                 _%rest149733%_
                                                 _%hd149731%_)))
                                            (_%else149703149717%_))))))))
                       (_%fields149737%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id149577%_ '()))
                         _%base-struct149691%_
                         _%precedence-list149735%_
                         _%slots149579%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149588%_
                     _%id149577%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149588%_
                     _%super149578%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149588%_
                     _%precedence-list149735%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149588%_
                     _%slots149579%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149588%_
                     _%fields149737%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149588%_
                     _%ctor-method149684%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149588%_
                     _%struct?149581%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149588%_
                     _%final?149582%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149588%_
                     _%metaclass149584%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self147468149740%_
               _%id149742%_
               _%super149743%_
               _%precedence-list149744%_
               _%slots149745%_
               _%fields149746%_
               _%constructor149747%_
               _%struct?149748%_
               _%final?149749%_
               _%system?149750%_
               _%metaclass149751%_
               _%methods149752%_)
        (let* ((_%self149754%_ _%self147468149740%_)
               (_%self149756%_ _%self149754%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149756%_
             _%id149742%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149756%_
             _%super149743%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149756%_
             _%precedence-list149744%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149756%_
             _%slots149745%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149756%_
             _%fields149746%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149756%_
             _%constructor149747%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149756%_
             _%struct?149748%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149756%_
             _%final?149749%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149756%_
             _%metaclass149751%_
             '10
             '#f
             '#f))
          (if _%methods149752%_
              (let ((__tmp150408
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods149752%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self149756%_
                 __tmp150408
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g150410_
        (let ((_g150409_ (let () (declare (not safe)) (##length _g150410_))))
          (cond ((let () (declare (not safe)) (##fx= _g150409_ 9))
                 (apply gxc#!class:::init!__0 _g150410_))
                ((let () (declare (not safe)) (##fx= _g150409_ 12))
                 (apply gxc#!class:::init!__1 _g150410_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g150410_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where149427%_
               _%base-struct149428%_
               _%precedence-list149429%_
               _%direct-slots149430%_)
        (let* ((_%base-fields149432%_
                (if _%base-struct149428%_
                    (let ((__tmp150411
                           (gxc#optimizer-resolve-class
                            _%where149427%_
                            _%base-struct149428%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp150411 '5 '#f '#f))
                    '()))
               (_%r-fields149434%_ (reverse _%base-fields149432%_))
               (_%seen-slots149442%_
                (let ((_%tab149436%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g149437149439%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab149436%_ _%g149437149439%_ '#t)))
                   _%base-fields149432%_)
                  _%tab149436%_))
               (_%process-slot149446%_
                (lambda (_%slot149444%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots149442%_ _%slot149444%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots149442%_
                           _%slot149444%_
                           '#t))
                        (set! _%r-fields149434%_
                              (cons _%slot149444%_ _%r-fields149434%_)))))))
          (for-each
           (lambda (_%mixin149449%_)
             (let ((_%klass149451%_
                    (gxc#optimizer-resolve-class
                     _%where149427%_
                     _%mixin149449%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass149451%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot149446%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass149451%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list149429%_)
          (for-each _%process-slot149446%_ _%direct-slots149430%_)
          (let () (declare (not safe)) (##reverse _%r-fields149434%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass149386%_ _%slot149387%_)
        (let _%lp149389%_ ((_%rest149391%_
                            (##structure-ref
                             _%klass149386%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset149392%_ '1))
          (let* ((_%rest149393149401%_ _%rest149391%_)
                 (_%else149395149409%_
                  (lambda ()
                    (let ((__tmp150413
                           (##structure-ref
                            _%klass149386%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp150412
                           (##structure-ref
                            _%klass149386%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp150413
                       __tmp150412
                       _%slot149387%_))))
                 (_%K149397149415%_
                  (lambda (_%rest149412%_ _%s149413%_)
                    (if (eq? _%s149413%_ _%slot149387%_)
                        _%offset149392%_
                        (_%lp149389%_
                         _%rest149412%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset149392%_ '1)))))))
            (if (let () (declare (not safe)) (##pair? _%rest149393149401%_))
                (let ((_%hd149398149418%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest149393149401%_)))
                      (_%tl149399149420%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest149393149401%_))))
                  (let* ((_%s149423%_ _%hd149398149418%_)
                         (_%rest149425%_ _%tl149399149420%_))
                    (_%K149397149415%_ _%rest149425%_ _%s149423%_)))
                (_%else149395149409%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass149344%_ _%slot149345%_)
        (if (gxc#!class-struct-slot? _%klass149344%_ _%slot149345%_)
            _%klass149344%_
            (let _%lp149347%_ ((_%rest149349%_
                                (##structure-ref
                                 _%klass149344%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest149350149358%_ _%rest149349%_)
                     (_%else149352149366%_ (lambda () '#f))
                     (_%K149354149374%_
                      (lambda (_%rest149369%_ _%super149370%_)
                        (let ((_%super-class149372%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass149344%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot149345%_ '())))
                                _%super149370%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class149372%_
                               _%slot149345%_)
                              _%super-class149372%_
                              (_%lp149347%_ _%rest149369%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest149350149358%_))
                    (let ((_%hd149355149377%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest149350149358%_)))
                          (_%tl149356149379%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest149350149358%_))))
                      (let* ((_%super149382%_ _%hd149355149377%_)
                             (_%rest149384%_ _%tl149356149379%_))
                        (_%K149354149374%_ _%rest149384%_ _%super149382%_)))
                    (_%else149352149366%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass149341%_ _%slot149342%_)
        (if (##structure-ref _%klass149341%_ '7 gxc#!class::t '#f)
            (memq _%slot149342%_
                  (##structure-ref _%klass149341%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self147469149325%_ _%id149327%_)
        (let* ((_%self149329%_ _%self147469149325%_)
               (_%self149331%_ _%self149329%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149331%_
             _%id149327%_
             '1
             '#f
             '#f))
          (let ((__tmp150414
                 (let ((__obj150346
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
                      __obj150346
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150346
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150346
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj150346)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149331%_
             __tmp150414
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self147470149187%_ _%id149189%_)
        (let* ((_%self149191%_ _%self147470149187%_)
               (_%self149193%_ _%self149191%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149193%_
             _%id149189%_
             '1
             '#f
             '#f))
          (let ((__tmp150415
                 (let ((__obj150347
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
                      __obj150347
                      _%id149189%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150347
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj150347)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149193%_
             __tmp150415
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
      (lambda (_%self147471149047%_
               _%id149049%_
               _%slot149050%_
               _%checked?149051%_)
        (let* ((_%self149053%_ _%self147471149047%_)
               (_%self149055%_ _%self149053%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149055%_
             _%id149049%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149055%_
             _%slot149050%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149055%_
             _%checked?149051%_
             '4
             '#f
             '#f))
          (let ((__tmp150416
                 (let ((__obj150348
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
                     (##unchecked-structure-set! __obj150348 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150348
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp150417 (cons _%id149049%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150348
                      __tmp150417
                      '3
                      '#f
                      '#f))
                   __obj150348)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149055%_
             __tmp150416
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self147472148907%_
               _%id148909%_
               _%slot148910%_
               _%checked?148911%_)
        (let* ((_%self148913%_ _%self147472148907%_)
               (_%self148915%_ _%self148913%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148915%_
             _%id148909%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148915%_
             _%slot148910%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148915%_
             _%checked?148911%_
             '4
             '#f
             '#f))
          (let ((__tmp150418
                 (let ((__obj150349
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
                      __obj150349
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150349
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp150419 (cons _%id148909%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150349
                      __tmp150419
                      '3
                      '#f
                      '#f))
                   __obj150349)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148915%_
             __tmp150418
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords148749%_
               _%signature148746148750%_
               _%self147473148752%_
               _%arity148754%_
               _%dispatch148755%_)
        (let* ((_%signature148757%_
                (if (eq? _%signature148746148750%_ absent-value)
                    '#f
                    _%signature148746148750%_))
               (_%self148759%_ _%self147473148752%_)
               (_%self148761%_ _%self148759%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self148761%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148761%_
             _%arity148754%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148761%_
             _%dispatch148755%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148761%_
             _%signature148757%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords148775%_ . _%args148776%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords148775%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords148775%_
                  'signature:
                  absent-value))
               _%args148776%_)))
    (define gxc#!lambda:::init!
      (lambda _%args148747148782%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args148747148782%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords148588%_
               _%signature148585148589%_
               _%self147474148591%_
               _%clauses148593%_)
        (let* ((_%signature148595%_
                (if (eq? _%signature148585148589%_ absent-value)
                    '#f
                    _%signature148585148589%_))
               (_%self148597%_ _%self147474148591%_)
               (_%self148599%_ _%self148597%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self148599%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148599%_
             _%signature148595%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148599%_
             _%clauses148593%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords148613%_ . _%args148614%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords148613%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords148613%_
                  'signature:
                  absent-value))
               _%args148614%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args148586148620%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args148586148620%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self147475148445%_ _%tab148447%_ _%dispatch148448%_)
        (let* ((_%self148450%_ _%self147475148445%_)
               (_%self148452%_ _%self148450%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self148452%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148452%_
             _%tab148447%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148452%_
             _%dispatch148448%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self147476148306%_ _%keys148308%_ _%main148309%_)
        (let* ((_%self148311%_ _%self147476148306%_)
               (_%self148313%_ _%self148311%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self148313%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148313%_
             _%keys148308%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148313%_
             _%main148309%_
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
      (lambda (_%self147477147924%_ _%id147926%_)
        (let* ((_%self147928%_ _%self147477147924%_)
               (_%self147930%_ _%self147928%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147930%_
             _%id147926%_
             '1
             '#f
             '#f))
          (let ((__tmp150420
                 (let ((__obj150350
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
                      __obj150350
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150350
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150350
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj150350)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147930%_
             __tmp150420
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
      (lambda (_%klass147793%_)
        (let ((_%$e147795%_
               (##structure-ref _%klass147793%_ '11 gxc#!class::t '#f)))
          (if _%$e147795%_
              _%$e147795%_
              (let ((_%tab147799%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass147793%_
                 _%tab147799%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab147799%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass147784%_ _%method147785%_)
        (let ((_%tab147786147788%_
               (##structure-ref _%klass147784%_ '11 gxc#!class::t '#f)))
          (if _%tab147786147788%_
              (let ((_%tab147791%_ _%tab147786147788%_))
                (declare (not safe))
                (hash-get _%tab147791%_ _%method147785%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a147772%_ _%type-b147773%_)
        (if _%type-a147772%_
            (if _%type-b147773%_
                (let ((_%$e147775%_ (eq? _%type-a147772%_ _%type-b147773%_)))
                  (if _%$e147775%_
                      _%$e147775%_
                      (let ((_%$e147778%_
                             (eq? (##structure-ref
                                   _%type-b147773%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e147778%_
                            _%$e147778%_
                            (let ((_%$e147781%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a147772%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b147773%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e147781%_
                                  _%$e147781%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a147772%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b147773%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a147772%_
                                           _%type-b147773%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a147723%_ _%klass-b147724%_)
        (let ((_%$e147726%_
               (eq? (##structure-ref _%klass-a147723%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b147724%_ '1 gxc#!type::t '#f))))
          (if _%$e147726%_
              _%$e147726%_
              (let ((_%klass-id-b147729%_
                     (##structure-ref _%klass-b147724%_ '1 gxc#!type::t '#f))
                    (_%precedence-list147730%_
                     (##structure-ref _%klass-a147723%_ '3 gxc#!class::t '#f)))
                (let _%loop147732%_ ((_%rest147734%_
                                      _%precedence-list147730%_))
                  (let* ((_%rest147735147743%_ _%rest147734%_)
                         (_%else147737147751%_ (lambda () '#f))
                         (_%K147739147760%_
                          (lambda (_%rest147754%_ _%klass-name147755%_)
                            (let ((_%$e147757%_
                                   (eq? (let ((__tmp150421
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a147723%_
                                                            (cons _%klass-b147724%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name147755%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp150421
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b147729%_)))
                              (if _%$e147757%_
                                  _%$e147757%_
                                  (_%loop147732%_ _%rest147754%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest147735147743%_))
                        (let ((_%hd147740147763%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest147735147743%_)))
                              (_%tl147741147765%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest147735147743%_))))
                          (let* ((_%klass-name147768%_ _%hd147740147763%_)
                                 (_%rest147770%_ _%tl147741147765%_))
                            (_%K147739147760%_
                             _%rest147770%_
                             _%klass-name147768%_)))
                        (_%else147737147751%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type147721%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type147721%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type147721%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc147710%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc147710%_ 'gxc#!procedure::t))
            (let ((_%proc147713%_ _%proc147710%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc147713%_ '2 '#f '#f))
                  (let ((__tmp150422
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc147713%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp150422 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@378.11-378.15"
               'contract:
               '!procedure?
               'value:
               _%proc147710%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym147692%_ _%type147693%_ _%local?147694%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type147693%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym147692%_
                     _%type147693%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym147692%_ '" " _%type147693%_))
        (let ((_%table147696%_
               (if _%local?147694%_
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
          (hash-put! _%table147696%_ _%sym147692%_ _%type147693%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym147701%_ _%type147702%_)
        (let ((_%local?147704%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym147701%_
           _%type147702%_
           _%local?147704%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g150424_
        (let ((_g150423_ (let () (declare (not safe)) (##length _g150424_))))
          (cond ((let () (declare (not safe)) (##fx= _g150423_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g150424_))
                ((let () (declare (not safe)) (##fx= _g150423_ 3))
                 (apply gxc#optimizer-declare-type!__% _g150424_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g150424_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym147686%_ _%type147687%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type147687%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym147686%_
                     _%type147687%_)))
        (let ((_%table147689%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp150425
                 (let () (declare (not safe)) (struct->list _%type147687%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym147686%_ '" " __tmp150425))
          (let ()
            (declare (not safe))
            (hash-put! _%table147689%_ _%sym147686%_ _%type147687%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table147689%_ _%type147687%_ _%sym147686%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym147681%_ _%type147682%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type147682%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym147681%_
                     _%type147682%_)))
        (let ((_%table147684%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table147684%_ _%sym147681%_))
              '#!void
              (begin
                (let ((__tmp150426
                       (let ()
                         (declare (not safe))
                         (struct->list _%type147682%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym147681%_
                   '" "
                   __tmp150426))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table147684%_ _%sym147681%_ _%type147682%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table147684%_
                   _%type147682%_
                   _%sym147681%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym147679%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym147679%_))
        (let ((__tmp150427
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp150427 _%sym147679%_))
        (let ((__tmp150428
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp150428 _%sym147679%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t147647%_
               _%method147648%_
               _%sym147649%_
               _%rebind?147650%_)
        (let ((__tmp150429
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp150429 _%sym147649%_ '#t))
        (let ((_%klass147652%_ (gxc#optimizer-lookup-class _%type-t147647%_)))
          (if _%klass147652%_
              (let* ((_%vtab147654%_ (gxc#!class-method-table _%klass147652%_))
                     (_%$e147656%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab147654%_ _%method147648%_))))
                (if _%$e147656%_
                    ((lambda (_%existing147659%_)
                       (if _%rebind?147650%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t147647%_
                                '" "
                                _%method147648%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab147654%_
                                _%method147648%_
                                _%sym147649%_)))
                           (if (eq? _%existing147659%_ _%sym147649%_)
                               '#!void
                               (let ((__tmp150430
                                      (cons 'bind-method!
                                            (cons _%type-t147647%_
                                                  (cons _%method147648%_
                                                        (cons _%sym147649%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp150430
                                  _%method147648%_)))))
                     _%$e147656%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t147647%_
                         '" "
                         _%method147648%_
                         '" => "
                         _%sym147649%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab147654%_
                         _%method147648%_
                         _%sym147649%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t147647%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t147668%_ _%method147669%_ _%sym147670%_)
        (let ((_%rebind?147672%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t147668%_
           _%method147669%_
           _%sym147670%_
           _%rebind?147672%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g150432_
        (let ((_g150431_ (let () (declare (not safe)) (##length _g150432_))))
          (cond ((let () (declare (not safe)) (##fx= _g150431_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g150432_))
                ((let () (declare (not safe)) (##fx= _g150431_ 4))
                 (apply gxc#optimizer-declare-method!__% _g150432_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g150432_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym147632%_)
        (let ((_%$e147634%_
               (let ((__tmp150433
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym147632%_ __tmp150433))))
          (if _%$e147634%_
              _%$e147634%_
              (let ((_%$e147643%_
                     (let ((_%ht147636147638%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht147636147638%_
                           (let ((_%ht147641%_ _%ht147636147638%_))
                             (declare (not safe))
                             (hash-get _%ht147641%_ _%sym147632%_))
                           '#f))))
                (if _%$e147643%_
                    _%$e147643%_
                    (let ((__tmp150434
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp150434 _%sym147632%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym147624%_)
        (let ((_%type147625147627%_ (gxc#optimizer-lookup-type _%sym147624%_)))
          (if _%type147625147627%_
              (let ((_%type147630%_ _%type147625147627%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type147630%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type147630%_ '1 '#f '#f)))
                    _%type147630%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym147620%_)
        (let ((_%table147622%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table147622%_ _%sym147620%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where147605%_ _%sym147606%_)
        (let ((_%$e147609%_ (gxc#optimizer-lookup-class _%sym147606%_)))
          (if _%$e147609%_
              ((lambda (_%g147611147613%_)
                 (let ((_%val147616%_ _%g147611147613%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val147616%_
                          'gxc#!class::t))
                       _%val147616%_
                       (let ()
                         (declare (not safe))
                         (error '"bad cast" gxc#!class::t _%val147616%_)))))
               _%$e147609%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where147605%_
                   _%sym147606%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass147603%_)
        (let ((__tmp150435
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp150435 _%klass147603%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t147600%_ _%method147601%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t147600%_)
         _%method147601%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym147598%_)
        (let ((__tmp150436
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp150436 _%sym147598%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e147480%_
                  (lambda (_%t147581%_)
                    (if (symbol? _%t147581%_)
                        (_%type-e147480%_
                         (gxc#optimizer-lookup-type _%t147581%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t147581%_
                               'gxc#!lambda::t))
                            (_%__lambda-type147482%_ _%t147581%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t147581%_
                                   'gxc#!kw-lambda::t))
                                (_%__kw-lambda-type147484%_ _%t147581%_)
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t147581%_
                                       'gxc#!kw-lambda-primary::t))
                                    (_%__kw-lambda-primary-type147486%_
                                     _%t147581%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t147581%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t147588%_ _%t147581%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t147588%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp150437
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t147588%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp150437
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t147581%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t147581%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%lambda-type147481%_
                  (lambda (_%t147569%_)
                    (let ((_%t147572%_ _%t147569%_))
                      (_%__lambda-type147482%_ _%t147572%_))))
                 (_%__lambda-type147482%_
                  (lambda (_%t147557%_)
                    (let ((_%t147560%_ _%t147557%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t147560%_ '4 '#f '#f))
                          (_%type-e147480%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t147560%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t147560%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp150438
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t147560%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp150438
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%kw-lambda-type147483%_
                  (lambda (_%t147545%_)
                    (let ((_%t147548%_ _%t147545%_))
                      (_%__kw-lambda-type147484%_ _%t147548%_))))
                 (_%__kw-lambda-type147484%_
                  (lambda (_%t147533%_)
                    (let ((_%t147536%_ _%t147533%_))
                      (_%type-e147480%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t147536%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type147485%_
                  (lambda (_%t147521%_)
                    (let ((_%t147524%_ _%t147521%_))
                      (_%__kw-lambda-primary-type147486%_ _%t147524%_))))
                 (_%__kw-lambda-primary-type147486%_
                  (lambda (_%t147507%_)
                    (let ((_%t147510%_ _%t147507%_))
                      (_%type-e147480%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t147510%_
                          '4
                          '#f
                          '#f)))))))
          (let* ((_%ht1147488%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2147490%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result147492%_
                  (if _%ht1147488%_
                      (let () (declare (not safe)) (hash->list _%ht1147488%_))
                      '()))
                 (_%result147494%_
                  (if _%ht2147490%_
                      (let ((__tmp150439
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2147490%_))))
                        (declare (not safe))
                        (__foldl1 cons _%result147492%_ __tmp150439))
                      _%result147492%_)))
            (for-each
             (lambda (_%p147497%_)
               (let* ((_%t147499%_ (cdr _%p147497%_))
                      (_%tr147501%_ (_%type-e147480%_ _%t147499%_)))
                 (set-cdr! _%p147497%_ _%tr147501%_)))
             _%result147494%_)
            (list-sort
             (lambda (_%a147504%_ _%b147505%_)
               (let ((__tmp150441 (symbol->string (car _%a147504%_)))
                     (__tmp150440 (symbol->string (car _%b147505%_))))
                 (declare (not safe))
                 (##string<? __tmp150441 __tmp150440)))
             _%result147494%_)))))))
