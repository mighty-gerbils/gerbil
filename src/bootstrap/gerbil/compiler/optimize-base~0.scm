(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1712702632)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp148034 (list)) (__tmp148033 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp148034
         '(type classes ssxi methods)
         __tmp148033
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args148005%_
        (apply make-instance gxc#optimizer-info::t _%$args148005%_)))
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
      (lambda (_%self147992%_)
        (let ((_%self147995%_ _%self147992%_))
          (if (let ((__tmp148035
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self147995%_))))
                (declare (not safe))
                (##fx< '4 __tmp148035))
              (begin
                (let ((__tmp148036
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self147995%_
                   __tmp148036
                   '1
                   '#f
                   '#f))
                (let ((__tmp148037
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self147995%_
                   __tmp148037
                   '2
                   '#f
                   '#f))
                (let ((__tmp148038
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self147995%_
                   __tmp148038
                   '3
                   '#f
                   '#f))
                (let ((__tmp148039
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self147995%_
                   __tmp148039
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp148040
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self147995%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self147995%_
                       '4
                       __tmp148040))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp148042 (list))
            (__tmp148041
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp148042
         '(id)
         __tmp148041
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args147867%_
        (apply make-instance gxc#!type::t _%$args147867%_)))
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
      (let ((__tmp148044 (list gxc#!type::t))
            (__tmp148043 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp148044
         '()
         __tmp148043
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args147864%_
        (apply make-instance gxc#!abort::t _%$args147864%_)))
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
      (let ((__tmp148046 (list gxc#!type::t))
            (__tmp148045 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp148046
         '()
         __tmp148045
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args147861%_
        (apply make-instance gxc#!alias::t _%$args147861%_)))
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
      (let ((__tmp148048 (list))
            (__tmp148047
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp148048
         '(return effect arguments unchecked origin)
         __tmp148047
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args147858%_
        (apply make-instance gxc#!signature::t _%$args147858%_)))
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
      (let ((__tmp148050 (list gxc#!type::t))
            (__tmp148049
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp148050
         '(signature)
         __tmp148049
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
      (lambda (_%id147837%_ _%signature147838%_)
        (if ((lambda (_%$obj147841%_)
               (or (not _%$obj147841%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj147841%_
                      'gxc#!signature::t))))
             _%signature147838%_)
            (let ((_%signature147848%_ _%signature147838%_))
              (gxc#__make-!procedure _%id147837%_ _%signature147848%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature147838%_)
              '#!void))))
    (define gxc#__make-!procedure
      (lambda (_%id147823%_ _%signature147825%_)
        (let ((_%signature147828%_ _%signature147825%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id147823%_ _%signature147828%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj147792%_ _%signature147793%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj147792%_ 'gxc#!procedure::t))
            (let ((_%$obj147797%_ _%$obj147792%_))
              (if ((lambda (_%$obj147806%_)
                     (or (not _%$obj147806%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj147806%_
                            'gxc#!signature::t))))
                   _%signature147793%_)
                  (let ((_%signature147813%_ _%signature147793%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj147797%_
                     _%signature147813%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature147793%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj147792%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj147769%_ _%signature147771%_)
        (let* ((_%$obj147775%_ _%$obj147769%_)
               (_%signature147783%_ _%signature147771%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj147775%_
           _%signature147783%_
           '2
           '#f
           '#f))))
    (define gxc#!class-meta::t
      (let ((__tmp148052 (list gxc#!type::t))
            (__tmp148051 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp148052
         '(class)
         __tmp148051
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args147766%_
        (apply make-instance gxc#!class-meta::t _%$args147766%_)))
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
      (let ((__tmp148054 (list gxc#!type::t))
            (__tmp148053
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
         __tmp148054
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp148053
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args147763%_
        (apply make-instance gxc#!class::t _%$args147763%_)))
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
      (let ((__tmp148056 (list gxc#!procedure::t))
            (__tmp148055 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp148056
         '()
         __tmp148055
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args147760%_
        (apply make-instance gxc#!predicate::t _%$args147760%_)))
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
      (let ((__tmp148058 (list gxc#!procedure::t))
            (__tmp148057 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp148058
         '()
         __tmp148057
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args147757%_
        (apply make-instance gxc#!constructor::t _%$args147757%_)))
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
      (let ((__tmp148060 (list gxc#!procedure::t))
            (__tmp148059 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp148060
         '(slot checked?)
         __tmp148059
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args147754%_
        (apply make-instance gxc#!accessor::t _%$args147754%_)))
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
      (let ((__tmp148062 (list gxc#!procedure::t))
            (__tmp148061 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp148062
         '(slot checked?)
         __tmp148061
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args147751%_
        (apply make-instance gxc#!mutator::t _%$args147751%_)))
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
      (let ((__tmp148064 (list gxc#!type::t))
            (__tmp148063 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp148064
         '(methods)
         __tmp148063
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args147748%_
        (apply make-instance gxc#!interface::t _%$args147748%_)))
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
      (let ((__tmp148066 (list gxc#!procedure::t))
            (__tmp148065
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp148066
         '(arity dispatch inline inline-typedecl)
         __tmp148065
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args147745%_
        (apply make-instance gxc#!lambda::t _%$args147745%_)))
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
      (let ((__tmp148068 (list gxc#!procedure::t))
            (__tmp148067 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp148068
         '(clauses)
         __tmp148067
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args147742%_
        (apply make-instance gxc#!case-lambda::t _%$args147742%_)))
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
      (let ((__tmp148070 (list gxc#!procedure::t))
            (__tmp148069 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp148070
         '(table dispatch)
         __tmp148069
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args147739%_
        (apply make-instance gxc#!kw-lambda::t _%$args147739%_)))
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
      (let ((__tmp148072 (list gxc#!procedure::t))
            (__tmp148071 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp148072
         '(keys main)
         __tmp148071
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args147736%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args147736%_)))
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
      (let ((__tmp148073 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp148073
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args147733%_
        (apply make-instance gxc#!primitive::t _%$args147733%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp148075 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp148074 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp148075
         '()
         __tmp148074
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args147730%_
        (apply make-instance gxc#!primitive-predicate::t _%$args147730%_)))
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
      (let ((__tmp148077 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp148076 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp148077
         '()
         __tmp148076
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args147727%_
        (apply make-instance gxc#!primitive-lambda::t _%$args147727%_)))
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
      (let ((__tmp148079 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp148078 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp148079
         '()
         __tmp148078
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args147724%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args147724%_)))
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
      (lambda (_%self147711%_)
        (let ((_%self147714%_ _%self147711%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self147714%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self147575%_ _%klass147576%_)
        (let ((_%self147579%_ _%self147575%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self147579%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147579%_
             _%klass147576%_
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class-meta::t ':init! gxc#!class-meta:::init! '#f))
    (define gxc#!class:::init!__0
      (lambda (_%self147267%_
               _%id147268%_
               _%super147269%_
               _%slots147270%_
               _%ctor-method147271%_
               _%struct?147272%_
               _%final?147273%_
               _%system?147274%_
               _%metaclass147275%_)
        (let ((_%self147278%_ _%self147267%_))
          (let _%lp147288%_ ((_%rest147290%_ _%super147269%_))
            (let* ((_%rest147291147299%_ _%rest147290%_)
                   (_%else147293147307%_ (lambda () '#!void))
                   (_%K147295147313%_
                    (lambda (_%rest147310%_ _%super-id147311%_)
                      (if (let ((__tmp148080
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id147268%_ '()))
                                  _%super-id147311%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp148080 '8 '#f '#f))
                          (let ((__tmp148081
                                 (cons '!class (cons _%id147268%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp148081
                             _%super-id147311%_))
                          '#!void)
                      (_%lp147288%_ _%rest147310%_))))
              (if (let () (declare (not safe)) (##pair? _%rest147291147299%_))
                  (let ((_%hd147296147316%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest147291147299%_)))
                        (_%tl147297147318%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest147291147299%_))))
                    (let* ((_%super-id147321%_ _%hd147296147316%_)
                           (_%rest147323%_ _%tl147297147318%_))
                      (_%K147295147313%_ _%rest147323%_ _%super-id147321%_)))
                  '#!void)))
          (let* ((_%ctor-method147374%_
                  (let ((_%$e147325%_ _%ctor-method147271%_))
                    (if _%$e147325%_
                        _%$e147325%_
                        (let _%lp147328%_ ((_%rest147330%_ _%super147269%_)
                                           (_%method147331%_ '#f))
                          (let* ((_%rest147332147340%_ _%rest147330%_)
                                 (_%else147334147348%_
                                  (lambda () _%method147331%_))
                                 (_%K147336147362%_
                                  (lambda (_%rest147351%_ _%super-id147352%_)
                                    (let* ((_%klass147354%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id147268%_ '()))
                                             _%super-id147352%_))
                                           (_%$e147356%_
                                            (##structure-ref
                                             _%klass147354%_
                                             '6
                                             gxc#!class::t
                                             '#f)))
                                      (if _%$e147356%_
                                          ((lambda (_%ctor-method147359%_)
                                             (if _%method147331%_
                                                 (if (eq? _%ctor-method147359%_
                                                          _%method147331%_)
                                                     (_%lp147328%_
                                                      _%rest147351%_
                                                      _%ctor-method147359%_)
                                                     (let ((__tmp148082
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id147268%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp148082
                _%method147331%_
                _%ctor-method147359%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp147328%_
                                                  _%rest147351%_
                                                  _%ctor-method147359%_)))
                                           _%$e147356%_)
                                          (_%lp147328%_
                                           _%rest147351%_
                                           _%method147331%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest147332147340%_))
                                (let ((_%hd147337147365%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest147332147340%_)))
                                      (_%tl147338147367%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest147332147340%_))))
                                  (let* ((_%super-id147370%_
                                          _%hd147337147365%_)
                                         (_%rest147372%_ _%tl147338147367%_))
                                    (_%K147336147362%_
                                     _%rest147372%_
                                     _%super-id147370%_)))
                                (_%else147334147348%_)))))))
                 (_g148083_
                  (let ((__tmp148087
                         (lambda (_%klass-id147376%_)
                           (cons _%klass-id147376%_
                                 (let ((__tmp148088
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id147268%_ '()))
                                         _%klass-id147376%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp148088
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp148085
                         (lambda (_%klass-id147378%_)
                           (let ((__tmp148086
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id147268%_ '()))
                                   _%klass-id147378%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp148086
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp148087
                     __tmp148085
                     eq?
                     identity
                     '()
                     _%super147269%_))))
            (begin
              (let ((_g148084_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g148083_)
                           (##vector-length _g148083_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g148084_ 2)))
                    (error "Context expects 2 values" _g148084_)))
              (let ((_%precedence-list147380%_
                     (let () (declare (not safe)) (##vector-ref _g148083_ 0)))
                    (_%base-struct147381%_
                     (let () (declare (not safe)) (##vector-ref _g148083_ 1))))
                (let* ((_%precedence-list147425%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id147268%_ '(t object class)))
                            _%precedence-list147380%_
                            (if (memq 'object::t _%precedence-list147380%_)
                                _%precedence-list147380%_
                                (if _%system?147274%_
                                    (if (memq 't::t _%precedence-list147380%_)
                                        _%precedence-list147380%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list147380%_
                                           '(t::t))))
                                    (let _%loop147387%_ ((_%tail147389%_
                                                          _%precedence-list147380%_)
                                                         (_%head147390%_ '()))
                                      (let* ((_%tail147391147399%_
                                              _%tail147389%_)
                                             (_%else147393147407%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head147390%_))))
                                             (_%K147395147413%_
                                              (lambda (_%rest147410%_
                                                       _%hd147411%_)
                                                (if (eq? _%hd147411%_ 't::t)
                                                    (let ((__tmp148089
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail147389%_)))
              (declare (not safe))
              (__foldl1 cons __tmp148089 _%head147390%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop147387%_
                                                     _%rest147410%_
                                                     (cons _%hd147411%_
                                                           _%head147390%_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tail147391147399%_))
                                            (let ((_%hd147396147416%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail147391147399%_)))
                                                  (_%tl147397147418%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail147391147399%_))))
                                              (let* ((_%hd147421%_
                                                      _%hd147396147416%_)
                                                     (_%rest147423%_
                                                      _%tl147397147418%_))
                                                (_%K147395147413%_
                                                 _%rest147423%_
                                                 _%hd147421%_)))
                                            (_%else147393147407%_))))))))
                       (_%fields147427%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id147268%_ '()))
                         _%base-struct147381%_
                         _%precedence-list147425%_
                         _%slots147270%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147278%_
                     _%id147268%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147278%_
                     _%super147269%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147278%_
                     _%precedence-list147425%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147278%_
                     _%slots147270%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147278%_
                     _%fields147427%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147278%_
                     _%ctor-method147374%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147278%_
                     _%struct?147272%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147278%_
                     _%final?147273%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147278%_
                     _%metaclass147275%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self147430%_
               _%id147431%_
               _%super147432%_
               _%precedence-list147433%_
               _%slots147434%_
               _%fields147435%_
               _%constructor147436%_
               _%struct?147437%_
               _%final?147438%_
               _%system?147439%_
               _%metaclass147440%_
               _%methods147441%_)
        (let ((_%self147444%_ _%self147430%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147444%_
             _%id147431%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147444%_
             _%super147432%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147444%_
             _%precedence-list147433%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147444%_
             _%slots147434%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147444%_
             _%fields147435%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147444%_
             _%constructor147436%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147444%_
             _%struct?147437%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147444%_
             _%final?147438%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147444%_
             _%metaclass147440%_
             '10
             '#f
             '#f))
          (if _%methods147441%_
              (let ((__tmp148090
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods147441%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147444%_
                 __tmp148090
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g148092_
        (let ((_g148091_ (let () (declare (not safe)) (##length _g148092_))))
          (cond ((let () (declare (not safe)) (##fx= _g148091_ 9))
                 (apply gxc#!class:::init!__0 _g148092_))
                ((let () (declare (not safe)) (##fx= _g148091_ 12))
                 (apply gxc#!class:::init!__1 _g148092_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g148092_))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where147119%_
               _%base-struct147120%_
               _%precedence-list147121%_
               _%direct-slots147122%_)
        (let* ((_%base-fields147124%_
                (if _%base-struct147120%_
                    (let ((__tmp148093
                           (gxc#optimizer-resolve-class
                            _%where147119%_
                            _%base-struct147120%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp148093 '5 '#f '#f))
                    '()))
               (_%r-fields147126%_ (reverse _%base-fields147124%_))
               (_%seen-slots147134%_
                (let ((_%tab147128%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g147129147131%_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _%tab147128%_ _%g147129147131%_ '#t)))
                   _%base-fields147124%_)
                  _%tab147128%_))
               (_%process-slot147138%_
                (lambda (_%slot147136%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%seen-slots147134%_ _%slot147136%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _%seen-slots147134%_ _%slot147136%_ '#t))
                        (set! _%r-fields147126%_
                              (cons _%slot147136%_ _%r-fields147126%_)))))))
          (for-each
           (lambda (_%mixin147141%_)
             (let ((_%klass147143%_
                    (gxc#optimizer-resolve-class
                     _%where147119%_
                     _%mixin147141%_)))
               (if (##structure-ref _%klass147143%_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _%process-slot147138%_
                    (##structure-ref _%klass147143%_ '5 gxc#!class::t '#f)))))
           _%precedence-list147121%_)
          (for-each _%process-slot147138%_ _%direct-slots147122%_)
          (let () (declare (not safe)) (##reverse _%r-fields147126%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass147078%_ _%slot147079%_)
        (let _%lp147081%_ ((_%rest147083%_
                            (##structure-ref
                             _%klass147078%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset147084%_ '1))
          (let* ((_%rest147085147093%_ _%rest147083%_)
                 (_%else147087147101%_
                  (lambda ()
                    (let ((__tmp148095
                           (##structure-ref
                            _%klass147078%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp148094
                           (##structure-ref
                            _%klass147078%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp148095
                       __tmp148094
                       _%slot147079%_))))
                 (_%K147089147107%_
                  (lambda (_%rest147104%_ _%s147105%_)
                    (if (eq? _%s147105%_ _%slot147079%_)
                        _%offset147084%_
                        (_%lp147081%_
                         _%rest147104%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset147084%_ '1)))))))
            (if (let () (declare (not safe)) (##pair? _%rest147085147093%_))
                (let ((_%hd147090147110%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest147085147093%_)))
                      (_%tl147091147112%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest147085147093%_))))
                  (let* ((_%s147115%_ _%hd147090147110%_)
                         (_%rest147117%_ _%tl147091147112%_))
                    (_%K147089147107%_ _%rest147117%_ _%s147115%_)))
                (_%else147087147101%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass147036%_ _%slot147037%_)
        (if (gxc#!class-struct-slot? _%klass147036%_ _%slot147037%_)
            _%klass147036%_
            (let _%lp147039%_ ((_%rest147041%_
                                (##structure-ref
                                 _%klass147036%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest147042147050%_ _%rest147041%_)
                     (_%else147044147058%_ (lambda () '#f))
                     (_%K147046147066%_
                      (lambda (_%rest147061%_ _%super147062%_)
                        (let ((_%super-class147064%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass147036%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot147037%_ '())))
                                _%super147062%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class147064%_
                               _%slot147037%_)
                              _%super-class147064%_
                              (_%lp147039%_ _%rest147061%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest147042147050%_))
                    (let ((_%hd147047147069%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest147042147050%_)))
                          (_%tl147048147071%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest147042147050%_))))
                      (let* ((_%super147074%_ _%hd147047147069%_)
                             (_%rest147076%_ _%tl147048147071%_))
                        (_%K147046147066%_ _%rest147076%_ _%super147074%_)))
                    (_%else147044147058%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass147033%_ _%slot147034%_)
        (if (##structure-ref _%klass147033%_ '7 gxc#!class::t '#f)
            (memq _%slot147034%_
                  (##structure-ref _%klass147033%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self147019%_ _%id147020%_)
        (let ((_%self147023%_ _%self147019%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147023%_
             _%id147020%_
             '1
             '#f
             '#f))
          (let ((__tmp148096
                 (let ((__obj148028
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
                      __obj148028
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148028
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148028
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj148028)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147023%_
             __tmp148096
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self146883%_ _%id146884%_)
        (let ((_%self146887%_ _%self146883%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146887%_
             _%id146884%_
             '1
             '#f
             '#f))
          (let ((__tmp148097
                 (let ((__obj148029
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
                      __obj148029
                      _%id146884%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148029
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj148029)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146887%_
             __tmp148097
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
      (lambda (_%self146745%_ _%id146746%_ _%slot146747%_ _%checked?146748%_)
        (let ((_%self146751%_ _%self146745%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146751%_
             _%id146746%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146751%_
             _%slot146747%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146751%_
             _%checked?146748%_
             '4
             '#f
             '#f))
          (let ((__tmp148098
                 (let ((__obj148030
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
                     (##unchecked-structure-set! __obj148030 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148030
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp148099 (cons _%id146746%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148030
                      __tmp148099
                      '3
                      '#f
                      '#f))
                   __obj148030)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146751%_
             __tmp148098
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self146607%_ _%id146608%_ _%slot146609%_ _%checked?146610%_)
        (let ((_%self146613%_ _%self146607%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146613%_
             _%id146608%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146613%_
             _%slot146609%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146613%_
             _%checked?146610%_
             '4
             '#f
             '#f))
          (let ((__tmp148100
                 (let ((__obj148031
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
                      __obj148031
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148031
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp148101 (cons _%id146608%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148031
                      __tmp148101
                      '3
                      '#f
                      '#f))
                   __obj148031)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146613%_
             __tmp148100
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords146451%_
               _%signature146448146452%_
               _%self146454%_
               _%arity146455%_
               _%dispatch146456%_)
        (let* ((_%signature146458%_
                (if (eq? _%signature146448146452%_ absent-value)
                    '#f
                    _%signature146448146452%_))
               (_%self146461%_ _%self146454%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self146461%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146461%_
             _%arity146455%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146461%_
             _%dispatch146456%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146461%_
             _%signature146458%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords146475%_ . _%args146476%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords146475%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords146475%_
                  'signature:
                  absent-value))
               _%args146476%_)))
    (define gxc#!lambda:::init!
      (lambda _%args146449146482%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args146449146482%_)))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords146292%_
               _%signature146289146293%_
               _%self146295%_
               _%clauses146296%_)
        (let* ((_%signature146298%_
                (if (eq? _%signature146289146293%_ absent-value)
                    '#f
                    _%signature146289146293%_))
               (_%self146301%_ _%self146295%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self146301%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146301%_
             _%signature146298%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146301%_
             _%clauses146296%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords146315%_ . _%args146316%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords146315%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords146315%_
                  'signature:
                  absent-value))
               _%args146316%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args146290146322%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args146290146322%_)))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self146151%_ _%tab146152%_ _%dispatch146153%_)
        (let ((_%self146156%_ _%self146151%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self146156%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146156%_
             _%tab146152%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146156%_
             _%dispatch146153%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self146014%_ _%keys146015%_ _%main146016%_)
        (let ((_%self146019%_ _%self146014%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self146019%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146019%_
             _%keys146015%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146019%_
             _%main146016%_
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
      (lambda (_%self145634%_ _%id145635%_)
        (let ((_%self145638%_ _%self145634%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self145638%_
             _%id145635%_
             '1
             '#f
             '#f))
          (let ((__tmp148102
                 (let ((__obj148032
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
                      __obj148032
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148032
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148032
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj148032)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self145638%_
             __tmp148102
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
      (lambda (_%klass145503%_)
        (let ((_%$e145505%_
               (##structure-ref _%klass145503%_ '11 gxc#!class::t '#f)))
          (if _%$e145505%_
              _%$e145505%_
              (let ((_%tab145509%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass145503%_
                 _%tab145509%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab145509%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass145494%_ _%method145495%_)
        (let ((_%tab145496145498%_
               (##structure-ref _%klass145494%_ '11 gxc#!class::t '#f)))
          (if _%tab145496145498%_
              (let ((_%tab145501%_ _%tab145496145498%_))
                (declare (not safe))
                (hash-get _%tab145501%_ _%method145495%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a145482%_ _%type-b145483%_)
        (if _%type-a145482%_
            (if _%type-b145483%_
                (let ((_%$e145485%_ (eq? _%type-a145482%_ _%type-b145483%_)))
                  (if _%$e145485%_
                      _%$e145485%_
                      (let ((_%$e145488%_
                             (eq? (##structure-ref
                                   _%type-b145483%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e145488%_
                            _%$e145488%_
                            (let ((_%$e145491%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a145482%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b145483%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e145491%_
                                  _%$e145491%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a145482%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b145483%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a145482%_
                                           _%type-b145483%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a145433%_ _%klass-b145434%_)
        (let ((_%$e145436%_
               (eq? (##structure-ref _%klass-a145433%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b145434%_ '1 gxc#!type::t '#f))))
          (if _%$e145436%_
              _%$e145436%_
              (let ((_%klass-id-b145439%_
                     (##structure-ref _%klass-b145434%_ '1 gxc#!type::t '#f))
                    (_%precedence-list145440%_
                     (##structure-ref _%klass-a145433%_ '3 gxc#!class::t '#f)))
                (let _%loop145442%_ ((_%rest145444%_
                                      _%precedence-list145440%_))
                  (let* ((_%rest145445145453%_ _%rest145444%_)
                         (_%else145447145461%_ (lambda () '#f))
                         (_%K145449145470%_
                          (lambda (_%rest145464%_ _%klass-name145465%_)
                            (let ((_%$e145467%_
                                   (eq? (let ((__tmp148103
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a145433%_
                                                            (cons _%klass-b145434%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name145465%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp148103
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b145439%_)))
                              (if _%$e145467%_
                                  _%$e145467%_
                                  (_%loop145442%_ _%rest145464%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest145445145453%_))
                        (let ((_%hd145450145473%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest145445145453%_)))
                              (_%tl145451145475%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest145445145453%_))))
                          (let* ((_%klass-name145478%_ _%hd145450145473%_)
                                 (_%rest145480%_ _%tl145451145475%_))
                            (_%K145449145470%_
                             _%rest145480%_
                             _%klass-name145478%_)))
                        (_%else145447145461%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type145431%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145431%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (##structure-ref _%type145431%_ '3 gxc#!class::t '#f))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc145420%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc145420%_ 'gxc#!procedure::t))
            (let ((_%proc145423%_ _%proc145420%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc145423%_ '2 '#f '#f))
                  (let ((__tmp148104
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc145423%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp148104 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@374.11-374.15"
               'contract:
               '!procedure?
               'value:
               _%proc145420%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym145402%_ _%type145403%_ _%local?145404%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145403%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym145402%_
                     _%type145403%_)))
        (let ((__tmp148105
               (let () (declare (not safe)) (struct->list _%type145403%_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym145402%_ '" " __tmp148105))
        (let ((_%table145406%_
               (if _%local?145404%_
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
          (hash-put! _%table145406%_ _%sym145402%_ _%type145403%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym145411%_ _%type145412%_)
        (let ((_%local?145414%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym145411%_
           _%type145412%_
           _%local?145414%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g148107_
        (let ((_g148106_ (let () (declare (not safe)) (##length _g148107_))))
          (cond ((let () (declare (not safe)) (##fx= _g148106_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g148107_))
                ((let () (declare (not safe)) (##fx= _g148106_ 3))
                 (apply gxc#optimizer-declare-type!__% _g148107_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g148107_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym145396%_ _%type145397%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145397%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym145396%_
                     _%type145397%_)))
        (let ((_%table145399%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp148108
                 (let () (declare (not safe)) (struct->list _%type145397%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym145396%_ '" " __tmp148108))
          (let ()
            (declare (not safe))
            (hash-put! _%table145399%_ _%sym145396%_ _%type145397%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table145399%_ _%type145397%_ _%sym145396%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym145391%_ _%type145392%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145392%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym145391%_
                     _%type145392%_)))
        (let ((_%table145394%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table145394%_ _%sym145391%_))
              '#!void
              (begin
                (let ((__tmp148109
                       (let ()
                         (declare (not safe))
                         (struct->list _%type145392%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym145391%_
                   '" "
                   __tmp148109))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table145394%_ _%sym145391%_ _%type145392%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table145394%_
                   _%type145392%_
                   _%sym145391%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym145389%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym145389%_))
        (let ((__tmp148110
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp148110 _%sym145389%_))
        (let ((__tmp148111
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp148111 _%sym145389%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t145357%_
               _%method145358%_
               _%sym145359%_
               _%rebind?145360%_)
        (let ((_%klass145362%_ (gxc#optimizer-lookup-class _%type-t145357%_)))
          (if _%klass145362%_
              (let* ((_%vtab145364%_ (gxc#!class-method-table _%klass145362%_))
                     (_%$e145366%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab145364%_ _%method145358%_))))
                (if _%$e145366%_
                    ((lambda (_%existing145369%_)
                       (if _%rebind?145360%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t145357%_
                                '" "
                                _%method145358%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab145364%_
                                _%method145358%_
                                _%sym145359%_)))
                           (if (eq? _%existing145369%_ _%sym145359%_)
                               '#!void
                               (let ((__tmp148112
                                      (cons 'bind-method!
                                            (cons _%type-t145357%_
                                                  (cons _%method145358%_
                                                        (cons _%sym145359%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp148112
                                  _%method145358%_)))))
                     _%$e145366%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t145357%_
                         '" "
                         _%method145358%_
                         '" => "
                         _%sym145359%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab145364%_
                         _%method145358%_
                         _%sym145359%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t145357%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t145378%_ _%method145379%_ _%sym145380%_)
        (let ((_%rebind?145382%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t145378%_
           _%method145379%_
           _%sym145380%_
           _%rebind?145382%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g148114_
        (let ((_g148113_ (let () (declare (not safe)) (##length _g148114_))))
          (cond ((let () (declare (not safe)) (##fx= _g148113_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g148114_))
                ((let () (declare (not safe)) (##fx= _g148113_ 4))
                 (apply gxc#optimizer-declare-method!__% _g148114_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g148114_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym145345%_)
        (let ((_%$e145353%_
               (let ((_%ht145346145348%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-local-type))))
                 (if _%ht145346145348%_
                     (let ((_%ht145351%_ _%ht145346145348%_))
                       (declare (not safe))
                       (hash-get _%ht145351%_ _%sym145345%_))
                     '#f))))
          (if _%$e145353%_
              _%$e145353%_
              (let ((__tmp148115
                     (##structure-ref
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-optimizer-info))
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp148115 _%sym145345%_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym145337%_)
        (let ((_%type145338145340%_ (gxc#optimizer-lookup-type _%sym145337%_)))
          (if _%type145338145340%_
              (let ((_%type145343%_ _%type145338145340%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type145343%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (##structure-ref _%type145343%_ '1 gxc#!type::t '#f))
                    _%type145343%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym145333%_)
        (let ((_%table145335%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table145335%_ _%sym145333%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where145318%_ _%sym145319%_)
        (let ((_%$e145322%_ (gxc#optimizer-lookup-class _%sym145319%_)))
          (if _%$e145322%_
              ((lambda (_%g145324145326%_)
                 (let ((_%val145329%_ _%g145324145326%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val145329%_
                          'gxc#!class::t))
                       _%val145329%_
                       (let ()
                         (declare (not safe))
                         (error '"bad cast" gxc#!class::t _%val145329%_)))))
               _%$e145322%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where145318%_
                   _%sym145319%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass145316%_)
        (let ((__tmp148116
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp148116 _%klass145316%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t145313%_ _%method145314%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t145313%_)
         _%method145314%_)))
    (define gxc#optimizer-top-level-method!
      (lambda (_%sym145311%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _%sym145311%_))
        (let ((__tmp148117
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp148117 _%sym145311%_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym145309%_)
        (let ((__tmp148118
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp148118 _%sym145309%_))))))
