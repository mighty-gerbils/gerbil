(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1712602657)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp147973 (list)) (__tmp147972 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp147973
         '(type classes ssxi methods)
         __tmp147972
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args147944%_
        (apply make-instance gxc#optimizer-info::t _%$args147944%_)))
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
      (lambda (_%self147931%_)
        (let ((_%self147934%_ _%self147931%_))
          (if (let ((__tmp147974
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self147934%_))))
                (declare (not safe))
                (##fx< '4 __tmp147974))
              (begin
                (let ((__tmp147975
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self147934%_
                   __tmp147975
                   '1
                   '#f
                   '#f))
                (let ((__tmp147976
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self147934%_
                   __tmp147976
                   '2
                   '#f
                   '#f))
                (let ((__tmp147977
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self147934%_
                   __tmp147977
                   '3
                   '#f
                   '#f))
                (let ((__tmp147978
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self147934%_
                   __tmp147978
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp147979
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self147934%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self147934%_
                       '4
                       __tmp147979))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp147981 (list))
            (__tmp147980
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp147981
         '(id)
         __tmp147980
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args147806%_
        (apply make-instance gxc#!type::t _%$args147806%_)))
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
      (let ((__tmp147983 (list gxc#!type::t))
            (__tmp147982 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp147983
         '()
         __tmp147982
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args147803%_
        (apply make-instance gxc#!abort::t _%$args147803%_)))
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
      (let ((__tmp147985 (list gxc#!type::t))
            (__tmp147984 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp147985
         '()
         __tmp147984
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args147800%_
        (apply make-instance gxc#!alias::t _%$args147800%_)))
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
      (let ((__tmp147987 (list))
            (__tmp147986
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp147987
         '(return effect arguments unchecked origin)
         __tmp147986
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args147797%_
        (apply make-instance gxc#!signature::t _%$args147797%_)))
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
      (let ((__tmp147989 (list gxc#!type::t))
            (__tmp147988
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp147989
         '(signature)
         __tmp147988
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
      (lambda (_%id147776%_ _%signature147777%_)
        (if ((lambda (_%$obj147780%_)
               (or (not _%$obj147780%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj147780%_
                      'gxc#!signature::t))))
             _%signature147777%_)
            (let ((_%signature147787%_ _%signature147777%_))
              (gxc#__make-!procedure _%id147776%_ _%signature147787%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature147777%_)
              '#!void))))
    (define gxc#__make-!procedure
      (lambda (_%id147762%_ _%signature147764%_)
        (let ((_%signature147767%_ _%signature147764%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id147762%_ _%signature147767%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj147731%_ _%signature147732%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj147731%_ 'gxc#!procedure::t))
            (let ((_%$obj147736%_ _%$obj147731%_))
              (if ((lambda (_%$obj147745%_)
                     (or (not _%$obj147745%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj147745%_
                            'gxc#!signature::t))))
                   _%signature147732%_)
                  (let ((_%signature147752%_ _%signature147732%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj147736%_
                     _%signature147752%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature147732%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj147731%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj147708%_ _%signature147710%_)
        (let* ((_%$obj147714%_ _%$obj147708%_)
               (_%signature147722%_ _%signature147710%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj147714%_
           _%signature147722%_
           '2
           '#f
           '#f))))
    (define gxc#!class-meta::t
      (let ((__tmp147991 (list gxc#!type::t))
            (__tmp147990 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp147991
         '(class)
         __tmp147990
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args147705%_
        (apply make-instance gxc#!class-meta::t _%$args147705%_)))
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
      (let ((__tmp147993 (list gxc#!type::t))
            (__tmp147992
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
         __tmp147993
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp147992
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args147702%_
        (apply make-instance gxc#!class::t _%$args147702%_)))
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
      (let ((__tmp147995 (list gxc#!procedure::t))
            (__tmp147994 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp147995
         '()
         __tmp147994
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args147699%_
        (apply make-instance gxc#!predicate::t _%$args147699%_)))
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
      (let ((__tmp147997 (list gxc#!procedure::t))
            (__tmp147996 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp147997
         '()
         __tmp147996
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args147696%_
        (apply make-instance gxc#!constructor::t _%$args147696%_)))
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
      (let ((__tmp147999 (list gxc#!procedure::t))
            (__tmp147998 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp147999
         '(slot checked?)
         __tmp147998
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args147693%_
        (apply make-instance gxc#!accessor::t _%$args147693%_)))
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
      (let ((__tmp148001 (list gxc#!procedure::t))
            (__tmp148000 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp148001
         '(slot checked?)
         __tmp148000
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args147690%_
        (apply make-instance gxc#!mutator::t _%$args147690%_)))
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
      (let ((__tmp148003 (list gxc#!type::t))
            (__tmp148002 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp148003
         '(methods)
         __tmp148002
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args147687%_
        (apply make-instance gxc#!interface::t _%$args147687%_)))
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
      (let ((__tmp148005 (list gxc#!procedure::t))
            (__tmp148004
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp148005
         '(arity dispatch inline inline-typedecl)
         __tmp148004
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args147684%_
        (apply make-instance gxc#!lambda::t _%$args147684%_)))
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
      (let ((__tmp148007 (list gxc#!procedure::t))
            (__tmp148006 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp148007
         '(clauses)
         __tmp148006
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args147681%_
        (apply make-instance gxc#!case-lambda::t _%$args147681%_)))
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
      (let ((__tmp148009 (list gxc#!procedure::t))
            (__tmp148008 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp148009
         '(table dispatch)
         __tmp148008
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args147678%_
        (apply make-instance gxc#!kw-lambda::t _%$args147678%_)))
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
      (let ((__tmp148011 (list gxc#!procedure::t))
            (__tmp148010 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp148011
         '(keys main)
         __tmp148010
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args147675%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args147675%_)))
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
      (let ((__tmp148012 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp148012
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args147672%_
        (apply make-instance gxc#!primitive::t _%$args147672%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp148014 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp148013 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp148014
         '()
         __tmp148013
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args147669%_
        (apply make-instance gxc#!primitive-predicate::t _%$args147669%_)))
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
      (let ((__tmp148016 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp148015 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp148016
         '()
         __tmp148015
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args147666%_
        (apply make-instance gxc#!primitive-lambda::t _%$args147666%_)))
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
      (let ((__tmp148018 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp148017 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp148018
         '()
         __tmp148017
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args147663%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args147663%_)))
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
      (lambda (_%self147650%_)
        (let ((_%self147653%_ _%self147650%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self147653%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self147514%_ _%klass147515%_)
        (let ((_%self147518%_ _%self147514%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self147518%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147518%_
             _%klass147515%_
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class-meta::t ':init! gxc#!class-meta:::init! '#f))
    (define gxc#!class:::init!__0
      (lambda (_%self147206%_
               _%id147207%_
               _%super147208%_
               _%slots147209%_
               _%ctor-method147210%_
               _%struct?147211%_
               _%final?147212%_
               _%system?147213%_
               _%metaclass147214%_)
        (let ((_%self147217%_ _%self147206%_))
          (let _%lp147227%_ ((_%rest147229%_ _%super147208%_))
            (let* ((_%rest147230147238%_ _%rest147229%_)
                   (_%else147232147246%_ (lambda () '#!void))
                   (_%K147234147252%_
                    (lambda (_%rest147249%_ _%super-id147250%_)
                      (if (let ((__tmp148019
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id147207%_ '()))
                                  _%super-id147250%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp148019 '8 '#f '#f))
                          (let ((__tmp148020
                                 (cons '!class (cons _%id147207%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp148020
                             _%super-id147250%_))
                          '#!void)
                      (_%lp147227%_ _%rest147249%_))))
              (if (let () (declare (not safe)) (##pair? _%rest147230147238%_))
                  (let ((_%hd147235147255%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest147230147238%_)))
                        (_%tl147236147257%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest147230147238%_))))
                    (let* ((_%super-id147260%_ _%hd147235147255%_)
                           (_%rest147262%_ _%tl147236147257%_))
                      (_%K147234147252%_ _%rest147262%_ _%super-id147260%_)))
                  '#!void)))
          (let* ((_%ctor-method147313%_
                  (let ((_%$e147264%_ _%ctor-method147210%_))
                    (if _%$e147264%_
                        _%$e147264%_
                        (let _%lp147267%_ ((_%rest147269%_ _%super147208%_)
                                           (_%method147270%_ '#f))
                          (let* ((_%rest147271147279%_ _%rest147269%_)
                                 (_%else147273147287%_
                                  (lambda () _%method147270%_))
                                 (_%K147275147301%_
                                  (lambda (_%rest147290%_ _%super-id147291%_)
                                    (let* ((_%klass147293%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id147207%_ '()))
                                             _%super-id147291%_))
                                           (_%$e147295%_
                                            (##structure-ref
                                             _%klass147293%_
                                             '6
                                             gxc#!class::t
                                             '#f)))
                                      (if _%$e147295%_
                                          ((lambda (_%ctor-method147298%_)
                                             (if _%method147270%_
                                                 (if (eq? _%ctor-method147298%_
                                                          _%method147270%_)
                                                     (_%lp147267%_
                                                      _%rest147290%_
                                                      _%ctor-method147298%_)
                                                     (let ((__tmp148021
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id147207%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp148021
                _%method147270%_
                _%ctor-method147298%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp147267%_
                                                  _%rest147290%_
                                                  _%ctor-method147298%_)))
                                           _%$e147295%_)
                                          (_%lp147267%_
                                           _%rest147290%_
                                           _%method147270%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest147271147279%_))
                                (let ((_%hd147276147304%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest147271147279%_)))
                                      (_%tl147277147306%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest147271147279%_))))
                                  (let* ((_%super-id147309%_
                                          _%hd147276147304%_)
                                         (_%rest147311%_ _%tl147277147306%_))
                                    (_%K147275147301%_
                                     _%rest147311%_
                                     _%super-id147309%_)))
                                (_%else147273147287%_)))))))
                 (_g148022_
                  (let ((__tmp148026
                         (lambda (_%klass-id147315%_)
                           (cons _%klass-id147315%_
                                 (let ((__tmp148027
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id147207%_ '()))
                                         _%klass-id147315%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp148027
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp148024
                         (lambda (_%klass-id147317%_)
                           (let ((__tmp148025
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id147207%_ '()))
                                   _%klass-id147317%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp148025
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp148026
                     __tmp148024
                     eq?
                     identity
                     '()
                     _%super147208%_))))
            (begin
              (let ((_g148023_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g148022_)
                           (##vector-length _g148022_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g148023_ 2)))
                    (error "Context expects 2 values" _g148023_)))
              (let ((_%precedence-list147319%_
                     (let () (declare (not safe)) (##vector-ref _g148022_ 0)))
                    (_%base-struct147320%_
                     (let () (declare (not safe)) (##vector-ref _g148022_ 1))))
                (let* ((_%precedence-list147364%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id147207%_ '(t object class)))
                            _%precedence-list147319%_
                            (if (memq 'object::t _%precedence-list147319%_)
                                _%precedence-list147319%_
                                (if _%system?147213%_
                                    (if (memq 't::t _%precedence-list147319%_)
                                        _%precedence-list147319%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list147319%_
                                           '(t::t))))
                                    (let _%loop147326%_ ((_%tail147328%_
                                                          _%precedence-list147319%_)
                                                         (_%head147329%_ '()))
                                      (let* ((_%tail147330147338%_
                                              _%tail147328%_)
                                             (_%else147332147346%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head147329%_))))
                                             (_%K147334147352%_
                                              (lambda (_%rest147349%_
                                                       _%hd147350%_)
                                                (if (eq? _%hd147350%_ 't::t)
                                                    (let ((__tmp148028
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail147328%_)))
              (declare (not safe))
              (__foldl1 cons __tmp148028 _%head147329%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop147326%_
                                                     _%rest147349%_
                                                     (cons _%hd147350%_
                                                           _%head147329%_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tail147330147338%_))
                                            (let ((_%hd147335147355%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail147330147338%_)))
                                                  (_%tl147336147357%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail147330147338%_))))
                                              (let* ((_%hd147360%_
                                                      _%hd147335147355%_)
                                                     (_%rest147362%_
                                                      _%tl147336147357%_))
                                                (_%K147334147352%_
                                                 _%rest147362%_
                                                 _%hd147360%_)))
                                            (_%else147332147346%_))))))))
                       (_%fields147366%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id147207%_ '()))
                         _%base-struct147320%_
                         _%precedence-list147364%_
                         _%slots147209%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147217%_
                     _%id147207%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147217%_
                     _%super147208%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147217%_
                     _%precedence-list147364%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147217%_
                     _%slots147209%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147217%_
                     _%fields147366%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147217%_
                     _%ctor-method147313%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147217%_
                     _%struct?147211%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147217%_
                     _%final?147212%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147217%_
                     _%metaclass147214%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self147369%_
               _%id147370%_
               _%super147371%_
               _%precedence-list147372%_
               _%slots147373%_
               _%fields147374%_
               _%constructor147375%_
               _%struct?147376%_
               _%final?147377%_
               _%system?147378%_
               _%metaclass147379%_
               _%methods147380%_)
        (let ((_%self147383%_ _%self147369%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147383%_
             _%id147370%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147383%_
             _%super147371%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147383%_
             _%precedence-list147372%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147383%_
             _%slots147373%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147383%_
             _%fields147374%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147383%_
             _%constructor147375%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147383%_
             _%struct?147376%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147383%_
             _%final?147377%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147383%_
             _%metaclass147379%_
             '10
             '#f
             '#f))
          (if _%methods147380%_
              (let ((__tmp148029
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods147380%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147383%_
                 __tmp148029
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g148031_
        (let ((_g148030_ (let () (declare (not safe)) (##length _g148031_))))
          (cond ((let () (declare (not safe)) (##fx= _g148030_ 9))
                 (apply gxc#!class:::init!__0 _g148031_))
                ((let () (declare (not safe)) (##fx= _g148030_ 12))
                 (apply gxc#!class:::init!__1 _g148031_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g148031_))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where147058%_
               _%base-struct147059%_
               _%precedence-list147060%_
               _%direct-slots147061%_)
        (let* ((_%base-fields147063%_
                (if _%base-struct147059%_
                    (let ((__tmp148032
                           (gxc#optimizer-resolve-class
                            _%where147058%_
                            _%base-struct147059%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp148032 '5 '#f '#f))
                    '()))
               (_%r-fields147065%_ (reverse _%base-fields147063%_))
               (_%seen-slots147073%_
                (let ((_%tab147067%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g147068147070%_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _%tab147067%_ _%g147068147070%_ '#t)))
                   _%base-fields147063%_)
                  _%tab147067%_))
               (_%process-slot147077%_
                (lambda (_%slot147075%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%seen-slots147073%_ _%slot147075%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _%seen-slots147073%_ _%slot147075%_ '#t))
                        (set! _%r-fields147065%_
                              (cons _%slot147075%_ _%r-fields147065%_)))))))
          (for-each
           (lambda (_%mixin147080%_)
             (let ((_%klass147082%_
                    (gxc#optimizer-resolve-class
                     _%where147058%_
                     _%mixin147080%_)))
               (if (##structure-ref _%klass147082%_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _%process-slot147077%_
                    (##structure-ref _%klass147082%_ '5 gxc#!class::t '#f)))))
           _%precedence-list147060%_)
          (for-each _%process-slot147077%_ _%direct-slots147061%_)
          (let () (declare (not safe)) (##reverse _%r-fields147065%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass147017%_ _%slot147018%_)
        (let _%lp147020%_ ((_%rest147022%_
                            (##structure-ref
                             _%klass147017%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset147023%_ '1))
          (let* ((_%rest147024147032%_ _%rest147022%_)
                 (_%else147026147040%_
                  (lambda ()
                    (let ((__tmp148034
                           (##structure-ref
                            _%klass147017%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp148033
                           (##structure-ref
                            _%klass147017%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp148034
                       __tmp148033
                       _%slot147018%_))))
                 (_%K147028147046%_
                  (lambda (_%rest147043%_ _%s147044%_)
                    (if (eq? _%s147044%_ _%slot147018%_)
                        _%offset147023%_
                        (_%lp147020%_
                         _%rest147043%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset147023%_ '1)))))))
            (if (let () (declare (not safe)) (##pair? _%rest147024147032%_))
                (let ((_%hd147029147049%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest147024147032%_)))
                      (_%tl147030147051%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest147024147032%_))))
                  (let* ((_%s147054%_ _%hd147029147049%_)
                         (_%rest147056%_ _%tl147030147051%_))
                    (_%K147028147046%_ _%rest147056%_ _%s147054%_)))
                (_%else147026147040%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass146975%_ _%slot146976%_)
        (if (gxc#!class-struct-slot? _%klass146975%_ _%slot146976%_)
            _%klass146975%_
            (let _%lp146978%_ ((_%rest146980%_
                                (##structure-ref
                                 _%klass146975%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest146981146989%_ _%rest146980%_)
                     (_%else146983146997%_ (lambda () '#f))
                     (_%K146985147005%_
                      (lambda (_%rest147000%_ _%super147001%_)
                        (let ((_%super-class147003%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass146975%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot146976%_ '())))
                                _%super147001%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class147003%_
                               _%slot146976%_)
                              _%super-class147003%_
                              (_%lp146978%_ _%rest147000%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest146981146989%_))
                    (let ((_%hd146986147008%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest146981146989%_)))
                          (_%tl146987147010%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest146981146989%_))))
                      (let* ((_%super147013%_ _%hd146986147008%_)
                             (_%rest147015%_ _%tl146987147010%_))
                        (_%K146985147005%_ _%rest147015%_ _%super147013%_)))
                    (_%else146983146997%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass146972%_ _%slot146973%_)
        (if (##structure-ref _%klass146972%_ '7 gxc#!class::t '#f)
            (memq _%slot146973%_
                  (##structure-ref _%klass146972%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self146958%_ _%id146959%_)
        (let ((_%self146962%_ _%self146958%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146962%_
             _%id146959%_
             '1
             '#f
             '#f))
          (let ((__tmp148035
                 (let ((__obj147967
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
                      __obj147967
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj147967
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj147967
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj147967)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146962%_
             __tmp148035
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self146822%_ _%id146823%_)
        (let ((_%self146826%_ _%self146822%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146826%_
             _%id146823%_
             '1
             '#f
             '#f))
          (let ((__tmp148036
                 (let ((__obj147968
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
                      __obj147968
                      _%id146823%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj147968
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj147968)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146826%_
             __tmp148036
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
      (lambda (_%self146684%_ _%id146685%_ _%slot146686%_ _%checked?146687%_)
        (let ((_%self146690%_ _%self146684%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146690%_
             _%id146685%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146690%_
             _%slot146686%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146690%_
             _%checked?146687%_
             '4
             '#f
             '#f))
          (let ((__tmp148037
                 (let ((__obj147969
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
                     (##unchecked-structure-set! __obj147969 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj147969
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp148038 (cons _%id146685%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj147969
                      __tmp148038
                      '3
                      '#f
                      '#f))
                   __obj147969)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146690%_
             __tmp148037
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self146546%_ _%id146547%_ _%slot146548%_ _%checked?146549%_)
        (let ((_%self146552%_ _%self146546%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146552%_
             _%id146547%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146552%_
             _%slot146548%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146552%_
             _%checked?146549%_
             '4
             '#f
             '#f))
          (let ((__tmp148039
                 (let ((__obj147970
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
                      __obj147970
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj147970
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp148040 (cons _%id146547%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj147970
                      __tmp148040
                      '3
                      '#f
                      '#f))
                   __obj147970)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146552%_
             __tmp148039
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords146390%_
               _%signature146387146391%_
               _%self146393%_
               _%arity146394%_
               _%dispatch146395%_)
        (let* ((_%signature146397%_
                (if (eq? _%signature146387146391%_ absent-value)
                    '#f
                    _%signature146387146391%_))
               (_%self146400%_ _%self146393%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self146400%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146400%_
             _%arity146394%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146400%_
             _%dispatch146395%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146400%_
             _%signature146397%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords146414%_ . _%args146415%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords146414%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords146414%_
                  'signature:
                  absent-value))
               _%args146415%_)))
    (define gxc#!lambda:::init!
      (lambda _%args146388146421%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args146388146421%_)))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords146231%_
               _%signature146228146232%_
               _%self146234%_
               _%clauses146235%_)
        (let* ((_%signature146237%_
                (if (eq? _%signature146228146232%_ absent-value)
                    '#f
                    _%signature146228146232%_))
               (_%self146240%_ _%self146234%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self146240%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146240%_
             _%signature146237%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146240%_
             _%clauses146235%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords146254%_ . _%args146255%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords146254%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords146254%_
                  'signature:
                  absent-value))
               _%args146255%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args146229146261%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args146229146261%_)))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self146090%_ _%tab146091%_ _%dispatch146092%_)
        (let ((_%self146095%_ _%self146090%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self146095%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146095%_
             _%tab146091%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146095%_
             _%dispatch146092%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self145953%_ _%keys145954%_ _%main145955%_)
        (let ((_%self145958%_ _%self145953%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self145958%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self145958%_
             _%keys145954%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self145958%_
             _%main145955%_
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
      (lambda (_%self145573%_ _%id145574%_)
        (let ((_%self145577%_ _%self145573%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self145577%_
             _%id145574%_
             '1
             '#f
             '#f))
          (let ((__tmp148041
                 (let ((__obj147971
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
                      __obj147971
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj147971
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj147971
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj147971)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self145577%_
             __tmp148041
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
      (lambda (_%klass145442%_)
        (let ((_%$e145444%_
               (##structure-ref _%klass145442%_ '11 gxc#!class::t '#f)))
          (if _%$e145444%_
              _%$e145444%_
              (let ((_%tab145448%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass145442%_
                 _%tab145448%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab145448%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass145433%_ _%method145434%_)
        (let ((_%tab145435145437%_
               (##structure-ref _%klass145433%_ '11 gxc#!class::t '#f)))
          (if _%tab145435145437%_
              (let ((_%tab145440%_ _%tab145435145437%_))
                (declare (not safe))
                (hash-get _%tab145440%_ _%method145434%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a145421%_ _%type-b145422%_)
        (if _%type-a145421%_
            (if _%type-b145422%_
                (let ((_%$e145424%_ (eq? _%type-a145421%_ _%type-b145422%_)))
                  (if _%$e145424%_
                      _%$e145424%_
                      (let ((_%$e145427%_
                             (eq? (##structure-ref
                                   _%type-b145422%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e145427%_
                            _%$e145427%_
                            (let ((_%$e145430%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a145421%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b145422%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e145430%_
                                  _%$e145430%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a145421%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b145422%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a145421%_
                                           _%type-b145422%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a145372%_ _%klass-b145373%_)
        (let ((_%$e145375%_
               (eq? (##structure-ref _%klass-a145372%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b145373%_ '1 gxc#!type::t '#f))))
          (if _%$e145375%_
              _%$e145375%_
              (let ((_%klass-id-b145378%_
                     (##structure-ref _%klass-b145373%_ '1 gxc#!type::t '#f))
                    (_%precedence-list145379%_
                     (##structure-ref _%klass-a145372%_ '3 gxc#!class::t '#f)))
                (let _%loop145381%_ ((_%rest145383%_
                                      _%precedence-list145379%_))
                  (let* ((_%rest145384145392%_ _%rest145383%_)
                         (_%else145386145400%_ (lambda () '#f))
                         (_%K145388145409%_
                          (lambda (_%rest145403%_ _%klass-name145404%_)
                            (let ((_%$e145406%_
                                   (eq? (let ((__tmp148042
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a145372%_
                                                            (cons _%klass-b145373%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name145404%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp148042
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b145378%_)))
                              (if _%$e145406%_
                                  _%$e145406%_
                                  (_%loop145381%_ _%rest145403%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest145384145392%_))
                        (let ((_%hd145389145412%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest145384145392%_)))
                              (_%tl145390145414%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest145384145392%_))))
                          (let* ((_%klass-name145417%_ _%hd145389145412%_)
                                 (_%rest145419%_ _%tl145390145414%_))
                            (_%K145388145409%_
                             _%rest145419%_
                             _%klass-name145417%_)))
                        (_%else145386145400%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type145370%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145370%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (##structure-ref _%type145370%_ '3 gxc#!class::t '#f))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc145359%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc145359%_ 'gxc#!procedure::t))
            (let ((_%proc145362%_ _%proc145359%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc145362%_ '2 '#f '#f))
                  (let ((__tmp148043
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc145362%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp148043 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@374.11-374.15"
               'contract:
               '!procedure?
               'value:
               _%proc145359%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym145341%_ _%type145342%_ _%local?145343%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145342%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym145341%_
                     _%type145342%_)))
        (let ((__tmp148044
               (let () (declare (not safe)) (struct->list _%type145342%_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym145341%_ '" " __tmp148044))
        (let ((_%table145345%_
               (if _%local?145343%_
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
          (hash-put! _%table145345%_ _%sym145341%_ _%type145342%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym145350%_ _%type145351%_)
        (let ((_%local?145353%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym145350%_
           _%type145351%_
           _%local?145353%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g148046_
        (let ((_g148045_ (let () (declare (not safe)) (##length _g148046_))))
          (cond ((let () (declare (not safe)) (##fx= _g148045_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g148046_))
                ((let () (declare (not safe)) (##fx= _g148045_ 3))
                 (apply gxc#optimizer-declare-type!__% _g148046_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g148046_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym145335%_ _%type145336%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145336%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym145335%_
                     _%type145336%_)))
        (let ((_%table145338%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp148047
                 (let () (declare (not safe)) (struct->list _%type145336%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym145335%_ '" " __tmp148047))
          (let ()
            (declare (not safe))
            (hash-put! _%table145338%_ _%sym145335%_ _%type145336%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table145338%_ _%type145336%_ _%sym145335%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym145330%_ _%type145331%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145331%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym145330%_
                     _%type145331%_)))
        (let ((_%table145333%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table145333%_ _%sym145330%_))
              '#!void
              (begin
                (let ((__tmp148048
                       (let ()
                         (declare (not safe))
                         (struct->list _%type145331%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym145330%_
                   '" "
                   __tmp148048))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table145333%_ _%sym145330%_ _%type145331%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table145333%_
                   _%type145331%_
                   _%sym145330%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym145328%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym145328%_))
        (let ((__tmp148049
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp148049 _%sym145328%_))
        (let ((__tmp148050
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp148050 _%sym145328%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t145296%_
               _%method145297%_
               _%sym145298%_
               _%rebind?145299%_)
        (let ((_%klass145301%_ (gxc#optimizer-lookup-class _%type-t145296%_)))
          (if _%klass145301%_
              (let* ((_%vtab145303%_ (gxc#!class-method-table _%klass145301%_))
                     (_%$e145305%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab145303%_ _%method145297%_))))
                (if _%$e145305%_
                    ((lambda (_%existing145308%_)
                       (if _%rebind?145299%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t145296%_
                                '" "
                                _%method145297%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab145303%_
                                _%method145297%_
                                _%sym145298%_)))
                           (if (eq? _%existing145308%_ _%sym145298%_)
                               '#!void
                               (let ((__tmp148051
                                      (cons 'bind-method!
                                            (cons _%type-t145296%_
                                                  (cons _%method145297%_
                                                        (cons _%sym145298%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp148051
                                  _%method145297%_)))))
                     _%$e145305%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t145296%_
                         '" "
                         _%method145297%_
                         '" => "
                         _%sym145298%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab145303%_
                         _%method145297%_
                         _%sym145298%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t145296%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t145317%_ _%method145318%_ _%sym145319%_)
        (let ((_%rebind?145321%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t145317%_
           _%method145318%_
           _%sym145319%_
           _%rebind?145321%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g148053_
        (let ((_g148052_ (let () (declare (not safe)) (##length _g148053_))))
          (cond ((let () (declare (not safe)) (##fx= _g148052_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g148053_))
                ((let () (declare (not safe)) (##fx= _g148052_ 4))
                 (apply gxc#optimizer-declare-method!__% _g148053_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g148053_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym145284%_)
        (let ((_%$e145292%_
               (let ((_%ht145285145287%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-local-type))))
                 (if _%ht145285145287%_
                     (let ((_%ht145290%_ _%ht145285145287%_))
                       (declare (not safe))
                       (hash-get _%ht145290%_ _%sym145284%_))
                     '#f))))
          (if _%$e145292%_
              _%$e145292%_
              (let ((__tmp148054
                     (##structure-ref
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-optimizer-info))
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp148054 _%sym145284%_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym145276%_)
        (let ((_%type145277145279%_ (gxc#optimizer-lookup-type _%sym145276%_)))
          (if _%type145277145279%_
              (let ((_%type145282%_ _%type145277145279%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type145282%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (##structure-ref _%type145282%_ '1 gxc#!type::t '#f))
                    _%type145282%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym145272%_)
        (let ((_%table145274%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table145274%_ _%sym145272%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where145257%_ _%sym145258%_)
        (let ((_%$e145261%_ (gxc#optimizer-lookup-class _%sym145258%_)))
          (if _%$e145261%_
              ((lambda (_%g145263145265%_)
                 (let ((_%val145268%_ _%g145263145265%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val145268%_
                          'gxc#!class::t))
                       _%val145268%_
                       (let ()
                         (declare (not safe))
                         (error '"bad cast" gxc#!class::t _%val145268%_)))))
               _%$e145261%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where145257%_
                   _%sym145258%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass145255%_)
        (let ((__tmp148055
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp148055 _%klass145255%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t145252%_ _%method145253%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t145252%_)
         _%method145253%_)))
    (define gxc#optimizer-top-level-method!
      (lambda (_%sym145250%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _%sym145250%_))
        (let ((__tmp148056
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp148056 _%sym145250%_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym145248%_)
        (let ((__tmp148057
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp148057 _%sym145248%_))))))
