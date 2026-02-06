(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1770405375)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp206576 (list)) (__tmp206575 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp206576
         '(type classes ssxi methods)
         __tmp206575
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args206495%_
        (apply make-instance gxc#optimizer-info::t _%$args206495%_)))
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
      (lambda (_%self206482%_)
        (let ((_%self206485%_ _%self206482%_))
          (if (let ((__tmp206577
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self206485%_))))
                (declare (not safe))
                (##fx< '4 __tmp206577))
              (begin
                (let ((__tmp206578
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self206485%_
                   __tmp206578
                   '1
                   '#f
                   '#f))
                (let ((__tmp206579
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self206485%_
                   __tmp206579
                   '2
                   '#f
                   '#f))
                (let ((__tmp206580
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self206485%_
                   __tmp206580
                   '3
                   '#f
                   '#f))
                (let ((__tmp206581
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self206485%_
                   __tmp206581
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp206582
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self206485%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self206485%_
                       '4
                       __tmp206582))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp206584 (list)) (__tmp206583 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp206584
         '(id)
         __tmp206583
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args206357%_
        (apply make-instance gxc#!type::t _%$args206357%_)))
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
      (let ((__tmp206586 (list gxc#!type::t))
            (__tmp206585 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp206586
         '()
         __tmp206585
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args206354%_
        (apply make-instance gxc#!abort::t _%$args206354%_)))
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
      (let ((__tmp206588 (list gxc#!type::t))
            (__tmp206587 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp206588
         '()
         __tmp206587
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args206351%_
        (apply make-instance gxc#!alias::t _%$args206351%_)))
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
      (let ((__tmp206590 (list)) (__tmp206589 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp206590
         '(return effect arguments unchecked origin)
         __tmp206589
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args206348%_
        (apply make-instance gxc#!signature::t _%$args206348%_)))
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
      (let ((__tmp206592 (list gxc#!type::t))
            (__tmp206591 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp206592
         '(signature)
         __tmp206591
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
      (lambda (_%id206335%_ _%signature206336%_)
        (let ((_%signature206339%_ _%signature206336%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id206335%_ _%signature206339%_))))
    (define gxc#make-!procedure
      (lambda (_%id203146%_ _%signature203148%_)
        (if ((lambda (_%$obj203152%_)
               (or (not _%$obj203152%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj203152%_
                      'gxc#!signature::t))))
             _%signature203148%_)
            (let ((_%signature203159%_ _%signature203148%_))
              (gxc#__make-!procedure _%id203146%_ _%signature203159%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature203148%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj206314%_ _%signature206315%_)
        (let* ((_%$obj206318%_ _%$obj206314%_)
               (_%signature206326%_ _%signature206315%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj206318%_
           _%signature206326%_
           '2
           '#f
           '#f))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj203289%_ _%signature203291%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj203289%_ 'gxc#!procedure::t))
            (let ((_%$obj203295%_ _%$obj203289%_))
              (if ((lambda (_%$obj203304%_)
                     (or (not _%$obj203304%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj203304%_
                            'gxc#!signature::t))))
                   _%signature203291%_)
                  (let ((_%signature203311%_ _%signature203291%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj203295%_
                     _%signature203311%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature203291%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj203289%_)
              '#!void))))
    (define gxc#!class-meta::t
      (let ((__tmp206594 (list gxc#!type::t))
            (__tmp206593 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp206594
         '(class)
         __tmp206593
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args206311%_
        (apply make-instance gxc#!class-meta::t _%$args206311%_)))
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
      (let ((__tmp206596 (list gxc#!type::t))
            (__tmp206595 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class::t
         '!class
         __tmp206596
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp206595
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args206308%_
        (apply make-instance gxc#!class::t _%$args206308%_)))
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
      (let ((__tmp206598 (list gxc#!procedure::t))
            (__tmp206597 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp206598
         '()
         __tmp206597
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args206305%_
        (apply make-instance gxc#!predicate::t _%$args206305%_)))
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
      (let ((__tmp206600 (list gxc#!procedure::t))
            (__tmp206599 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp206600
         '()
         __tmp206599
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args206302%_
        (apply make-instance gxc#!constructor::t _%$args206302%_)))
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
      (let ((__tmp206602 (list gxc#!procedure::t))
            (__tmp206601 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp206602
         '(slot checked?)
         __tmp206601
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args206299%_
        (apply make-instance gxc#!accessor::t _%$args206299%_)))
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
      (let ((__tmp206604 (list gxc#!procedure::t))
            (__tmp206603 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp206604
         '(slot checked?)
         __tmp206603
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args206296%_
        (apply make-instance gxc#!mutator::t _%$args206296%_)))
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
      (let ((__tmp206606 (list gxc#!type::t))
            (__tmp206605 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp206606
         '(methods)
         __tmp206605
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args206293%_
        (apply make-instance gxc#!interface::t _%$args206293%_)))
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
      (let ((__tmp206608 (list gxc#!procedure::t))
            (__tmp206607 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp206608
         '(arity dispatch inline inline-typedecl)
         __tmp206607
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args206290%_
        (apply make-instance gxc#!lambda::t _%$args206290%_)))
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
      (let ((__tmp206610 (list gxc#!procedure::t))
            (__tmp206609 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp206610
         '(clauses)
         __tmp206609
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args206287%_
        (apply make-instance gxc#!case-lambda::t _%$args206287%_)))
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
      (let ((__tmp206612 (list gxc#!procedure::t))
            (__tmp206611 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp206612
         '(table dispatch)
         __tmp206611
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args206284%_
        (apply make-instance gxc#!kw-lambda::t _%$args206284%_)))
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
      (let ((__tmp206614 (list gxc#!procedure::t))
            (__tmp206613 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp206614
         '(keys main)
         __tmp206613
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args206281%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args206281%_)))
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
      (let ((__tmp206615 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp206615
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args206278%_
        (apply make-instance gxc#!primitive::t _%$args206278%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp206617 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp206616 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp206617
         '()
         __tmp206616
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args206275%_
        (apply make-instance gxc#!primitive-predicate::t _%$args206275%_)))
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
      (let ((__tmp206619 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp206618 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp206619
         '()
         __tmp206618
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args206272%_
        (apply make-instance gxc#!primitive-lambda::t _%$args206272%_)))
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
      (let ((__tmp206621 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp206620 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp206621
         '()
         __tmp206620
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args206269%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args206269%_)))
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
      (lambda (_%self206256%_)
        (let ((_%self206259%_ _%self206256%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self206259%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self206119%_ _%klass206120%_)
        (let ((_%self206123%_ _%self206119%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self206123%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self206123%_
             _%klass206120%_
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
      (lambda (_%self205809%_
               _%id205810%_
               _%super205811%_
               _%slots205812%_
               _%ctor-method205813%_
               _%struct?205814%_
               _%final?205815%_
               _%system?205816%_
               _%metaclass205817%_)
        (let ((_%self205820%_ _%self205809%_))
          (let _%lp205831%_ ((_%rest205833%_ _%super205811%_))
            (let* ((_%rest205834205842%_ _%rest205833%_)
                   (_%else205836205850%_ (lambda () '#!void))
                   (_%K205838205856%_
                    (lambda (_%rest205853%_ _%super-id205854%_)
                      (if (let ((__tmp206622
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id205810%_ '()))
                                  _%super-id205854%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp206622 '8 '#f '#f))
                          (let ((__tmp206623
                                 (cons '!class (cons _%id205810%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp206623
                             _%super-id205854%_))
                          '#!void)
                      (_%lp205831%_ _%rest205853%_))))
              (if (pair? _%rest205834205842%_)
                  (let ((_%hd205839205859%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest205834205842%_)))
                        (_%tl205840205861%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest205834205842%_))))
                    (let* ((_%super-id205864%_ _%hd205839205859%_)
                           (_%rest205866%_ _%tl205840205861%_))
                      (_%K205838205856%_ _%rest205866%_ _%super-id205864%_)))
                  '#!void)))
          (let* ((_%ctor-method205917%_
                  (let ((_%$e205868%_ _%ctor-method205813%_))
                    (if _%$e205868%_
                        _%$e205868%_
                        (let _%lp205871%_ ((_%rest205873%_ _%super205811%_)
                                           (_%method205874%_ '#f))
                          (let* ((_%rest205875205883%_ _%rest205873%_)
                                 (_%else205877205891%_
                                  (lambda () _%method205874%_))
                                 (_%K205879205905%_
                                  (lambda (_%rest205894%_ _%super-id205895%_)
                                    (let* ((_%klass205897%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id205810%_ '()))
                                             _%super-id205895%_))
                                           (_%$e205899%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass205897%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e205899%_
                                          ((lambda (_%ctor-method205902%_)
                                             (if _%method205874%_
                                                 (if (eq? _%ctor-method205902%_
                                                          _%method205874%_)
                                                     (_%lp205871%_
                                                      _%rest205894%_
                                                      _%ctor-method205902%_)
                                                     (let ((__tmp206624
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id205810%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp206624
                _%method205874%_
                _%ctor-method205902%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp205871%_
                                                  _%rest205894%_
                                                  _%ctor-method205902%_)))
                                           _%$e205899%_)
                                          (_%lp205871%_
                                           _%rest205894%_
                                           _%method205874%_))))))
                            (if (pair? _%rest205875205883%_)
                                (let ((_%hd205880205908%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest205875205883%_)))
                                      (_%tl205881205910%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest205875205883%_))))
                                  (let* ((_%super-id205913%_
                                          _%hd205880205908%_)
                                         (_%rest205915%_ _%tl205881205910%_))
                                    (_%K205879205905%_
                                     _%rest205915%_
                                     _%super-id205913%_)))
                                (_%else205877205891%_)))))))
                 (_g206625_
                  (let ((__tmp206629
                         (lambda (_%klass-id205919%_)
                           (cons _%klass-id205919%_
                                 (let ((__tmp206630
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id205810%_ '()))
                                         _%klass-id205919%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp206630
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp206627
                         (lambda (_%klass-id205921%_)
                           (let ((__tmp206628
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id205810%_ '()))
                                   _%klass-id205921%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp206628
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp206629
                     __tmp206627
                     eq?
                     identity
                     '()
                     _%super205811%_))))
            (begin
              (let ((_g206626_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g206625_)
                           (##values-length _g206625_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g206626_ 2)))
                    (error "Context expects 2 values" _g206626_)))
              (let ((_%precedence-list205923%_
                     (let () (declare (not safe)) (##values-ref _g206625_ 0)))
                    (_%base-struct205924%_
                     (let () (declare (not safe)) (##values-ref _g206625_ 1))))
                (let* ((_%precedence-list205968%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id205810%_ '(t object class)))
                            _%precedence-list205923%_
                            (if (memq 'object::t _%precedence-list205923%_)
                                _%precedence-list205923%_
                                (if _%system?205816%_
                                    (if (memq 't::t _%precedence-list205923%_)
                                        _%precedence-list205923%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list205923%_
                                           '(t::t))))
                                    (let _%loop205930%_ ((_%tail205932%_
                                                          _%precedence-list205923%_)
                                                         (_%head205933%_ '()))
                                      (let* ((_%tail205934205942%_
                                              _%tail205932%_)
                                             (_%else205936205950%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (foldl__0
                                                   cons
                                                   '(object::t t::t)
                                                   _%head205933%_))))
                                             (_%K205938205956%_
                                              (lambda (_%rest205953%_
                                                       _%hd205954%_)
                                                (if (eq? _%hd205954%_ 't::t)
                                                    (let ((__tmp206631
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail205932%_)))
              (declare (not safe))
              (foldl__0 cons __tmp206631 _%head205933%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop205930%_
                                                     _%rest205953%_
                                                     (cons _%hd205954%_
                                                           _%head205933%_))))))
                                        (if (pair? _%tail205934205942%_)
                                            (let ((_%hd205939205959%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail205934205942%_)))
                                                  (_%tl205940205961%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail205934205942%_))))
                                              (let* ((_%hd205964%_
                                                      _%hd205939205959%_)
                                                     (_%rest205966%_
                                                      _%tl205940205961%_))
                                                (_%K205938205956%_
                                                 _%rest205966%_
                                                 _%hd205964%_)))
                                            (_%else205936205950%_))))))))
                       (_%fields205970%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id205810%_ '()))
                         _%base-struct205924%_
                         _%precedence-list205968%_
                         _%slots205812%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self205820%_
                     _%id205810%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self205820%_
                     _%super205811%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self205820%_
                     _%precedence-list205968%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self205820%_
                     _%slots205812%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self205820%_
                     _%fields205970%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self205820%_
                     _%ctor-method205917%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self205820%_
                     _%struct?205814%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self205820%_
                     _%final?205815%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self205820%_
                     _%metaclass205817%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self205973%_
               _%id205974%_
               _%super205975%_
               _%precedence-list205976%_
               _%slots205977%_
               _%fields205978%_
               _%constructor205979%_
               _%struct?205980%_
               _%final?205981%_
               _%system?205982%_
               _%metaclass205983%_
               _%methods205984%_)
        (let ((_%self205987%_ _%self205973%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205987%_
             _%id205974%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205987%_
             _%super205975%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205987%_
             _%precedence-list205976%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205987%_
             _%slots205977%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205987%_
             _%fields205978%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205987%_
             _%constructor205979%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205987%_
             _%struct?205980%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205987%_
             _%final?205981%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205987%_
             _%metaclass205983%_
             '10
             '#f
             '#f))
          (if _%methods205984%_
              (let ((__tmp206632
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods205984%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self205987%_
                 __tmp206632
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g206633_
        (let ((_g206634_ (let () (declare (not safe)) (##length _g206633_))))
          (cond ((let () (declare (not safe)) (##fx= _g206634_ 9))
                 (apply gxc#!class:::init!__0 _g206633_))
                ((let () (declare (not safe)) (##fx= _g206634_ 12))
                 (apply gxc#!class:::init!__1 _g206633_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g206633_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where205661%_
               _%base-struct205662%_
               _%precedence-list205663%_
               _%direct-slots205664%_)
        (let* ((_%base-fields205666%_
                (if _%base-struct205662%_
                    (let ((__tmp206635
                           (gxc#optimizer-resolve-class
                            _%where205661%_
                            _%base-struct205662%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp206635 '5 '#f '#f))
                    '()))
               (_%r-fields205668%_ (reverse _%base-fields205666%_))
               (_%seen-slots205676%_
                (let ((_%tab205670%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g205671205673%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab205670%_ _%g205671205673%_ '#t)))
                   _%base-fields205666%_)
                  _%tab205670%_))
               (_%process-slot205680%_
                (lambda (_%slot205678%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots205676%_ _%slot205678%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots205676%_
                           _%slot205678%_
                           '#t))
                        (set! _%r-fields205668%_
                              (cons _%slot205678%_ _%r-fields205668%_)))))))
          (for-each
           (lambda (_%mixin205683%_)
             (let ((_%klass205685%_
                    (gxc#optimizer-resolve-class
                     _%where205661%_
                     _%mixin205683%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass205685%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot205680%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass205685%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list205663%_)
          (for-each _%process-slot205680%_ _%direct-slots205664%_)
          (let () (declare (not safe)) (##reverse _%r-fields205668%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass205620%_ _%slot205621%_)
        (let _%lp205623%_ ((_%rest205625%_
                            (##structure-ref
                             _%klass205620%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset205626%_ '1))
          (let* ((_%rest205627205635%_ _%rest205625%_)
                 (_%else205629205643%_
                  (lambda ()
                    (let ((__tmp206637
                           (##structure-ref
                            _%klass205620%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp206636
                           (##structure-ref
                            _%klass205620%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp206637
                       __tmp206636
                       _%slot205621%_))))
                 (_%K205631205649%_
                  (lambda (_%rest205646%_ _%s205647%_)
                    (if (eq? _%s205647%_ _%slot205621%_)
                        _%offset205626%_
                        (_%lp205623%_
                         _%rest205646%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset205626%_ '1)))))))
            (if (pair? _%rest205627205635%_)
                (let ((_%hd205632205652%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest205627205635%_)))
                      (_%tl205633205654%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest205627205635%_))))
                  (let* ((_%s205657%_ _%hd205632205652%_)
                         (_%rest205659%_ _%tl205633205654%_))
                    (_%K205631205649%_ _%rest205659%_ _%s205657%_)))
                (_%else205629205643%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass205578%_ _%slot205579%_)
        (if (gxc#!class-struct-slot? _%klass205578%_ _%slot205579%_)
            _%klass205578%_
            (let _%lp205581%_ ((_%rest205583%_
                                (##structure-ref
                                 _%klass205578%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest205584205592%_ _%rest205583%_)
                     (_%else205586205600%_ (lambda () '#f))
                     (_%K205588205608%_
                      (lambda (_%rest205603%_ _%super205604%_)
                        (let ((_%super-class205606%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass205578%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot205579%_ '())))
                                _%super205604%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class205606%_
                               _%slot205579%_)
                              _%super-class205606%_
                              (_%lp205581%_ _%rest205603%_))))))
                (if (pair? _%rest205584205592%_)
                    (let ((_%hd205589205611%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest205584205592%_)))
                          (_%tl205590205613%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest205584205592%_))))
                      (let* ((_%super205616%_ _%hd205589205611%_)
                             (_%rest205618%_ _%tl205590205613%_))
                        (_%K205588205608%_ _%rest205618%_ _%super205616%_)))
                    (_%else205586205600%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass205575%_ _%slot205576%_)
        (if (##structure-ref _%klass205575%_ '7 gxc#!class::t '#f)
            (memq _%slot205576%_
                  (##structure-ref _%klass205575%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self205560%_ _%id205561%_)
        (let ((_%self205564%_ _%self205560%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205564%_
             _%id205561%_
             '1
             '#f
             '#f))
          (let ((__tmp206638
                 (let ((__obj206570
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
                      __obj206570
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj206570
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj206570
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj206570)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205564%_
             __tmp206638
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self205423%_ _%id205424%_)
        (let ((_%self205427%_ _%self205423%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205427%_
             _%id205424%_
             '1
             '#f
             '#f))
          (let ((__tmp206639
                 (let ((__obj206571
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
                      __obj206571
                      _%id205424%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj206571
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj206571)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205427%_
             __tmp206639
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
      (lambda (_%self205284%_ _%id205285%_ _%slot205286%_ _%checked?205287%_)
        (let ((_%self205290%_ _%self205284%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205290%_
             _%id205285%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205290%_
             _%slot205286%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205290%_
             _%checked?205287%_
             '4
             '#f
             '#f))
          (let ((__tmp206640
                 (let ((__obj206572
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
                     (##unchecked-structure-set! __obj206572 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj206572
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp206641 (cons _%id205285%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj206572
                      __tmp206641
                      '3
                      '#f
                      '#f))
                   __obj206572)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205290%_
             __tmp206640
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self205145%_ _%id205146%_ _%slot205147%_ _%checked?205148%_)
        (let ((_%self205151%_ _%self205145%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205151%_
             _%id205146%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205151%_
             _%slot205147%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205151%_
             _%checked?205148%_
             '4
             '#f
             '#f))
          (let ((__tmp206642
                 (let ((__obj206573
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
                      __obj206573
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj206573
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp206643 (cons _%id205146%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj206573
                      __tmp206643
                      '3
                      '#f
                      '#f))
                   __obj206573)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205151%_
             __tmp206642
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords204989%_
               _%signature204986204990%_
               _%self204991%_
               _%arity204992%_
               _%dispatch204993%_)
        (let* ((_%signature204995%_
                (if (eq? _%signature204986204990%_ absent-value)
                    '#f
                    _%signature204986204990%_))
               (_%self204998%_ _%self204991%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self204998%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self204998%_
             _%arity204992%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self204998%_
             _%dispatch204993%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self204998%_
             _%signature204995%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords205013%_ . _%args205014%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords205013%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords205013%_
                  'signature:
                  absent-value))
               _%args205014%_)))
    (define gxc#!lambda:::init!
      (lambda _%args204987205020%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args204987205020%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords204830%_
               _%signature204827204831%_
               _%self204832%_
               _%clauses204833%_)
        (let* ((_%signature204835%_
                (if (eq? _%signature204827204831%_ absent-value)
                    '#f
                    _%signature204827204831%_))
               (_%self204838%_ _%self204832%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self204838%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self204838%_
             _%signature204835%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self204838%_
             _%clauses204833%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords204853%_ . _%args204854%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords204853%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords204853%_
                  'signature:
                  absent-value))
               _%args204854%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args204828204860%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args204828204860%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self204688%_ _%tab204689%_ _%dispatch204690%_)
        (let ((_%self204693%_ _%self204688%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self204693%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self204693%_
             _%tab204689%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self204693%_
             _%dispatch204690%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self204550%_ _%keys204551%_ _%main204552%_)
        (let ((_%self204555%_ _%self204550%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self204555%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self204555%_
             _%keys204551%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self204555%_
             _%main204552%_
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
      (lambda (_%self204169%_ _%id204170%_)
        (let ((_%self204173%_ _%self204169%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self204173%_
             _%id204170%_
             '1
             '#f
             '#f))
          (let ((__tmp206644
                 (let ((__obj206574
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
                      __obj206574
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj206574
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj206574
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj206574)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self204173%_
             __tmp206644
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
      (lambda (_%klass204039%_)
        (let ((_%$e204041%_
               (##structure-ref _%klass204039%_ '11 gxc#!class::t '#f)))
          (if _%$e204041%_
              _%$e204041%_
              (let ((_%tab204045%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass204039%_
                 _%tab204045%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab204045%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass204031%_ _%method204032%_)
        (let ((_%tab204033204035%_
               (##structure-ref _%klass204031%_ '11 gxc#!class::t '#f)))
          (if _%tab204033204035%_
              (let ((_%tab204037%_ _%tab204033204035%_))
                (declare (not safe))
                (hash-get _%tab204037%_ _%method204032%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a204019%_ _%type-b204020%_)
        (if _%type-a204019%_
            (if _%type-b204020%_
                (let ((_%$e204022%_ (eq? _%type-a204019%_ _%type-b204020%_)))
                  (if _%$e204022%_
                      _%$e204022%_
                      (let ((_%$e204025%_
                             (eq? (##structure-ref
                                   _%type-b204020%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e204025%_
                            _%$e204025%_
                            (let ((_%$e204028%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a204019%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b204020%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e204028%_
                                  _%$e204028%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a204019%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b204020%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a204019%_
                                           _%type-b204020%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a203970%_ _%klass-b203971%_)
        (let ((_%$e203973%_
               (eq? (##structure-ref _%klass-a203970%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b203971%_ '1 gxc#!type::t '#f))))
          (if _%$e203973%_
              _%$e203973%_
              (let ((_%klass-id-b203976%_
                     (##structure-ref _%klass-b203971%_ '1 gxc#!type::t '#f))
                    (_%precedence-list203977%_
                     (##structure-ref _%klass-a203970%_ '3 gxc#!class::t '#f)))
                (let _%loop203979%_ ((_%rest203981%_
                                      _%precedence-list203977%_))
                  (let* ((_%rest203982203990%_ _%rest203981%_)
                         (_%else203984203998%_ (lambda () '#f))
                         (_%K203986204007%_
                          (lambda (_%rest204001%_ _%klass-name204002%_)
                            (let ((_%$e204004%_
                                   (eq? (let ((__tmp206645
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a203970%_
                                                            (cons _%klass-b203971%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name204002%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp206645
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b203976%_)))
                              (if _%$e204004%_
                                  _%$e204004%_
                                  (_%loop203979%_ _%rest204001%_))))))
                    (if (pair? _%rest203982203990%_)
                        (let ((_%hd203987204010%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest203982203990%_)))
                              (_%tl203988204012%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest203982203990%_))))
                          (let* ((_%klass-name204015%_ _%hd203987204010%_)
                                 (_%rest204017%_ _%tl203988204012%_))
                            (_%K203986204007%_
                             _%rest204017%_
                             _%klass-name204015%_)))
                        (_%else203984203998%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type203968%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type203968%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type203968%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc203957%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc203957%_ 'gxc#!procedure::t))
            (let ((_%proc203960%_ _%proc203957%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc203960%_ '2 '#f '#f))
                  (let ((__tmp206646
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc203960%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp206646 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@378.11-378.15"
               'contract:
               '!procedure?
               'value:
               _%proc203957%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym203939%_ _%type203940%_ _%local?203941%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type203940%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym203939%_
                     _%type203940%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym203939%_ '" " _%type203940%_))
        (let ((_%table203943%_
               (if _%local?203941%_
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
          (hash-put! _%table203943%_ _%sym203939%_ _%type203940%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym203948%_ _%type203949%_)
        (let ((_%local?203951%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym203948%_
           _%type203949%_
           _%local?203951%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g206647_
        (let ((_g206648_ (let () (declare (not safe)) (##length _g206647_))))
          (cond ((let () (declare (not safe)) (##fx= _g206648_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g206647_))
                ((let () (declare (not safe)) (##fx= _g206648_ 3))
                 (apply gxc#optimizer-declare-type!__% _g206647_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g206647_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym203933%_ _%type203934%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type203934%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym203933%_
                     _%type203934%_)))
        (let ((_%table203936%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp206649
                 (let () (declare (not safe)) (struct->list _%type203934%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym203933%_ '" " __tmp206649))
          (let ()
            (declare (not safe))
            (hash-put! _%table203936%_ _%sym203933%_ _%type203934%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table203936%_ _%type203934%_ _%sym203933%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym203928%_ _%type203929%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type203929%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym203928%_
                     _%type203929%_)))
        (let ((_%table203931%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table203931%_ _%sym203928%_))
              '#!void
              (begin
                (let ((__tmp206650
                       (let ()
                         (declare (not safe))
                         (struct->list _%type203929%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym203928%_
                   '" "
                   __tmp206650))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table203931%_ _%sym203928%_ _%type203929%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table203931%_
                   _%type203929%_
                   _%sym203928%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym203926%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym203926%_))
        (let ((__tmp206651
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp206651 _%sym203926%_))
        (let ((__tmp206652
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp206652 _%sym203926%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t203894%_
               _%method203895%_
               _%sym203896%_
               _%rebind?203897%_)
        (let ((__tmp206653
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp206653 _%sym203896%_ '#t))
        (let ((_%klass203899%_ (gxc#optimizer-lookup-class _%type-t203894%_)))
          (if _%klass203899%_
              (let* ((_%vtab203901%_ (gxc#!class-method-table _%klass203899%_))
                     (_%$e203903%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab203901%_ _%method203895%_))))
                (if _%$e203903%_
                    ((lambda (_%existing203906%_)
                       (if _%rebind?203897%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t203894%_
                                '" "
                                _%method203895%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab203901%_
                                _%method203895%_
                                _%sym203896%_)))
                           (if (eq? _%existing203906%_ _%sym203896%_)
                               '#!void
                               (let ((__tmp206654
                                      (cons 'bind-method!
                                            (cons _%type-t203894%_
                                                  (cons _%method203895%_
                                                        (cons _%sym203896%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp206654
                                  _%method203895%_)))))
                     _%$e203903%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t203894%_
                         '" "
                         _%method203895%_
                         '" => "
                         _%sym203896%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab203901%_
                         _%method203895%_
                         _%sym203896%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t203894%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t203915%_ _%method203916%_ _%sym203917%_)
        (let ((_%rebind?203919%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t203915%_
           _%method203916%_
           _%sym203917%_
           _%rebind?203919%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g206655_
        (let ((_g206656_ (let () (declare (not safe)) (##length _g206655_))))
          (cond ((let () (declare (not safe)) (##fx= _g206656_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g206655_))
                ((let () (declare (not safe)) (##fx= _g206656_ 4))
                 (apply gxc#optimizer-declare-method!__% _g206655_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g206655_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym203880%_)
        (let ((_%$e203882%_
               (let ((__tmp206657
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym203880%_ __tmp206657))))
          (if _%$e203882%_
              _%$e203882%_
              (let ((_%$e203890%_
                     (let ((_%ht203884203886%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht203884203886%_
                           (let ((_%ht203888%_ _%ht203884203886%_))
                             (declare (not safe))
                             (hash-get _%ht203888%_ _%sym203880%_))
                           '#f))))
                (if _%$e203890%_
                    _%$e203890%_
                    (let ((__tmp206658
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp206658 _%sym203880%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym203873%_)
        (let ((_%type203874203876%_ (gxc#optimizer-lookup-type _%sym203873%_)))
          (if _%type203874203876%_
              (let ((_%type203878%_ _%type203874203876%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type203878%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type203878%_ '1 '#f '#f)))
                    _%type203878%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym203869%_)
        (let ((_%table203871%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table203871%_ _%sym203869%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where203854%_ _%sym203855%_)
        (let ((_%$e203858%_ (gxc#optimizer-lookup-class _%sym203855%_)))
          (if _%$e203858%_
              ((lambda (_%g203860203862%_)
                 (let ((_%val203865%_ _%g203860203862%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val203865%_
                          'gxc#!class::t))
                       _%val203865%_
                       (begin
                         (raise-contract-violation-error
                          '"contract violation"
                          'context:
                          'gerbil/compiler/optimize-base
                          'contract:
                          '(!class? val)
                          'value:
                          _%val203865%_)
                         '#!void))))
               _%$e203858%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where203854%_
                   _%sym203855%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass203852%_)
        (let ((__tmp206659
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp206659 _%klass203852%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t203849%_ _%method203850%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t203849%_)
         _%method203850%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym203847%_)
        (let ((__tmp206660
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp206660 _%sym203847%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e203322%_
                  (lambda (_%t203788%_)
                    (if (symbol? _%t203788%_)
                        (_%type-e203322%_
                         (gxc#optimizer-lookup-type _%t203788%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t203788%_
                               'gxc#!lambda::t))
                            (let* ((_%t203792%_ _%t203788%_)
                                   (_%t203796%_ _%t203792%_))
                              (_%__lambda-type203448%_ _%t203796%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t203788%_
                                   'gxc#!kw-lambda::t))
                                (let* ((_%t203808%_ _%t203788%_)
                                       (_%t203812%_ _%t203808%_))
                                  (_%__kw-lambda-type203571%_ _%t203812%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t203788%_
                                       'gxc#!kw-lambda-primary::t))
                                    (let* ((_%t203823%_ _%t203788%_)
                                           (_%t203827%_ _%t203823%_))
                                      (_%__kw-lambda-primary-type203694%_
                                       _%t203827%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t203788%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t203838%_ _%t203788%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t203838%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp206661
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t203838%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp206661
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t203788%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t203788%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%__lambda-type203448%_
                  (lambda (_%t203776%_)
                    (let ((_%t203779%_ _%t203776%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t203779%_ '4 '#f '#f))
                          (_%type-e203322%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t203779%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t203779%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp206662
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t203779%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp206662
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%lambda-type203449%_
                  (lambda (_%t203764%_)
                    (let ((_%t203767%_ _%t203764%_))
                      (_%__lambda-type203448%_ _%t203767%_))))
                 (_%__kw-lambda-type203571%_
                  (lambda (_%t203752%_)
                    (let ((_%t203755%_ _%t203752%_))
                      (_%type-e203322%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t203755%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-type203572%_
                  (lambda (_%t203740%_)
                    (let ((_%t203743%_ _%t203740%_))
                      (_%__kw-lambda-type203571%_ _%t203743%_))))
                 (_%__kw-lambda-primary-type203694%_
                  (lambda (_%t203728%_)
                    (let ((_%t203731%_ _%t203728%_))
                      (_%type-e203322%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t203731%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type203695%_
                  (lambda (_%t203716%_)
                    (let ((_%t203719%_ _%t203716%_))
                      (_%__kw-lambda-primary-type203694%_ _%t203719%_)))))
          (let* ((_%ht1203697%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2203699%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result203701%_
                  (if _%ht1203697%_
                      (let () (declare (not safe)) (hash->list _%ht1203697%_))
                      '()))
                 (_%result203703%_
                  (if _%ht2203699%_
                      (let ((__tmp206663
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2203699%_))))
                        (declare (not safe))
                        (foldl__0 cons _%result203701%_ __tmp206663))
                      _%result203701%_)))
            (for-each
             (lambda (_%p203706%_)
               (let* ((_%t203708%_ (cdr _%p203706%_))
                      (_%tr203710%_ (_%type-e203322%_ _%t203708%_)))
                 (set-cdr! _%p203706%_ _%tr203710%_)))
             _%result203703%_)
            (list-sort
             (lambda (_%a203713%_ _%b203714%_)
               (let ((__tmp206665 (symbol->string (car _%a203713%_)))
                     (__tmp206664 (symbol->string (car _%b203714%_))))
                 (declare (not safe))
                 (##string<? __tmp206665 __tmp206664)))
             _%result203703%_)))))))
