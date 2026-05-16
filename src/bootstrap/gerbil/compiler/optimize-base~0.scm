(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1770752338)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp207748 (list)) (__tmp207747 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp207748
         '(type classes ssxi methods)
         __tmp207747
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args207667%_
        (apply make-instance gxc#optimizer-info::t _%$args207667%_)))
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
      (lambda (_%self207654%_)
        (let ((_%self207657%_ _%self207654%_))
          (if (let ((__tmp207749
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self207657%_))))
                (declare (not safe))
                (##fx< '4 __tmp207749))
              (begin
                (let ((__tmp207750
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self207657%_
                   __tmp207750
                   '1
                   '#f
                   '#f))
                (let ((__tmp207751
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self207657%_
                   __tmp207751
                   '2
                   '#f
                   '#f))
                (let ((__tmp207752
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self207657%_
                   __tmp207752
                   '3
                   '#f
                   '#f))
                (let ((__tmp207753
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self207657%_
                   __tmp207753
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp207754
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self207657%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self207657%_
                       '4
                       __tmp207754))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp207756 (list))
            (__tmp207755
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp207756
         '(id)
         __tmp207755
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args207529%_
        (apply make-instance gxc#!type::t _%$args207529%_)))
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
      (let ((__tmp207758 (list gxc#!type::t))
            (__tmp207757 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp207758
         '()
         __tmp207757
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args207526%_
        (apply make-instance gxc#!abort::t _%$args207526%_)))
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
      (let ((__tmp207760 (list gxc#!type::t))
            (__tmp207759 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp207760
         '()
         __tmp207759
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args207523%_
        (apply make-instance gxc#!alias::t _%$args207523%_)))
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
      (let ((__tmp207762 (list))
            (__tmp207761
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp207762
         '(return effect arguments unchecked origin)
         __tmp207761
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args207520%_
        (apply make-instance gxc#!signature::t _%$args207520%_)))
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
      (let ((__tmp207764 (list gxc#!type::t))
            (__tmp207763
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp207764
         '(signature)
         __tmp207763
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
      (lambda (_%id207507%_ _%signature207508%_)
        (let ((_%signature207511%_ _%signature207508%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id207507%_ _%signature207511%_))))
    (define gxc#make-!procedure
      (lambda (_%id204315%_ _%signature204317%_)
        (if ((lambda (_%$obj204321%_)
               (or (not _%$obj204321%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj204321%_
                      'gxc#!signature::t))))
             _%signature204317%_)
            (let ((_%signature204328%_ _%signature204317%_))
              (gxc#__make-!procedure _%id204315%_ _%signature204328%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature204317%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj207486%_ _%signature207487%_)
        (let* ((_%$obj207490%_ _%$obj207486%_)
               (_%signature207498%_ _%signature207487%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj207490%_
           _%signature207498%_
           '2
           '#f
           '#f))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj204458%_ _%signature204460%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj204458%_ 'gxc#!procedure::t))
            (let ((_%$obj204464%_ _%$obj204458%_))
              (if ((lambda (_%$obj204473%_)
                     (or (not _%$obj204473%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj204473%_
                            'gxc#!signature::t))))
                   _%signature204460%_)
                  (let ((_%signature204480%_ _%signature204460%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj204464%_
                     _%signature204480%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature204460%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj204458%_)
              '#!void))))
    (define gxc#!class-meta::t
      (let ((__tmp207766 (list gxc#!type::t))
            (__tmp207765 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp207766
         '(class)
         __tmp207765
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args207483%_
        (apply make-instance gxc#!class-meta::t _%$args207483%_)))
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
      (let ((__tmp207768 (list gxc#!type::t))
            (__tmp207767
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
         __tmp207768
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp207767
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args207480%_
        (apply make-instance gxc#!class::t _%$args207480%_)))
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
      (let ((__tmp207770 (list gxc#!procedure::t))
            (__tmp207769 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp207770
         '()
         __tmp207769
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args207477%_
        (apply make-instance gxc#!predicate::t _%$args207477%_)))
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
      (let ((__tmp207772 (list gxc#!procedure::t))
            (__tmp207771 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp207772
         '()
         __tmp207771
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args207474%_
        (apply make-instance gxc#!constructor::t _%$args207474%_)))
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
      (let ((__tmp207774 (list gxc#!procedure::t))
            (__tmp207773 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp207774
         '(slot checked?)
         __tmp207773
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args207471%_
        (apply make-instance gxc#!accessor::t _%$args207471%_)))
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
      (let ((__tmp207776 (list gxc#!procedure::t))
            (__tmp207775 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp207776
         '(slot checked?)
         __tmp207775
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args207468%_
        (apply make-instance gxc#!mutator::t _%$args207468%_)))
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
      (let ((__tmp207778 (list gxc#!type::t))
            (__tmp207777 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp207778
         '(methods)
         __tmp207777
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args207465%_
        (apply make-instance gxc#!interface::t _%$args207465%_)))
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
      (let ((__tmp207780 (list gxc#!procedure::t))
            (__tmp207779
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp207780
         '(arity dispatch inline inline-typedecl)
         __tmp207779
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args207462%_
        (apply make-instance gxc#!lambda::t _%$args207462%_)))
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
      (let ((__tmp207782 (list gxc#!procedure::t))
            (__tmp207781 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp207782
         '(clauses)
         __tmp207781
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args207459%_
        (apply make-instance gxc#!case-lambda::t _%$args207459%_)))
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
      (let ((__tmp207784 (list gxc#!procedure::t))
            (__tmp207783
             (cons (cons 'struct: '#t) '((equal: table dispatch)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp207784
         '(table dispatch)
         __tmp207783
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args207456%_
        (apply make-instance gxc#!kw-lambda::t _%$args207456%_)))
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
      (let ((__tmp207786 (list gxc#!procedure::t))
            (__tmp207785 (cons (cons 'struct: '#t) '((equal: keys main)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp207786
         '(keys main)
         __tmp207785
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args207453%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args207453%_)))
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
      (let ((__tmp207787 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp207787
         '()
         '((equal:))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args207450%_
        (apply make-instance gxc#!primitive::t _%$args207450%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp207789 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp207788 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp207789
         '()
         __tmp207788
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args207447%_
        (apply make-instance gxc#!primitive-predicate::t _%$args207447%_)))
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
      (let ((__tmp207791 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp207790 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp207791
         '()
         __tmp207790
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args207444%_
        (apply make-instance gxc#!primitive-lambda::t _%$args207444%_)))
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
      (let ((__tmp207793 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp207792 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp207793
         '()
         __tmp207792
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args207441%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args207441%_)))
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
      (lambda (_%self207428%_)
        (let ((_%self207431%_ _%self207428%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self207431%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self207291%_ _%klass207292%_)
        (let ((_%self207295%_ _%self207291%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self207295%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207295%_
             _%klass207292%_
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
      (lambda (_%self206981%_
               _%id206982%_
               _%super206983%_
               _%slots206984%_
               _%ctor-method206985%_
               _%struct?206986%_
               _%final?206987%_
               _%system?206988%_
               _%metaclass206989%_)
        (let ((_%self206992%_ _%self206981%_))
          (let _%lp207003%_ ((_%rest207005%_ _%super206983%_))
            (let* ((_%rest207006207014%_ _%rest207005%_)
                   (_%else207008207022%_ (lambda () '#!void))
                   (_%K207010207028%_
                    (lambda (_%rest207025%_ _%super-id207026%_)
                      (if (let ((__tmp207794
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id206982%_ '()))
                                  _%super-id207026%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp207794 '8 '#f '#f))
                          (let ((__tmp207795
                                 (cons '!class (cons _%id206982%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp207795
                             _%super-id207026%_))
                          '#!void)
                      (_%lp207003%_ _%rest207025%_))))
              (if (pair? _%rest207006207014%_)
                  (let ((_%hd207011207031%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest207006207014%_)))
                        (_%tl207012207033%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest207006207014%_))))
                    (let* ((_%super-id207036%_ _%hd207011207031%_)
                           (_%rest207038%_ _%tl207012207033%_))
                      (_%K207010207028%_ _%rest207038%_ _%super-id207036%_)))
                  '#!void)))
          (let* ((_%ctor-method207089%_
                  (let ((_%$e207040%_ _%ctor-method206985%_))
                    (if _%$e207040%_
                        _%$e207040%_
                        (let _%lp207043%_ ((_%rest207045%_ _%super206983%_)
                                           (_%method207046%_ '#f))
                          (let* ((_%rest207047207055%_ _%rest207045%_)
                                 (_%else207049207063%_
                                  (lambda () _%method207046%_))
                                 (_%K207051207077%_
                                  (lambda (_%rest207066%_ _%super-id207067%_)
                                    (let* ((_%klass207069%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id206982%_ '()))
                                             _%super-id207067%_))
                                           (_%$e207071%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass207069%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e207071%_
                                          ((lambda (_%ctor-method207074%_)
                                             (if _%method207046%_
                                                 (if (eq? _%ctor-method207074%_
                                                          _%method207046%_)
                                                     (_%lp207043%_
                                                      _%rest207066%_
                                                      _%ctor-method207074%_)
                                                     (let ((__tmp207796
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id206982%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp207796
                _%method207046%_
                _%ctor-method207074%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp207043%_
                                                  _%rest207066%_
                                                  _%ctor-method207074%_)))
                                           _%$e207071%_)
                                          (_%lp207043%_
                                           _%rest207066%_
                                           _%method207046%_))))))
                            (if (pair? _%rest207047207055%_)
                                (let ((_%hd207052207080%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest207047207055%_)))
                                      (_%tl207053207082%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest207047207055%_))))
                                  (let* ((_%super-id207085%_
                                          _%hd207052207080%_)
                                         (_%rest207087%_ _%tl207053207082%_))
                                    (_%K207051207077%_
                                     _%rest207087%_
                                     _%super-id207085%_)))
                                (_%else207049207063%_)))))))
                 (_g207797_
                  (let ((__tmp207801
                         (lambda (_%klass-id207091%_)
                           (cons _%klass-id207091%_
                                 (let ((__tmp207802
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id206982%_ '()))
                                         _%klass-id207091%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp207802
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp207799
                         (lambda (_%klass-id207093%_)
                           (let ((__tmp207800
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id206982%_ '()))
                                   _%klass-id207093%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp207800
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp207801
                     __tmp207799
                     eq?
                     identity
                     '()
                     _%super206983%_))))
            (begin
              (let ((_g207798_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g207797_)
                           (##values-length _g207797_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g207798_ 2)))
                    (error "Context expects 2 values" _g207798_)))
              (let ((_%precedence-list207095%_
                     (let () (declare (not safe)) (##values-ref _g207797_ 0)))
                    (_%base-struct207096%_
                     (let () (declare (not safe)) (##values-ref _g207797_ 1))))
                (let* ((_%precedence-list207140%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id206982%_ '(t object class)))
                            _%precedence-list207095%_
                            (if (memq 'object::t _%precedence-list207095%_)
                                _%precedence-list207095%_
                                (if _%system?206988%_
                                    (if (memq 't::t _%precedence-list207095%_)
                                        _%precedence-list207095%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list207095%_
                                           '(t::t))))
                                    (let _%loop207102%_ ((_%tail207104%_
                                                          _%precedence-list207095%_)
                                                         (_%head207105%_ '()))
                                      (let* ((_%tail207106207114%_
                                              _%tail207104%_)
                                             (_%else207108207122%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (foldl__0
                                                   cons
                                                   '(object::t t::t)
                                                   _%head207105%_))))
                                             (_%K207110207128%_
                                              (lambda (_%rest207125%_
                                                       _%hd207126%_)
                                                (if (eq? _%hd207126%_ 't::t)
                                                    (let ((__tmp207803
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail207104%_)))
              (declare (not safe))
              (foldl__0 cons __tmp207803 _%head207105%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop207102%_
                                                     _%rest207125%_
                                                     (cons _%hd207126%_
                                                           _%head207105%_))))))
                                        (if (pair? _%tail207106207114%_)
                                            (let ((_%hd207111207131%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail207106207114%_)))
                                                  (_%tl207112207133%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail207106207114%_))))
                                              (let* ((_%hd207136%_
                                                      _%hd207111207131%_)
                                                     (_%rest207138%_
                                                      _%tl207112207133%_))
                                                (_%K207110207128%_
                                                 _%rest207138%_
                                                 _%hd207136%_)))
                                            (_%else207108207122%_))))))))
                       (_%fields207142%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id206982%_ '()))
                         _%base-struct207096%_
                         _%precedence-list207140%_
                         _%slots206984%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self206992%_
                     _%id206982%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self206992%_
                     _%super206983%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self206992%_
                     _%precedence-list207140%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self206992%_
                     _%slots206984%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self206992%_
                     _%fields207142%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self206992%_
                     _%ctor-method207089%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self206992%_
                     _%struct?206986%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self206992%_
                     _%final?206987%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self206992%_
                     _%metaclass206989%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self207145%_
               _%id207146%_
               _%super207147%_
               _%precedence-list207148%_
               _%slots207149%_
               _%fields207150%_
               _%constructor207151%_
               _%struct?207152%_
               _%final?207153%_
               _%system?207154%_
               _%metaclass207155%_
               _%methods207156%_)
        (let ((_%self207159%_ _%self207145%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207159%_
             _%id207146%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207159%_
             _%super207147%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207159%_
             _%precedence-list207148%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207159%_
             _%slots207149%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207159%_
             _%fields207150%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207159%_
             _%constructor207151%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207159%_
             _%struct?207152%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207159%_
             _%final?207153%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207159%_
             _%metaclass207155%_
             '10
             '#f
             '#f))
          (if _%methods207156%_
              (let ((__tmp207804
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods207156%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self207159%_
                 __tmp207804
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g207805_
        (let ((_g207806_ (let () (declare (not safe)) (##length _g207805_))))
          (cond ((let () (declare (not safe)) (##fx= _g207806_ 9))
                 (apply gxc#!class:::init!__0 _g207805_))
                ((let () (declare (not safe)) (##fx= _g207806_ 12))
                 (apply gxc#!class:::init!__1 _g207805_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g207805_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where206833%_
               _%base-struct206834%_
               _%precedence-list206835%_
               _%direct-slots206836%_)
        (let* ((_%base-fields206838%_
                (if _%base-struct206834%_
                    (let ((__tmp207807
                           (gxc#optimizer-resolve-class
                            _%where206833%_
                            _%base-struct206834%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp207807 '5 '#f '#f))
                    '()))
               (_%r-fields206840%_ (reverse _%base-fields206838%_))
               (_%seen-slots206848%_
                (let ((_%tab206842%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g206843206845%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab206842%_ _%g206843206845%_ '#t)))
                   _%base-fields206838%_)
                  _%tab206842%_))
               (_%process-slot206852%_
                (lambda (_%slot206850%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots206848%_ _%slot206850%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots206848%_
                           _%slot206850%_
                           '#t))
                        (set! _%r-fields206840%_
                              (cons _%slot206850%_ _%r-fields206840%_)))))))
          (for-each
           (lambda (_%mixin206855%_)
             (let ((_%klass206857%_
                    (gxc#optimizer-resolve-class
                     _%where206833%_
                     _%mixin206855%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass206857%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot206852%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass206857%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list206835%_)
          (for-each _%process-slot206852%_ _%direct-slots206836%_)
          (let () (declare (not safe)) (##reverse _%r-fields206840%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass206792%_ _%slot206793%_)
        (let _%lp206795%_ ((_%rest206797%_
                            (##structure-ref
                             _%klass206792%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset206798%_ '1))
          (let* ((_%rest206799206807%_ _%rest206797%_)
                 (_%else206801206815%_
                  (lambda ()
                    (let ((__tmp207809
                           (##structure-ref
                            _%klass206792%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp207808
                           (##structure-ref
                            _%klass206792%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp207809
                       __tmp207808
                       _%slot206793%_))))
                 (_%K206803206821%_
                  (lambda (_%rest206818%_ _%s206819%_)
                    (if (eq? _%s206819%_ _%slot206793%_)
                        _%offset206798%_
                        (_%lp206795%_
                         _%rest206818%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset206798%_ '1)))))))
            (if (pair? _%rest206799206807%_)
                (let ((_%hd206804206824%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest206799206807%_)))
                      (_%tl206805206826%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest206799206807%_))))
                  (let* ((_%s206829%_ _%hd206804206824%_)
                         (_%rest206831%_ _%tl206805206826%_))
                    (_%K206803206821%_ _%rest206831%_ _%s206829%_)))
                (_%else206801206815%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass206750%_ _%slot206751%_)
        (if (gxc#!class-struct-slot? _%klass206750%_ _%slot206751%_)
            _%klass206750%_
            (let _%lp206753%_ ((_%rest206755%_
                                (##structure-ref
                                 _%klass206750%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest206756206764%_ _%rest206755%_)
                     (_%else206758206772%_ (lambda () '#f))
                     (_%K206760206780%_
                      (lambda (_%rest206775%_ _%super206776%_)
                        (let ((_%super-class206778%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass206750%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot206751%_ '())))
                                _%super206776%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class206778%_
                               _%slot206751%_)
                              _%super-class206778%_
                              (_%lp206753%_ _%rest206775%_))))))
                (if (pair? _%rest206756206764%_)
                    (let ((_%hd206761206783%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest206756206764%_)))
                          (_%tl206762206785%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest206756206764%_))))
                      (let* ((_%super206788%_ _%hd206761206783%_)
                             (_%rest206790%_ _%tl206762206785%_))
                        (_%K206760206780%_ _%rest206790%_ _%super206788%_)))
                    (_%else206758206772%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass206747%_ _%slot206748%_)
        (if (##structure-ref _%klass206747%_ '7 gxc#!class::t '#f)
            (memq _%slot206748%_
                  (##structure-ref _%klass206747%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self206732%_ _%id206733%_)
        (let ((_%self206736%_ _%self206732%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self206736%_
             _%id206733%_
             '1
             '#f
             '#f))
          (let ((__tmp207810
                 (let ((__obj207742
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
                      __obj207742
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj207742
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj207742
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj207742)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self206736%_
             __tmp207810
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self206595%_ _%id206596%_)
        (let ((_%self206599%_ _%self206595%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self206599%_
             _%id206596%_
             '1
             '#f
             '#f))
          (let ((__tmp207811
                 (let ((__obj207743
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
                      __obj207743
                      _%id206596%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj207743
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj207743)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self206599%_
             __tmp207811
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
      (lambda (_%self206456%_ _%id206457%_ _%slot206458%_ _%checked?206459%_)
        (let ((_%self206462%_ _%self206456%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self206462%_
             _%id206457%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self206462%_
             _%slot206458%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self206462%_
             _%checked?206459%_
             '4
             '#f
             '#f))
          (let ((__tmp207812
                 (let ((__obj207744
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
                     (##unchecked-structure-set! __obj207744 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj207744
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp207813 (cons _%id206457%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj207744
                      __tmp207813
                      '3
                      '#f
                      '#f))
                   __obj207744)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self206462%_
             __tmp207812
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self206317%_ _%id206318%_ _%slot206319%_ _%checked?206320%_)
        (let ((_%self206323%_ _%self206317%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self206323%_
             _%id206318%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self206323%_
             _%slot206319%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self206323%_
             _%checked?206320%_
             '4
             '#f
             '#f))
          (let ((__tmp207814
                 (let ((__obj207745
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
                      __obj207745
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj207745
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp207815 (cons _%id206318%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj207745
                      __tmp207815
                      '3
                      '#f
                      '#f))
                   __obj207745)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self206323%_
             __tmp207814
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords206161%_
               _%signature206158206162%_
               _%self206163%_
               _%arity206164%_
               _%dispatch206165%_)
        (let* ((_%signature206167%_
                (if (eq? _%signature206158206162%_ absent-value)
                    '#f
                    _%signature206158206162%_))
               (_%self206170%_ _%self206163%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self206170%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self206170%_
             _%arity206164%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self206170%_
             _%dispatch206165%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self206170%_
             _%signature206167%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords206185%_ . _%args206186%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords206185%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords206185%_
                  'signature:
                  absent-value))
               _%args206186%_)))
    (define gxc#!lambda:::init!
      (lambda _%args206159206192%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args206159206192%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords206002%_
               _%signature205999206003%_
               _%self206004%_
               _%clauses206005%_)
        (let* ((_%signature206007%_
                (if (eq? _%signature205999206003%_ absent-value)
                    '#f
                    _%signature205999206003%_))
               (_%self206010%_ _%self206004%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self206010%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self206010%_
             _%signature206007%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self206010%_
             _%clauses206005%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords206025%_ . _%args206026%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords206025%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords206025%_
                  'signature:
                  absent-value))
               _%args206026%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args206000206032%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args206000206032%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self205860%_ _%tab205861%_ _%dispatch205862%_)
        (let ((_%self205865%_ _%self205860%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self205865%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205865%_
             _%tab205861%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205865%_
             _%dispatch205862%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self205722%_ _%keys205723%_ _%main205724%_)
        (let ((_%self205727%_ _%self205722%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self205727%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205727%_
             _%keys205723%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205727%_
             _%main205724%_
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
      (lambda (_%self205341%_ _%id205342%_)
        (let ((_%self205345%_ _%self205341%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205345%_
             _%id205342%_
             '1
             '#f
             '#f))
          (let ((__tmp207816
                 (let ((__obj207746
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
                      __obj207746
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj207746
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj207746
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj207746)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205345%_
             __tmp207816
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
      (lambda (_%klass205211%_)
        (let ((_%$e205213%_
               (##structure-ref _%klass205211%_ '11 gxc#!class::t '#f)))
          (if _%$e205213%_
              _%$e205213%_
              (let ((_%tab205217%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass205211%_
                 _%tab205217%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab205217%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass205203%_ _%method205204%_)
        (let ((_%tab205205205207%_
               (##structure-ref _%klass205203%_ '11 gxc#!class::t '#f)))
          (if _%tab205205205207%_
              (let ((_%tab205209%_ _%tab205205205207%_))
                (declare (not safe))
                (hash-get _%tab205209%_ _%method205204%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a205188%_ _%type-b205189%_)
        (if _%type-a205188%_
            (if _%type-b205189%_
                (let ((_%$e205191%_ (eq? _%type-a205188%_ _%type-b205189%_)))
                  (if _%$e205191%_
                      _%$e205191%_
                      (let ((_%$e205194%_
                             (eq? (##structure-ref
                                   _%type-b205189%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e205194%_
                            _%$e205194%_
                            (let ((_%$e205197%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a205188%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b205189%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e205197%_
                                  _%$e205197%_
                                  (let ((_%$e205200%_
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-instance-of?
                                                _%type-a205188%_
                                                'gxc#!class::t))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-instance-of?
                                                    _%type-b205189%_
                                                    'gxc#!class::t))
                                                 (gxc#!class-subclass?
                                                  _%type-a205188%_
                                                  _%type-b205189%_)
                                                 '#f)
                                             '#f)))
                                    (if _%$e205200%_
                                        _%$e205200%_
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%type-a205188%_
                                               'gxc#!interface::t))
                                            (eq? (##structure-ref
                                                  _%type-b205189%_
                                                  '1
                                                  gxc#!type::t
                                                  '#f)
                                                 'gerbil#interface-descriptor::t)
                                            '#f)))))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a205139%_ _%klass-b205140%_)
        (let ((_%$e205142%_
               (eq? (##structure-ref _%klass-a205139%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b205140%_ '1 gxc#!type::t '#f))))
          (if _%$e205142%_
              _%$e205142%_
              (let ((_%klass-id-b205145%_
                     (##structure-ref _%klass-b205140%_ '1 gxc#!type::t '#f))
                    (_%precedence-list205146%_
                     (##structure-ref _%klass-a205139%_ '3 gxc#!class::t '#f)))
                (let _%loop205148%_ ((_%rest205150%_
                                      _%precedence-list205146%_))
                  (let* ((_%rest205151205159%_ _%rest205150%_)
                         (_%else205153205167%_ (lambda () '#f))
                         (_%K205155205176%_
                          (lambda (_%rest205170%_ _%klass-name205171%_)
                            (let ((_%$e205173%_
                                   (eq? (let ((__tmp207817
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a205139%_
                                                            (cons _%klass-b205140%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name205171%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp207817
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b205145%_)))
                              (if _%$e205173%_
                                  _%$e205173%_
                                  (_%loop205148%_ _%rest205170%_))))))
                    (if (pair? _%rest205151205159%_)
                        (let ((_%hd205156205179%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest205151205159%_)))
                              (_%tl205157205181%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest205151205159%_))))
                          (let* ((_%klass-name205184%_ _%hd205156205179%_)
                                 (_%rest205186%_ _%tl205157205181%_))
                            (_%K205155205176%_
                             _%rest205186%_
                             _%klass-name205184%_)))
                        (_%else205153205167%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type205137%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type205137%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type205137%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc205126%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc205126%_ 'gxc#!procedure::t))
            (let ((_%proc205129%_ _%proc205126%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc205129%_ '2 '#f '#f))
                  (let ((__tmp207818
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc205129%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp207818 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@382.11-382.15"
               'contract:
               '!procedure?
               'value:
               _%proc205126%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym205108%_ _%type205109%_ _%local?205110%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type205109%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym205108%_
                     _%type205109%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym205108%_ '" " _%type205109%_))
        (let ((_%table205112%_
               (if _%local?205110%_
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
          (hash-put! _%table205112%_ _%sym205108%_ _%type205109%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym205117%_ _%type205118%_)
        (let ((_%local?205120%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym205117%_
           _%type205118%_
           _%local?205120%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g207819_
        (let ((_g207820_ (let () (declare (not safe)) (##length _g207819_))))
          (cond ((let () (declare (not safe)) (##fx= _g207820_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g207819_))
                ((let () (declare (not safe)) (##fx= _g207820_ 3))
                 (apply gxc#optimizer-declare-type!__% _g207819_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g207819_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym205102%_ _%type205103%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type205103%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym205102%_
                     _%type205103%_)))
        (let ((_%table205105%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp207821
                 (let () (declare (not safe)) (struct->list _%type205103%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym205102%_ '" " __tmp207821))
          (let ()
            (declare (not safe))
            (hash-put! _%table205105%_ _%sym205102%_ _%type205103%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table205105%_ _%type205103%_ _%sym205102%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym205097%_ _%type205098%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type205098%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym205097%_
                     _%type205098%_)))
        (let ((_%table205100%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table205100%_ _%sym205097%_))
              '#!void
              (begin
                (let ((__tmp207822
                       (let ()
                         (declare (not safe))
                         (struct->list _%type205098%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym205097%_
                   '" "
                   __tmp207822))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table205100%_ _%sym205097%_ _%type205098%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table205100%_
                   _%type205098%_
                   _%sym205097%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym205095%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym205095%_))
        (let ((__tmp207823
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp207823 _%sym205095%_))
        (let ((__tmp207824
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp207824 _%sym205095%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t205063%_
               _%method205064%_
               _%sym205065%_
               _%rebind?205066%_)
        (let ((__tmp207825
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp207825 _%sym205065%_ '#t))
        (let ((_%klass205068%_ (gxc#optimizer-lookup-class _%type-t205063%_)))
          (if _%klass205068%_
              (let* ((_%vtab205070%_ (gxc#!class-method-table _%klass205068%_))
                     (_%$e205072%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab205070%_ _%method205064%_))))
                (if _%$e205072%_
                    ((lambda (_%existing205075%_)
                       (if _%rebind?205066%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t205063%_
                                '" "
                                _%method205064%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab205070%_
                                _%method205064%_
                                _%sym205065%_)))
                           (if (eq? _%existing205075%_ _%sym205065%_)
                               '#!void
                               (let ((__tmp207826
                                      (cons 'bind-method!
                                            (cons _%type-t205063%_
                                                  (cons _%method205064%_
                                                        (cons _%sym205065%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp207826
                                  _%method205064%_)))))
                     _%$e205072%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t205063%_
                         '" "
                         _%method205064%_
                         '" => "
                         _%sym205065%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab205070%_
                         _%method205064%_
                         _%sym205065%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t205063%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t205084%_ _%method205085%_ _%sym205086%_)
        (let ((_%rebind?205088%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t205084%_
           _%method205085%_
           _%sym205086%_
           _%rebind?205088%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g207827_
        (let ((_g207828_ (let () (declare (not safe)) (##length _g207827_))))
          (cond ((let () (declare (not safe)) (##fx= _g207828_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g207827_))
                ((let () (declare (not safe)) (##fx= _g207828_ 4))
                 (apply gxc#optimizer-declare-method!__% _g207827_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g207827_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym205049%_)
        (let ((_%$e205051%_
               (let ((__tmp207829
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym205049%_ __tmp207829))))
          (if _%$e205051%_
              _%$e205051%_
              (let ((_%$e205059%_
                     (let ((_%ht205053205055%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht205053205055%_
                           (let ((_%ht205057%_ _%ht205053205055%_))
                             (declare (not safe))
                             (hash-get _%ht205057%_ _%sym205049%_))
                           '#f))))
                (if _%$e205059%_
                    _%$e205059%_
                    (let ((__tmp207830
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp207830 _%sym205049%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym205042%_)
        (let ((_%type205043205045%_ (gxc#optimizer-lookup-type _%sym205042%_)))
          (if _%type205043205045%_
              (let ((_%type205047%_ _%type205043205045%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type205047%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type205047%_ '1 '#f '#f)))
                    _%type205047%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym205038%_)
        (let ((_%table205040%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table205040%_ _%sym205038%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where205023%_ _%sym205024%_)
        (let ((_%$e205027%_ (gxc#optimizer-lookup-class _%sym205024%_)))
          (if _%$e205027%_
              ((lambda (_%g205029205031%_)
                 (let ((_%val205034%_ _%g205029205031%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val205034%_
                          'gxc#!class::t))
                       _%val205034%_
                       (begin
                         (raise-contract-violation-error
                          '"contract violation"
                          'context:
                          'gerbil/compiler/optimize-base
                          'contract:
                          '(!class? val)
                          'value:
                          _%val205034%_)
                         '#!void))))
               _%$e205027%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where205023%_
                   _%sym205024%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass205021%_)
        (let ((__tmp207831
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp207831 _%klass205021%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t205018%_ _%method205019%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t205018%_)
         _%method205019%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym205016%_)
        (let ((__tmp207832
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp207832 _%sym205016%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e204491%_
                  (lambda (_%t204957%_)
                    (if (symbol? _%t204957%_)
                        (_%type-e204491%_
                         (gxc#optimizer-lookup-type _%t204957%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t204957%_
                               'gxc#!lambda::t))
                            (let* ((_%t204961%_ _%t204957%_)
                                   (_%t204965%_ _%t204961%_))
                              (_%__lambda-type204617%_ _%t204965%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t204957%_
                                   'gxc#!kw-lambda::t))
                                (let* ((_%t204977%_ _%t204957%_)
                                       (_%t204981%_ _%t204977%_))
                                  (_%__kw-lambda-type204740%_ _%t204981%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t204957%_
                                       'gxc#!kw-lambda-primary::t))
                                    (let* ((_%t204992%_ _%t204957%_)
                                           (_%t204996%_ _%t204992%_))
                                      (_%__kw-lambda-primary-type204863%_
                                       _%t204996%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t204957%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t205007%_ _%t204957%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t205007%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp207833
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t205007%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp207833
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t204957%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t204957%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%__lambda-type204617%_
                  (lambda (_%t204945%_)
                    (let ((_%t204948%_ _%t204945%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t204948%_ '4 '#f '#f))
                          (_%type-e204491%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t204948%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t204948%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp207834
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t204948%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp207834
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%lambda-type204618%_
                  (lambda (_%t204933%_)
                    (let ((_%t204936%_ _%t204933%_))
                      (_%__lambda-type204617%_ _%t204936%_))))
                 (_%__kw-lambda-type204740%_
                  (lambda (_%t204921%_)
                    (let ((_%t204924%_ _%t204921%_))
                      (_%type-e204491%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t204924%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-type204741%_
                  (lambda (_%t204909%_)
                    (let ((_%t204912%_ _%t204909%_))
                      (_%__kw-lambda-type204740%_ _%t204912%_))))
                 (_%__kw-lambda-primary-type204863%_
                  (lambda (_%t204897%_)
                    (let ((_%t204900%_ _%t204897%_))
                      (_%type-e204491%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t204900%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type204864%_
                  (lambda (_%t204885%_)
                    (let ((_%t204888%_ _%t204885%_))
                      (_%__kw-lambda-primary-type204863%_ _%t204888%_)))))
          (let* ((_%ht1204866%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2204868%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result204870%_
                  (if _%ht1204866%_
                      (let () (declare (not safe)) (hash->list _%ht1204866%_))
                      '()))
                 (_%result204872%_
                  (if _%ht2204868%_
                      (let ((__tmp207835
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2204868%_))))
                        (declare (not safe))
                        (foldl__0 cons _%result204870%_ __tmp207835))
                      _%result204870%_)))
            (for-each
             (lambda (_%p204875%_)
               (let* ((_%t204877%_ (cdr _%p204875%_))
                      (_%tr204879%_ (_%type-e204491%_ _%t204877%_)))
                 (set-cdr! _%p204875%_ _%tr204879%_)))
             _%result204872%_)
            (list-sort
             (lambda (_%a204882%_ _%b204883%_)
               (let ((__tmp207837 (symbol->string (car _%a204882%_)))
                     (__tmp207836 (symbol->string (car _%b204883%_))))
                 (declare (not safe))
                 (##string<? __tmp207837 __tmp207836)))
             _%result204872%_)))))))
