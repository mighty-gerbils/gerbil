(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1771093451)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp209646 (list)) (__tmp209645 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp209646
         '(type classes ssxi methods)
         __tmp209645
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args209565%_
        (apply make-instance gxc#optimizer-info::t _%$args209565%_)))
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
      (lambda (_%self209552%_)
        (let ((_%self209555%_ _%self209552%_))
          (if (let ((__tmp209647
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self209555%_))))
                (declare (not safe))
                (##fx< '4 __tmp209647))
              (begin
                (let ((__tmp209648
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self209555%_
                   __tmp209648
                   '1
                   '#f
                   '#f))
                (let ((__tmp209649
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self209555%_
                   __tmp209649
                   '2
                   '#f
                   '#f))
                (let ((__tmp209650
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self209555%_
                   __tmp209650
                   '3
                   '#f
                   '#f))
                (let ((__tmp209651
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self209555%_
                   __tmp209651
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp209652
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self209555%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self209555%_
                       '4
                       __tmp209652))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp209654 (list))
            (__tmp209653
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp209654
         '(id)
         __tmp209653
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args209427%_
        (apply make-instance gxc#!type::t _%$args209427%_)))
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
      (let ((__tmp209656 (list gxc#!type::t))
            (__tmp209655 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp209656
         '()
         __tmp209655
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args209424%_
        (apply make-instance gxc#!abort::t _%$args209424%_)))
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
      (let ((__tmp209658 (list gxc#!type::t))
            (__tmp209657 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp209658
         '()
         __tmp209657
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args209421%_
        (apply make-instance gxc#!alias::t _%$args209421%_)))
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
      (let ((__tmp209660 (list))
            (__tmp209659
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp209660
         '(return effect arguments unchecked origin)
         __tmp209659
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args209418%_
        (apply make-instance gxc#!signature::t _%$args209418%_)))
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
      (let ((__tmp209662 (list gxc#!type::t))
            (__tmp209661
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp209662
         '(signature)
         __tmp209661
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
      (lambda (_%id209405%_ _%signature209406%_)
        (let ((_%signature209409%_ _%signature209406%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id209405%_ _%signature209409%_))))
    (define gxc#make-!procedure
      (lambda (_%id206213%_ _%signature206215%_)
        (if ((lambda (_%$obj206219%_)
               (or (not _%$obj206219%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj206219%_
                      'gxc#!signature::t))))
             _%signature206215%_)
            (let ((_%signature206226%_ _%signature206215%_))
              (gxc#__make-!procedure _%id206213%_ _%signature206226%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature206215%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj209384%_ _%signature209385%_)
        (let* ((_%$obj209388%_ _%$obj209384%_)
               (_%signature209396%_ _%signature209385%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj209388%_
           _%signature209396%_
           '2
           '#f
           '#f))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj206356%_ _%signature206358%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj206356%_ 'gxc#!procedure::t))
            (let ((_%$obj206362%_ _%$obj206356%_))
              (if ((lambda (_%$obj206371%_)
                     (or (not _%$obj206371%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj206371%_
                            'gxc#!signature::t))))
                   _%signature206358%_)
                  (let ((_%signature206378%_ _%signature206358%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj206362%_
                     _%signature206378%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature206358%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj206356%_)
              '#!void))))
    (define gxc#!class-meta::t
      (let ((__tmp209664 (list gxc#!type::t))
            (__tmp209663 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp209664
         '(class)
         __tmp209663
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args209381%_
        (apply make-instance gxc#!class-meta::t _%$args209381%_)))
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
      (let ((__tmp209666 (list gxc#!type::t))
            (__tmp209665
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
         __tmp209666
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp209665
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args209378%_
        (apply make-instance gxc#!class::t _%$args209378%_)))
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
      (let ((__tmp209668 (list gxc#!procedure::t))
            (__tmp209667 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp209668
         '()
         __tmp209667
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args209375%_
        (apply make-instance gxc#!predicate::t _%$args209375%_)))
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
      (let ((__tmp209670 (list gxc#!procedure::t))
            (__tmp209669 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp209670
         '()
         __tmp209669
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args209372%_
        (apply make-instance gxc#!constructor::t _%$args209372%_)))
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
      (let ((__tmp209672 (list gxc#!procedure::t))
            (__tmp209671 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp209672
         '(slot checked?)
         __tmp209671
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args209369%_
        (apply make-instance gxc#!accessor::t _%$args209369%_)))
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
      (let ((__tmp209674 (list gxc#!procedure::t))
            (__tmp209673 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp209674
         '(slot checked?)
         __tmp209673
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args209366%_
        (apply make-instance gxc#!mutator::t _%$args209366%_)))
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
      (let ((__tmp209676 (list gxc#!type::t))
            (__tmp209675 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp209676
         '(methods)
         __tmp209675
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args209363%_
        (apply make-instance gxc#!interface::t _%$args209363%_)))
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
      (let ((__tmp209678 (list gxc#!procedure::t))
            (__tmp209677
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp209678
         '(arity dispatch inline inline-typedecl)
         __tmp209677
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args209360%_
        (apply make-instance gxc#!lambda::t _%$args209360%_)))
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
      (let ((__tmp209680 (list gxc#!procedure::t))
            (__tmp209679 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp209680
         '(clauses)
         __tmp209679
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args209357%_
        (apply make-instance gxc#!case-lambda::t _%$args209357%_)))
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
      (let ((__tmp209682 (list gxc#!procedure::t))
            (__tmp209681
             (cons (cons 'struct: '#t) '((equal: table dispatch)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp209682
         '(table dispatch)
         __tmp209681
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args209354%_
        (apply make-instance gxc#!kw-lambda::t _%$args209354%_)))
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
      (let ((__tmp209684 (list gxc#!procedure::t))
            (__tmp209683 (cons (cons 'struct: '#t) '((equal: keys main)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp209684
         '(keys main)
         __tmp209683
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args209351%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args209351%_)))
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
      (let ((__tmp209685 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp209685
         '()
         '((equal:))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args209348%_
        (apply make-instance gxc#!primitive::t _%$args209348%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp209687 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp209686 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp209687
         '()
         __tmp209686
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args209345%_
        (apply make-instance gxc#!primitive-predicate::t _%$args209345%_)))
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
      (let ((__tmp209689 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp209688 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp209689
         '()
         __tmp209688
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args209342%_
        (apply make-instance gxc#!primitive-lambda::t _%$args209342%_)))
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
      (let ((__tmp209691 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp209690 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp209691
         '()
         __tmp209690
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args209339%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args209339%_)))
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
      (lambda (_%self209326%_)
        (let ((_%self209329%_ _%self209326%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self209329%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self209189%_ _%klass209190%_)
        (let ((_%self209193%_ _%self209189%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self209193%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209193%_
             _%klass209190%_
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
      (lambda (_%self208879%_
               _%id208880%_
               _%super208881%_
               _%slots208882%_
               _%ctor-method208883%_
               _%struct?208884%_
               _%final?208885%_
               _%system?208886%_
               _%metaclass208887%_)
        (let ((_%self208890%_ _%self208879%_))
          (let _%lp208901%_ ((_%rest208903%_ _%super208881%_))
            (let* ((_%rest208904208912%_ _%rest208903%_)
                   (_%else208906208920%_ (lambda () '#!void))
                   (_%K208908208926%_
                    (lambda (_%rest208923%_ _%super-id208924%_)
                      (if (let ((__tmp209692
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id208880%_ '()))
                                  _%super-id208924%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp209692 '8 '#f '#f))
                          (let ((__tmp209693
                                 (cons '!class (cons _%id208880%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp209693
                             _%super-id208924%_))
                          '#!void)
                      (_%lp208901%_ _%rest208923%_))))
              (if (pair? _%rest208904208912%_)
                  (let ((_%hd208909208929%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest208904208912%_)))
                        (_%tl208910208931%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest208904208912%_))))
                    (let* ((_%super-id208934%_ _%hd208909208929%_)
                           (_%rest208936%_ _%tl208910208931%_))
                      (_%K208908208926%_ _%rest208936%_ _%super-id208934%_)))
                  '#!void)))
          (let* ((_%ctor-method208987%_
                  (let ((_%$e208938%_ _%ctor-method208883%_))
                    (if _%$e208938%_
                        _%$e208938%_
                        (let _%lp208941%_ ((_%rest208943%_ _%super208881%_)
                                           (_%method208944%_ '#f))
                          (let* ((_%rest208945208953%_ _%rest208943%_)
                                 (_%else208947208961%_
                                  (lambda () _%method208944%_))
                                 (_%K208949208975%_
                                  (lambda (_%rest208964%_ _%super-id208965%_)
                                    (let* ((_%klass208967%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id208880%_ '()))
                                             _%super-id208965%_))
                                           (_%$e208969%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass208967%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e208969%_
                                          ((lambda (_%ctor-method208972%_)
                                             (if _%method208944%_
                                                 (if (eq? _%ctor-method208972%_
                                                          _%method208944%_)
                                                     (_%lp208941%_
                                                      _%rest208964%_
                                                      _%ctor-method208972%_)
                                                     (let ((__tmp209694
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id208880%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp209694
                _%method208944%_
                _%ctor-method208972%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp208941%_
                                                  _%rest208964%_
                                                  _%ctor-method208972%_)))
                                           _%$e208969%_)
                                          (_%lp208941%_
                                           _%rest208964%_
                                           _%method208944%_))))))
                            (if (pair? _%rest208945208953%_)
                                (let ((_%hd208950208978%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest208945208953%_)))
                                      (_%tl208951208980%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest208945208953%_))))
                                  (let* ((_%super-id208983%_
                                          _%hd208950208978%_)
                                         (_%rest208985%_ _%tl208951208980%_))
                                    (_%K208949208975%_
                                     _%rest208985%_
                                     _%super-id208983%_)))
                                (_%else208947208961%_)))))))
                 (_g209695_
                  (let ((__tmp209699
                         (lambda (_%klass-id208989%_)
                           (cons _%klass-id208989%_
                                 (let ((__tmp209700
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id208880%_ '()))
                                         _%klass-id208989%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp209700
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp209697
                         (lambda (_%klass-id208991%_)
                           (let ((__tmp209698
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id208880%_ '()))
                                   _%klass-id208991%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp209698
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp209699
                     __tmp209697
                     eq?
                     identity
                     '()
                     _%super208881%_))))
            (begin
              (let ((_g209696_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g209695_)
                           (##values-length _g209695_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g209696_ 2)))
                    (error "Context expects 2 values" _g209696_)))
              (let ((_%precedence-list208993%_
                     (let () (declare (not safe)) (##values-ref _g209695_ 0)))
                    (_%base-struct208994%_
                     (let () (declare (not safe)) (##values-ref _g209695_ 1))))
                (let* ((_%precedence-list209038%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id208880%_ '(t object class)))
                            _%precedence-list208993%_
                            (if (memq 'object::t _%precedence-list208993%_)
                                _%precedence-list208993%_
                                (if _%system?208886%_
                                    (if (memq 't::t _%precedence-list208993%_)
                                        _%precedence-list208993%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list208993%_
                                           '(t::t))))
                                    (let _%loop209000%_ ((_%tail209002%_
                                                          _%precedence-list208993%_)
                                                         (_%head209003%_ '()))
                                      (let* ((_%tail209004209012%_
                                              _%tail209002%_)
                                             (_%else209006209020%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (foldl__0
                                                   cons
                                                   '(object::t t::t)
                                                   _%head209003%_))))
                                             (_%K209008209026%_
                                              (lambda (_%rest209023%_
                                                       _%hd209024%_)
                                                (if (eq? _%hd209024%_ 't::t)
                                                    (let ((__tmp209701
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail209002%_)))
              (declare (not safe))
              (foldl__0 cons __tmp209701 _%head209003%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop209000%_
                                                     _%rest209023%_
                                                     (cons _%hd209024%_
                                                           _%head209003%_))))))
                                        (if (pair? _%tail209004209012%_)
                                            (let ((_%hd209009209029%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail209004209012%_)))
                                                  (_%tl209010209031%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail209004209012%_))))
                                              (let* ((_%hd209034%_
                                                      _%hd209009209029%_)
                                                     (_%rest209036%_
                                                      _%tl209010209031%_))
                                                (_%K209008209026%_
                                                 _%rest209036%_
                                                 _%hd209034%_)))
                                            (_%else209006209020%_))))))))
                       (_%fields209040%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id208880%_ '()))
                         _%base-struct208994%_
                         _%precedence-list209038%_
                         _%slots208882%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self208890%_
                     _%id208880%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self208890%_
                     _%super208881%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self208890%_
                     _%precedence-list209038%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self208890%_
                     _%slots208882%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self208890%_
                     _%fields209040%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self208890%_
                     _%ctor-method208987%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self208890%_
                     _%struct?208884%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self208890%_
                     _%final?208885%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self208890%_
                     _%metaclass208887%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self209043%_
               _%id209044%_
               _%super209045%_
               _%precedence-list209046%_
               _%slots209047%_
               _%fields209048%_
               _%constructor209049%_
               _%struct?209050%_
               _%final?209051%_
               _%system?209052%_
               _%metaclass209053%_
               _%methods209054%_)
        (let ((_%self209057%_ _%self209043%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209057%_
             _%id209044%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209057%_
             _%super209045%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209057%_
             _%precedence-list209046%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209057%_
             _%slots209047%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209057%_
             _%fields209048%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209057%_
             _%constructor209049%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209057%_
             _%struct?209050%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209057%_
             _%final?209051%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209057%_
             _%metaclass209053%_
             '10
             '#f
             '#f))
          (if _%methods209054%_
              (let ((__tmp209702
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods209054%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self209057%_
                 __tmp209702
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g209703_
        (let ((_g209704_ (let () (declare (not safe)) (##length _g209703_))))
          (cond ((let () (declare (not safe)) (##fx= _g209704_ 9))
                 (apply gxc#!class:::init!__0 _g209703_))
                ((let () (declare (not safe)) (##fx= _g209704_ 12))
                 (apply gxc#!class:::init!__1 _g209703_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g209703_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where208731%_
               _%base-struct208732%_
               _%precedence-list208733%_
               _%direct-slots208734%_)
        (let* ((_%base-fields208736%_
                (if _%base-struct208732%_
                    (let ((__tmp209705
                           (gxc#optimizer-resolve-class
                            _%where208731%_
                            _%base-struct208732%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp209705 '5 '#f '#f))
                    '()))
               (_%r-fields208738%_ (reverse _%base-fields208736%_))
               (_%seen-slots208746%_
                (let ((_%tab208740%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g208741208743%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab208740%_ _%g208741208743%_ '#t)))
                   _%base-fields208736%_)
                  _%tab208740%_))
               (_%process-slot208750%_
                (lambda (_%slot208748%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots208746%_ _%slot208748%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots208746%_
                           _%slot208748%_
                           '#t))
                        (set! _%r-fields208738%_
                              (cons _%slot208748%_ _%r-fields208738%_)))))))
          (for-each
           (lambda (_%mixin208753%_)
             (let ((_%klass208755%_
                    (gxc#optimizer-resolve-class
                     _%where208731%_
                     _%mixin208753%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass208755%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot208750%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass208755%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list208733%_)
          (for-each _%process-slot208750%_ _%direct-slots208734%_)
          (let () (declare (not safe)) (##reverse _%r-fields208738%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass208690%_ _%slot208691%_)
        (let _%lp208693%_ ((_%rest208695%_
                            (##structure-ref
                             _%klass208690%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset208696%_ '1))
          (let* ((_%rest208697208705%_ _%rest208695%_)
                 (_%else208699208713%_
                  (lambda ()
                    (let ((__tmp209707
                           (##structure-ref
                            _%klass208690%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp209706
                           (##structure-ref
                            _%klass208690%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp209707
                       __tmp209706
                       _%slot208691%_))))
                 (_%K208701208719%_
                  (lambda (_%rest208716%_ _%s208717%_)
                    (if (eq? _%s208717%_ _%slot208691%_)
                        _%offset208696%_
                        (_%lp208693%_
                         _%rest208716%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset208696%_ '1)))))))
            (if (pair? _%rest208697208705%_)
                (let ((_%hd208702208722%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest208697208705%_)))
                      (_%tl208703208724%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest208697208705%_))))
                  (let* ((_%s208727%_ _%hd208702208722%_)
                         (_%rest208729%_ _%tl208703208724%_))
                    (_%K208701208719%_ _%rest208729%_ _%s208727%_)))
                (_%else208699208713%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass208648%_ _%slot208649%_)
        (if (gxc#!class-struct-slot? _%klass208648%_ _%slot208649%_)
            _%klass208648%_
            (let _%lp208651%_ ((_%rest208653%_
                                (##structure-ref
                                 _%klass208648%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest208654208662%_ _%rest208653%_)
                     (_%else208656208670%_ (lambda () '#f))
                     (_%K208658208678%_
                      (lambda (_%rest208673%_ _%super208674%_)
                        (let ((_%super-class208676%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass208648%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot208649%_ '())))
                                _%super208674%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class208676%_
                               _%slot208649%_)
                              _%super-class208676%_
                              (_%lp208651%_ _%rest208673%_))))))
                (if (pair? _%rest208654208662%_)
                    (let ((_%hd208659208681%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest208654208662%_)))
                          (_%tl208660208683%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest208654208662%_))))
                      (let* ((_%super208686%_ _%hd208659208681%_)
                             (_%rest208688%_ _%tl208660208683%_))
                        (_%K208658208678%_ _%rest208688%_ _%super208686%_)))
                    (_%else208656208670%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass208645%_ _%slot208646%_)
        (if (##structure-ref _%klass208645%_ '7 gxc#!class::t '#f)
            (memq _%slot208646%_
                  (##structure-ref _%klass208645%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self208630%_ _%id208631%_)
        (let ((_%self208634%_ _%self208630%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208634%_
             _%id208631%_
             '1
             '#f
             '#f))
          (let ((__tmp209708
                 (let ((__obj209640
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
                      __obj209640
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj209640
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj209640
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj209640)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208634%_
             __tmp209708
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self208493%_ _%id208494%_)
        (let ((_%self208497%_ _%self208493%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208497%_
             _%id208494%_
             '1
             '#f
             '#f))
          (let ((__tmp209709
                 (let ((__obj209641
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
                      __obj209641
                      _%id208494%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj209641
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj209641)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208497%_
             __tmp209709
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
      (lambda (_%self208354%_ _%id208355%_ _%slot208356%_ _%checked?208357%_)
        (let ((_%self208360%_ _%self208354%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208360%_
             _%id208355%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208360%_
             _%slot208356%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208360%_
             _%checked?208357%_
             '4
             '#f
             '#f))
          (let ((__tmp209710
                 (let ((__obj209642
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
                     (##unchecked-structure-set! __obj209642 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj209642
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp209711 (cons _%id208355%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj209642
                      __tmp209711
                      '3
                      '#f
                      '#f))
                   __obj209642)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208360%_
             __tmp209710
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self208215%_ _%id208216%_ _%slot208217%_ _%checked?208218%_)
        (let ((_%self208221%_ _%self208215%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208221%_
             _%id208216%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208221%_
             _%slot208217%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208221%_
             _%checked?208218%_
             '4
             '#f
             '#f))
          (let ((__tmp209712
                 (let ((__obj209643
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
                      __obj209643
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj209643
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp209713 (cons _%id208216%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj209643
                      __tmp209713
                      '3
                      '#f
                      '#f))
                   __obj209643)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208221%_
             __tmp209712
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords208059%_
               _%signature208056208060%_
               _%self208061%_
               _%arity208062%_
               _%dispatch208063%_)
        (let* ((_%signature208065%_
                (if (eq? _%signature208056208060%_ absent-value)
                    '#f
                    _%signature208056208060%_))
               (_%self208068%_ _%self208061%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self208068%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208068%_
             _%arity208062%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208068%_
             _%dispatch208063%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208068%_
             _%signature208065%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords208083%_ . _%args208084%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords208083%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords208083%_
                  'signature:
                  absent-value))
               _%args208084%_)))
    (define gxc#!lambda:::init!
      (lambda _%args208057208090%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args208057208090%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords207900%_
               _%signature207897207901%_
               _%self207902%_
               _%clauses207903%_)
        (let* ((_%signature207905%_
                (if (eq? _%signature207897207901%_ absent-value)
                    '#f
                    _%signature207897207901%_))
               (_%self207908%_ _%self207902%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self207908%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207908%_
             _%signature207905%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207908%_
             _%clauses207903%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords207923%_ . _%args207924%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords207923%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords207923%_
                  'signature:
                  absent-value))
               _%args207924%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args207898207930%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args207898207930%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self207758%_ _%tab207759%_ _%dispatch207760%_)
        (let ((_%self207763%_ _%self207758%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self207763%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207763%_
             _%tab207759%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207763%_
             _%dispatch207760%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self207620%_ _%keys207621%_ _%main207622%_)
        (let ((_%self207625%_ _%self207620%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self207625%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207625%_
             _%keys207621%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207625%_
             _%main207622%_
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
      (lambda (_%self207239%_ _%id207240%_)
        (let ((_%self207243%_ _%self207239%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207243%_
             _%id207240%_
             '1
             '#f
             '#f))
          (let ((__tmp209714
                 (let ((__obj209644
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
                      __obj209644
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj209644
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj209644
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj209644)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207243%_
             __tmp209714
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
      (lambda (_%klass207109%_)
        (let ((_%$e207111%_
               (##structure-ref _%klass207109%_ '11 gxc#!class::t '#f)))
          (if _%$e207111%_
              _%$e207111%_
              (let ((_%tab207115%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass207109%_
                 _%tab207115%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab207115%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass207101%_ _%method207102%_)
        (let ((_%tab207103207105%_
               (##structure-ref _%klass207101%_ '11 gxc#!class::t '#f)))
          (if _%tab207103207105%_
              (let ((_%tab207107%_ _%tab207103207105%_))
                (declare (not safe))
                (hash-get _%tab207107%_ _%method207102%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a207086%_ _%type-b207087%_)
        (if _%type-a207086%_
            (if _%type-b207087%_
                (let ((_%$e207089%_ (eq? _%type-a207086%_ _%type-b207087%_)))
                  (if _%$e207089%_
                      _%$e207089%_
                      (let ((_%$e207092%_
                             (eq? (##structure-ref
                                   _%type-b207087%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e207092%_
                            _%$e207092%_
                            (let ((_%$e207095%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a207086%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b207087%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e207095%_
                                  _%$e207095%_
                                  (let ((_%$e207098%_
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-instance-of?
                                                _%type-a207086%_
                                                'gxc#!class::t))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-instance-of?
                                                    _%type-b207087%_
                                                    'gxc#!class::t))
                                                 (gxc#!class-subclass?
                                                  _%type-a207086%_
                                                  _%type-b207087%_)
                                                 '#f)
                                             '#f)))
                                    (if _%$e207098%_
                                        _%$e207098%_
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%type-a207086%_
                                               'gxc#!interface::t))
                                            (eq? (##structure-ref
                                                  _%type-b207087%_
                                                  '1
                                                  gxc#!type::t
                                                  '#f)
                                                 'gerbil#interface-descriptor::t)
                                            '#f)))))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a207037%_ _%klass-b207038%_)
        (let ((_%$e207040%_
               (eq? (##structure-ref _%klass-a207037%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b207038%_ '1 gxc#!type::t '#f))))
          (if _%$e207040%_
              _%$e207040%_
              (let ((_%klass-id-b207043%_
                     (##structure-ref _%klass-b207038%_ '1 gxc#!type::t '#f))
                    (_%precedence-list207044%_
                     (##structure-ref _%klass-a207037%_ '3 gxc#!class::t '#f)))
                (let _%loop207046%_ ((_%rest207048%_
                                      _%precedence-list207044%_))
                  (let* ((_%rest207049207057%_ _%rest207048%_)
                         (_%else207051207065%_ (lambda () '#f))
                         (_%K207053207074%_
                          (lambda (_%rest207068%_ _%klass-name207069%_)
                            (let ((_%$e207071%_
                                   (eq? (let ((__tmp209715
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a207037%_
                                                            (cons _%klass-b207038%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name207069%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp209715
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b207043%_)))
                              (if _%$e207071%_
                                  _%$e207071%_
                                  (_%loop207046%_ _%rest207068%_))))))
                    (if (pair? _%rest207049207057%_)
                        (let ((_%hd207054207077%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest207049207057%_)))
                              (_%tl207055207079%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest207049207057%_))))
                          (let* ((_%klass-name207082%_ _%hd207054207077%_)
                                 (_%rest207084%_ _%tl207055207079%_))
                            (_%K207053207074%_
                             _%rest207084%_
                             _%klass-name207082%_)))
                        (_%else207051207065%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type207035%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type207035%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type207035%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc207024%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc207024%_ 'gxc#!procedure::t))
            (let ((_%proc207027%_ _%proc207024%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc207027%_ '2 '#f '#f))
                  (let ((__tmp209716
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc207027%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp209716 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@382.11-382.15"
               'contract:
               '!procedure?
               'value:
               _%proc207024%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym207006%_ _%type207007%_ _%local?207008%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type207007%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym207006%_
                     _%type207007%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym207006%_ '" " _%type207007%_))
        (let ((_%table207010%_
               (if _%local?207008%_
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
          (hash-put! _%table207010%_ _%sym207006%_ _%type207007%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym207015%_ _%type207016%_)
        (let ((_%local?207018%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym207015%_
           _%type207016%_
           _%local?207018%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g209717_
        (let ((_g209718_ (let () (declare (not safe)) (##length _g209717_))))
          (cond ((let () (declare (not safe)) (##fx= _g209718_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g209717_))
                ((let () (declare (not safe)) (##fx= _g209718_ 3))
                 (apply gxc#optimizer-declare-type!__% _g209717_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g209717_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym207000%_ _%type207001%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type207001%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym207000%_
                     _%type207001%_)))
        (let ((_%table207003%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp209719
                 (let () (declare (not safe)) (struct->list _%type207001%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym207000%_ '" " __tmp209719))
          (let ()
            (declare (not safe))
            (hash-put! _%table207003%_ _%sym207000%_ _%type207001%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table207003%_ _%type207001%_ _%sym207000%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym206995%_ _%type206996%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type206996%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym206995%_
                     _%type206996%_)))
        (let ((_%table206998%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table206998%_ _%sym206995%_))
              '#!void
              (begin
                (let ((__tmp209720
                       (let ()
                         (declare (not safe))
                         (struct->list _%type206996%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym206995%_
                   '" "
                   __tmp209720))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table206998%_ _%sym206995%_ _%type206996%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table206998%_
                   _%type206996%_
                   _%sym206995%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym206993%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym206993%_))
        (let ((__tmp209721
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp209721 _%sym206993%_))
        (let ((__tmp209722
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp209722 _%sym206993%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t206961%_
               _%method206962%_
               _%sym206963%_
               _%rebind?206964%_)
        (let ((__tmp209723
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp209723 _%sym206963%_ '#t))
        (let ((_%klass206966%_ (gxc#optimizer-lookup-class _%type-t206961%_)))
          (if _%klass206966%_
              (let* ((_%vtab206968%_ (gxc#!class-method-table _%klass206966%_))
                     (_%$e206970%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab206968%_ _%method206962%_))))
                (if _%$e206970%_
                    ((lambda (_%existing206973%_)
                       (if _%rebind?206964%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t206961%_
                                '" "
                                _%method206962%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab206968%_
                                _%method206962%_
                                _%sym206963%_)))
                           (if (eq? _%existing206973%_ _%sym206963%_)
                               '#!void
                               (let ((__tmp209724
                                      (cons 'bind-method!
                                            (cons _%type-t206961%_
                                                  (cons _%method206962%_
                                                        (cons _%sym206963%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp209724
                                  _%method206962%_)))))
                     _%$e206970%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t206961%_
                         '" "
                         _%method206962%_
                         '" => "
                         _%sym206963%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab206968%_
                         _%method206962%_
                         _%sym206963%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t206961%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t206982%_ _%method206983%_ _%sym206984%_)
        (let ((_%rebind?206986%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t206982%_
           _%method206983%_
           _%sym206984%_
           _%rebind?206986%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g209725_
        (let ((_g209726_ (let () (declare (not safe)) (##length _g209725_))))
          (cond ((let () (declare (not safe)) (##fx= _g209726_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g209725_))
                ((let () (declare (not safe)) (##fx= _g209726_ 4))
                 (apply gxc#optimizer-declare-method!__% _g209725_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g209725_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym206947%_)
        (let ((_%$e206949%_
               (let ((__tmp209727
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym206947%_ __tmp209727))))
          (if _%$e206949%_
              _%$e206949%_
              (let ((_%$e206957%_
                     (let ((_%ht206951206953%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht206951206953%_
                           (let ((_%ht206955%_ _%ht206951206953%_))
                             (declare (not safe))
                             (hash-get _%ht206955%_ _%sym206947%_))
                           '#f))))
                (if _%$e206957%_
                    _%$e206957%_
                    (let ((__tmp209728
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp209728 _%sym206947%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym206940%_)
        (let ((_%type206941206943%_ (gxc#optimizer-lookup-type _%sym206940%_)))
          (if _%type206941206943%_
              (let ((_%type206945%_ _%type206941206943%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type206945%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type206945%_ '1 '#f '#f)))
                    _%type206945%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym206936%_)
        (let ((_%table206938%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table206938%_ _%sym206936%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where206921%_ _%sym206922%_)
        (let ((_%$e206925%_ (gxc#optimizer-lookup-class _%sym206922%_)))
          (if _%$e206925%_
              ((lambda (_%g206927206929%_)
                 (let ((_%val206932%_ _%g206927206929%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val206932%_
                          'gxc#!class::t))
                       _%val206932%_
                       (begin
                         (raise-contract-violation-error
                          '"contract violation"
                          'context:
                          'gerbil/compiler/optimize-base
                          'contract:
                          '(!class? val)
                          'value:
                          _%val206932%_)
                         '#!void))))
               _%$e206925%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where206921%_
                   _%sym206922%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass206919%_)
        (let ((__tmp209729
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp209729 _%klass206919%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t206916%_ _%method206917%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t206916%_)
         _%method206917%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym206914%_)
        (let ((__tmp209730
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp209730 _%sym206914%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e206389%_
                  (lambda (_%t206855%_)
                    (if (symbol? _%t206855%_)
                        (_%type-e206389%_
                         (gxc#optimizer-lookup-type _%t206855%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t206855%_
                               'gxc#!lambda::t))
                            (let* ((_%t206859%_ _%t206855%_)
                                   (_%t206863%_ _%t206859%_))
                              (_%__lambda-type206515%_ _%t206863%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t206855%_
                                   'gxc#!kw-lambda::t))
                                (let* ((_%t206875%_ _%t206855%_)
                                       (_%t206879%_ _%t206875%_))
                                  (_%__kw-lambda-type206638%_ _%t206879%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t206855%_
                                       'gxc#!kw-lambda-primary::t))
                                    (let* ((_%t206890%_ _%t206855%_)
                                           (_%t206894%_ _%t206890%_))
                                      (_%__kw-lambda-primary-type206761%_
                                       _%t206894%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t206855%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t206905%_ _%t206855%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t206905%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp209731
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t206905%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp209731
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t206855%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t206855%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%__lambda-type206515%_
                  (lambda (_%t206843%_)
                    (let ((_%t206846%_ _%t206843%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t206846%_ '4 '#f '#f))
                          (_%type-e206389%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t206846%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t206846%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp209732
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t206846%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp209732
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%lambda-type206516%_
                  (lambda (_%t206831%_)
                    (let ((_%t206834%_ _%t206831%_))
                      (_%__lambda-type206515%_ _%t206834%_))))
                 (_%__kw-lambda-type206638%_
                  (lambda (_%t206819%_)
                    (let ((_%t206822%_ _%t206819%_))
                      (_%type-e206389%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t206822%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-type206639%_
                  (lambda (_%t206807%_)
                    (let ((_%t206810%_ _%t206807%_))
                      (_%__kw-lambda-type206638%_ _%t206810%_))))
                 (_%__kw-lambda-primary-type206761%_
                  (lambda (_%t206795%_)
                    (let ((_%t206798%_ _%t206795%_))
                      (_%type-e206389%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t206798%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type206762%_
                  (lambda (_%t206783%_)
                    (let ((_%t206786%_ _%t206783%_))
                      (_%__kw-lambda-primary-type206761%_ _%t206786%_)))))
          (let* ((_%ht1206764%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2206766%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result206768%_
                  (if _%ht1206764%_
                      (let () (declare (not safe)) (hash->list _%ht1206764%_))
                      '()))
                 (_%result206770%_
                  (if _%ht2206766%_
                      (let ((__tmp209733
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2206766%_))))
                        (declare (not safe))
                        (foldl__0 cons _%result206768%_ __tmp209733))
                      _%result206768%_)))
            (for-each
             (lambda (_%p206773%_)
               (let* ((_%t206775%_ (cdr _%p206773%_))
                      (_%tr206777%_ (_%type-e206389%_ _%t206775%_)))
                 (set-cdr! _%p206773%_ _%tr206777%_)))
             _%result206770%_)
            (list-sort
             (lambda (_%a206780%_ _%b206781%_)
               (let ((__tmp209735 (symbol->string (car _%a206780%_)))
                     (__tmp209734 (symbol->string (car _%b206781%_))))
                 (declare (not safe))
                 (##string<? __tmp209735 __tmp209734)))
             _%result206770%_)))))))
