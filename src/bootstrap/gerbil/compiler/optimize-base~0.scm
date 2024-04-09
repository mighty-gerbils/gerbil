(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1712696214)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp148978 (list)) (__tmp148977 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp148978
         '(type classes ssxi methods)
         __tmp148977
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args148949%_
        (apply make-instance gxc#optimizer-info::t _%$args148949%_)))
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
      (lambda (_%self148936%_)
        (let ((_%self148939%_ _%self148936%_))
          (if (let ((__tmp148979
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self148939%_))))
                (declare (not safe))
                (##fx< '4 __tmp148979))
              (begin
                (let ((__tmp148980
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self148939%_
                   __tmp148980
                   '1
                   '#f
                   '#f))
                (let ((__tmp148981
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self148939%_
                   __tmp148981
                   '2
                   '#f
                   '#f))
                (let ((__tmp148982
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self148939%_
                   __tmp148982
                   '3
                   '#f
                   '#f))
                (let ((__tmp148983
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self148939%_
                   __tmp148983
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp148984
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self148939%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self148939%_
                       '4
                       __tmp148984))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp148986 (list))
            (__tmp148985
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp148986
         '(id)
         __tmp148985
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args148811%_
        (apply make-instance gxc#!type::t _%$args148811%_)))
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
      (let ((__tmp148988 (list gxc#!type::t))
            (__tmp148987 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp148988
         '()
         __tmp148987
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args148808%_
        (apply make-instance gxc#!abort::t _%$args148808%_)))
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
      (let ((__tmp148990 (list gxc#!type::t))
            (__tmp148989 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp148990
         '()
         __tmp148989
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args148805%_
        (apply make-instance gxc#!alias::t _%$args148805%_)))
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
      (let ((__tmp148992 (list))
            (__tmp148991
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp148992
         '(return effect arguments unchecked origin)
         __tmp148991
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args148802%_
        (apply make-instance gxc#!signature::t _%$args148802%_)))
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
      (let ((__tmp148994 (list gxc#!type::t))
            (__tmp148993
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp148994
         '(signature)
         __tmp148993
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
      (lambda (_%id148781%_ _%signature148782%_)
        (let ()
          (if ((lambda (_%$obj148785%_)
                 (or (let () (declare (not safe)) (not _%$obj148785%_))
                     (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        _%$obj148785%_
                        'gxc#!signature::t))))
               _%signature148782%_)
              (let ((_%signature148792%_ _%signature148782%_))
                (declare (not safe))
                (gxc#__make-!procedure _%id148781%_ _%signature148792%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/compiler/optimize-base
                 'contract:
                 '(? (or not !signature?))
                 'value:
                 _%signature148782%_)
                '#!void)))))
    (define gxc#__make-!procedure
      (lambda (_%id148767%_ _%signature148769%_)
        (let ((_%signature148772%_ _%signature148769%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id148767%_ _%signature148772%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj148736%_ _%signature148737%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%$obj148736%_ 'gxc#!procedure::t))
              (let ((_%$obj148741%_ _%$obj148736%_))
                (if ((lambda (_%$obj148750%_)
                       (or (let () (declare (not safe)) (not _%$obj148750%_))
                           (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%$obj148750%_
                              'gxc#!signature::t))))
                     _%signature148737%_)
                    (let ((_%signature148757%_ _%signature148737%_))
                      (declare (not safe))
                      (gxc#__!procedure-signature-set!
                       _%$obj148741%_
                       _%signature148757%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/compiler/optimize-base
                       'contract:
                       '(? (or not !signature?))
                       'value:
                       _%signature148737%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/compiler/optimize-base
                 'contract:
                 '!procedure?
                 'value:
                 _%$obj148736%_)
                '#!void)))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj148713%_ _%signature148715%_)
        (let ()
          (let* ((_%$obj148719%_ _%$obj148713%_)
                 (_%signature148727%_ _%signature148715%_))
            (declare (not safe))
            (##unchecked-structure-set!
             _%$obj148719%_
             _%signature148727%_
             '2
             '#f
             '#f)))))
    (define gxc#!class-meta::t
      (let ((__tmp148996 (list gxc#!type::t))
            (__tmp148995 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp148996
         '(class)
         __tmp148995
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args148710%_
        (apply make-instance gxc#!class-meta::t _%$args148710%_)))
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
      (let ((__tmp148998 (list gxc#!type::t))
            (__tmp148997
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
         __tmp148998
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp148997
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args148707%_
        (apply make-instance gxc#!class::t _%$args148707%_)))
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
      (let ((__tmp149000 (list gxc#!procedure::t))
            (__tmp148999 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp149000
         '()
         __tmp148999
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args148704%_
        (apply make-instance gxc#!predicate::t _%$args148704%_)))
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
      (let ((__tmp149002 (list gxc#!procedure::t))
            (__tmp149001 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp149002
         '()
         __tmp149001
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args148701%_
        (apply make-instance gxc#!constructor::t _%$args148701%_)))
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
      (let ((__tmp149004 (list gxc#!procedure::t))
            (__tmp149003 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp149004
         '(slot checked?)
         __tmp149003
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args148698%_
        (apply make-instance gxc#!accessor::t _%$args148698%_)))
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
      (let ((__tmp149006 (list gxc#!procedure::t))
            (__tmp149005 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp149006
         '(slot checked?)
         __tmp149005
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args148695%_
        (apply make-instance gxc#!mutator::t _%$args148695%_)))
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
      (let ((__tmp149008 (list gxc#!type::t))
            (__tmp149007 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp149008
         '(methods)
         __tmp149007
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args148692%_
        (apply make-instance gxc#!interface::t _%$args148692%_)))
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
      (let ((__tmp149010 (list gxc#!procedure::t))
            (__tmp149009
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp149010
         '(arity dispatch inline inline-typedecl)
         __tmp149009
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args148689%_
        (apply make-instance gxc#!lambda::t _%$args148689%_)))
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
      (let ((__tmp149012 (list gxc#!procedure::t))
            (__tmp149011 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp149012
         '(clauses)
         __tmp149011
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args148686%_
        (apply make-instance gxc#!case-lambda::t _%$args148686%_)))
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
      (let ((__tmp149014 (list gxc#!procedure::t))
            (__tmp149013 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp149014
         '(table dispatch)
         __tmp149013
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args148683%_
        (apply make-instance gxc#!kw-lambda::t _%$args148683%_)))
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
      (let ((__tmp149016 (list gxc#!procedure::t))
            (__tmp149015 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp149016
         '(keys main)
         __tmp149015
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args148680%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args148680%_)))
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
      (let ((__tmp149017 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp149017
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args148677%_
        (apply make-instance gxc#!primitive::t _%$args148677%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp149019 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp149018 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp149019
         '()
         __tmp149018
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args148674%_
        (apply make-instance gxc#!primitive-predicate::t _%$args148674%_)))
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
      (let ((__tmp149021 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp149020 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp149021
         '()
         __tmp149020
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args148671%_
        (apply make-instance gxc#!primitive-lambda::t _%$args148671%_)))
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
      (let ((__tmp149023 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp149022 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp149023
         '()
         __tmp149022
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args148668%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args148668%_)))
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
      (lambda (_%self148655%_)
        (let ((_%self148658%_ _%self148655%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self148658%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self148519%_ _%klass148520%_)
        (let ((_%self148523%_ _%self148519%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self148523%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148523%_
             _%klass148520%_
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class-meta::t ':init! gxc#!class-meta:::init! '#f))
    (define gxc#!class:::init!__0
      (lambda (_%self148211%_
               _%id148212%_
               _%super148213%_
               _%slots148214%_
               _%ctor-method148215%_
               _%struct?148216%_
               _%final?148217%_
               _%system?148218%_
               _%metaclass148219%_)
        (let ((_%self148222%_ _%self148211%_))
          (let _%lp148232%_ ((_%rest148234%_ _%super148213%_))
            (let* ((_%rest148235148243%_ _%rest148234%_)
                   (_%else148237148251%_ (lambda () '#!void))
                   (_%K148239148257%_
                    (lambda (_%rest148254%_ _%super-id148255%_)
                      (if (let ((__tmp149024
                                 (let ((__tmp149025
                                        (cons '!class
                                              (cons _%id148212%_ '()))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp149025
                                    _%super-id148255%_))))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp149024 '8 '#f '#f))
                          (let ((__tmp149026
                                 (cons '!class (cons _%id148212%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp149026
                             _%super-id148255%_))
                          '#!void)
                      (let ()
                        (declare (not safe))
                        (_%lp148232%_ _%rest148254%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest148235148243%_))
                  (let ((_%hd148240148260%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest148235148243%_)))
                        (_%tl148241148262%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest148235148243%_))))
                    (let* ((_%super-id148265%_ _%hd148240148260%_)
                           (_%rest148267%_ _%tl148241148262%_))
                      (declare (not safe))
                      (_%K148239148257%_ _%rest148267%_ _%super-id148265%_)))
                  '#!void)))
          (let* ((_%ctor-method148318%_
                  (let ((_%$e148269%_ _%ctor-method148215%_))
                    (if _%$e148269%_
                        _%$e148269%_
                        (let _%lp148272%_ ((_%rest148274%_ _%super148213%_)
                                           (_%method148275%_ '#f))
                          (let* ((_%rest148276148284%_ _%rest148274%_)
                                 (_%else148278148292%_
                                  (lambda () _%method148275%_))
                                 (_%K148280148306%_
                                  (lambda (_%rest148295%_ _%super-id148296%_)
                                    (let* ((_%klass148298%_
                                            (let ((__tmp149027
                                                   (cons '!class
                                                         (cons _%id148212%_
                                                               '()))))
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               __tmp149027
                                               _%super-id148296%_)))
                                           (_%$e148300%_
                                            (##structure-ref
                                             _%klass148298%_
                                             '6
                                             gxc#!class::t
                                             '#f)))
                                      (if _%$e148300%_
                                          ((lambda (_%ctor-method148303%_)
                                             (if _%method148275%_
                                                 (if (eq? _%ctor-method148303%_
                                                          _%method148275%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%lp148272%_
                                                        _%rest148295%_
                                                        _%ctor-method148303%_))
                                                     (let ((__tmp149028
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id148212%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp149028
                _%method148275%_
                _%ctor-method148303%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%lp148272%_
                                                    _%rest148295%_
                                                    _%ctor-method148303%_))))
                                           _%$e148300%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%lp148272%_
                                             _%rest148295%_
                                             _%method148275%_)))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest148276148284%_))
                                (let ((_%hd148281148309%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest148276148284%_)))
                                      (_%tl148282148311%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest148276148284%_))))
                                  (let* ((_%super-id148314%_
                                          _%hd148281148309%_)
                                         (_%rest148316%_ _%tl148282148311%_))
                                    (declare (not safe))
                                    (_%K148280148306%_
                                     _%rest148316%_
                                     _%super-id148314%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else148278148292%_))))))))
                 (_g149029_
                  (let ((__tmp149034
                         (lambda (_%klass-id148320%_)
                           (cons _%klass-id148320%_
                                 (let ((__tmp149035
                                        (let ((__tmp149036
                                               (cons '!class
                                                     (cons _%id148212%_ '()))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           __tmp149036
                                           _%klass-id148320%_))))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp149035
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp149031
                         (lambda (_%klass-id148322%_)
                           (let ((__tmp149032
                                  (let ((__tmp149033
                                         (cons '!class
                                               (cons _%id148212%_ '()))))
                                    (declare (not safe))
                                    (gxc#optimizer-resolve-class
                                     __tmp149033
                                     _%klass-id148322%_))))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp149032
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp149034
                     __tmp149031
                     eq?
                     identity
                     '()
                     _%super148213%_))))
            (begin
              (let ((_g149030_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g149029_)
                           (##vector-length _g149029_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g149030_ 2)))
                    (error "Context expects 2 values" _g149030_)))
              (let ((_%precedence-list148324%_
                     (let () (declare (not safe)) (##vector-ref _g149029_ 0)))
                    (_%base-struct148325%_
                     (let () (declare (not safe)) (##vector-ref _g149029_ 1))))
                (let* ((_%precedence-list148369%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id148212%_ '(t object class)))
                            (let () _%precedence-list148324%_)
                            (if (memq 'object::t _%precedence-list148324%_)
                                (let () _%precedence-list148324%_)
                                (if _%system?148218%_
                                    (let ()
                                      (if (memq 't::t
                                                _%precedence-list148324%_)
                                          _%precedence-list148324%_
                                          (let ()
                                            (declare (not safe))
                                            (##append
                                             _%precedence-list148324%_
                                             '(t::t)))))
                                    (let _%loop148331%_ ((_%tail148333%_
                                                          _%precedence-list148324%_)
                                                         (_%head148334%_ '()))
                                      (let* ((_%tail148335148343%_
                                              _%tail148333%_)
                                             (_%else148337148351%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head148334%_))))
                                             (_%K148339148357%_
                                              (lambda (_%rest148354%_
                                                       _%hd148355%_)
                                                (if (eq? _%hd148355%_ 't::t)
                                                    (let ((__tmp149037
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail148333%_)))
              (declare (not safe))
              (__foldl1 cons __tmp149037 _%head148334%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp149038
                                                           (cons _%hd148355%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%head148334%_)))
              (declare (not safe))
              (_%loop148331%_ _%rest148354%_ __tmp149038))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tail148335148343%_))
                                            (let ((_%hd148340148360%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail148335148343%_)))
                                                  (_%tl148341148362%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail148335148343%_))))
                                              (let* ((_%hd148365%_
                                                      _%hd148340148360%_)
                                                     (_%rest148367%_
                                                      _%tl148341148362%_))
                                                (declare (not safe))
                                                (_%K148339148357%_
                                                 _%rest148367%_
                                                 _%hd148365%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%else148337148351%_)))))))))
                       (_%fields148371%_
                        (let ((__tmp149039
                               (cons '!class (cons _%id148212%_ '()))))
                          (declare (not safe))
                          (gxc#compute-class-fields
                           __tmp149039
                           _%base-struct148325%_
                           _%precedence-list148369%_
                           _%slots148214%_))))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148222%_
                     _%id148212%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148222%_
                     _%super148213%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148222%_
                     _%precedence-list148369%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148222%_
                     _%slots148214%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148222%_
                     _%fields148371%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148222%_
                     _%ctor-method148318%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148222%_
                     _%struct?148216%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148222%_
                     _%final?148217%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148222%_
                     _%metaclass148219%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self148374%_
               _%id148375%_
               _%super148376%_
               _%precedence-list148377%_
               _%slots148378%_
               _%fields148379%_
               _%constructor148380%_
               _%struct?148381%_
               _%final?148382%_
               _%system?148383%_
               _%metaclass148384%_
               _%methods148385%_)
        (let ((_%self148388%_ _%self148374%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148388%_
             _%id148375%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148388%_
             _%super148376%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148388%_
             _%precedence-list148377%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148388%_
             _%slots148378%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148388%_
             _%fields148379%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148388%_
             _%constructor148380%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148388%_
             _%struct?148381%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148388%_
             _%final?148382%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148388%_
             _%metaclass148384%_
             '10
             '#f
             '#f))
          (if _%methods148385%_
              (let ((__tmp149040
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods148385%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self148388%_
                 __tmp149040
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g149042_
        (let ((_g149041_ (let () (declare (not safe)) (##length _g149042_))))
          (cond ((let () (declare (not safe)) (##fx= _g149041_ 9))
                 (apply (lambda (_%self148211%_
                                 _%id148212%_
                                 _%super148213%_
                                 _%slots148214%_
                                 _%ctor-method148215%_
                                 _%struct?148216%_
                                 _%final?148217%_
                                 _%system?148218%_
                                 _%metaclass148219%_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _%self148211%_
                             _%id148212%_
                             _%super148213%_
                             _%slots148214%_
                             _%ctor-method148215%_
                             _%struct?148216%_
                             _%final?148217%_
                             _%system?148218%_
                             _%metaclass148219%_)))
                        _g149042_))
                ((let () (declare (not safe)) (##fx= _g149041_ 12))
                 (apply (lambda (_%self148374%_
                                 _%id148375%_
                                 _%super148376%_
                                 _%precedence-list148377%_
                                 _%slots148378%_
                                 _%fields148379%_
                                 _%constructor148380%_
                                 _%struct?148381%_
                                 _%final?148382%_
                                 _%system?148383%_
                                 _%metaclass148384%_
                                 _%methods148385%_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _%self148374%_
                             _%id148375%_
                             _%super148376%_
                             _%precedence-list148377%_
                             _%slots148378%_
                             _%fields148379%_
                             _%constructor148380%_
                             _%struct?148381%_
                             _%final?148382%_
                             _%system?148383%_
                             _%metaclass148384%_
                             _%methods148385%_)))
                        _g149042_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g149042_))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where148063%_
               _%base-struct148064%_
               _%precedence-list148065%_
               _%direct-slots148066%_)
        (let* ((_%base-fields148068%_
                (if _%base-struct148064%_
                    (let ((__tmp149043
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%where148063%_
                              _%base-struct148064%_))))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp149043 '5 '#f '#f))
                    '()))
               (_%r-fields148070%_ (reverse _%base-fields148068%_))
               (_%seen-slots148078%_
                (let ((_%tab148072%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g148073148075%_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _%tab148072%_ _%g148073148075%_ '#t)))
                   _%base-fields148068%_)
                  _%tab148072%_))
               (_%process-slot148082%_
                (lambda (_%slot148080%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%seen-slots148078%_ _%slot148080%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _%seen-slots148078%_ _%slot148080%_ '#t))
                        (set! _%r-fields148070%_
                              (cons _%slot148080%_ _%r-fields148070%_)))))))
          (for-each
           (lambda (_%mixin148085%_)
             (let ((_%klass148087%_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _%where148063%_
                       _%mixin148085%_))))
               (if (##structure-ref _%klass148087%_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _%process-slot148082%_
                    (##structure-ref _%klass148087%_ '5 gxc#!class::t '#f)))))
           _%precedence-list148065%_)
          (for-each _%process-slot148082%_ _%direct-slots148066%_)
          (let () (declare (not safe)) (##reverse _%r-fields148070%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass148022%_ _%slot148023%_)
        (let _%lp148025%_ ((_%rest148027%_
                            (##structure-ref
                             _%klass148022%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset148028%_ '1))
          (let* ((_%rest148029148037%_ _%rest148027%_)
                 (_%else148031148045%_
                  (lambda ()
                    (let ((__tmp149045
                           (##structure-ref
                            _%klass148022%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp149044
                           (##structure-ref
                            _%klass148022%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp149045
                       __tmp149044
                       _%slot148023%_))))
                 (_%K148033148051%_
                  (lambda (_%rest148048%_ _%s148049%_)
                    (if (eq? _%s148049%_ _%slot148023%_)
                        _%offset148028%_
                        (let ((__tmp149046
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%offset148028%_ '1))))
                          (declare (not safe))
                          (_%lp148025%_ _%rest148048%_ __tmp149046))))))
            (if (let () (declare (not safe)) (##pair? _%rest148029148037%_))
                (let ((_%hd148034148054%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest148029148037%_)))
                      (_%tl148035148056%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest148029148037%_))))
                  (let* ((_%s148059%_ _%hd148034148054%_)
                         (_%rest148061%_ _%tl148035148056%_))
                    (declare (not safe))
                    (_%K148033148051%_ _%rest148061%_ _%s148059%_)))
                (let () (declare (not safe)) (_%else148031148045%_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass147980%_ _%slot147981%_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _%klass147980%_ _%slot147981%_))
            _%klass147980%_
            (let _%lp147983%_ ((_%rest147985%_
                                (##structure-ref
                                 _%klass147980%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest147986147994%_ _%rest147985%_)
                     (_%else147988148002%_ (lambda () '#f))
                     (_%K147990148010%_
                      (lambda (_%rest148005%_ _%super148006%_)
                        (let ((_%super-class148008%_
                               (let ((__tmp149047
                                      (cons '!class-slot-find-struct
                                            (cons (##structure-ref
                                                   _%klass147980%_
                                                   '1
                                                   gxc#!type::t
                                                   '#f)
                                                  (cons _%slot147981%_ '())))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp149047
                                  _%super148006%_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _%super-class148008%_
                                 _%slot147981%_))
                              _%super-class148008%_
                              (let ()
                                (declare (not safe))
                                (_%lp147983%_ _%rest148005%_)))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest147986147994%_))
                    (let ((_%hd147991148013%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest147986147994%_)))
                          (_%tl147992148015%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest147986147994%_))))
                      (let* ((_%super148018%_ _%hd147991148013%_)
                             (_%rest148020%_ _%tl147992148015%_))
                        (declare (not safe))
                        (_%K147990148010%_ _%rest148020%_ _%super148018%_)))
                    (let () (declare (not safe)) (_%else147988148002%_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass147977%_ _%slot147978%_)
        (if (##structure-ref _%klass147977%_ '7 gxc#!class::t '#f)
            (memq _%slot147978%_
                  (##structure-ref _%klass147977%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self147963%_ _%id147964%_)
        (let ((_%self147967%_ _%self147963%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147967%_
             _%id147964%_
             '1
             '#f
             '#f))
          (let ((__tmp149048
                 (let ((__obj148972
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
                      __obj148972
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148972
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148972
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj148972)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147967%_
             __tmp149048
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self147827%_ _%id147828%_)
        (let ((_%self147831%_ _%self147827%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147831%_
             _%id147828%_
             '1
             '#f
             '#f))
          (let ((__tmp149049
                 (let ((__obj148973
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
                      __obj148973
                      _%id147828%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148973
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj148973)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147831%_
             __tmp149049
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       ':init!
       gxc#!constructor:::init!
       '#f))
    (define gxc#!accessor:::init!
      (lambda (_%self147689%_ _%id147690%_ _%slot147691%_ _%checked?147692%_)
        (let ((_%self147695%_ _%self147689%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147695%_
             _%id147690%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147695%_
             _%slot147691%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147695%_
             _%checked?147692%_
             '4
             '#f
             '#f))
          (let ((__tmp149050
                 (let ((__obj148974
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
                     (##unchecked-structure-set! __obj148974 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148974
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp149051 (cons _%id147690%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148974
                      __tmp149051
                      '3
                      '#f
                      '#f))
                   __obj148974)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147695%_
             __tmp149050
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self147551%_ _%id147552%_ _%slot147553%_ _%checked?147554%_)
        (let ((_%self147557%_ _%self147551%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147557%_
             _%id147552%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147557%_
             _%slot147553%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147557%_
             _%checked?147554%_
             '4
             '#f
             '#f))
          (let ((__tmp149052
                 (let ((__obj148975
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
                      __obj148975
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148975
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp149053 (cons _%id147552%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148975
                      __tmp149053
                      '3
                      '#f
                      '#f))
                   __obj148975)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147557%_
             __tmp149052
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords147395%_
               _%signature147392147396%_
               _%self147398%_
               _%arity147399%_
               _%dispatch147400%_)
        (let* ((_%signature147402%_
                (if (eq? _%signature147392147396%_ absent-value)
                    '#f
                    _%signature147392147396%_))
               (_%self147405%_ _%self147398%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self147405%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147405%_
             _%arity147399%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147405%_
             _%dispatch147400%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147405%_
             _%signature147402%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords147419%_ . _%args147420%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords147419%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords147419%_
                  'signature:
                  absent-value))
               _%args147420%_)))
    (define gxc#!lambda:::init!
      (lambda _%args147393147426%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args147393147426%_)))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords147236%_
               _%signature147233147237%_
               _%self147239%_
               _%clauses147240%_)
        (let* ((_%signature147242%_
                (if (eq? _%signature147233147237%_ absent-value)
                    '#f
                    _%signature147233147237%_))
               (_%self147245%_ _%self147239%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self147245%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147245%_
             _%signature147242%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147245%_
             _%clauses147240%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords147259%_ . _%args147260%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords147259%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords147259%_
                  'signature:
                  absent-value))
               _%args147260%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args147234147266%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args147234147266%_)))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self147095%_ _%tab147096%_ _%dispatch147097%_)
        (let ((_%self147100%_ _%self147095%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self147100%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147100%_
             _%tab147096%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147100%_
             _%dispatch147097%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self146958%_ _%keys146959%_ _%main146960%_)
        (let ((_%self146963%_ _%self146958%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self146963%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146963%_
             _%keys146959%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146963%_
             _%main146960%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda-primary::t
       ':init!
       gxc#!kw-lambda-primary:::init!
       '#f))
    (define gxc#!primitive-lambda:::init! gxc#!lambda:::init!)
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-lambda::t
       ':init!
       gxc#!primitive-lambda:::init!
       '#f))
    (define gxc#!primitive-case-lambda:::init! gxc#!case-lambda:::init!)
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!primitive-predicate:::init!
      (lambda (_%self146578%_ _%id146579%_)
        (let ((_%self146582%_ _%self146578%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146582%_
             _%id146579%_
             '1
             '#f
             '#f))
          (let ((__tmp149054
                 (let ((__obj148976
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
                      __obj148976
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148976
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148976
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj148976)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146582%_
             __tmp149054
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-predicate::t
       ':init!
       gxc#!primitive-predicate:::init!
       '#f))
    (define gxc#!class-method-table
      (lambda (_%klass146447%_)
        (let ((_%$e146449%_
               (##structure-ref _%klass146447%_ '11 gxc#!class::t '#f)))
          (if _%$e146449%_
              _%$e146449%_
              (let ((_%tab146453%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass146447%_
                 _%tab146453%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab146453%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass146438%_ _%method146439%_)
        (let ((_%tab146440146442%_
               (##structure-ref _%klass146438%_ '11 gxc#!class::t '#f)))
          (if _%tab146440146442%_
              (let ((_%tab146445%_ _%tab146440146442%_))
                (declare (not safe))
                (hash-get _%tab146445%_ _%method146439%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a146426%_ _%type-b146427%_)
        (if _%type-a146426%_
            (if _%type-b146427%_
                (let ((_%$e146429%_ (eq? _%type-a146426%_ _%type-b146427%_)))
                  (if _%$e146429%_
                      _%$e146429%_
                      (let ((_%$e146432%_
                             (eq? (##structure-ref
                                   _%type-b146427%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e146432%_
                            _%$e146432%_
                            (let ((_%$e146435%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a146426%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b146427%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e146435%_
                                  _%$e146435%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a146426%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b146427%_
                                             'gxc#!class::t))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#!class-subclass?
                                             _%type-a146426%_
                                             _%type-b146427%_))
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a146377%_ _%klass-b146378%_)
        (let ((_%$e146380%_
               (eq? (##structure-ref _%klass-a146377%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b146378%_ '1 gxc#!type::t '#f))))
          (if _%$e146380%_
              _%$e146380%_
              (let ((_%klass-id-b146383%_
                     (##structure-ref _%klass-b146378%_ '1 gxc#!type::t '#f))
                    (_%precedence-list146384%_
                     (##structure-ref _%klass-a146377%_ '3 gxc#!class::t '#f)))
                (let _%loop146386%_ ((_%rest146388%_
                                      _%precedence-list146384%_))
                  (let* ((_%rest146389146397%_ _%rest146388%_)
                         (_%else146391146405%_ (lambda () '#f))
                         (_%K146393146414%_
                          (lambda (_%rest146408%_ _%klass-name146409%_)
                            (let ((_%$e146411%_
                                   (eq? (let ((__tmp149055
                                               (let ((__tmp149056
                                                      (cons 'subclass?
                                                            (cons _%klass-a146377%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%klass-b146378%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp149056
                                                  _%klass-name146409%_))))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp149055
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b146383%_)))
                              (if _%$e146411%_
                                  _%$e146411%_
                                  (let ()
                                    (declare (not safe))
                                    (_%loop146386%_ _%rest146408%_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest146389146397%_))
                        (let ((_%hd146394146417%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest146389146397%_)))
                              (_%tl146395146419%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest146389146397%_))))
                          (let* ((_%klass-name146422%_ _%hd146394146417%_)
                                 (_%rest146424%_ _%tl146395146419%_))
                            (declare (not safe))
                            (_%K146393146414%_
                             _%rest146424%_
                             _%klass-name146422%_)))
                        (let ()
                          (declare (not safe))
                          (_%else146391146405%_))))))))))
    (define gxc#!interface-instance?
      (lambda (_%type146375%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type146375%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (##structure-ref _%type146375%_ '3 gxc#!class::t '#f))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc146364%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc146364%_ 'gxc#!procedure::t))
            (let ((_%proc146367%_ _%proc146364%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc146367%_ '2 '#f '#f))
                  (let ((__tmp149057
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc146367%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp149057 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@374.11-374.15"
               'contract:
               '!procedure?
               'value:
               _%proc146364%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym146346%_ _%type146347%_ _%local?146348%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type146347%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym146346%_
                     _%type146347%_)))
        (let ((__tmp149058
               (let () (declare (not safe)) (struct->list _%type146347%_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym146346%_ '" " __tmp149058))
        (let ((_%table146350%_
               (if _%local?146348%_
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
          (hash-put! _%table146350%_ _%sym146346%_ _%type146347%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym146355%_ _%type146356%_)
        (let ((_%local?146358%_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _%sym146355%_
           _%type146356%_
           _%local?146358%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g149060_
        (let ((_g149059_ (let () (declare (not safe)) (##length _g149060_))))
          (cond ((let () (declare (not safe)) (##fx= _g149059_ 2))
                 (apply (lambda (_%sym146355%_ _%type146356%_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _%sym146355%_
                             _%type146356%_)))
                        _g149060_))
                ((let () (declare (not safe)) (##fx= _g149059_ 3))
                 (apply (lambda (_%sym146360%_ _%type146361%_ _%local?146362%_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _%sym146360%_
                             _%type146361%_
                             _%local?146362%_)))
                        _g149060_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g149060_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym146340%_ _%type146341%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type146341%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym146340%_
                     _%type146341%_)))
        (let ((_%table146343%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp149061
                 (let () (declare (not safe)) (struct->list _%type146341%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym146340%_ '" " __tmp149061))
          (let ()
            (declare (not safe))
            (hash-put! _%table146343%_ _%sym146340%_ _%type146341%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table146343%_ _%type146341%_ _%sym146340%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym146335%_ _%type146336%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type146336%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym146335%_
                     _%type146336%_)))
        (let ((_%table146338%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table146338%_ _%sym146335%_))
              '#!void
              (begin
                (let ((__tmp149062
                       (let ()
                         (declare (not safe))
                         (struct->list _%type146336%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym146335%_
                   '" "
                   __tmp149062))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table146338%_ _%sym146335%_ _%type146336%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table146338%_
                   _%type146336%_
                   _%sym146335%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym146333%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym146333%_))
        (let ((__tmp149063
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp149063 _%sym146333%_))
        (let ((__tmp149064
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp149064 _%sym146333%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t146301%_
               _%method146302%_
               _%sym146303%_
               _%rebind?146304%_)
        (let ((_%klass146306%_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-class _%type-t146301%_))))
          (if _%klass146306%_
              (let* ((_%vtab146308%_
                      (let ()
                        (declare (not safe))
                        (gxc#!class-method-table _%klass146306%_)))
                     (_%$e146310%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab146308%_ _%method146302%_))))
                (if _%$e146310%_
                    ((lambda (_%existing146313%_)
                       (if _%rebind?146304%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t146301%_
                                '" "
                                _%method146302%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab146308%_
                                _%method146302%_
                                _%sym146303%_)))
                           (if (eq? _%existing146313%_ _%sym146303%_)
                               (let () '#!void)
                               (let ((__tmp149065
                                      (cons 'bind-method!
                                            (cons _%type-t146301%_
                                                  (cons _%method146302%_
                                                        (cons _%sym146303%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp149065
                                  _%method146302%_)))))
                     _%$e146310%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t146301%_
                         '" "
                         _%method146302%_
                         '" => "
                         _%sym146303%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab146308%_
                         _%method146302%_
                         _%sym146303%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t146301%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t146322%_ _%method146323%_ _%sym146324%_)
        (let ((_%rebind?146326%_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _%type-t146322%_
           _%method146323%_
           _%sym146324%_
           _%rebind?146326%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g149067_
        (let ((_g149066_ (let () (declare (not safe)) (##length _g149067_))))
          (cond ((let () (declare (not safe)) (##fx= _g149066_ 3))
                 (apply (lambda (_%type-t146322%_
                                 _%method146323%_
                                 _%sym146324%_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _%type-t146322%_
                             _%method146323%_
                             _%sym146324%_)))
                        _g149067_))
                ((let () (declare (not safe)) (##fx= _g149066_ 4))
                 (apply (lambda (_%type-t146328%_
                                 _%method146329%_
                                 _%sym146330%_
                                 _%rebind?146331%_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _%type-t146328%_
                             _%method146329%_
                             _%sym146330%_
                             _%rebind?146331%_)))
                        _g149067_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g149067_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym146289%_)
        (let ((_%$e146297%_
               (let ((_%ht146290146292%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-local-type))))
                 (if _%ht146290146292%_
                     (let ((_%ht146295%_ _%ht146290146292%_))
                       (declare (not safe))
                       (hash-get _%ht146295%_ _%sym146289%_))
                     '#f))))
          (if _%$e146297%_
              _%$e146297%_
              (let ((__tmp149068
                     (##structure-ref
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-optimizer-info))
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp149068 _%sym146289%_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym146281%_)
        (let ((_%type146282146284%_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _%sym146281%_))))
          (if _%type146282146284%_
              (let ((_%type146287%_ _%type146282146284%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type146287%_ 'gxc#!alias::t))
                    (let ((__tmp149069
                           (##structure-ref
                            _%type146287%_
                            '1
                            gxc#!type::t
                            '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp149069))
                    _%type146287%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym146277%_)
        (let ((_%table146279%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table146279%_ _%sym146277%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where146262%_ _%sym146263%_)
        (let ((_%$e146266%_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-class _%sym146263%_))))
          (if _%$e146266%_
              ((lambda (_%g146268146270%_)
                 (let ((_%val146273%_ _%g146268146270%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val146273%_
                          'gxc#!class::t))
                       _%val146273%_
                       (let ()
                         (declare (not safe))
                         (error '"bad cast" gxc#!class::t _%val146273%_)))))
               _%$e146266%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where146262%_
                   _%sym146263%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass146260%_)
        (let ((__tmp149070
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp149070 _%klass146260%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t146257%_ _%method146258%_)
        (let ((__tmp149071
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-class
                  'lookup-method
                  _%type-t146257%_))))
          (declare (not safe))
          (gxc#!class-lookup-method __tmp149071 _%method146258%_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_%sym146255%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _%sym146255%_))
        (let ((__tmp149072
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp149072 _%sym146255%_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym146253%_)
        (let ((__tmp149073
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp149073 _%sym146253%_))))))
