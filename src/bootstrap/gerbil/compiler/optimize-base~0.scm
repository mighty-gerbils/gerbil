(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1771092630)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp209642 (list)) (__tmp209641 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp209642
         '(type classes ssxi methods)
         __tmp209641
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args209561%_
        (apply make-instance gxc#optimizer-info::t _%$args209561%_)))
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
      (lambda (_%self209548%_)
        (let ((_%self209551%_ _%self209548%_))
          (if (let ((__tmp209643
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self209551%_))))
                (declare (not safe))
                (##fx< '4 __tmp209643))
              (begin
                (let ((__tmp209644
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self209551%_
                   __tmp209644
                   '1
                   '#f
                   '#f))
                (let ((__tmp209645
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self209551%_
                   __tmp209645
                   '2
                   '#f
                   '#f))
                (let ((__tmp209646
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self209551%_
                   __tmp209646
                   '3
                   '#f
                   '#f))
                (let ((__tmp209647
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self209551%_
                   __tmp209647
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp209648
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self209551%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self209551%_
                       '4
                       __tmp209648))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp209650 (list))
            (__tmp209649
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp209650
         '(id)
         __tmp209649
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args209423%_
        (apply make-instance gxc#!type::t _%$args209423%_)))
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
      (let ((__tmp209652 (list gxc#!type::t))
            (__tmp209651 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp209652
         '()
         __tmp209651
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args209420%_
        (apply make-instance gxc#!abort::t _%$args209420%_)))
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
      (let ((__tmp209654 (list gxc#!type::t))
            (__tmp209653 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp209654
         '()
         __tmp209653
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args209417%_
        (apply make-instance gxc#!alias::t _%$args209417%_)))
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
      (let ((__tmp209656 (list))
            (__tmp209655
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp209656
         '(return effect arguments unchecked origin)
         __tmp209655
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args209414%_
        (apply make-instance gxc#!signature::t _%$args209414%_)))
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
      (let ((__tmp209658 (list gxc#!type::t))
            (__tmp209657
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp209658
         '(signature)
         __tmp209657
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
      (lambda (_%id209401%_ _%signature209402%_)
        (let ((_%signature209405%_ _%signature209402%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id209401%_ _%signature209405%_))))
    (define gxc#make-!procedure
      (lambda (_%id206209%_ _%signature206211%_)
        (if ((lambda (_%$obj206215%_)
               (or (not _%$obj206215%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj206215%_
                      'gxc#!signature::t))))
             _%signature206211%_)
            (let ((_%signature206222%_ _%signature206211%_))
              (gxc#__make-!procedure _%id206209%_ _%signature206222%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature206211%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj209380%_ _%signature209381%_)
        (let* ((_%$obj209384%_ _%$obj209380%_)
               (_%signature209392%_ _%signature209381%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj209384%_
           _%signature209392%_
           '2
           '#f
           '#f))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj206352%_ _%signature206354%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj206352%_ 'gxc#!procedure::t))
            (let ((_%$obj206358%_ _%$obj206352%_))
              (if ((lambda (_%$obj206367%_)
                     (or (not _%$obj206367%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj206367%_
                            'gxc#!signature::t))))
                   _%signature206354%_)
                  (let ((_%signature206374%_ _%signature206354%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj206358%_
                     _%signature206374%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature206354%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj206352%_)
              '#!void))))
    (define gxc#!class-meta::t
      (let ((__tmp209660 (list gxc#!type::t))
            (__tmp209659 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp209660
         '(class)
         __tmp209659
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args209377%_
        (apply make-instance gxc#!class-meta::t _%$args209377%_)))
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
      (let ((__tmp209662 (list gxc#!type::t))
            (__tmp209661
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
         __tmp209662
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp209661
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args209374%_
        (apply make-instance gxc#!class::t _%$args209374%_)))
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
      (let ((__tmp209664 (list gxc#!procedure::t))
            (__tmp209663 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp209664
         '()
         __tmp209663
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args209371%_
        (apply make-instance gxc#!predicate::t _%$args209371%_)))
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
      (let ((__tmp209666 (list gxc#!procedure::t))
            (__tmp209665 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp209666
         '()
         __tmp209665
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args209368%_
        (apply make-instance gxc#!constructor::t _%$args209368%_)))
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
      (let ((__tmp209668 (list gxc#!procedure::t))
            (__tmp209667 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp209668
         '(slot checked?)
         __tmp209667
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args209365%_
        (apply make-instance gxc#!accessor::t _%$args209365%_)))
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
      (let ((__tmp209670 (list gxc#!procedure::t))
            (__tmp209669 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp209670
         '(slot checked?)
         __tmp209669
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args209362%_
        (apply make-instance gxc#!mutator::t _%$args209362%_)))
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
      (let ((__tmp209672 (list gxc#!type::t))
            (__tmp209671 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp209672
         '(methods)
         __tmp209671
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args209359%_
        (apply make-instance gxc#!interface::t _%$args209359%_)))
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
      (let ((__tmp209674 (list gxc#!procedure::t))
            (__tmp209673
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp209674
         '(arity dispatch inline inline-typedecl)
         __tmp209673
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args209356%_
        (apply make-instance gxc#!lambda::t _%$args209356%_)))
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
      (let ((__tmp209676 (list gxc#!procedure::t))
            (__tmp209675 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp209676
         '(clauses)
         __tmp209675
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args209353%_
        (apply make-instance gxc#!case-lambda::t _%$args209353%_)))
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
      (let ((__tmp209678 (list gxc#!procedure::t))
            (__tmp209677
             (cons (cons 'struct: '#t) '((equal: table dispatch)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp209678
         '(table dispatch)
         __tmp209677
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args209350%_
        (apply make-instance gxc#!kw-lambda::t _%$args209350%_)))
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
      (let ((__tmp209680 (list gxc#!procedure::t))
            (__tmp209679 (cons (cons 'struct: '#t) '((equal: keys main)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp209680
         '(keys main)
         __tmp209679
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args209347%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args209347%_)))
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
      (let ((__tmp209681 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp209681
         '()
         '((equal:))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args209344%_
        (apply make-instance gxc#!primitive::t _%$args209344%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp209683 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp209682 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp209683
         '()
         __tmp209682
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args209341%_
        (apply make-instance gxc#!primitive-predicate::t _%$args209341%_)))
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
      (let ((__tmp209685 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp209684 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp209685
         '()
         __tmp209684
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args209338%_
        (apply make-instance gxc#!primitive-lambda::t _%$args209338%_)))
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
      (let ((__tmp209687 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp209686 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp209687
         '()
         __tmp209686
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args209335%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args209335%_)))
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
      (lambda (_%self209322%_)
        (let ((_%self209325%_ _%self209322%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self209325%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self209185%_ _%klass209186%_)
        (let ((_%self209189%_ _%self209185%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self209189%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209189%_
             _%klass209186%_
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
      (lambda (_%self208875%_
               _%id208876%_
               _%super208877%_
               _%slots208878%_
               _%ctor-method208879%_
               _%struct?208880%_
               _%final?208881%_
               _%system?208882%_
               _%metaclass208883%_)
        (let ((_%self208886%_ _%self208875%_))
          (let _%lp208897%_ ((_%rest208899%_ _%super208877%_))
            (let* ((_%rest208900208908%_ _%rest208899%_)
                   (_%else208902208916%_ (lambda () '#!void))
                   (_%K208904208922%_
                    (lambda (_%rest208919%_ _%super-id208920%_)
                      (if (let ((__tmp209688
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id208876%_ '()))
                                  _%super-id208920%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp209688 '8 '#f '#f))
                          (let ((__tmp209689
                                 (cons '!class (cons _%id208876%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp209689
                             _%super-id208920%_))
                          '#!void)
                      (_%lp208897%_ _%rest208919%_))))
              (if (pair? _%rest208900208908%_)
                  (let ((_%hd208905208925%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest208900208908%_)))
                        (_%tl208906208927%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest208900208908%_))))
                    (let* ((_%super-id208930%_ _%hd208905208925%_)
                           (_%rest208932%_ _%tl208906208927%_))
                      (_%K208904208922%_ _%rest208932%_ _%super-id208930%_)))
                  '#!void)))
          (let* ((_%ctor-method208983%_
                  (let ((_%$e208934%_ _%ctor-method208879%_))
                    (if _%$e208934%_
                        _%$e208934%_
                        (let _%lp208937%_ ((_%rest208939%_ _%super208877%_)
                                           (_%method208940%_ '#f))
                          (let* ((_%rest208941208949%_ _%rest208939%_)
                                 (_%else208943208957%_
                                  (lambda () _%method208940%_))
                                 (_%K208945208971%_
                                  (lambda (_%rest208960%_ _%super-id208961%_)
                                    (let* ((_%klass208963%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id208876%_ '()))
                                             _%super-id208961%_))
                                           (_%$e208965%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass208963%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e208965%_
                                          ((lambda (_%ctor-method208968%_)
                                             (if _%method208940%_
                                                 (if (eq? _%ctor-method208968%_
                                                          _%method208940%_)
                                                     (_%lp208937%_
                                                      _%rest208960%_
                                                      _%ctor-method208968%_)
                                                     (let ((__tmp209690
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id208876%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp209690
                _%method208940%_
                _%ctor-method208968%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp208937%_
                                                  _%rest208960%_
                                                  _%ctor-method208968%_)))
                                           _%$e208965%_)
                                          (_%lp208937%_
                                           _%rest208960%_
                                           _%method208940%_))))))
                            (if (pair? _%rest208941208949%_)
                                (let ((_%hd208946208974%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest208941208949%_)))
                                      (_%tl208947208976%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest208941208949%_))))
                                  (let* ((_%super-id208979%_
                                          _%hd208946208974%_)
                                         (_%rest208981%_ _%tl208947208976%_))
                                    (_%K208945208971%_
                                     _%rest208981%_
                                     _%super-id208979%_)))
                                (_%else208943208957%_)))))))
                 (_g209691_
                  (let ((__tmp209695
                         (lambda (_%klass-id208985%_)
                           (cons _%klass-id208985%_
                                 (let ((__tmp209696
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id208876%_ '()))
                                         _%klass-id208985%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp209696
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp209693
                         (lambda (_%klass-id208987%_)
                           (let ((__tmp209694
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id208876%_ '()))
                                   _%klass-id208987%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp209694
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp209695
                     __tmp209693
                     eq?
                     identity
                     '()
                     _%super208877%_))))
            (begin
              (let ((_g209692_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g209691_)
                           (##values-length _g209691_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g209692_ 2)))
                    (error "Context expects 2 values" _g209692_)))
              (let ((_%precedence-list208989%_
                     (let () (declare (not safe)) (##values-ref _g209691_ 0)))
                    (_%base-struct208990%_
                     (let () (declare (not safe)) (##values-ref _g209691_ 1))))
                (let* ((_%precedence-list209034%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id208876%_ '(t object class)))
                            _%precedence-list208989%_
                            (if (memq 'object::t _%precedence-list208989%_)
                                _%precedence-list208989%_
                                (if _%system?208882%_
                                    (if (memq 't::t _%precedence-list208989%_)
                                        _%precedence-list208989%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list208989%_
                                           '(t::t))))
                                    (let _%loop208996%_ ((_%tail208998%_
                                                          _%precedence-list208989%_)
                                                         (_%head208999%_ '()))
                                      (let* ((_%tail209000209008%_
                                              _%tail208998%_)
                                             (_%else209002209016%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (foldl__0
                                                   cons
                                                   '(object::t t::t)
                                                   _%head208999%_))))
                                             (_%K209004209022%_
                                              (lambda (_%rest209019%_
                                                       _%hd209020%_)
                                                (if (eq? _%hd209020%_ 't::t)
                                                    (let ((__tmp209697
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail208998%_)))
              (declare (not safe))
              (foldl__0 cons __tmp209697 _%head208999%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop208996%_
                                                     _%rest209019%_
                                                     (cons _%hd209020%_
                                                           _%head208999%_))))))
                                        (if (pair? _%tail209000209008%_)
                                            (let ((_%hd209005209025%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail209000209008%_)))
                                                  (_%tl209006209027%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail209000209008%_))))
                                              (let* ((_%hd209030%_
                                                      _%hd209005209025%_)
                                                     (_%rest209032%_
                                                      _%tl209006209027%_))
                                                (_%K209004209022%_
                                                 _%rest209032%_
                                                 _%hd209030%_)))
                                            (_%else209002209016%_))))))))
                       (_%fields209036%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id208876%_ '()))
                         _%base-struct208990%_
                         _%precedence-list209034%_
                         _%slots208878%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self208886%_
                     _%id208876%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self208886%_
                     _%super208877%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self208886%_
                     _%precedence-list209034%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self208886%_
                     _%slots208878%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self208886%_
                     _%fields209036%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self208886%_
                     _%ctor-method208983%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self208886%_
                     _%struct?208880%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self208886%_
                     _%final?208881%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self208886%_
                     _%metaclass208883%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self209039%_
               _%id209040%_
               _%super209041%_
               _%precedence-list209042%_
               _%slots209043%_
               _%fields209044%_
               _%constructor209045%_
               _%struct?209046%_
               _%final?209047%_
               _%system?209048%_
               _%metaclass209049%_
               _%methods209050%_)
        (let ((_%self209053%_ _%self209039%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209053%_
             _%id209040%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209053%_
             _%super209041%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209053%_
             _%precedence-list209042%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209053%_
             _%slots209043%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209053%_
             _%fields209044%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209053%_
             _%constructor209045%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209053%_
             _%struct?209046%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209053%_
             _%final?209047%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209053%_
             _%metaclass209049%_
             '10
             '#f
             '#f))
          (if _%methods209050%_
              (let ((__tmp209698
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods209050%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self209053%_
                 __tmp209698
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g209699_
        (let ((_g209700_ (let () (declare (not safe)) (##length _g209699_))))
          (cond ((let () (declare (not safe)) (##fx= _g209700_ 9))
                 (apply gxc#!class:::init!__0 _g209699_))
                ((let () (declare (not safe)) (##fx= _g209700_ 12))
                 (apply gxc#!class:::init!__1 _g209699_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g209699_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where208727%_
               _%base-struct208728%_
               _%precedence-list208729%_
               _%direct-slots208730%_)
        (let* ((_%base-fields208732%_
                (if _%base-struct208728%_
                    (let ((__tmp209701
                           (gxc#optimizer-resolve-class
                            _%where208727%_
                            _%base-struct208728%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp209701 '5 '#f '#f))
                    '()))
               (_%r-fields208734%_ (reverse _%base-fields208732%_))
               (_%seen-slots208742%_
                (let ((_%tab208736%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g208737208739%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab208736%_ _%g208737208739%_ '#t)))
                   _%base-fields208732%_)
                  _%tab208736%_))
               (_%process-slot208746%_
                (lambda (_%slot208744%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots208742%_ _%slot208744%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots208742%_
                           _%slot208744%_
                           '#t))
                        (set! _%r-fields208734%_
                              (cons _%slot208744%_ _%r-fields208734%_)))))))
          (for-each
           (lambda (_%mixin208749%_)
             (let ((_%klass208751%_
                    (gxc#optimizer-resolve-class
                     _%where208727%_
                     _%mixin208749%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass208751%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot208746%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass208751%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list208729%_)
          (for-each _%process-slot208746%_ _%direct-slots208730%_)
          (let () (declare (not safe)) (##reverse _%r-fields208734%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass208686%_ _%slot208687%_)
        (let _%lp208689%_ ((_%rest208691%_
                            (##structure-ref
                             _%klass208686%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset208692%_ '1))
          (let* ((_%rest208693208701%_ _%rest208691%_)
                 (_%else208695208709%_
                  (lambda ()
                    (let ((__tmp209703
                           (##structure-ref
                            _%klass208686%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp209702
                           (##structure-ref
                            _%klass208686%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp209703
                       __tmp209702
                       _%slot208687%_))))
                 (_%K208697208715%_
                  (lambda (_%rest208712%_ _%s208713%_)
                    (if (eq? _%s208713%_ _%slot208687%_)
                        _%offset208692%_
                        (_%lp208689%_
                         _%rest208712%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset208692%_ '1)))))))
            (if (pair? _%rest208693208701%_)
                (let ((_%hd208698208718%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest208693208701%_)))
                      (_%tl208699208720%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest208693208701%_))))
                  (let* ((_%s208723%_ _%hd208698208718%_)
                         (_%rest208725%_ _%tl208699208720%_))
                    (_%K208697208715%_ _%rest208725%_ _%s208723%_)))
                (_%else208695208709%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass208644%_ _%slot208645%_)
        (if (gxc#!class-struct-slot? _%klass208644%_ _%slot208645%_)
            _%klass208644%_
            (let _%lp208647%_ ((_%rest208649%_
                                (##structure-ref
                                 _%klass208644%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest208650208658%_ _%rest208649%_)
                     (_%else208652208666%_ (lambda () '#f))
                     (_%K208654208674%_
                      (lambda (_%rest208669%_ _%super208670%_)
                        (let ((_%super-class208672%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass208644%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot208645%_ '())))
                                _%super208670%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class208672%_
                               _%slot208645%_)
                              _%super-class208672%_
                              (_%lp208647%_ _%rest208669%_))))))
                (if (pair? _%rest208650208658%_)
                    (let ((_%hd208655208677%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest208650208658%_)))
                          (_%tl208656208679%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest208650208658%_))))
                      (let* ((_%super208682%_ _%hd208655208677%_)
                             (_%rest208684%_ _%tl208656208679%_))
                        (_%K208654208674%_ _%rest208684%_ _%super208682%_)))
                    (_%else208652208666%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass208641%_ _%slot208642%_)
        (if (##structure-ref _%klass208641%_ '7 gxc#!class::t '#f)
            (memq _%slot208642%_
                  (##structure-ref _%klass208641%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self208626%_ _%id208627%_)
        (let ((_%self208630%_ _%self208626%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208630%_
             _%id208627%_
             '1
             '#f
             '#f))
          (let ((__tmp209704
                 (let ((__obj209636
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
                      __obj209636
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj209636
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj209636
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj209636)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208630%_
             __tmp209704
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self208489%_ _%id208490%_)
        (let ((_%self208493%_ _%self208489%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208493%_
             _%id208490%_
             '1
             '#f
             '#f))
          (let ((__tmp209705
                 (let ((__obj209637
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
                      __obj209637
                      _%id208490%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj209637
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj209637)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208493%_
             __tmp209705
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
      (lambda (_%self208350%_ _%id208351%_ _%slot208352%_ _%checked?208353%_)
        (let ((_%self208356%_ _%self208350%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208356%_
             _%id208351%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208356%_
             _%slot208352%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208356%_
             _%checked?208353%_
             '4
             '#f
             '#f))
          (let ((__tmp209706
                 (let ((__obj209638
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
                     (##unchecked-structure-set! __obj209638 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj209638
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp209707 (cons _%id208351%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj209638
                      __tmp209707
                      '3
                      '#f
                      '#f))
                   __obj209638)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208356%_
             __tmp209706
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self208211%_ _%id208212%_ _%slot208213%_ _%checked?208214%_)
        (let ((_%self208217%_ _%self208211%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208217%_
             _%id208212%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208217%_
             _%slot208213%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208217%_
             _%checked?208214%_
             '4
             '#f
             '#f))
          (let ((__tmp209708
                 (let ((__obj209639
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
                      __obj209639
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj209639
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp209709 (cons _%id208212%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj209639
                      __tmp209709
                      '3
                      '#f
                      '#f))
                   __obj209639)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208217%_
             __tmp209708
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords208055%_
               _%signature208052208056%_
               _%self208057%_
               _%arity208058%_
               _%dispatch208059%_)
        (let* ((_%signature208061%_
                (if (eq? _%signature208052208056%_ absent-value)
                    '#f
                    _%signature208052208056%_))
               (_%self208064%_ _%self208057%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self208064%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208064%_
             _%arity208058%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208064%_
             _%dispatch208059%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208064%_
             _%signature208061%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords208079%_ . _%args208080%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords208079%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords208079%_
                  'signature:
                  absent-value))
               _%args208080%_)))
    (define gxc#!lambda:::init!
      (lambda _%args208053208086%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args208053208086%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords207896%_
               _%signature207893207897%_
               _%self207898%_
               _%clauses207899%_)
        (let* ((_%signature207901%_
                (if (eq? _%signature207893207897%_ absent-value)
                    '#f
                    _%signature207893207897%_))
               (_%self207904%_ _%self207898%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self207904%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207904%_
             _%signature207901%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207904%_
             _%clauses207899%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords207919%_ . _%args207920%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords207919%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords207919%_
                  'signature:
                  absent-value))
               _%args207920%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args207894207926%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args207894207926%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self207754%_ _%tab207755%_ _%dispatch207756%_)
        (let ((_%self207759%_ _%self207754%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self207759%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207759%_
             _%tab207755%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207759%_
             _%dispatch207756%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self207616%_ _%keys207617%_ _%main207618%_)
        (let ((_%self207621%_ _%self207616%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self207621%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207621%_
             _%keys207617%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207621%_
             _%main207618%_
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
      (lambda (_%self207235%_ _%id207236%_)
        (let ((_%self207239%_ _%self207235%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207239%_
             _%id207236%_
             '1
             '#f
             '#f))
          (let ((__tmp209710
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
                      '(pure)
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
             _%self207239%_
             __tmp209710
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
      (lambda (_%klass207105%_)
        (let ((_%$e207107%_
               (##structure-ref _%klass207105%_ '11 gxc#!class::t '#f)))
          (if _%$e207107%_
              _%$e207107%_
              (let ((_%tab207111%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass207105%_
                 _%tab207111%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab207111%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass207097%_ _%method207098%_)
        (let ((_%tab207099207101%_
               (##structure-ref _%klass207097%_ '11 gxc#!class::t '#f)))
          (if _%tab207099207101%_
              (let ((_%tab207103%_ _%tab207099207101%_))
                (declare (not safe))
                (hash-get _%tab207103%_ _%method207098%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a207082%_ _%type-b207083%_)
        (if _%type-a207082%_
            (if _%type-b207083%_
                (let ((_%$e207085%_ (eq? _%type-a207082%_ _%type-b207083%_)))
                  (if _%$e207085%_
                      _%$e207085%_
                      (let ((_%$e207088%_
                             (eq? (##structure-ref
                                   _%type-b207083%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e207088%_
                            _%$e207088%_
                            (let ((_%$e207091%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a207082%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b207083%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e207091%_
                                  _%$e207091%_
                                  (let ((_%$e207094%_
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-instance-of?
                                                _%type-a207082%_
                                                'gxc#!class::t))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-instance-of?
                                                    _%type-b207083%_
                                                    'gxc#!class::t))
                                                 (gxc#!class-subclass?
                                                  _%type-a207082%_
                                                  _%type-b207083%_)
                                                 '#f)
                                             '#f)))
                                    (if _%$e207094%_
                                        _%$e207094%_
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%type-a207082%_
                                               'gxc#!interface::t))
                                            (eq? (##structure-ref
                                                  _%type-b207083%_
                                                  '1
                                                  gxc#!type::t
                                                  '#f)
                                                 'gerbil#interface-descriptor::t)
                                            '#f)))))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a207033%_ _%klass-b207034%_)
        (let ((_%$e207036%_
               (eq? (##structure-ref _%klass-a207033%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b207034%_ '1 gxc#!type::t '#f))))
          (if _%$e207036%_
              _%$e207036%_
              (let ((_%klass-id-b207039%_
                     (##structure-ref _%klass-b207034%_ '1 gxc#!type::t '#f))
                    (_%precedence-list207040%_
                     (##structure-ref _%klass-a207033%_ '3 gxc#!class::t '#f)))
                (let _%loop207042%_ ((_%rest207044%_
                                      _%precedence-list207040%_))
                  (let* ((_%rest207045207053%_ _%rest207044%_)
                         (_%else207047207061%_ (lambda () '#f))
                         (_%K207049207070%_
                          (lambda (_%rest207064%_ _%klass-name207065%_)
                            (let ((_%$e207067%_
                                   (eq? (let ((__tmp209711
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a207033%_
                                                            (cons _%klass-b207034%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name207065%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp209711
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b207039%_)))
                              (if _%$e207067%_
                                  _%$e207067%_
                                  (_%loop207042%_ _%rest207064%_))))))
                    (if (pair? _%rest207045207053%_)
                        (let ((_%hd207050207073%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest207045207053%_)))
                              (_%tl207051207075%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest207045207053%_))))
                          (let* ((_%klass-name207078%_ _%hd207050207073%_)
                                 (_%rest207080%_ _%tl207051207075%_))
                            (_%K207049207070%_
                             _%rest207080%_
                             _%klass-name207078%_)))
                        (_%else207047207061%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type207031%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type207031%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type207031%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc207020%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc207020%_ 'gxc#!procedure::t))
            (let ((_%proc207023%_ _%proc207020%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc207023%_ '2 '#f '#f))
                  (let ((__tmp209712
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc207023%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp209712 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@382.11-382.15"
               'contract:
               '!procedure?
               'value:
               _%proc207020%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym207002%_ _%type207003%_ _%local?207004%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type207003%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym207002%_
                     _%type207003%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym207002%_ '" " _%type207003%_))
        (let ((_%table207006%_
               (if _%local?207004%_
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
          (hash-put! _%table207006%_ _%sym207002%_ _%type207003%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym207011%_ _%type207012%_)
        (let ((_%local?207014%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym207011%_
           _%type207012%_
           _%local?207014%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g209713_
        (let ((_g209714_ (let () (declare (not safe)) (##length _g209713_))))
          (cond ((let () (declare (not safe)) (##fx= _g209714_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g209713_))
                ((let () (declare (not safe)) (##fx= _g209714_ 3))
                 (apply gxc#optimizer-declare-type!__% _g209713_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g209713_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym206996%_ _%type206997%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type206997%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym206996%_
                     _%type206997%_)))
        (let ((_%table206999%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp209715
                 (let () (declare (not safe)) (struct->list _%type206997%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym206996%_ '" " __tmp209715))
          (let ()
            (declare (not safe))
            (hash-put! _%table206999%_ _%sym206996%_ _%type206997%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table206999%_ _%type206997%_ _%sym206996%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym206991%_ _%type206992%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type206992%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym206991%_
                     _%type206992%_)))
        (let ((_%table206994%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table206994%_ _%sym206991%_))
              '#!void
              (begin
                (let ((__tmp209716
                       (let ()
                         (declare (not safe))
                         (struct->list _%type206992%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym206991%_
                   '" "
                   __tmp209716))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table206994%_ _%sym206991%_ _%type206992%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table206994%_
                   _%type206992%_
                   _%sym206991%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym206989%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym206989%_))
        (let ((__tmp209717
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp209717 _%sym206989%_))
        (let ((__tmp209718
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp209718 _%sym206989%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t206957%_
               _%method206958%_
               _%sym206959%_
               _%rebind?206960%_)
        (let ((__tmp209719
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp209719 _%sym206959%_ '#t))
        (let ((_%klass206962%_ (gxc#optimizer-lookup-class _%type-t206957%_)))
          (if _%klass206962%_
              (let* ((_%vtab206964%_ (gxc#!class-method-table _%klass206962%_))
                     (_%$e206966%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab206964%_ _%method206958%_))))
                (if _%$e206966%_
                    ((lambda (_%existing206969%_)
                       (if _%rebind?206960%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t206957%_
                                '" "
                                _%method206958%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab206964%_
                                _%method206958%_
                                _%sym206959%_)))
                           (if (eq? _%existing206969%_ _%sym206959%_)
                               '#!void
                               (let ((__tmp209720
                                      (cons 'bind-method!
                                            (cons _%type-t206957%_
                                                  (cons _%method206958%_
                                                        (cons _%sym206959%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp209720
                                  _%method206958%_)))))
                     _%$e206966%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t206957%_
                         '" "
                         _%method206958%_
                         '" => "
                         _%sym206959%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab206964%_
                         _%method206958%_
                         _%sym206959%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t206957%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t206978%_ _%method206979%_ _%sym206980%_)
        (let ((_%rebind?206982%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t206978%_
           _%method206979%_
           _%sym206980%_
           _%rebind?206982%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g209721_
        (let ((_g209722_ (let () (declare (not safe)) (##length _g209721_))))
          (cond ((let () (declare (not safe)) (##fx= _g209722_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g209721_))
                ((let () (declare (not safe)) (##fx= _g209722_ 4))
                 (apply gxc#optimizer-declare-method!__% _g209721_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g209721_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym206943%_)
        (let ((_%$e206945%_
               (let ((__tmp209723
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym206943%_ __tmp209723))))
          (if _%$e206945%_
              _%$e206945%_
              (let ((_%$e206953%_
                     (let ((_%ht206947206949%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht206947206949%_
                           (let ((_%ht206951%_ _%ht206947206949%_))
                             (declare (not safe))
                             (hash-get _%ht206951%_ _%sym206943%_))
                           '#f))))
                (if _%$e206953%_
                    _%$e206953%_
                    (let ((__tmp209724
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp209724 _%sym206943%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym206936%_)
        (let ((_%type206937206939%_ (gxc#optimizer-lookup-type _%sym206936%_)))
          (if _%type206937206939%_
              (let ((_%type206941%_ _%type206937206939%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type206941%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type206941%_ '1 '#f '#f)))
                    _%type206941%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym206932%_)
        (let ((_%table206934%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table206934%_ _%sym206932%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where206917%_ _%sym206918%_)
        (let ((_%$e206921%_ (gxc#optimizer-lookup-class _%sym206918%_)))
          (if _%$e206921%_
              ((lambda (_%g206923206925%_)
                 (let ((_%val206928%_ _%g206923206925%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val206928%_
                          'gxc#!class::t))
                       _%val206928%_
                       (begin
                         (raise-contract-violation-error
                          '"contract violation"
                          'context:
                          'gerbil/compiler/optimize-base
                          'contract:
                          '(!class? val)
                          'value:
                          _%val206928%_)
                         '#!void))))
               _%$e206921%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where206917%_
                   _%sym206918%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass206915%_)
        (let ((__tmp209725
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp209725 _%klass206915%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t206912%_ _%method206913%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t206912%_)
         _%method206913%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym206910%_)
        (let ((__tmp209726
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp209726 _%sym206910%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e206385%_
                  (lambda (_%t206851%_)
                    (if (symbol? _%t206851%_)
                        (_%type-e206385%_
                         (gxc#optimizer-lookup-type _%t206851%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t206851%_
                               'gxc#!lambda::t))
                            (let* ((_%t206855%_ _%t206851%_)
                                   (_%t206859%_ _%t206855%_))
                              (_%__lambda-type206511%_ _%t206859%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t206851%_
                                   'gxc#!kw-lambda::t))
                                (let* ((_%t206871%_ _%t206851%_)
                                       (_%t206875%_ _%t206871%_))
                                  (_%__kw-lambda-type206634%_ _%t206875%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t206851%_
                                       'gxc#!kw-lambda-primary::t))
                                    (let* ((_%t206886%_ _%t206851%_)
                                           (_%t206890%_ _%t206886%_))
                                      (_%__kw-lambda-primary-type206757%_
                                       _%t206890%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t206851%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t206901%_ _%t206851%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t206901%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp209727
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t206901%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp209727
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t206851%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t206851%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%__lambda-type206511%_
                  (lambda (_%t206839%_)
                    (let ((_%t206842%_ _%t206839%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t206842%_ '4 '#f '#f))
                          (_%type-e206385%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t206842%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t206842%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp209728
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t206842%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp209728
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%lambda-type206512%_
                  (lambda (_%t206827%_)
                    (let ((_%t206830%_ _%t206827%_))
                      (_%__lambda-type206511%_ _%t206830%_))))
                 (_%__kw-lambda-type206634%_
                  (lambda (_%t206815%_)
                    (let ((_%t206818%_ _%t206815%_))
                      (_%type-e206385%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t206818%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-type206635%_
                  (lambda (_%t206803%_)
                    (let ((_%t206806%_ _%t206803%_))
                      (_%__kw-lambda-type206634%_ _%t206806%_))))
                 (_%__kw-lambda-primary-type206757%_
                  (lambda (_%t206791%_)
                    (let ((_%t206794%_ _%t206791%_))
                      (_%type-e206385%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t206794%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type206758%_
                  (lambda (_%t206779%_)
                    (let ((_%t206782%_ _%t206779%_))
                      (_%__kw-lambda-primary-type206757%_ _%t206782%_)))))
          (let* ((_%ht1206760%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2206762%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result206764%_
                  (if _%ht1206760%_
                      (let () (declare (not safe)) (hash->list _%ht1206760%_))
                      '()))
                 (_%result206766%_
                  (if _%ht2206762%_
                      (let ((__tmp209729
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2206762%_))))
                        (declare (not safe))
                        (foldl__0 cons _%result206764%_ __tmp209729))
                      _%result206764%_)))
            (for-each
             (lambda (_%p206769%_)
               (let* ((_%t206771%_ (cdr _%p206769%_))
                      (_%tr206773%_ (_%type-e206385%_ _%t206771%_)))
                 (set-cdr! _%p206769%_ _%tr206773%_)))
             _%result206766%_)
            (list-sort
             (lambda (_%a206776%_ _%b206777%_)
               (let ((__tmp209731 (symbol->string (car _%a206776%_)))
                     (__tmp209730 (symbol->string (car _%b206777%_))))
                 (declare (not safe))
                 (##string<? __tmp209731 __tmp209730)))
             _%result206766%_)))))))
