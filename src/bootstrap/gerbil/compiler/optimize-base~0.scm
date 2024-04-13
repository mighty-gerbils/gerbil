(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1713004412)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp150750 (list)) (__tmp150749 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp150750
         '(type classes ssxi methods)
         __tmp150749
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args150721%_
        (apply make-instance gxc#optimizer-info::t _%$args150721%_)))
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
      (lambda (_%self147862150706%_)
        (let* ((_%self150709%_ _%self147862150706%_)
               (_%self150711%_ _%self150709%_))
          (if (let ((__tmp150751
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self150711%_))))
                (declare (not safe))
                (##fx< '4 __tmp150751))
              (begin
                (let ((__tmp150752
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self150711%_
                   __tmp150752
                   '1
                   '#f
                   '#f))
                (let ((__tmp150753
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self150711%_
                   __tmp150753
                   '2
                   '#f
                   '#f))
                (let ((__tmp150754
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self150711%_
                   __tmp150754
                   '3
                   '#f
                   '#f))
                (let ((__tmp150755
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self150711%_
                   __tmp150755
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp150756
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self150711%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self150711%_
                       '4
                       __tmp150756))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp150758 (list))
            (__tmp150757
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp150758
         '(id)
         __tmp150757
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args150581%_
        (apply make-instance gxc#!type::t _%$args150581%_)))
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
      (let ((__tmp150760 (list gxc#!type::t))
            (__tmp150759 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp150760
         '()
         __tmp150759
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args150578%_
        (apply make-instance gxc#!abort::t _%$args150578%_)))
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
      (let ((__tmp150762 (list gxc#!type::t))
            (__tmp150761 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp150762
         '()
         __tmp150761
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args150575%_
        (apply make-instance gxc#!alias::t _%$args150575%_)))
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
      (let ((__tmp150764 (list))
            (__tmp150763
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp150764
         '(return effect arguments unchecked origin)
         __tmp150763
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args150572%_
        (apply make-instance gxc#!signature::t _%$args150572%_)))
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
      (let ((__tmp150766 (list gxc#!type::t))
            (__tmp150765
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp150766
         '(signature)
         __tmp150765
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
      (lambda (_%id150551%_ _%signature150552%_)
        (if ((lambda (_%$obj150555%_)
               (or (not _%$obj150555%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj150555%_
                      'gxc#!signature::t))))
             _%signature150552%_)
            (let ((_%signature150562%_ _%signature150552%_))
              (gxc#__make-!procedure _%id150551%_ _%signature150562%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature150552%_)
              '#!void))))
    (define gxc#__make-!procedure
      (lambda (_%id150537%_ _%signature150539%_)
        (let ((_%signature150542%_ _%signature150539%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id150537%_ _%signature150542%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj150506%_ _%signature150507%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj150506%_ 'gxc#!procedure::t))
            (let ((_%$obj150511%_ _%$obj150506%_))
              (if ((lambda (_%$obj150520%_)
                     (or (not _%$obj150520%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj150520%_
                            'gxc#!signature::t))))
                   _%signature150507%_)
                  (let ((_%signature150527%_ _%signature150507%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj150511%_
                     _%signature150527%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature150507%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj150506%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj150483%_ _%signature150485%_)
        (let* ((_%$obj150489%_ _%$obj150483%_)
               (_%signature150497%_ _%signature150485%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj150489%_
           _%signature150497%_
           '2
           '#f
           '#f))))
    (define gxc#!class-meta::t
      (let ((__tmp150768 (list gxc#!type::t))
            (__tmp150767 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp150768
         '(class)
         __tmp150767
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args150480%_
        (apply make-instance gxc#!class-meta::t _%$args150480%_)))
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
      (let ((__tmp150770 (list gxc#!type::t))
            (__tmp150769
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
         __tmp150770
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp150769
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args150477%_
        (apply make-instance gxc#!class::t _%$args150477%_)))
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
      (let ((__tmp150772 (list gxc#!procedure::t))
            (__tmp150771 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp150772
         '()
         __tmp150771
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args150474%_
        (apply make-instance gxc#!predicate::t _%$args150474%_)))
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
      (let ((__tmp150774 (list gxc#!procedure::t))
            (__tmp150773 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp150774
         '()
         __tmp150773
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args150471%_
        (apply make-instance gxc#!constructor::t _%$args150471%_)))
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
      (let ((__tmp150776 (list gxc#!procedure::t))
            (__tmp150775 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp150776
         '(slot checked?)
         __tmp150775
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args150468%_
        (apply make-instance gxc#!accessor::t _%$args150468%_)))
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
      (let ((__tmp150778 (list gxc#!procedure::t))
            (__tmp150777 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp150778
         '(slot checked?)
         __tmp150777
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args150465%_
        (apply make-instance gxc#!mutator::t _%$args150465%_)))
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
      (let ((__tmp150780 (list gxc#!type::t))
            (__tmp150779 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp150780
         '(methods)
         __tmp150779
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args150462%_
        (apply make-instance gxc#!interface::t _%$args150462%_)))
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
      (let ((__tmp150782 (list gxc#!procedure::t))
            (__tmp150781
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp150782
         '(arity dispatch inline inline-typedecl)
         __tmp150781
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args150459%_
        (apply make-instance gxc#!lambda::t _%$args150459%_)))
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
      (let ((__tmp150784 (list gxc#!procedure::t))
            (__tmp150783 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp150784
         '(clauses)
         __tmp150783
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args150456%_
        (apply make-instance gxc#!case-lambda::t _%$args150456%_)))
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
      (let ((__tmp150786 (list gxc#!procedure::t))
            (__tmp150785
             (cons (cons 'struct: '#t) '((equal: table dispatch)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp150786
         '(table dispatch)
         __tmp150785
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args150453%_
        (apply make-instance gxc#!kw-lambda::t _%$args150453%_)))
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
      (let ((__tmp150788 (list gxc#!procedure::t))
            (__tmp150787 (cons (cons 'struct: '#t) '((equal: keys main)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp150788
         '(keys main)
         __tmp150787
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args150450%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args150450%_)))
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
      (let ((__tmp150789 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp150789
         '()
         '((equal:))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args150447%_
        (apply make-instance gxc#!primitive::t _%$args150447%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp150791 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp150790 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp150791
         '()
         __tmp150790
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args150444%_
        (apply make-instance gxc#!primitive-predicate::t _%$args150444%_)))
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
      (let ((__tmp150793 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp150792 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp150793
         '()
         __tmp150792
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args150441%_
        (apply make-instance gxc#!primitive-lambda::t _%$args150441%_)))
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
      (let ((__tmp150795 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp150794 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp150795
         '()
         __tmp150794
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args150438%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args150438%_)))
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
      (lambda (_%self147863150423%_)
        (let* ((_%self150426%_ _%self147863150423%_)
               (_%self150428%_ _%self150426%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self150428%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self147864150285%_ _%klass150287%_)
        (let* ((_%self150289%_ _%self147864150285%_)
               (_%self150291%_ _%self150289%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self150291%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150291%_
             _%klass150287%_
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
      (lambda (_%self147865149973%_
               _%id149975%_
               _%super149976%_
               _%slots149977%_
               _%ctor-method149978%_
               _%struct?149979%_
               _%final?149980%_
               _%system?149981%_
               _%metaclass149982%_)
        (let* ((_%self149984%_ _%self147865149973%_)
               (_%self149986%_ _%self149984%_))
          (let _%lp149996%_ ((_%rest149998%_ _%super149976%_))
            (let* ((_%rest149999150007%_ _%rest149998%_)
                   (_%else150001150015%_ (lambda () '#!void))
                   (_%K150003150021%_
                    (lambda (_%rest150018%_ _%super-id150019%_)
                      (if (let ((__tmp150796
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id149975%_ '()))
                                  _%super-id150019%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp150796 '8 '#f '#f))
                          (let ((__tmp150797
                                 (cons '!class (cons _%id149975%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp150797
                             _%super-id150019%_))
                          '#!void)
                      (_%lp149996%_ _%rest150018%_))))
              (if (let () (declare (not safe)) (##pair? _%rest149999150007%_))
                  (let ((_%hd150004150024%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest149999150007%_)))
                        (_%tl150005150026%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest149999150007%_))))
                    (let* ((_%super-id150029%_ _%hd150004150024%_)
                           (_%rest150031%_ _%tl150005150026%_))
                      (_%K150003150021%_ _%rest150031%_ _%super-id150029%_)))
                  '#!void)))
          (let* ((_%ctor-method150082%_
                  (let ((_%$e150033%_ _%ctor-method149978%_))
                    (if _%$e150033%_
                        _%$e150033%_
                        (let _%lp150036%_ ((_%rest150038%_ _%super149976%_)
                                           (_%method150039%_ '#f))
                          (let* ((_%rest150040150048%_ _%rest150038%_)
                                 (_%else150042150056%_
                                  (lambda () _%method150039%_))
                                 (_%K150044150070%_
                                  (lambda (_%rest150059%_ _%super-id150060%_)
                                    (let* ((_%klass150062%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id149975%_ '()))
                                             _%super-id150060%_))
                                           (_%$e150064%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass150062%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e150064%_
                                          ((lambda (_%ctor-method150067%_)
                                             (if _%method150039%_
                                                 (if (eq? _%ctor-method150067%_
                                                          _%method150039%_)
                                                     (_%lp150036%_
                                                      _%rest150059%_
                                                      _%ctor-method150067%_)
                                                     (let ((__tmp150798
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id149975%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp150798
                _%method150039%_
                _%ctor-method150067%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp150036%_
                                                  _%rest150059%_
                                                  _%ctor-method150067%_)))
                                           _%$e150064%_)
                                          (_%lp150036%_
                                           _%rest150059%_
                                           _%method150039%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest150040150048%_))
                                (let ((_%hd150045150073%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest150040150048%_)))
                                      (_%tl150046150075%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest150040150048%_))))
                                  (let* ((_%super-id150078%_
                                          _%hd150045150073%_)
                                         (_%rest150080%_ _%tl150046150075%_))
                                    (_%K150044150070%_
                                     _%rest150080%_
                                     _%super-id150078%_)))
                                (_%else150042150056%_)))))))
                 (_g150799_
                  (let ((__tmp150803
                         (lambda (_%klass-id150084%_)
                           (cons _%klass-id150084%_
                                 (let ((__tmp150804
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id149975%_ '()))
                                         _%klass-id150084%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp150804
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp150801
                         (lambda (_%klass-id150086%_)
                           (let ((__tmp150802
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id149975%_ '()))
                                   _%klass-id150086%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp150802
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp150803
                     __tmp150801
                     eq?
                     identity
                     '()
                     _%super149976%_))))
            (begin
              (let ((_g150800_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g150799_)
                           (##vector-length _g150799_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g150800_ 2)))
                    (error "Context expects 2 values" _g150800_)))
              (let ((_%precedence-list150088%_
                     (let () (declare (not safe)) (##vector-ref _g150799_ 0)))
                    (_%base-struct150089%_
                     (let () (declare (not safe)) (##vector-ref _g150799_ 1))))
                (let* ((_%precedence-list150133%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id149975%_ '(t object class)))
                            _%precedence-list150088%_
                            (if (memq 'object::t _%precedence-list150088%_)
                                _%precedence-list150088%_
                                (if _%system?149981%_
                                    (if (memq 't::t _%precedence-list150088%_)
                                        _%precedence-list150088%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list150088%_
                                           '(t::t))))
                                    (let _%loop150095%_ ((_%tail150097%_
                                                          _%precedence-list150088%_)
                                                         (_%head150098%_ '()))
                                      (let* ((_%tail150099150107%_
                                              _%tail150097%_)
                                             (_%else150101150115%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head150098%_))))
                                             (_%K150103150121%_
                                              (lambda (_%rest150118%_
                                                       _%hd150119%_)
                                                (if (eq? _%hd150119%_ 't::t)
                                                    (let ((__tmp150805
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail150097%_)))
              (declare (not safe))
              (__foldl1 cons __tmp150805 _%head150098%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop150095%_
                                                     _%rest150118%_
                                                     (cons _%hd150119%_
                                                           _%head150098%_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tail150099150107%_))
                                            (let ((_%hd150104150124%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail150099150107%_)))
                                                  (_%tl150105150126%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail150099150107%_))))
                                              (let* ((_%hd150129%_
                                                      _%hd150104150124%_)
                                                     (_%rest150131%_
                                                      _%tl150105150126%_))
                                                (_%K150103150121%_
                                                 _%rest150131%_
                                                 _%hd150129%_)))
                                            (_%else150101150115%_))))))))
                       (_%fields150135%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id149975%_ '()))
                         _%base-struct150089%_
                         _%precedence-list150133%_
                         _%slots149977%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149986%_
                     _%id149975%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149986%_
                     _%super149976%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149986%_
                     _%precedence-list150133%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149986%_
                     _%slots149977%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149986%_
                     _%fields150135%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149986%_
                     _%ctor-method150082%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149986%_
                     _%struct?149979%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149986%_
                     _%final?149980%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149986%_
                     _%metaclass149982%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self147866150138%_
               _%id150140%_
               _%super150141%_
               _%precedence-list150142%_
               _%slots150143%_
               _%fields150144%_
               _%constructor150145%_
               _%struct?150146%_
               _%final?150147%_
               _%system?150148%_
               _%metaclass150149%_
               _%methods150150%_)
        (let* ((_%self150152%_ _%self147866150138%_)
               (_%self150154%_ _%self150152%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150154%_
             _%id150140%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150154%_
             _%super150141%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150154%_
             _%precedence-list150142%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150154%_
             _%slots150143%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150154%_
             _%fields150144%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150154%_
             _%constructor150145%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150154%_
             _%struct?150146%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150154%_
             _%final?150147%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150154%_
             _%metaclass150149%_
             '10
             '#f
             '#f))
          (if _%methods150150%_
              (let ((__tmp150806
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods150150%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self150154%_
                 __tmp150806
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g150808_
        (let ((_g150807_ (let () (declare (not safe)) (##length _g150808_))))
          (cond ((let () (declare (not safe)) (##fx= _g150807_ 9))
                 (apply gxc#!class:::init!__0 _g150808_))
                ((let () (declare (not safe)) (##fx= _g150807_ 12))
                 (apply gxc#!class:::init!__1 _g150808_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g150808_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where149825%_
               _%base-struct149826%_
               _%precedence-list149827%_
               _%direct-slots149828%_)
        (let* ((_%base-fields149830%_
                (if _%base-struct149826%_
                    (let ((__tmp150809
                           (gxc#optimizer-resolve-class
                            _%where149825%_
                            _%base-struct149826%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp150809 '5 '#f '#f))
                    '()))
               (_%r-fields149832%_ (reverse _%base-fields149830%_))
               (_%seen-slots149840%_
                (let ((_%tab149834%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g149835149837%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab149834%_ _%g149835149837%_ '#t)))
                   _%base-fields149830%_)
                  _%tab149834%_))
               (_%process-slot149844%_
                (lambda (_%slot149842%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots149840%_ _%slot149842%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots149840%_
                           _%slot149842%_
                           '#t))
                        (set! _%r-fields149832%_
                              (cons _%slot149842%_ _%r-fields149832%_)))))))
          (for-each
           (lambda (_%mixin149847%_)
             (let ((_%klass149849%_
                    (gxc#optimizer-resolve-class
                     _%where149825%_
                     _%mixin149847%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass149849%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot149844%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass149849%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list149827%_)
          (for-each _%process-slot149844%_ _%direct-slots149828%_)
          (let () (declare (not safe)) (##reverse _%r-fields149832%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass149784%_ _%slot149785%_)
        (let _%lp149787%_ ((_%rest149789%_
                            (##structure-ref
                             _%klass149784%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset149790%_ '1))
          (let* ((_%rest149791149799%_ _%rest149789%_)
                 (_%else149793149807%_
                  (lambda ()
                    (let ((__tmp150811
                           (##structure-ref
                            _%klass149784%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp150810
                           (##structure-ref
                            _%klass149784%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp150811
                       __tmp150810
                       _%slot149785%_))))
                 (_%K149795149813%_
                  (lambda (_%rest149810%_ _%s149811%_)
                    (if (eq? _%s149811%_ _%slot149785%_)
                        _%offset149790%_
                        (_%lp149787%_
                         _%rest149810%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset149790%_ '1)))))))
            (if (let () (declare (not safe)) (##pair? _%rest149791149799%_))
                (let ((_%hd149796149816%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest149791149799%_)))
                      (_%tl149797149818%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest149791149799%_))))
                  (let* ((_%s149821%_ _%hd149796149816%_)
                         (_%rest149823%_ _%tl149797149818%_))
                    (_%K149795149813%_ _%rest149823%_ _%s149821%_)))
                (_%else149793149807%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass149742%_ _%slot149743%_)
        (if (gxc#!class-struct-slot? _%klass149742%_ _%slot149743%_)
            _%klass149742%_
            (let _%lp149745%_ ((_%rest149747%_
                                (##structure-ref
                                 _%klass149742%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest149748149756%_ _%rest149747%_)
                     (_%else149750149764%_ (lambda () '#f))
                     (_%K149752149772%_
                      (lambda (_%rest149767%_ _%super149768%_)
                        (let ((_%super-class149770%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass149742%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot149743%_ '())))
                                _%super149768%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class149770%_
                               _%slot149743%_)
                              _%super-class149770%_
                              (_%lp149745%_ _%rest149767%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest149748149756%_))
                    (let ((_%hd149753149775%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest149748149756%_)))
                          (_%tl149754149777%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest149748149756%_))))
                      (let* ((_%super149780%_ _%hd149753149775%_)
                             (_%rest149782%_ _%tl149754149777%_))
                        (_%K149752149772%_ _%rest149782%_ _%super149780%_)))
                    (_%else149750149764%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass149739%_ _%slot149740%_)
        (if (##structure-ref _%klass149739%_ '7 gxc#!class::t '#f)
            (memq _%slot149740%_
                  (##structure-ref _%klass149739%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self147867149723%_ _%id149725%_)
        (let* ((_%self149727%_ _%self147867149723%_)
               (_%self149729%_ _%self149727%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149729%_
             _%id149725%_
             '1
             '#f
             '#f))
          (let ((__tmp150812
                 (let ((__obj150744
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
                      __obj150744
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150744
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150744
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj150744)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149729%_
             __tmp150812
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self147868149585%_ _%id149587%_)
        (let* ((_%self149589%_ _%self147868149585%_)
               (_%self149591%_ _%self149589%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149591%_
             _%id149587%_
             '1
             '#f
             '#f))
          (let ((__tmp150813
                 (let ((__obj150745
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
                      __obj150745
                      _%id149587%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150745
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj150745)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149591%_
             __tmp150813
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
      (lambda (_%self147869149445%_
               _%id149447%_
               _%slot149448%_
               _%checked?149449%_)
        (let* ((_%self149451%_ _%self147869149445%_)
               (_%self149453%_ _%self149451%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149453%_
             _%id149447%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149453%_
             _%slot149448%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149453%_
             _%checked?149449%_
             '4
             '#f
             '#f))
          (let ((__tmp150814
                 (let ((__obj150746
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
                     (##unchecked-structure-set! __obj150746 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150746
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp150815 (cons _%id149447%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150746
                      __tmp150815
                      '3
                      '#f
                      '#f))
                   __obj150746)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149453%_
             __tmp150814
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self147870149305%_
               _%id149307%_
               _%slot149308%_
               _%checked?149309%_)
        (let* ((_%self149311%_ _%self147870149305%_)
               (_%self149313%_ _%self149311%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149313%_
             _%id149307%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149313%_
             _%slot149308%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149313%_
             _%checked?149309%_
             '4
             '#f
             '#f))
          (let ((__tmp150816
                 (let ((__obj150747
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
                      __obj150747
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150747
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp150817 (cons _%id149307%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150747
                      __tmp150817
                      '3
                      '#f
                      '#f))
                   __obj150747)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149313%_
             __tmp150816
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords149147%_
               _%signature149144149148%_
               _%self147871149150%_
               _%arity149152%_
               _%dispatch149153%_)
        (let* ((_%signature149155%_
                (if (eq? _%signature149144149148%_ absent-value)
                    '#f
                    _%signature149144149148%_))
               (_%self149157%_ _%self147871149150%_)
               (_%self149159%_ _%self149157%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self149159%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149159%_
             _%arity149152%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149159%_
             _%dispatch149153%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149159%_
             _%signature149155%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords149173%_ . _%args149174%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords149173%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords149173%_
                  'signature:
                  absent-value))
               _%args149174%_)))
    (define gxc#!lambda:::init!
      (lambda _%args149145149180%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args149145149180%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords148986%_
               _%signature148983148987%_
               _%self147872148989%_
               _%clauses148991%_)
        (let* ((_%signature148993%_
                (if (eq? _%signature148983148987%_ absent-value)
                    '#f
                    _%signature148983148987%_))
               (_%self148995%_ _%self147872148989%_)
               (_%self148997%_ _%self148995%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self148997%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148997%_
             _%signature148993%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148997%_
             _%clauses148991%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords149011%_ . _%args149012%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords149011%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords149011%_
                  'signature:
                  absent-value))
               _%args149012%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args148984149018%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args148984149018%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self147873148843%_ _%tab148845%_ _%dispatch148846%_)
        (let* ((_%self148848%_ _%self147873148843%_)
               (_%self148850%_ _%self148848%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self148850%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148850%_
             _%tab148845%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148850%_
             _%dispatch148846%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self147874148704%_ _%keys148706%_ _%main148707%_)
        (let* ((_%self148709%_ _%self147874148704%_)
               (_%self148711%_ _%self148709%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self148711%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148711%_
             _%keys148706%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148711%_
             _%main148707%_
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
      (lambda (_%self147875148322%_ _%id148324%_)
        (let* ((_%self148326%_ _%self147875148322%_)
               (_%self148328%_ _%self148326%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148328%_
             _%id148324%_
             '1
             '#f
             '#f))
          (let ((__tmp150818
                 (let ((__obj150748
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
                      __obj150748
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150748
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150748
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj150748)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148328%_
             __tmp150818
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
      (lambda (_%klass148191%_)
        (let ((_%$e148193%_
               (##structure-ref _%klass148191%_ '11 gxc#!class::t '#f)))
          (if _%$e148193%_
              _%$e148193%_
              (let ((_%tab148197%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass148191%_
                 _%tab148197%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab148197%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass148182%_ _%method148183%_)
        (let ((_%tab148184148186%_
               (##structure-ref _%klass148182%_ '11 gxc#!class::t '#f)))
          (if _%tab148184148186%_
              (let ((_%tab148189%_ _%tab148184148186%_))
                (declare (not safe))
                (hash-get _%tab148189%_ _%method148183%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a148170%_ _%type-b148171%_)
        (if _%type-a148170%_
            (if _%type-b148171%_
                (let ((_%$e148173%_ (eq? _%type-a148170%_ _%type-b148171%_)))
                  (if _%$e148173%_
                      _%$e148173%_
                      (let ((_%$e148176%_
                             (eq? (##structure-ref
                                   _%type-b148171%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e148176%_
                            _%$e148176%_
                            (let ((_%$e148179%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a148170%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b148171%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e148179%_
                                  _%$e148179%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a148170%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b148171%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a148170%_
                                           _%type-b148171%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a148121%_ _%klass-b148122%_)
        (let ((_%$e148124%_
               (eq? (##structure-ref _%klass-a148121%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b148122%_ '1 gxc#!type::t '#f))))
          (if _%$e148124%_
              _%$e148124%_
              (let ((_%klass-id-b148127%_
                     (##structure-ref _%klass-b148122%_ '1 gxc#!type::t '#f))
                    (_%precedence-list148128%_
                     (##structure-ref _%klass-a148121%_ '3 gxc#!class::t '#f)))
                (let _%loop148130%_ ((_%rest148132%_
                                      _%precedence-list148128%_))
                  (let* ((_%rest148133148141%_ _%rest148132%_)
                         (_%else148135148149%_ (lambda () '#f))
                         (_%K148137148158%_
                          (lambda (_%rest148152%_ _%klass-name148153%_)
                            (let ((_%$e148155%_
                                   (eq? (let ((__tmp150819
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a148121%_
                                                            (cons _%klass-b148122%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name148153%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp150819
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b148127%_)))
                              (if _%$e148155%_
                                  _%$e148155%_
                                  (_%loop148130%_ _%rest148152%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest148133148141%_))
                        (let ((_%hd148138148161%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest148133148141%_)))
                              (_%tl148139148163%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest148133148141%_))))
                          (let* ((_%klass-name148166%_ _%hd148138148161%_)
                                 (_%rest148168%_ _%tl148139148163%_))
                            (_%K148137148158%_
                             _%rest148168%_
                             _%klass-name148166%_)))
                        (_%else148135148149%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type148119%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type148119%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type148119%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc148108%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc148108%_ 'gxc#!procedure::t))
            (let ((_%proc148111%_ _%proc148108%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc148111%_ '2 '#f '#f))
                  (let ((__tmp150820
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc148111%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp150820 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@378.11-378.15"
               'contract:
               '!procedure?
               'value:
               _%proc148108%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym148090%_ _%type148091%_ _%local?148092%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type148091%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym148090%_
                     _%type148091%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym148090%_ '" " _%type148091%_))
        (let ((_%table148094%_
               (if _%local?148092%_
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
          (hash-put! _%table148094%_ _%sym148090%_ _%type148091%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym148099%_ _%type148100%_)
        (let ((_%local?148102%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym148099%_
           _%type148100%_
           _%local?148102%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g150822_
        (let ((_g150821_ (let () (declare (not safe)) (##length _g150822_))))
          (cond ((let () (declare (not safe)) (##fx= _g150821_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g150822_))
                ((let () (declare (not safe)) (##fx= _g150821_ 3))
                 (apply gxc#optimizer-declare-type!__% _g150822_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g150822_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym148084%_ _%type148085%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type148085%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym148084%_
                     _%type148085%_)))
        (let ((_%table148087%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp150823
                 (let () (declare (not safe)) (struct->list _%type148085%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym148084%_ '" " __tmp150823))
          (let ()
            (declare (not safe))
            (hash-put! _%table148087%_ _%sym148084%_ _%type148085%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table148087%_ _%type148085%_ _%sym148084%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym148079%_ _%type148080%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type148080%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym148079%_
                     _%type148080%_)))
        (let ((_%table148082%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table148082%_ _%sym148079%_))
              '#!void
              (begin
                (let ((__tmp150824
                       (let ()
                         (declare (not safe))
                         (struct->list _%type148080%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym148079%_
                   '" "
                   __tmp150824))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table148082%_ _%sym148079%_ _%type148080%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table148082%_
                   _%type148080%_
                   _%sym148079%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym148077%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym148077%_))
        (let ((__tmp150825
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp150825 _%sym148077%_))
        (let ((__tmp150826
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp150826 _%sym148077%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t148045%_
               _%method148046%_
               _%sym148047%_
               _%rebind?148048%_)
        (let ((__tmp150827
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp150827 _%sym148047%_ '#t))
        (let ((_%klass148050%_ (gxc#optimizer-lookup-class _%type-t148045%_)))
          (if _%klass148050%_
              (let* ((_%vtab148052%_ (gxc#!class-method-table _%klass148050%_))
                     (_%$e148054%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab148052%_ _%method148046%_))))
                (if _%$e148054%_
                    ((lambda (_%existing148057%_)
                       (if _%rebind?148048%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t148045%_
                                '" "
                                _%method148046%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab148052%_
                                _%method148046%_
                                _%sym148047%_)))
                           (if (eq? _%existing148057%_ _%sym148047%_)
                               '#!void
                               (let ((__tmp150828
                                      (cons 'bind-method!
                                            (cons _%type-t148045%_
                                                  (cons _%method148046%_
                                                        (cons _%sym148047%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp150828
                                  _%method148046%_)))))
                     _%$e148054%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t148045%_
                         '" "
                         _%method148046%_
                         '" => "
                         _%sym148047%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab148052%_
                         _%method148046%_
                         _%sym148047%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t148045%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t148066%_ _%method148067%_ _%sym148068%_)
        (let ((_%rebind?148070%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t148066%_
           _%method148067%_
           _%sym148068%_
           _%rebind?148070%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g150830_
        (let ((_g150829_ (let () (declare (not safe)) (##length _g150830_))))
          (cond ((let () (declare (not safe)) (##fx= _g150829_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g150830_))
                ((let () (declare (not safe)) (##fx= _g150829_ 4))
                 (apply gxc#optimizer-declare-method!__% _g150830_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g150830_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym148030%_)
        (let ((_%$e148032%_
               (let ((__tmp150831
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym148030%_ __tmp150831))))
          (if _%$e148032%_
              _%$e148032%_
              (let ((_%$e148041%_
                     (let ((_%ht148034148036%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht148034148036%_
                           (let ((_%ht148039%_ _%ht148034148036%_))
                             (declare (not safe))
                             (hash-get _%ht148039%_ _%sym148030%_))
                           '#f))))
                (if _%$e148041%_
                    _%$e148041%_
                    (let ((__tmp150832
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp150832 _%sym148030%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym148022%_)
        (let ((_%type148023148025%_ (gxc#optimizer-lookup-type _%sym148022%_)))
          (if _%type148023148025%_
              (let ((_%type148028%_ _%type148023148025%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type148028%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type148028%_ '1 '#f '#f)))
                    _%type148028%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym148018%_)
        (let ((_%table148020%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table148020%_ _%sym148018%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where148003%_ _%sym148004%_)
        (let ((_%$e148007%_ (gxc#optimizer-lookup-class _%sym148004%_)))
          (if _%$e148007%_
              ((lambda (_%g148009148011%_)
                 (let ((_%val148014%_ _%g148009148011%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val148014%_
                          'gxc#!class::t))
                       _%val148014%_
                       (let ()
                         (declare (not safe))
                         (error '"bad cast" gxc#!class::t _%val148014%_)))))
               _%$e148007%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where148003%_
                   _%sym148004%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass148001%_)
        (let ((__tmp150833
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp150833 _%klass148001%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t147998%_ _%method147999%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t147998%_)
         _%method147999%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym147996%_)
        (let ((__tmp150834
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp150834 _%sym147996%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e147878%_
                  (lambda (_%t147979%_)
                    (if (symbol? _%t147979%_)
                        (_%type-e147878%_
                         (gxc#optimizer-lookup-type _%t147979%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t147979%_
                               'gxc#!lambda::t))
                            (_%__lambda-type147880%_ _%t147979%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t147979%_
                                   'gxc#!kw-lambda::t))
                                (_%__kw-lambda-type147882%_ _%t147979%_)
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t147979%_
                                       'gxc#!kw-lambda-primary::t))
                                    (_%__kw-lambda-primary-type147884%_
                                     _%t147979%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t147979%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t147986%_ _%t147979%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t147986%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp150835
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t147986%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp150835
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t147979%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t147979%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%lambda-type147879%_
                  (lambda (_%t147967%_)
                    (let ((_%t147970%_ _%t147967%_))
                      (_%__lambda-type147880%_ _%t147970%_))))
                 (_%__lambda-type147880%_
                  (lambda (_%t147955%_)
                    (let ((_%t147958%_ _%t147955%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t147958%_ '4 '#f '#f))
                          (_%type-e147878%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t147958%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t147958%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp150836
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t147958%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp150836
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%kw-lambda-type147881%_
                  (lambda (_%t147943%_)
                    (let ((_%t147946%_ _%t147943%_))
                      (_%__kw-lambda-type147882%_ _%t147946%_))))
                 (_%__kw-lambda-type147882%_
                  (lambda (_%t147931%_)
                    (let ((_%t147934%_ _%t147931%_))
                      (_%type-e147878%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t147934%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type147883%_
                  (lambda (_%t147919%_)
                    (let ((_%t147922%_ _%t147919%_))
                      (_%__kw-lambda-primary-type147884%_ _%t147922%_))))
                 (_%__kw-lambda-primary-type147884%_
                  (lambda (_%t147905%_)
                    (let ((_%t147908%_ _%t147905%_))
                      (_%type-e147878%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t147908%_
                          '4
                          '#f
                          '#f)))))))
          (let* ((_%ht1147886%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2147888%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result147890%_
                  (if _%ht1147886%_
                      (let () (declare (not safe)) (hash->list _%ht1147886%_))
                      '()))
                 (_%result147892%_
                  (if _%ht2147888%_
                      (let ((__tmp150837
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2147888%_))))
                        (declare (not safe))
                        (__foldl1 cons _%result147890%_ __tmp150837))
                      _%result147890%_)))
            (for-each
             (lambda (_%p147895%_)
               (let* ((_%t147897%_ (cdr _%p147895%_))
                      (_%tr147899%_ (_%type-e147878%_ _%t147897%_)))
                 (set-cdr! _%p147895%_ _%tr147899%_)))
             _%result147892%_)
            (list-sort
             (lambda (_%a147902%_ _%b147903%_)
               (let ((__tmp150839 (symbol->string (car _%a147902%_)))
                     (__tmp150838 (symbol->string (car _%b147903%_))))
                 (declare (not safe))
                 (##string<? __tmp150839 __tmp150838)))
             _%result147892%_)))))))
