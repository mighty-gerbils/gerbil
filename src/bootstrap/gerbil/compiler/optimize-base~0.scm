(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1770607525)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp207741 (list)) (__tmp207740 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp207741
         '(type classes ssxi methods)
         __tmp207740
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args207660%_
        (apply make-instance gxc#optimizer-info::t _%$args207660%_)))
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
      (lambda (_%self207647%_)
        (let ((_%self207650%_ _%self207647%_))
          (if (let ((__tmp207742
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self207650%_))))
                (declare (not safe))
                (##fx< '4 __tmp207742))
              (begin
                (let ((__tmp207743
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self207650%_
                   __tmp207743
                   '1
                   '#f
                   '#f))
                (let ((__tmp207744
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self207650%_
                   __tmp207744
                   '2
                   '#f
                   '#f))
                (let ((__tmp207745
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self207650%_
                   __tmp207745
                   '3
                   '#f
                   '#f))
                (let ((__tmp207746
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self207650%_
                   __tmp207746
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp207747
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self207650%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self207650%_
                       '4
                       __tmp207747))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp207749 (list)) (__tmp207748 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp207749
         '(id)
         __tmp207748
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args207522%_
        (apply make-instance gxc#!type::t _%$args207522%_)))
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
      (let ((__tmp207751 (list gxc#!type::t))
            (__tmp207750 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp207751
         '()
         __tmp207750
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args207519%_
        (apply make-instance gxc#!abort::t _%$args207519%_)))
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
      (let ((__tmp207753 (list gxc#!type::t))
            (__tmp207752 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp207753
         '()
         __tmp207752
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args207516%_
        (apply make-instance gxc#!alias::t _%$args207516%_)))
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
      (let ((__tmp207755 (list)) (__tmp207754 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp207755
         '(return effect arguments unchecked origin)
         __tmp207754
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args207513%_
        (apply make-instance gxc#!signature::t _%$args207513%_)))
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
      (let ((__tmp207757 (list gxc#!type::t))
            (__tmp207756 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp207757
         '(signature)
         __tmp207756
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
      (lambda (_%id207500%_ _%signature207501%_)
        (let ((_%signature207504%_ _%signature207501%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id207500%_ _%signature207504%_))))
    (define gxc#make-!procedure
      (lambda (_%id204308%_ _%signature204310%_)
        (if ((lambda (_%$obj204314%_)
               (or (not _%$obj204314%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj204314%_
                      'gxc#!signature::t))))
             _%signature204310%_)
            (let ((_%signature204321%_ _%signature204310%_))
              (gxc#__make-!procedure _%id204308%_ _%signature204321%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature204310%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj207479%_ _%signature207480%_)
        (let* ((_%$obj207483%_ _%$obj207479%_)
               (_%signature207491%_ _%signature207480%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj207483%_
           _%signature207491%_
           '2
           '#f
           '#f))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj204451%_ _%signature204453%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj204451%_ 'gxc#!procedure::t))
            (let ((_%$obj204457%_ _%$obj204451%_))
              (if ((lambda (_%$obj204466%_)
                     (or (not _%$obj204466%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj204466%_
                            'gxc#!signature::t))))
                   _%signature204453%_)
                  (let ((_%signature204473%_ _%signature204453%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj204457%_
                     _%signature204473%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature204453%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj204451%_)
              '#!void))))
    (define gxc#!class-meta::t
      (let ((__tmp207759 (list gxc#!type::t))
            (__tmp207758 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp207759
         '(class)
         __tmp207758
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args207476%_
        (apply make-instance gxc#!class-meta::t _%$args207476%_)))
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
      (let ((__tmp207761 (list gxc#!type::t))
            (__tmp207760 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class::t
         '!class
         __tmp207761
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp207760
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args207473%_
        (apply make-instance gxc#!class::t _%$args207473%_)))
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
      (let ((__tmp207763 (list gxc#!procedure::t))
            (__tmp207762 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp207763
         '()
         __tmp207762
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args207470%_
        (apply make-instance gxc#!predicate::t _%$args207470%_)))
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
      (let ((__tmp207765 (list gxc#!procedure::t))
            (__tmp207764 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp207765
         '()
         __tmp207764
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args207467%_
        (apply make-instance gxc#!constructor::t _%$args207467%_)))
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
      (let ((__tmp207767 (list gxc#!procedure::t))
            (__tmp207766 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp207767
         '(slot checked?)
         __tmp207766
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args207464%_
        (apply make-instance gxc#!accessor::t _%$args207464%_)))
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
      (let ((__tmp207769 (list gxc#!procedure::t))
            (__tmp207768 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp207769
         '(slot checked?)
         __tmp207768
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args207461%_
        (apply make-instance gxc#!mutator::t _%$args207461%_)))
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
      (let ((__tmp207771 (list gxc#!type::t))
            (__tmp207770 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp207771
         '(methods)
         __tmp207770
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args207458%_
        (apply make-instance gxc#!interface::t _%$args207458%_)))
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
      (let ((__tmp207773 (list gxc#!procedure::t))
            (__tmp207772 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp207773
         '(arity dispatch inline inline-typedecl)
         __tmp207772
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args207455%_
        (apply make-instance gxc#!lambda::t _%$args207455%_)))
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
      (let ((__tmp207775 (list gxc#!procedure::t))
            (__tmp207774 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp207775
         '(clauses)
         __tmp207774
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args207452%_
        (apply make-instance gxc#!case-lambda::t _%$args207452%_)))
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
      (let ((__tmp207777 (list gxc#!procedure::t))
            (__tmp207776 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp207777
         '(table dispatch)
         __tmp207776
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args207449%_
        (apply make-instance gxc#!kw-lambda::t _%$args207449%_)))
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
      (let ((__tmp207779 (list gxc#!procedure::t))
            (__tmp207778 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp207779
         '(keys main)
         __tmp207778
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args207446%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args207446%_)))
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
      (let ((__tmp207780 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp207780
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args207443%_
        (apply make-instance gxc#!primitive::t _%$args207443%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp207782 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp207781 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp207782
         '()
         __tmp207781
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args207440%_
        (apply make-instance gxc#!primitive-predicate::t _%$args207440%_)))
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
      (let ((__tmp207784 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp207783 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp207784
         '()
         __tmp207783
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args207437%_
        (apply make-instance gxc#!primitive-lambda::t _%$args207437%_)))
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
      (let ((__tmp207786 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp207785 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp207786
         '()
         __tmp207785
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args207434%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args207434%_)))
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
      (lambda (_%self207421%_)
        (let ((_%self207424%_ _%self207421%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self207424%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self207284%_ _%klass207285%_)
        (let ((_%self207288%_ _%self207284%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self207288%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207288%_
             _%klass207285%_
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
      (lambda (_%self206974%_
               _%id206975%_
               _%super206976%_
               _%slots206977%_
               _%ctor-method206978%_
               _%struct?206979%_
               _%final?206980%_
               _%system?206981%_
               _%metaclass206982%_)
        (let ((_%self206985%_ _%self206974%_))
          (let _%lp206996%_ ((_%rest206998%_ _%super206976%_))
            (let* ((_%rest206999207007%_ _%rest206998%_)
                   (_%else207001207015%_ (lambda () '#!void))
                   (_%K207003207021%_
                    (lambda (_%rest207018%_ _%super-id207019%_)
                      (if (let ((__tmp207787
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id206975%_ '()))
                                  _%super-id207019%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp207787 '8 '#f '#f))
                          (let ((__tmp207788
                                 (cons '!class (cons _%id206975%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp207788
                             _%super-id207019%_))
                          '#!void)
                      (_%lp206996%_ _%rest207018%_))))
              (if (pair? _%rest206999207007%_)
                  (let ((_%hd207004207024%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest206999207007%_)))
                        (_%tl207005207026%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest206999207007%_))))
                    (let* ((_%super-id207029%_ _%hd207004207024%_)
                           (_%rest207031%_ _%tl207005207026%_))
                      (_%K207003207021%_ _%rest207031%_ _%super-id207029%_)))
                  '#!void)))
          (let* ((_%ctor-method207082%_
                  (let ((_%$e207033%_ _%ctor-method206978%_))
                    (if _%$e207033%_
                        _%$e207033%_
                        (let _%lp207036%_ ((_%rest207038%_ _%super206976%_)
                                           (_%method207039%_ '#f))
                          (let* ((_%rest207040207048%_ _%rest207038%_)
                                 (_%else207042207056%_
                                  (lambda () _%method207039%_))
                                 (_%K207044207070%_
                                  (lambda (_%rest207059%_ _%super-id207060%_)
                                    (let* ((_%klass207062%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id206975%_ '()))
                                             _%super-id207060%_))
                                           (_%$e207064%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass207062%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e207064%_
                                          ((lambda (_%ctor-method207067%_)
                                             (if _%method207039%_
                                                 (if (eq? _%ctor-method207067%_
                                                          _%method207039%_)
                                                     (_%lp207036%_
                                                      _%rest207059%_
                                                      _%ctor-method207067%_)
                                                     (let ((__tmp207789
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id206975%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp207789
                _%method207039%_
                _%ctor-method207067%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp207036%_
                                                  _%rest207059%_
                                                  _%ctor-method207067%_)))
                                           _%$e207064%_)
                                          (_%lp207036%_
                                           _%rest207059%_
                                           _%method207039%_))))))
                            (if (pair? _%rest207040207048%_)
                                (let ((_%hd207045207073%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest207040207048%_)))
                                      (_%tl207046207075%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest207040207048%_))))
                                  (let* ((_%super-id207078%_
                                          _%hd207045207073%_)
                                         (_%rest207080%_ _%tl207046207075%_))
                                    (_%K207044207070%_
                                     _%rest207080%_
                                     _%super-id207078%_)))
                                (_%else207042207056%_)))))))
                 (_g207790_
                  (let ((__tmp207794
                         (lambda (_%klass-id207084%_)
                           (cons _%klass-id207084%_
                                 (let ((__tmp207795
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id206975%_ '()))
                                         _%klass-id207084%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp207795
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp207792
                         (lambda (_%klass-id207086%_)
                           (let ((__tmp207793
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id206975%_ '()))
                                   _%klass-id207086%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp207793
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp207794
                     __tmp207792
                     eq?
                     identity
                     '()
                     _%super206976%_))))
            (begin
              (let ((_g207791_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g207790_)
                           (##values-length _g207790_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g207791_ 2)))
                    (error "Context expects 2 values" _g207791_)))
              (let ((_%precedence-list207088%_
                     (let () (declare (not safe)) (##values-ref _g207790_ 0)))
                    (_%base-struct207089%_
                     (let () (declare (not safe)) (##values-ref _g207790_ 1))))
                (let* ((_%precedence-list207133%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id206975%_ '(t object class)))
                            _%precedence-list207088%_
                            (if (memq 'object::t _%precedence-list207088%_)
                                _%precedence-list207088%_
                                (if _%system?206981%_
                                    (if (memq 't::t _%precedence-list207088%_)
                                        _%precedence-list207088%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list207088%_
                                           '(t::t))))
                                    (let _%loop207095%_ ((_%tail207097%_
                                                          _%precedence-list207088%_)
                                                         (_%head207098%_ '()))
                                      (let* ((_%tail207099207107%_
                                              _%tail207097%_)
                                             (_%else207101207115%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (foldl__0
                                                   cons
                                                   '(object::t t::t)
                                                   _%head207098%_))))
                                             (_%K207103207121%_
                                              (lambda (_%rest207118%_
                                                       _%hd207119%_)
                                                (if (eq? _%hd207119%_ 't::t)
                                                    (let ((__tmp207796
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail207097%_)))
              (declare (not safe))
              (foldl__0 cons __tmp207796 _%head207098%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop207095%_
                                                     _%rest207118%_
                                                     (cons _%hd207119%_
                                                           _%head207098%_))))))
                                        (if (pair? _%tail207099207107%_)
                                            (let ((_%hd207104207124%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail207099207107%_)))
                                                  (_%tl207105207126%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail207099207107%_))))
                                              (let* ((_%hd207129%_
                                                      _%hd207104207124%_)
                                                     (_%rest207131%_
                                                      _%tl207105207126%_))
                                                (_%K207103207121%_
                                                 _%rest207131%_
                                                 _%hd207129%_)))
                                            (_%else207101207115%_))))))))
                       (_%fields207135%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id206975%_ '()))
                         _%base-struct207089%_
                         _%precedence-list207133%_
                         _%slots206977%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self206985%_
                     _%id206975%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self206985%_
                     _%super206976%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self206985%_
                     _%precedence-list207133%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self206985%_
                     _%slots206977%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self206985%_
                     _%fields207135%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self206985%_
                     _%ctor-method207082%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self206985%_
                     _%struct?206979%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self206985%_
                     _%final?206980%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self206985%_
                     _%metaclass206982%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self207138%_
               _%id207139%_
               _%super207140%_
               _%precedence-list207141%_
               _%slots207142%_
               _%fields207143%_
               _%constructor207144%_
               _%struct?207145%_
               _%final?207146%_
               _%system?207147%_
               _%metaclass207148%_
               _%methods207149%_)
        (let ((_%self207152%_ _%self207138%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207152%_
             _%id207139%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207152%_
             _%super207140%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207152%_
             _%precedence-list207141%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207152%_
             _%slots207142%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207152%_
             _%fields207143%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207152%_
             _%constructor207144%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207152%_
             _%struct?207145%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207152%_
             _%final?207146%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207152%_
             _%metaclass207148%_
             '10
             '#f
             '#f))
          (if _%methods207149%_
              (let ((__tmp207797
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods207149%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self207152%_
                 __tmp207797
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g207798_
        (let ((_g207799_ (let () (declare (not safe)) (##length _g207798_))))
          (cond ((let () (declare (not safe)) (##fx= _g207799_ 9))
                 (apply gxc#!class:::init!__0 _g207798_))
                ((let () (declare (not safe)) (##fx= _g207799_ 12))
                 (apply gxc#!class:::init!__1 _g207798_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g207798_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where206826%_
               _%base-struct206827%_
               _%precedence-list206828%_
               _%direct-slots206829%_)
        (let* ((_%base-fields206831%_
                (if _%base-struct206827%_
                    (let ((__tmp207800
                           (gxc#optimizer-resolve-class
                            _%where206826%_
                            _%base-struct206827%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp207800 '5 '#f '#f))
                    '()))
               (_%r-fields206833%_ (reverse _%base-fields206831%_))
               (_%seen-slots206841%_
                (let ((_%tab206835%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g206836206838%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab206835%_ _%g206836206838%_ '#t)))
                   _%base-fields206831%_)
                  _%tab206835%_))
               (_%process-slot206845%_
                (lambda (_%slot206843%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots206841%_ _%slot206843%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots206841%_
                           _%slot206843%_
                           '#t))
                        (set! _%r-fields206833%_
                              (cons _%slot206843%_ _%r-fields206833%_)))))))
          (for-each
           (lambda (_%mixin206848%_)
             (let ((_%klass206850%_
                    (gxc#optimizer-resolve-class
                     _%where206826%_
                     _%mixin206848%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass206850%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot206845%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass206850%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list206828%_)
          (for-each _%process-slot206845%_ _%direct-slots206829%_)
          (let () (declare (not safe)) (##reverse _%r-fields206833%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass206785%_ _%slot206786%_)
        (let _%lp206788%_ ((_%rest206790%_
                            (##structure-ref
                             _%klass206785%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset206791%_ '1))
          (let* ((_%rest206792206800%_ _%rest206790%_)
                 (_%else206794206808%_
                  (lambda ()
                    (let ((__tmp207802
                           (##structure-ref
                            _%klass206785%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp207801
                           (##structure-ref
                            _%klass206785%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp207802
                       __tmp207801
                       _%slot206786%_))))
                 (_%K206796206814%_
                  (lambda (_%rest206811%_ _%s206812%_)
                    (if (eq? _%s206812%_ _%slot206786%_)
                        _%offset206791%_
                        (_%lp206788%_
                         _%rest206811%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset206791%_ '1)))))))
            (if (pair? _%rest206792206800%_)
                (let ((_%hd206797206817%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest206792206800%_)))
                      (_%tl206798206819%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest206792206800%_))))
                  (let* ((_%s206822%_ _%hd206797206817%_)
                         (_%rest206824%_ _%tl206798206819%_))
                    (_%K206796206814%_ _%rest206824%_ _%s206822%_)))
                (_%else206794206808%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass206743%_ _%slot206744%_)
        (if (gxc#!class-struct-slot? _%klass206743%_ _%slot206744%_)
            _%klass206743%_
            (let _%lp206746%_ ((_%rest206748%_
                                (##structure-ref
                                 _%klass206743%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest206749206757%_ _%rest206748%_)
                     (_%else206751206765%_ (lambda () '#f))
                     (_%K206753206773%_
                      (lambda (_%rest206768%_ _%super206769%_)
                        (let ((_%super-class206771%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass206743%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot206744%_ '())))
                                _%super206769%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class206771%_
                               _%slot206744%_)
                              _%super-class206771%_
                              (_%lp206746%_ _%rest206768%_))))))
                (if (pair? _%rest206749206757%_)
                    (let ((_%hd206754206776%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest206749206757%_)))
                          (_%tl206755206778%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest206749206757%_))))
                      (let* ((_%super206781%_ _%hd206754206776%_)
                             (_%rest206783%_ _%tl206755206778%_))
                        (_%K206753206773%_ _%rest206783%_ _%super206781%_)))
                    (_%else206751206765%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass206740%_ _%slot206741%_)
        (if (##structure-ref _%klass206740%_ '7 gxc#!class::t '#f)
            (memq _%slot206741%_
                  (##structure-ref _%klass206740%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self206725%_ _%id206726%_)
        (let ((_%self206729%_ _%self206725%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self206729%_
             _%id206726%_
             '1
             '#f
             '#f))
          (let ((__tmp207803
                 (let ((__obj207735
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
                      __obj207735
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj207735
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj207735
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj207735)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self206729%_
             __tmp207803
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self206588%_ _%id206589%_)
        (let ((_%self206592%_ _%self206588%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self206592%_
             _%id206589%_
             '1
             '#f
             '#f))
          (let ((__tmp207804
                 (let ((__obj207736
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
                      __obj207736
                      _%id206589%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj207736
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj207736)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self206592%_
             __tmp207804
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
      (lambda (_%self206449%_ _%id206450%_ _%slot206451%_ _%checked?206452%_)
        (let ((_%self206455%_ _%self206449%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self206455%_
             _%id206450%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self206455%_
             _%slot206451%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self206455%_
             _%checked?206452%_
             '4
             '#f
             '#f))
          (let ((__tmp207805
                 (let ((__obj207737
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
                     (##unchecked-structure-set! __obj207737 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj207737
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp207806 (cons _%id206450%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj207737
                      __tmp207806
                      '3
                      '#f
                      '#f))
                   __obj207737)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self206455%_
             __tmp207805
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self206310%_ _%id206311%_ _%slot206312%_ _%checked?206313%_)
        (let ((_%self206316%_ _%self206310%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self206316%_
             _%id206311%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self206316%_
             _%slot206312%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self206316%_
             _%checked?206313%_
             '4
             '#f
             '#f))
          (let ((__tmp207807
                 (let ((__obj207738
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
                      __obj207738
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj207738
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp207808 (cons _%id206311%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj207738
                      __tmp207808
                      '3
                      '#f
                      '#f))
                   __obj207738)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self206316%_
             __tmp207807
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords206154%_
               _%signature206151206155%_
               _%self206156%_
               _%arity206157%_
               _%dispatch206158%_)
        (let* ((_%signature206160%_
                (if (eq? _%signature206151206155%_ absent-value)
                    '#f
                    _%signature206151206155%_))
               (_%self206163%_ _%self206156%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self206163%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self206163%_
             _%arity206157%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self206163%_
             _%dispatch206158%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self206163%_
             _%signature206160%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords206178%_ . _%args206179%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords206178%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords206178%_
                  'signature:
                  absent-value))
               _%args206179%_)))
    (define gxc#!lambda:::init!
      (lambda _%args206152206185%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args206152206185%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords205995%_
               _%signature205992205996%_
               _%self205997%_
               _%clauses205998%_)
        (let* ((_%signature206000%_
                (if (eq? _%signature205992205996%_ absent-value)
                    '#f
                    _%signature205992205996%_))
               (_%self206003%_ _%self205997%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self206003%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self206003%_
             _%signature206000%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self206003%_
             _%clauses205998%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords206018%_ . _%args206019%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords206018%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords206018%_
                  'signature:
                  absent-value))
               _%args206019%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args205993206025%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args205993206025%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self205853%_ _%tab205854%_ _%dispatch205855%_)
        (let ((_%self205858%_ _%self205853%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self205858%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205858%_
             _%tab205854%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205858%_
             _%dispatch205855%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self205715%_ _%keys205716%_ _%main205717%_)
        (let ((_%self205720%_ _%self205715%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self205720%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205720%_
             _%keys205716%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205720%_
             _%main205717%_
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
      (lambda (_%self205334%_ _%id205335%_)
        (let ((_%self205338%_ _%self205334%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205338%_
             _%id205335%_
             '1
             '#f
             '#f))
          (let ((__tmp207809
                 (let ((__obj207739
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
                      __obj207739
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj207739
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj207739
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj207739)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205338%_
             __tmp207809
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
      (lambda (_%klass205204%_)
        (let ((_%$e205206%_
               (##structure-ref _%klass205204%_ '11 gxc#!class::t '#f)))
          (if _%$e205206%_
              _%$e205206%_
              (let ((_%tab205210%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass205204%_
                 _%tab205210%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab205210%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass205196%_ _%method205197%_)
        (let ((_%tab205198205200%_
               (##structure-ref _%klass205196%_ '11 gxc#!class::t '#f)))
          (if _%tab205198205200%_
              (let ((_%tab205202%_ _%tab205198205200%_))
                (declare (not safe))
                (hash-get _%tab205202%_ _%method205197%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a205181%_ _%type-b205182%_)
        (if _%type-a205181%_
            (if _%type-b205182%_
                (let ((_%$e205184%_ (eq? _%type-a205181%_ _%type-b205182%_)))
                  (if _%$e205184%_
                      _%$e205184%_
                      (let ((_%$e205187%_
                             (eq? (##structure-ref
                                   _%type-b205182%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e205187%_
                            _%$e205187%_
                            (let ((_%$e205190%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a205181%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b205182%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e205190%_
                                  _%$e205190%_
                                  (let ((_%$e205193%_
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-instance-of?
                                                _%type-a205181%_
                                                'gxc#!class::t))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-instance-of?
                                                    _%type-b205182%_
                                                    'gxc#!class::t))
                                                 (gxc#!class-subclass?
                                                  _%type-a205181%_
                                                  _%type-b205182%_)
                                                 '#f)
                                             '#f)))
                                    (if _%$e205193%_
                                        _%$e205193%_
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%type-a205181%_
                                               'gxc#!interface::t))
                                            (eq? (##structure-ref
                                                  _%type-b205182%_
                                                  '1
                                                  gxc#!type::t
                                                  '#f)
                                                 'gerbil#interface-descriptor::t)
                                            '#f)))))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a205132%_ _%klass-b205133%_)
        (let ((_%$e205135%_
               (eq? (##structure-ref _%klass-a205132%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b205133%_ '1 gxc#!type::t '#f))))
          (if _%$e205135%_
              _%$e205135%_
              (let ((_%klass-id-b205138%_
                     (##structure-ref _%klass-b205133%_ '1 gxc#!type::t '#f))
                    (_%precedence-list205139%_
                     (##structure-ref _%klass-a205132%_ '3 gxc#!class::t '#f)))
                (let _%loop205141%_ ((_%rest205143%_
                                      _%precedence-list205139%_))
                  (let* ((_%rest205144205152%_ _%rest205143%_)
                         (_%else205146205160%_ (lambda () '#f))
                         (_%K205148205169%_
                          (lambda (_%rest205163%_ _%klass-name205164%_)
                            (let ((_%$e205166%_
                                   (eq? (let ((__tmp207810
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a205132%_
                                                            (cons _%klass-b205133%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name205164%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp207810
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b205138%_)))
                              (if _%$e205166%_
                                  _%$e205166%_
                                  (_%loop205141%_ _%rest205163%_))))))
                    (if (pair? _%rest205144205152%_)
                        (let ((_%hd205149205172%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest205144205152%_)))
                              (_%tl205150205174%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest205144205152%_))))
                          (let* ((_%klass-name205177%_ _%hd205149205172%_)
                                 (_%rest205179%_ _%tl205150205174%_))
                            (_%K205148205169%_
                             _%rest205179%_
                             _%klass-name205177%_)))
                        (_%else205146205160%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type205130%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type205130%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type205130%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc205119%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc205119%_ 'gxc#!procedure::t))
            (let ((_%proc205122%_ _%proc205119%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc205122%_ '2 '#f '#f))
                  (let ((__tmp207811
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc205122%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp207811 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@382.11-382.15"
               'contract:
               '!procedure?
               'value:
               _%proc205119%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym205101%_ _%type205102%_ _%local?205103%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type205102%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym205101%_
                     _%type205102%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym205101%_ '" " _%type205102%_))
        (let ((_%table205105%_
               (if _%local?205103%_
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
          (hash-put! _%table205105%_ _%sym205101%_ _%type205102%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym205110%_ _%type205111%_)
        (let ((_%local?205113%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym205110%_
           _%type205111%_
           _%local?205113%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g207812_
        (let ((_g207813_ (let () (declare (not safe)) (##length _g207812_))))
          (cond ((let () (declare (not safe)) (##fx= _g207813_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g207812_))
                ((let () (declare (not safe)) (##fx= _g207813_ 3))
                 (apply gxc#optimizer-declare-type!__% _g207812_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g207812_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym205095%_ _%type205096%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type205096%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym205095%_
                     _%type205096%_)))
        (let ((_%table205098%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp207814
                 (let () (declare (not safe)) (struct->list _%type205096%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym205095%_ '" " __tmp207814))
          (let ()
            (declare (not safe))
            (hash-put! _%table205098%_ _%sym205095%_ _%type205096%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table205098%_ _%type205096%_ _%sym205095%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym205090%_ _%type205091%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type205091%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym205090%_
                     _%type205091%_)))
        (let ((_%table205093%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table205093%_ _%sym205090%_))
              '#!void
              (begin
                (let ((__tmp207815
                       (let ()
                         (declare (not safe))
                         (struct->list _%type205091%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym205090%_
                   '" "
                   __tmp207815))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table205093%_ _%sym205090%_ _%type205091%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table205093%_
                   _%type205091%_
                   _%sym205090%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym205088%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym205088%_))
        (let ((__tmp207816
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp207816 _%sym205088%_))
        (let ((__tmp207817
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp207817 _%sym205088%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t205056%_
               _%method205057%_
               _%sym205058%_
               _%rebind?205059%_)
        (let ((__tmp207818
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp207818 _%sym205058%_ '#t))
        (let ((_%klass205061%_ (gxc#optimizer-lookup-class _%type-t205056%_)))
          (if _%klass205061%_
              (let* ((_%vtab205063%_ (gxc#!class-method-table _%klass205061%_))
                     (_%$e205065%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab205063%_ _%method205057%_))))
                (if _%$e205065%_
                    ((lambda (_%existing205068%_)
                       (if _%rebind?205059%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t205056%_
                                '" "
                                _%method205057%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab205063%_
                                _%method205057%_
                                _%sym205058%_)))
                           (if (eq? _%existing205068%_ _%sym205058%_)
                               '#!void
                               (let ((__tmp207819
                                      (cons 'bind-method!
                                            (cons _%type-t205056%_
                                                  (cons _%method205057%_
                                                        (cons _%sym205058%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp207819
                                  _%method205057%_)))))
                     _%$e205065%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t205056%_
                         '" "
                         _%method205057%_
                         '" => "
                         _%sym205058%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab205063%_
                         _%method205057%_
                         _%sym205058%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t205056%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t205077%_ _%method205078%_ _%sym205079%_)
        (let ((_%rebind?205081%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t205077%_
           _%method205078%_
           _%sym205079%_
           _%rebind?205081%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g207820_
        (let ((_g207821_ (let () (declare (not safe)) (##length _g207820_))))
          (cond ((let () (declare (not safe)) (##fx= _g207821_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g207820_))
                ((let () (declare (not safe)) (##fx= _g207821_ 4))
                 (apply gxc#optimizer-declare-method!__% _g207820_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g207820_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym205042%_)
        (let ((_%$e205044%_
               (let ((__tmp207822
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym205042%_ __tmp207822))))
          (if _%$e205044%_
              _%$e205044%_
              (let ((_%$e205052%_
                     (let ((_%ht205046205048%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht205046205048%_
                           (let ((_%ht205050%_ _%ht205046205048%_))
                             (declare (not safe))
                             (hash-get _%ht205050%_ _%sym205042%_))
                           '#f))))
                (if _%$e205052%_
                    _%$e205052%_
                    (let ((__tmp207823
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp207823 _%sym205042%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym205035%_)
        (let ((_%type205036205038%_ (gxc#optimizer-lookup-type _%sym205035%_)))
          (if _%type205036205038%_
              (let ((_%type205040%_ _%type205036205038%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type205040%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type205040%_ '1 '#f '#f)))
                    _%type205040%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym205031%_)
        (let ((_%table205033%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table205033%_ _%sym205031%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where205016%_ _%sym205017%_)
        (let ((_%$e205020%_ (gxc#optimizer-lookup-class _%sym205017%_)))
          (if _%$e205020%_
              ((lambda (_%g205022205024%_)
                 (let ((_%val205027%_ _%g205022205024%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val205027%_
                          'gxc#!class::t))
                       _%val205027%_
                       (begin
                         (raise-contract-violation-error
                          '"contract violation"
                          'context:
                          'gerbil/compiler/optimize-base
                          'contract:
                          '(!class? val)
                          'value:
                          _%val205027%_)
                         '#!void))))
               _%$e205020%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where205016%_
                   _%sym205017%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass205014%_)
        (let ((__tmp207824
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp207824 _%klass205014%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t205011%_ _%method205012%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t205011%_)
         _%method205012%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym205009%_)
        (let ((__tmp207825
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp207825 _%sym205009%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e204484%_
                  (lambda (_%t204950%_)
                    (if (symbol? _%t204950%_)
                        (_%type-e204484%_
                         (gxc#optimizer-lookup-type _%t204950%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t204950%_
                               'gxc#!lambda::t))
                            (let* ((_%t204954%_ _%t204950%_)
                                   (_%t204958%_ _%t204954%_))
                              (_%__lambda-type204610%_ _%t204958%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t204950%_
                                   'gxc#!kw-lambda::t))
                                (let* ((_%t204970%_ _%t204950%_)
                                       (_%t204974%_ _%t204970%_))
                                  (_%__kw-lambda-type204733%_ _%t204974%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t204950%_
                                       'gxc#!kw-lambda-primary::t))
                                    (let* ((_%t204985%_ _%t204950%_)
                                           (_%t204989%_ _%t204985%_))
                                      (_%__kw-lambda-primary-type204856%_
                                       _%t204989%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t204950%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t205000%_ _%t204950%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t205000%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp207826
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t205000%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp207826
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t204950%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t204950%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%__lambda-type204610%_
                  (lambda (_%t204938%_)
                    (let ((_%t204941%_ _%t204938%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t204941%_ '4 '#f '#f))
                          (_%type-e204484%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t204941%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t204941%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp207827
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t204941%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp207827
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%lambda-type204611%_
                  (lambda (_%t204926%_)
                    (let ((_%t204929%_ _%t204926%_))
                      (_%__lambda-type204610%_ _%t204929%_))))
                 (_%__kw-lambda-type204733%_
                  (lambda (_%t204914%_)
                    (let ((_%t204917%_ _%t204914%_))
                      (_%type-e204484%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t204917%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-type204734%_
                  (lambda (_%t204902%_)
                    (let ((_%t204905%_ _%t204902%_))
                      (_%__kw-lambda-type204733%_ _%t204905%_))))
                 (_%__kw-lambda-primary-type204856%_
                  (lambda (_%t204890%_)
                    (let ((_%t204893%_ _%t204890%_))
                      (_%type-e204484%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t204893%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type204857%_
                  (lambda (_%t204878%_)
                    (let ((_%t204881%_ _%t204878%_))
                      (_%__kw-lambda-primary-type204856%_ _%t204881%_)))))
          (let* ((_%ht1204859%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2204861%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result204863%_
                  (if _%ht1204859%_
                      (let () (declare (not safe)) (hash->list _%ht1204859%_))
                      '()))
                 (_%result204865%_
                  (if _%ht2204861%_
                      (let ((__tmp207828
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2204861%_))))
                        (declare (not safe))
                        (foldl__0 cons _%result204863%_ __tmp207828))
                      _%result204863%_)))
            (for-each
             (lambda (_%p204868%_)
               (let* ((_%t204870%_ (cdr _%p204868%_))
                      (_%tr204872%_ (_%type-e204484%_ _%t204870%_)))
                 (set-cdr! _%p204868%_ _%tr204872%_)))
             _%result204865%_)
            (list-sort
             (lambda (_%a204875%_ _%b204876%_)
               (let ((__tmp207830 (symbol->string (car _%a204875%_)))
                     (__tmp207829 (symbol->string (car _%b204876%_))))
                 (declare (not safe))
                 (##string<? __tmp207830 __tmp207829)))
             _%result204865%_)))))))
