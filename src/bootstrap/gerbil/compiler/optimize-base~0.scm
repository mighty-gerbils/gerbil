(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1771178566)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp210122 (list)) (__tmp210121 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp210122
         '(type classes ssxi methods)
         __tmp210121
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args210041%_
        (apply make-instance gxc#optimizer-info::t _%$args210041%_)))
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
      (lambda (_%self210028%_)
        (let ((_%self210031%_ _%self210028%_))
          (if (let ((__tmp210123
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self210031%_))))
                (declare (not safe))
                (##fx< '4 __tmp210123))
              (begin
                (let ((__tmp210124
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self210031%_
                   __tmp210124
                   '1
                   '#f
                   '#f))
                (let ((__tmp210125
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self210031%_
                   __tmp210125
                   '2
                   '#f
                   '#f))
                (let ((__tmp210126
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self210031%_
                   __tmp210126
                   '3
                   '#f
                   '#f))
                (let ((__tmp210127
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self210031%_
                   __tmp210127
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp210128
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self210031%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self210031%_
                       '4
                       __tmp210128))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp210130 (list))
            (__tmp210129
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp210130
         '(id)
         __tmp210129
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args209903%_
        (apply make-instance gxc#!type::t _%$args209903%_)))
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
      (let ((__tmp210132 (list gxc#!type::t))
            (__tmp210131 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp210132
         '()
         __tmp210131
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args209900%_
        (apply make-instance gxc#!abort::t _%$args209900%_)))
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
      (let ((__tmp210134 (list gxc#!type::t))
            (__tmp210133 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp210134
         '()
         __tmp210133
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args209897%_
        (apply make-instance gxc#!alias::t _%$args209897%_)))
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
      (let ((__tmp210136 (list))
            (__tmp210135
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp210136
         '(return effect arguments unchecked origin)
         __tmp210135
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args209894%_
        (apply make-instance gxc#!signature::t _%$args209894%_)))
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
      (let ((__tmp210138 (list gxc#!type::t))
            (__tmp210137
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp210138
         '(signature)
         __tmp210137
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
      (lambda (_%id209881%_ _%signature209882%_)
        (let ((_%signature209885%_ _%signature209882%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id209881%_ _%signature209885%_))))
    (define gxc#make-!procedure
      (lambda (_%id206689%_ _%signature206691%_)
        (if ((lambda (_%$obj206695%_)
               (or (not _%$obj206695%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj206695%_
                      'gxc#!signature::t))))
             _%signature206691%_)
            (let ((_%signature206702%_ _%signature206691%_))
              (gxc#__make-!procedure _%id206689%_ _%signature206702%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature206691%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj209860%_ _%signature209861%_)
        (let* ((_%$obj209864%_ _%$obj209860%_)
               (_%signature209872%_ _%signature209861%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj209864%_
           _%signature209872%_
           '2
           '#f
           '#f))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj206832%_ _%signature206834%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj206832%_ 'gxc#!procedure::t))
            (let ((_%$obj206838%_ _%$obj206832%_))
              (if ((lambda (_%$obj206847%_)
                     (or (not _%$obj206847%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj206847%_
                            'gxc#!signature::t))))
                   _%signature206834%_)
                  (let ((_%signature206854%_ _%signature206834%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj206838%_
                     _%signature206854%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature206834%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj206832%_)
              '#!void))))
    (define gxc#!class-meta::t
      (let ((__tmp210140 (list gxc#!type::t))
            (__tmp210139 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp210140
         '(class)
         __tmp210139
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args209857%_
        (apply make-instance gxc#!class-meta::t _%$args209857%_)))
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
      (let ((__tmp210142 (list gxc#!type::t))
            (__tmp210141
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
         __tmp210142
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp210141
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args209854%_
        (apply make-instance gxc#!class::t _%$args209854%_)))
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
      (let ((__tmp210144 (list gxc#!procedure::t))
            (__tmp210143 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp210144
         '()
         __tmp210143
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args209851%_
        (apply make-instance gxc#!predicate::t _%$args209851%_)))
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
      (let ((__tmp210146 (list gxc#!procedure::t))
            (__tmp210145 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp210146
         '()
         __tmp210145
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args209848%_
        (apply make-instance gxc#!constructor::t _%$args209848%_)))
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
      (let ((__tmp210148 (list gxc#!procedure::t))
            (__tmp210147 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp210148
         '(slot checked?)
         __tmp210147
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args209845%_
        (apply make-instance gxc#!accessor::t _%$args209845%_)))
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
      (let ((__tmp210150 (list gxc#!procedure::t))
            (__tmp210149 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp210150
         '(slot checked?)
         __tmp210149
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args209842%_
        (apply make-instance gxc#!mutator::t _%$args209842%_)))
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
      (let ((__tmp210152 (list gxc#!type::t))
            (__tmp210151 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp210152
         '(methods)
         __tmp210151
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args209839%_
        (apply make-instance gxc#!interface::t _%$args209839%_)))
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
      (let ((__tmp210154 (list gxc#!procedure::t))
            (__tmp210153
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp210154
         '(arity dispatch inline inline-typedecl)
         __tmp210153
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args209836%_
        (apply make-instance gxc#!lambda::t _%$args209836%_)))
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
      (let ((__tmp210156 (list gxc#!procedure::t))
            (__tmp210155 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp210156
         '(clauses)
         __tmp210155
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args209833%_
        (apply make-instance gxc#!case-lambda::t _%$args209833%_)))
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
      (let ((__tmp210158 (list gxc#!procedure::t))
            (__tmp210157
             (cons (cons 'struct: '#t) '((equal: table dispatch)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp210158
         '(table dispatch)
         __tmp210157
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args209830%_
        (apply make-instance gxc#!kw-lambda::t _%$args209830%_)))
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
      (let ((__tmp210160 (list gxc#!procedure::t))
            (__tmp210159 (cons (cons 'struct: '#t) '((equal: keys main)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp210160
         '(keys main)
         __tmp210159
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args209827%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args209827%_)))
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
      (let ((__tmp210161 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp210161
         '()
         '((equal:))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args209824%_
        (apply make-instance gxc#!primitive::t _%$args209824%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp210163 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp210162 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp210163
         '()
         __tmp210162
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args209821%_
        (apply make-instance gxc#!primitive-predicate::t _%$args209821%_)))
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
      (let ((__tmp210165 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp210164 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp210165
         '()
         __tmp210164
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args209818%_
        (apply make-instance gxc#!primitive-lambda::t _%$args209818%_)))
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
      (let ((__tmp210167 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp210166 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp210167
         '()
         __tmp210166
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args209815%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args209815%_)))
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
      (lambda (_%self209802%_)
        (let ((_%self209805%_ _%self209802%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self209805%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self209665%_ _%klass209666%_)
        (let ((_%self209669%_ _%self209665%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self209669%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209669%_
             _%klass209666%_
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
      (lambda (_%self209355%_
               _%id209356%_
               _%super209357%_
               _%slots209358%_
               _%ctor-method209359%_
               _%struct?209360%_
               _%final?209361%_
               _%system?209362%_
               _%metaclass209363%_)
        (let ((_%self209366%_ _%self209355%_))
          (let _%lp209377%_ ((_%rest209379%_ _%super209357%_))
            (let* ((_%rest209380209388%_ _%rest209379%_)
                   (_%else209382209396%_ (lambda () '#!void))
                   (_%K209384209402%_
                    (lambda (_%rest209399%_ _%super-id209400%_)
                      (if (let ((__tmp210168
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id209356%_ '()))
                                  _%super-id209400%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp210168 '8 '#f '#f))
                          (let ((__tmp210169
                                 (cons '!class (cons _%id209356%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp210169
                             _%super-id209400%_))
                          '#!void)
                      (_%lp209377%_ _%rest209399%_))))
              (if (pair? _%rest209380209388%_)
                  (let ((_%hd209385209405%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest209380209388%_)))
                        (_%tl209386209407%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest209380209388%_))))
                    (let* ((_%super-id209410%_ _%hd209385209405%_)
                           (_%rest209412%_ _%tl209386209407%_))
                      (_%K209384209402%_ _%rest209412%_ _%super-id209410%_)))
                  '#!void)))
          (let* ((_%ctor-method209463%_
                  (let ((_%$e209414%_ _%ctor-method209359%_))
                    (if _%$e209414%_
                        _%$e209414%_
                        (let _%lp209417%_ ((_%rest209419%_ _%super209357%_)
                                           (_%method209420%_ '#f))
                          (let* ((_%rest209421209429%_ _%rest209419%_)
                                 (_%else209423209437%_
                                  (lambda () _%method209420%_))
                                 (_%K209425209451%_
                                  (lambda (_%rest209440%_ _%super-id209441%_)
                                    (let* ((_%klass209443%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id209356%_ '()))
                                             _%super-id209441%_))
                                           (_%$e209445%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass209443%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e209445%_
                                          ((lambda (_%ctor-method209448%_)
                                             (if _%method209420%_
                                                 (if (eq? _%ctor-method209448%_
                                                          _%method209420%_)
                                                     (_%lp209417%_
                                                      _%rest209440%_
                                                      _%ctor-method209448%_)
                                                     (let ((__tmp210170
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id209356%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp210170
                _%method209420%_
                _%ctor-method209448%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp209417%_
                                                  _%rest209440%_
                                                  _%ctor-method209448%_)))
                                           _%$e209445%_)
                                          (_%lp209417%_
                                           _%rest209440%_
                                           _%method209420%_))))))
                            (if (pair? _%rest209421209429%_)
                                (let ((_%hd209426209454%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest209421209429%_)))
                                      (_%tl209427209456%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest209421209429%_))))
                                  (let* ((_%super-id209459%_
                                          _%hd209426209454%_)
                                         (_%rest209461%_ _%tl209427209456%_))
                                    (_%K209425209451%_
                                     _%rest209461%_
                                     _%super-id209459%_)))
                                (_%else209423209437%_)))))))
                 (_g210171_
                  (let ((__tmp210175
                         (lambda (_%klass-id209465%_)
                           (cons _%klass-id209465%_
                                 (let ((__tmp210176
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id209356%_ '()))
                                         _%klass-id209465%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp210176
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp210173
                         (lambda (_%klass-id209467%_)
                           (let ((__tmp210174
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id209356%_ '()))
                                   _%klass-id209467%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp210174
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp210175
                     __tmp210173
                     eq?
                     identity
                     '()
                     _%super209357%_))))
            (begin
              (let ((_g210172_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g210171_)
                           (##values-length _g210171_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g210172_ 2)))
                    (error "Context expects 2 values" _g210172_)))
              (let ((_%precedence-list209469%_
                     (let () (declare (not safe)) (##values-ref _g210171_ 0)))
                    (_%base-struct209470%_
                     (let () (declare (not safe)) (##values-ref _g210171_ 1))))
                (let* ((_%precedence-list209514%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id209356%_ '(t object class)))
                            _%precedence-list209469%_
                            (if (memq 'object::t _%precedence-list209469%_)
                                _%precedence-list209469%_
                                (if _%system?209362%_
                                    (if (memq 't::t _%precedence-list209469%_)
                                        _%precedence-list209469%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list209469%_
                                           '(t::t))))
                                    (let _%loop209476%_ ((_%tail209478%_
                                                          _%precedence-list209469%_)
                                                         (_%head209479%_ '()))
                                      (let* ((_%tail209480209488%_
                                              _%tail209478%_)
                                             (_%else209482209496%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (foldl__0
                                                   cons
                                                   '(object::t t::t)
                                                   _%head209479%_))))
                                             (_%K209484209502%_
                                              (lambda (_%rest209499%_
                                                       _%hd209500%_)
                                                (if (eq? _%hd209500%_ 't::t)
                                                    (let ((__tmp210177
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail209478%_)))
              (declare (not safe))
              (foldl__0 cons __tmp210177 _%head209479%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop209476%_
                                                     _%rest209499%_
                                                     (cons _%hd209500%_
                                                           _%head209479%_))))))
                                        (if (pair? _%tail209480209488%_)
                                            (let ((_%hd209485209505%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail209480209488%_)))
                                                  (_%tl209486209507%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail209480209488%_))))
                                              (let* ((_%hd209510%_
                                                      _%hd209485209505%_)
                                                     (_%rest209512%_
                                                      _%tl209486209507%_))
                                                (_%K209484209502%_
                                                 _%rest209512%_
                                                 _%hd209510%_)))
                                            (_%else209482209496%_))))))))
                       (_%fields209516%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id209356%_ '()))
                         _%base-struct209470%_
                         _%precedence-list209514%_
                         _%slots209358%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self209366%_
                     _%id209356%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self209366%_
                     _%super209357%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self209366%_
                     _%precedence-list209514%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self209366%_
                     _%slots209358%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self209366%_
                     _%fields209516%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self209366%_
                     _%ctor-method209463%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self209366%_
                     _%struct?209360%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self209366%_
                     _%final?209361%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self209366%_
                     _%metaclass209363%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self209519%_
               _%id209520%_
               _%super209521%_
               _%precedence-list209522%_
               _%slots209523%_
               _%fields209524%_
               _%constructor209525%_
               _%struct?209526%_
               _%final?209527%_
               _%system?209528%_
               _%metaclass209529%_
               _%methods209530%_)
        (let ((_%self209533%_ _%self209519%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209533%_
             _%id209520%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209533%_
             _%super209521%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209533%_
             _%precedence-list209522%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209533%_
             _%slots209523%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209533%_
             _%fields209524%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209533%_
             _%constructor209525%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209533%_
             _%struct?209526%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209533%_
             _%final?209527%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209533%_
             _%metaclass209529%_
             '10
             '#f
             '#f))
          (if _%methods209530%_
              (let ((__tmp210178
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods209530%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self209533%_
                 __tmp210178
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g210179_
        (let ((_g210180_ (let () (declare (not safe)) (##length _g210179_))))
          (cond ((let () (declare (not safe)) (##fx= _g210180_ 9))
                 (apply gxc#!class:::init!__0 _g210179_))
                ((let () (declare (not safe)) (##fx= _g210180_ 12))
                 (apply gxc#!class:::init!__1 _g210179_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g210179_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where209207%_
               _%base-struct209208%_
               _%precedence-list209209%_
               _%direct-slots209210%_)
        (let* ((_%base-fields209212%_
                (if _%base-struct209208%_
                    (let ((__tmp210181
                           (gxc#optimizer-resolve-class
                            _%where209207%_
                            _%base-struct209208%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp210181 '5 '#f '#f))
                    '()))
               (_%r-fields209214%_ (reverse _%base-fields209212%_))
               (_%seen-slots209222%_
                (let ((_%tab209216%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g209217209219%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab209216%_ _%g209217209219%_ '#t)))
                   _%base-fields209212%_)
                  _%tab209216%_))
               (_%process-slot209226%_
                (lambda (_%slot209224%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots209222%_ _%slot209224%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots209222%_
                           _%slot209224%_
                           '#t))
                        (set! _%r-fields209214%_
                              (cons _%slot209224%_ _%r-fields209214%_)))))))
          (for-each
           (lambda (_%mixin209229%_)
             (let ((_%klass209231%_
                    (gxc#optimizer-resolve-class
                     _%where209207%_
                     _%mixin209229%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass209231%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot209226%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass209231%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list209209%_)
          (for-each _%process-slot209226%_ _%direct-slots209210%_)
          (let () (declare (not safe)) (##reverse _%r-fields209214%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass209166%_ _%slot209167%_)
        (let _%lp209169%_ ((_%rest209171%_
                            (##structure-ref
                             _%klass209166%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset209172%_ '1))
          (let* ((_%rest209173209181%_ _%rest209171%_)
                 (_%else209175209189%_
                  (lambda ()
                    (let ((__tmp210183
                           (##structure-ref
                            _%klass209166%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp210182
                           (##structure-ref
                            _%klass209166%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp210183
                       __tmp210182
                       _%slot209167%_))))
                 (_%K209177209195%_
                  (lambda (_%rest209192%_ _%s209193%_)
                    (if (eq? _%s209193%_ _%slot209167%_)
                        _%offset209172%_
                        (_%lp209169%_
                         _%rest209192%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset209172%_ '1)))))))
            (if (pair? _%rest209173209181%_)
                (let ((_%hd209178209198%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest209173209181%_)))
                      (_%tl209179209200%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest209173209181%_))))
                  (let* ((_%s209203%_ _%hd209178209198%_)
                         (_%rest209205%_ _%tl209179209200%_))
                    (_%K209177209195%_ _%rest209205%_ _%s209203%_)))
                (_%else209175209189%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass209124%_ _%slot209125%_)
        (if (gxc#!class-struct-slot? _%klass209124%_ _%slot209125%_)
            _%klass209124%_
            (let _%lp209127%_ ((_%rest209129%_
                                (##structure-ref
                                 _%klass209124%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest209130209138%_ _%rest209129%_)
                     (_%else209132209146%_ (lambda () '#f))
                     (_%K209134209154%_
                      (lambda (_%rest209149%_ _%super209150%_)
                        (let ((_%super-class209152%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass209124%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot209125%_ '())))
                                _%super209150%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class209152%_
                               _%slot209125%_)
                              _%super-class209152%_
                              (_%lp209127%_ _%rest209149%_))))))
                (if (pair? _%rest209130209138%_)
                    (let ((_%hd209135209157%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest209130209138%_)))
                          (_%tl209136209159%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest209130209138%_))))
                      (let* ((_%super209162%_ _%hd209135209157%_)
                             (_%rest209164%_ _%tl209136209159%_))
                        (_%K209134209154%_ _%rest209164%_ _%super209162%_)))
                    (_%else209132209146%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass209121%_ _%slot209122%_)
        (if (##structure-ref _%klass209121%_ '7 gxc#!class::t '#f)
            (memq _%slot209122%_
                  (##structure-ref _%klass209121%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self209106%_ _%id209107%_)
        (let ((_%self209110%_ _%self209106%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209110%_
             _%id209107%_
             '1
             '#f
             '#f))
          (let ((__tmp210184
                 (let ((__obj210116
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
                      __obj210116
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210116
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210116
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj210116)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209110%_
             __tmp210184
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self208969%_ _%id208970%_)
        (let ((_%self208973%_ _%self208969%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208973%_
             _%id208970%_
             '1
             '#f
             '#f))
          (let ((__tmp210185
                 (let ((__obj210117
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
                      __obj210117
                      _%id208970%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210117
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj210117)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208973%_
             __tmp210185
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
      (lambda (_%self208830%_ _%id208831%_ _%slot208832%_ _%checked?208833%_)
        (let ((_%self208836%_ _%self208830%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208836%_
             _%id208831%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208836%_
             _%slot208832%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208836%_
             _%checked?208833%_
             '4
             '#f
             '#f))
          (let ((__tmp210186
                 (let ((__obj210118
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
                     (##unchecked-structure-set! __obj210118 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210118
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp210187 (cons _%id208831%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210118
                      __tmp210187
                      '3
                      '#f
                      '#f))
                   __obj210118)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208836%_
             __tmp210186
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self208691%_ _%id208692%_ _%slot208693%_ _%checked?208694%_)
        (let ((_%self208697%_ _%self208691%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208697%_
             _%id208692%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208697%_
             _%slot208693%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208697%_
             _%checked?208694%_
             '4
             '#f
             '#f))
          (let ((__tmp210188
                 (let ((__obj210119
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
                      __obj210119
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210119
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp210189 (cons _%id208692%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210119
                      __tmp210189
                      '3
                      '#f
                      '#f))
                   __obj210119)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208697%_
             __tmp210188
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords208535%_
               _%signature208532208536%_
               _%self208537%_
               _%arity208538%_
               _%dispatch208539%_)
        (let* ((_%signature208541%_
                (if (eq? _%signature208532208536%_ absent-value)
                    '#f
                    _%signature208532208536%_))
               (_%self208544%_ _%self208537%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self208544%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208544%_
             _%arity208538%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208544%_
             _%dispatch208539%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208544%_
             _%signature208541%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords208559%_ . _%args208560%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords208559%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords208559%_
                  'signature:
                  absent-value))
               _%args208560%_)))
    (define gxc#!lambda:::init!
      (lambda _%args208533208566%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args208533208566%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords208376%_
               _%signature208373208377%_
               _%self208378%_
               _%clauses208379%_)
        (let* ((_%signature208381%_
                (if (eq? _%signature208373208377%_ absent-value)
                    '#f
                    _%signature208373208377%_))
               (_%self208384%_ _%self208378%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self208384%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208384%_
             _%signature208381%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208384%_
             _%clauses208379%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords208399%_ . _%args208400%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords208399%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords208399%_
                  'signature:
                  absent-value))
               _%args208400%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args208374208406%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args208374208406%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self208234%_ _%tab208235%_ _%dispatch208236%_)
        (let ((_%self208239%_ _%self208234%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self208239%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208239%_
             _%tab208235%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208239%_
             _%dispatch208236%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self208096%_ _%keys208097%_ _%main208098%_)
        (let ((_%self208101%_ _%self208096%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self208101%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208101%_
             _%keys208097%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208101%_
             _%main208098%_
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
      (lambda (_%self207715%_ _%id207716%_)
        (let ((_%self207719%_ _%self207715%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207719%_
             _%id207716%_
             '1
             '#f
             '#f))
          (let ((__tmp210190
                 (let ((__obj210120
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
                      __obj210120
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210120
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210120
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj210120)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207719%_
             __tmp210190
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
      (lambda (_%klass207585%_)
        (let ((_%$e207587%_
               (##structure-ref _%klass207585%_ '11 gxc#!class::t '#f)))
          (if _%$e207587%_
              _%$e207587%_
              (let ((_%tab207591%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass207585%_
                 _%tab207591%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab207591%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass207577%_ _%method207578%_)
        (let ((_%tab207579207581%_
               (##structure-ref _%klass207577%_ '11 gxc#!class::t '#f)))
          (if _%tab207579207581%_
              (let ((_%tab207583%_ _%tab207579207581%_))
                (declare (not safe))
                (hash-get _%tab207583%_ _%method207578%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a207562%_ _%type-b207563%_)
        (if _%type-a207562%_
            (if _%type-b207563%_
                (let ((_%$e207565%_ (eq? _%type-a207562%_ _%type-b207563%_)))
                  (if _%$e207565%_
                      _%$e207565%_
                      (let ((_%$e207568%_
                             (eq? (##structure-ref
                                   _%type-b207563%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e207568%_
                            _%$e207568%_
                            (let ((_%$e207571%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a207562%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b207563%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e207571%_
                                  _%$e207571%_
                                  (let ((_%$e207574%_
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-instance-of?
                                                _%type-a207562%_
                                                'gxc#!class::t))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-instance-of?
                                                    _%type-b207563%_
                                                    'gxc#!class::t))
                                                 (gxc#!class-subclass?
                                                  _%type-a207562%_
                                                  _%type-b207563%_)
                                                 '#f)
                                             '#f)))
                                    (if _%$e207574%_
                                        _%$e207574%_
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%type-a207562%_
                                               'gxc#!interface::t))
                                            (eq? (##structure-ref
                                                  _%type-b207563%_
                                                  '1
                                                  gxc#!type::t
                                                  '#f)
                                                 'gerbil#interface-descriptor::t)
                                            '#f)))))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a207513%_ _%klass-b207514%_)
        (let ((_%$e207516%_
               (eq? (##structure-ref _%klass-a207513%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b207514%_ '1 gxc#!type::t '#f))))
          (if _%$e207516%_
              _%$e207516%_
              (let ((_%klass-id-b207519%_
                     (##structure-ref _%klass-b207514%_ '1 gxc#!type::t '#f))
                    (_%precedence-list207520%_
                     (##structure-ref _%klass-a207513%_ '3 gxc#!class::t '#f)))
                (let _%loop207522%_ ((_%rest207524%_
                                      _%precedence-list207520%_))
                  (let* ((_%rest207525207533%_ _%rest207524%_)
                         (_%else207527207541%_ (lambda () '#f))
                         (_%K207529207550%_
                          (lambda (_%rest207544%_ _%klass-name207545%_)
                            (let ((_%$e207547%_
                                   (eq? (let ((__tmp210191
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a207513%_
                                                            (cons _%klass-b207514%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name207545%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp210191
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b207519%_)))
                              (if _%$e207547%_
                                  _%$e207547%_
                                  (_%loop207522%_ _%rest207544%_))))))
                    (if (pair? _%rest207525207533%_)
                        (let ((_%hd207530207553%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest207525207533%_)))
                              (_%tl207531207555%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest207525207533%_))))
                          (let* ((_%klass-name207558%_ _%hd207530207553%_)
                                 (_%rest207560%_ _%tl207531207555%_))
                            (_%K207529207550%_
                             _%rest207560%_
                             _%klass-name207558%_)))
                        (_%else207527207541%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type207511%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type207511%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type207511%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc207500%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc207500%_ 'gxc#!procedure::t))
            (let ((_%proc207503%_ _%proc207500%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc207503%_ '2 '#f '#f))
                  (let ((__tmp210192
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc207503%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp210192 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@382.11-382.15"
               'contract:
               '!procedure?
               'value:
               _%proc207500%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym207482%_ _%type207483%_ _%local?207484%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type207483%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym207482%_
                     _%type207483%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym207482%_ '" " _%type207483%_))
        (let ((_%table207486%_
               (if _%local?207484%_
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
          (hash-put! _%table207486%_ _%sym207482%_ _%type207483%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym207491%_ _%type207492%_)
        (let ((_%local?207494%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym207491%_
           _%type207492%_
           _%local?207494%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g210193_
        (let ((_g210194_ (let () (declare (not safe)) (##length _g210193_))))
          (cond ((let () (declare (not safe)) (##fx= _g210194_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g210193_))
                ((let () (declare (not safe)) (##fx= _g210194_ 3))
                 (apply gxc#optimizer-declare-type!__% _g210193_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g210193_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym207476%_ _%type207477%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type207477%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym207476%_
                     _%type207477%_)))
        (let ((_%table207479%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp210195
                 (let () (declare (not safe)) (struct->list _%type207477%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym207476%_ '" " __tmp210195))
          (let ()
            (declare (not safe))
            (hash-put! _%table207479%_ _%sym207476%_ _%type207477%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table207479%_ _%type207477%_ _%sym207476%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym207471%_ _%type207472%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type207472%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym207471%_
                     _%type207472%_)))
        (let ((_%table207474%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table207474%_ _%sym207471%_))
              '#!void
              (begin
                (let ((__tmp210196
                       (let ()
                         (declare (not safe))
                         (struct->list _%type207472%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym207471%_
                   '" "
                   __tmp210196))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table207474%_ _%sym207471%_ _%type207472%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table207474%_
                   _%type207472%_
                   _%sym207471%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym207469%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym207469%_))
        (let ((__tmp210197
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp210197 _%sym207469%_))
        (let ((__tmp210198
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp210198 _%sym207469%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t207437%_
               _%method207438%_
               _%sym207439%_
               _%rebind?207440%_)
        (let ((__tmp210199
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp210199 _%sym207439%_ '#t))
        (let ((_%klass207442%_ (gxc#optimizer-lookup-class _%type-t207437%_)))
          (if _%klass207442%_
              (let* ((_%vtab207444%_ (gxc#!class-method-table _%klass207442%_))
                     (_%$e207446%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab207444%_ _%method207438%_))))
                (if _%$e207446%_
                    ((lambda (_%existing207449%_)
                       (if _%rebind?207440%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t207437%_
                                '" "
                                _%method207438%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab207444%_
                                _%method207438%_
                                _%sym207439%_)))
                           (if (eq? _%existing207449%_ _%sym207439%_)
                               '#!void
                               (let ((__tmp210200
                                      (cons 'bind-method!
                                            (cons _%type-t207437%_
                                                  (cons _%method207438%_
                                                        (cons _%sym207439%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp210200
                                  _%method207438%_)))))
                     _%$e207446%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t207437%_
                         '" "
                         _%method207438%_
                         '" => "
                         _%sym207439%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab207444%_
                         _%method207438%_
                         _%sym207439%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t207437%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t207458%_ _%method207459%_ _%sym207460%_)
        (let ((_%rebind?207462%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t207458%_
           _%method207459%_
           _%sym207460%_
           _%rebind?207462%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g210201_
        (let ((_g210202_ (let () (declare (not safe)) (##length _g210201_))))
          (cond ((let () (declare (not safe)) (##fx= _g210202_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g210201_))
                ((let () (declare (not safe)) (##fx= _g210202_ 4))
                 (apply gxc#optimizer-declare-method!__% _g210201_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g210201_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym207423%_)
        (let ((_%$e207425%_
               (let ((__tmp210203
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym207423%_ __tmp210203))))
          (if _%$e207425%_
              _%$e207425%_
              (let ((_%$e207433%_
                     (let ((_%ht207427207429%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht207427207429%_
                           (let ((_%ht207431%_ _%ht207427207429%_))
                             (declare (not safe))
                             (hash-get _%ht207431%_ _%sym207423%_))
                           '#f))))
                (if _%$e207433%_
                    _%$e207433%_
                    (let ((__tmp210204
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp210204 _%sym207423%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym207416%_)
        (let ((_%type207417207419%_ (gxc#optimizer-lookup-type _%sym207416%_)))
          (if _%type207417207419%_
              (let ((_%type207421%_ _%type207417207419%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type207421%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type207421%_ '1 '#f '#f)))
                    _%type207421%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym207412%_)
        (let ((_%table207414%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table207414%_ _%sym207412%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where207397%_ _%sym207398%_)
        (let ((_%$e207401%_ (gxc#optimizer-lookup-class _%sym207398%_)))
          (if _%$e207401%_
              ((lambda (_%g207403207405%_)
                 (let ((_%val207408%_ _%g207403207405%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val207408%_
                          'gxc#!class::t))
                       _%val207408%_
                       (begin
                         (raise-contract-violation-error
                          '"contract violation"
                          'context:
                          'gerbil/compiler/optimize-base
                          'contract:
                          '(!class? val)
                          'value:
                          _%val207408%_)
                         '#!void))))
               _%$e207401%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where207397%_
                   _%sym207398%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass207395%_)
        (let ((__tmp210205
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp210205 _%klass207395%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t207392%_ _%method207393%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t207392%_)
         _%method207393%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym207390%_)
        (let ((__tmp210206
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp210206 _%sym207390%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e206865%_
                  (lambda (_%t207331%_)
                    (if (symbol? _%t207331%_)
                        (_%type-e206865%_
                         (gxc#optimizer-lookup-type _%t207331%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t207331%_
                               'gxc#!lambda::t))
                            (let* ((_%t207335%_ _%t207331%_)
                                   (_%t207339%_ _%t207335%_))
                              (_%__lambda-type206991%_ _%t207339%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t207331%_
                                   'gxc#!kw-lambda::t))
                                (let* ((_%t207351%_ _%t207331%_)
                                       (_%t207355%_ _%t207351%_))
                                  (_%__kw-lambda-type207114%_ _%t207355%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t207331%_
                                       'gxc#!kw-lambda-primary::t))
                                    (let* ((_%t207366%_ _%t207331%_)
                                           (_%t207370%_ _%t207366%_))
                                      (_%__kw-lambda-primary-type207237%_
                                       _%t207370%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t207331%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t207381%_ _%t207331%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t207381%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp210207
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t207381%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp210207
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t207331%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t207331%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%__lambda-type206991%_
                  (lambda (_%t207319%_)
                    (let ((_%t207322%_ _%t207319%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t207322%_ '4 '#f '#f))
                          (_%type-e206865%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t207322%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t207322%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp210208
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t207322%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp210208
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%lambda-type206992%_
                  (lambda (_%t207307%_)
                    (let ((_%t207310%_ _%t207307%_))
                      (_%__lambda-type206991%_ _%t207310%_))))
                 (_%__kw-lambda-type207114%_
                  (lambda (_%t207295%_)
                    (let ((_%t207298%_ _%t207295%_))
                      (_%type-e206865%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t207298%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-type207115%_
                  (lambda (_%t207283%_)
                    (let ((_%t207286%_ _%t207283%_))
                      (_%__kw-lambda-type207114%_ _%t207286%_))))
                 (_%__kw-lambda-primary-type207237%_
                  (lambda (_%t207271%_)
                    (let ((_%t207274%_ _%t207271%_))
                      (_%type-e206865%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t207274%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type207238%_
                  (lambda (_%t207259%_)
                    (let ((_%t207262%_ _%t207259%_))
                      (_%__kw-lambda-primary-type207237%_ _%t207262%_)))))
          (let* ((_%ht1207240%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2207242%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result207244%_
                  (if _%ht1207240%_
                      (let () (declare (not safe)) (hash->list _%ht1207240%_))
                      '()))
                 (_%result207246%_
                  (if _%ht2207242%_
                      (let ((__tmp210209
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2207242%_))))
                        (declare (not safe))
                        (foldl__0 cons _%result207244%_ __tmp210209))
                      _%result207244%_)))
            (for-each
             (lambda (_%p207249%_)
               (let* ((_%t207251%_ (cdr _%p207249%_))
                      (_%tr207253%_ (_%type-e206865%_ _%t207251%_)))
                 (set-cdr! _%p207249%_ _%tr207253%_)))
             _%result207246%_)
            (list-sort
             (lambda (_%a207256%_ _%b207257%_)
               (let ((__tmp210211 (symbol->string (car _%a207256%_)))
                     (__tmp210210 (symbol->string (car _%b207257%_))))
                 (declare (not safe))
                 (##string<? __tmp210211 __tmp210210)))
             _%result207246%_)))))))
