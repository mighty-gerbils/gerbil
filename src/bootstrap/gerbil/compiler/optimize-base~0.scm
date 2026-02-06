(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1770342550)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp199117 (list)) (__tmp199116 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp199117
         '(type classes ssxi methods)
         __tmp199116
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args199036%_
        (apply make-instance gxc#optimizer-info::t _%$args199036%_)))
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
      (lambda (_%self199023%_)
        (let ((_%self199026%_ _%self199023%_))
          (if (let ((__tmp199118
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self199026%_))))
                (declare (not safe))
                (##fx< '4 __tmp199118))
              (begin
                (let ((__tmp199119
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self199026%_
                   __tmp199119
                   '1
                   '#f
                   '#f))
                (let ((__tmp199120
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self199026%_
                   __tmp199120
                   '2
                   '#f
                   '#f))
                (let ((__tmp199121
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self199026%_
                   __tmp199121
                   '3
                   '#f
                   '#f))
                (let ((__tmp199122
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self199026%_
                   __tmp199122
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp199123
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self199026%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self199026%_
                       '4
                       __tmp199123))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp199125 (list)) (__tmp199124 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp199125
         '(id)
         __tmp199124
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args198898%_
        (apply make-instance gxc#!type::t _%$args198898%_)))
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
      (let ((__tmp199127 (list gxc#!type::t))
            (__tmp199126 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp199127
         '()
         __tmp199126
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args198895%_
        (apply make-instance gxc#!abort::t _%$args198895%_)))
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
      (let ((__tmp199129 (list gxc#!type::t))
            (__tmp199128 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp199129
         '()
         __tmp199128
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args198892%_
        (apply make-instance gxc#!alias::t _%$args198892%_)))
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
      (let ((__tmp199131 (list)) (__tmp199130 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp199131
         '(return effect arguments unchecked origin)
         __tmp199130
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args198889%_
        (apply make-instance gxc#!signature::t _%$args198889%_)))
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
      (let ((__tmp199133 (list gxc#!type::t))
            (__tmp199132 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp199133
         '(signature)
         __tmp199132
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
      (lambda (_%id198876%_ _%signature198877%_)
        (let ((_%signature198880%_ _%signature198877%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id198876%_ _%signature198880%_))))
    (define gxc#make-!procedure
      (lambda (_%id195729%_ _%signature195731%_)
        (if ((lambda (_%$obj195735%_)
               (or (not _%$obj195735%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj195735%_
                      'gxc#!signature::t))))
             _%signature195731%_)
            (let ((_%signature195742%_ _%signature195731%_))
              (gxc#__make-!procedure _%id195729%_ _%signature195742%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature195731%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj198855%_ _%signature198856%_)
        (let* ((_%$obj198859%_ _%$obj198855%_)
               (_%signature198867%_ _%signature198856%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj198859%_
           _%signature198867%_
           '2
           '#f
           '#f))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj195872%_ _%signature195874%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj195872%_ 'gxc#!procedure::t))
            (let ((_%$obj195878%_ _%$obj195872%_))
              (if ((lambda (_%$obj195887%_)
                     (or (not _%$obj195887%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj195887%_
                            'gxc#!signature::t))))
                   _%signature195874%_)
                  (let ((_%signature195894%_ _%signature195874%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj195878%_
                     _%signature195894%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature195874%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj195872%_)
              '#!void))))
    (define gxc#!class-meta::t
      (let ((__tmp199135 (list gxc#!type::t))
            (__tmp199134 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp199135
         '(class)
         __tmp199134
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args198852%_
        (apply make-instance gxc#!class-meta::t _%$args198852%_)))
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
      (let ((__tmp199137 (list gxc#!type::t))
            (__tmp199136 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class::t
         '!class
         __tmp199137
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp199136
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args198849%_
        (apply make-instance gxc#!class::t _%$args198849%_)))
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
      (let ((__tmp199139 (list gxc#!procedure::t))
            (__tmp199138 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp199139
         '()
         __tmp199138
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args198846%_
        (apply make-instance gxc#!predicate::t _%$args198846%_)))
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
      (let ((__tmp199141 (list gxc#!procedure::t))
            (__tmp199140 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp199141
         '()
         __tmp199140
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args198843%_
        (apply make-instance gxc#!constructor::t _%$args198843%_)))
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
      (let ((__tmp199143 (list gxc#!procedure::t))
            (__tmp199142 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp199143
         '(slot checked?)
         __tmp199142
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args198840%_
        (apply make-instance gxc#!accessor::t _%$args198840%_)))
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
      (let ((__tmp199145 (list gxc#!procedure::t))
            (__tmp199144 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp199145
         '(slot checked?)
         __tmp199144
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args198837%_
        (apply make-instance gxc#!mutator::t _%$args198837%_)))
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
      (let ((__tmp199147 (list gxc#!type::t))
            (__tmp199146 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp199147
         '(methods)
         __tmp199146
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args198834%_
        (apply make-instance gxc#!interface::t _%$args198834%_)))
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
      (let ((__tmp199149 (list gxc#!procedure::t))
            (__tmp199148 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp199149
         '(arity dispatch inline inline-typedecl)
         __tmp199148
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args198831%_
        (apply make-instance gxc#!lambda::t _%$args198831%_)))
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
      (let ((__tmp199151 (list gxc#!procedure::t))
            (__tmp199150 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp199151
         '(clauses)
         __tmp199150
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args198828%_
        (apply make-instance gxc#!case-lambda::t _%$args198828%_)))
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
      (let ((__tmp199153 (list gxc#!procedure::t))
            (__tmp199152 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp199153
         '(table dispatch)
         __tmp199152
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args198825%_
        (apply make-instance gxc#!kw-lambda::t _%$args198825%_)))
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
      (let ((__tmp199155 (list gxc#!procedure::t))
            (__tmp199154 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp199155
         '(keys main)
         __tmp199154
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args198822%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args198822%_)))
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
      (let ((__tmp199156 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp199156
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args198819%_
        (apply make-instance gxc#!primitive::t _%$args198819%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp199158 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp199157 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp199158
         '()
         __tmp199157
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args198816%_
        (apply make-instance gxc#!primitive-predicate::t _%$args198816%_)))
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
      (let ((__tmp199160 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp199159 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp199160
         '()
         __tmp199159
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args198813%_
        (apply make-instance gxc#!primitive-lambda::t _%$args198813%_)))
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
      (let ((__tmp199162 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp199161 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp199162
         '()
         __tmp199161
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args198810%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args198810%_)))
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
      (lambda (_%self198797%_)
        (let ((_%self198800%_ _%self198797%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self198800%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self198660%_ _%klass198661%_)
        (let ((_%self198664%_ _%self198660%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self198664%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self198664%_
             _%klass198661%_
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
      (lambda (_%self198350%_
               _%id198351%_
               _%super198352%_
               _%slots198353%_
               _%ctor-method198354%_
               _%struct?198355%_
               _%final?198356%_
               _%system?198357%_
               _%metaclass198358%_)
        (let ((_%self198361%_ _%self198350%_))
          (let _%lp198372%_ ((_%rest198374%_ _%super198352%_))
            (let* ((_%rest198375198383%_ _%rest198374%_)
                   (_%else198377198391%_ (lambda () '#!void))
                   (_%K198379198397%_
                    (lambda (_%rest198394%_ _%super-id198395%_)
                      (if (let ((__tmp199163
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id198351%_ '()))
                                  _%super-id198395%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp199163 '8 '#f '#f))
                          (let ((__tmp199164
                                 (cons '!class (cons _%id198351%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp199164
                             _%super-id198395%_))
                          '#!void)
                      (_%lp198372%_ _%rest198394%_))))
              (if (pair? _%rest198375198383%_)
                  (let ((_%hd198380198400%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest198375198383%_)))
                        (_%tl198381198402%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest198375198383%_))))
                    (let* ((_%super-id198405%_ _%hd198380198400%_)
                           (_%rest198407%_ _%tl198381198402%_))
                      (_%K198379198397%_ _%rest198407%_ _%super-id198405%_)))
                  '#!void)))
          (let* ((_%ctor-method198458%_
                  (let ((_%$e198409%_ _%ctor-method198354%_))
                    (if _%$e198409%_
                        _%$e198409%_
                        (let _%lp198412%_ ((_%rest198414%_ _%super198352%_)
                                           (_%method198415%_ '#f))
                          (let* ((_%rest198416198424%_ _%rest198414%_)
                                 (_%else198418198432%_
                                  (lambda () _%method198415%_))
                                 (_%K198420198446%_
                                  (lambda (_%rest198435%_ _%super-id198436%_)
                                    (let* ((_%klass198438%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id198351%_ '()))
                                             _%super-id198436%_))
                                           (_%$e198440%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass198438%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e198440%_
                                          ((lambda (_%ctor-method198443%_)
                                             (if _%method198415%_
                                                 (if (eq? _%ctor-method198443%_
                                                          _%method198415%_)
                                                     (_%lp198412%_
                                                      _%rest198435%_
                                                      _%ctor-method198443%_)
                                                     (let ((__tmp199165
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id198351%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp199165
                _%method198415%_
                _%ctor-method198443%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp198412%_
                                                  _%rest198435%_
                                                  _%ctor-method198443%_)))
                                           _%$e198440%_)
                                          (_%lp198412%_
                                           _%rest198435%_
                                           _%method198415%_))))))
                            (if (pair? _%rest198416198424%_)
                                (let ((_%hd198421198449%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest198416198424%_)))
                                      (_%tl198422198451%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest198416198424%_))))
                                  (let* ((_%super-id198454%_
                                          _%hd198421198449%_)
                                         (_%rest198456%_ _%tl198422198451%_))
                                    (_%K198420198446%_
                                     _%rest198456%_
                                     _%super-id198454%_)))
                                (_%else198418198432%_)))))))
                 (_g199166_
                  (let ((__tmp199170
                         (lambda (_%klass-id198460%_)
                           (cons _%klass-id198460%_
                                 (let ((__tmp199171
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id198351%_ '()))
                                         _%klass-id198460%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp199171
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp199168
                         (lambda (_%klass-id198462%_)
                           (let ((__tmp199169
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id198351%_ '()))
                                   _%klass-id198462%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp199169
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp199170
                     __tmp199168
                     eq?
                     identity
                     '()
                     _%super198352%_))))
            (begin
              (let ((_g199167_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g199166_)
                           (##values-length _g199166_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g199167_ 2)))
                    (error "Context expects 2 values" _g199167_)))
              (let ((_%precedence-list198464%_
                     (let () (declare (not safe)) (##values-ref _g199166_ 0)))
                    (_%base-struct198465%_
                     (let () (declare (not safe)) (##values-ref _g199166_ 1))))
                (let* ((_%precedence-list198509%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id198351%_ '(t object class)))
                            _%precedence-list198464%_
                            (if (memq 'object::t _%precedence-list198464%_)
                                _%precedence-list198464%_
                                (if _%system?198357%_
                                    (if (memq 't::t _%precedence-list198464%_)
                                        _%precedence-list198464%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list198464%_
                                           '(t::t))))
                                    (let _%loop198471%_ ((_%tail198473%_
                                                          _%precedence-list198464%_)
                                                         (_%head198474%_ '()))
                                      (let* ((_%tail198475198483%_
                                              _%tail198473%_)
                                             (_%else198477198491%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head198474%_))))
                                             (_%K198479198497%_
                                              (lambda (_%rest198494%_
                                                       _%hd198495%_)
                                                (if (eq? _%hd198495%_ 't::t)
                                                    (let ((__tmp199172
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail198473%_)))
              (declare (not safe))
              (__foldl1 cons __tmp199172 _%head198474%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop198471%_
                                                     _%rest198494%_
                                                     (cons _%hd198495%_
                                                           _%head198474%_))))))
                                        (if (pair? _%tail198475198483%_)
                                            (let ((_%hd198480198500%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail198475198483%_)))
                                                  (_%tl198481198502%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail198475198483%_))))
                                              (let* ((_%hd198505%_
                                                      _%hd198480198500%_)
                                                     (_%rest198507%_
                                                      _%tl198481198502%_))
                                                (_%K198479198497%_
                                                 _%rest198507%_
                                                 _%hd198505%_)))
                                            (_%else198477198491%_))))))))
                       (_%fields198511%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id198351%_ '()))
                         _%base-struct198465%_
                         _%precedence-list198509%_
                         _%slots198353%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self198361%_
                     _%id198351%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self198361%_
                     _%super198352%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self198361%_
                     _%precedence-list198509%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self198361%_
                     _%slots198353%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self198361%_
                     _%fields198511%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self198361%_
                     _%ctor-method198458%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self198361%_
                     _%struct?198355%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self198361%_
                     _%final?198356%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self198361%_
                     _%metaclass198358%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self198514%_
               _%id198515%_
               _%super198516%_
               _%precedence-list198517%_
               _%slots198518%_
               _%fields198519%_
               _%constructor198520%_
               _%struct?198521%_
               _%final?198522%_
               _%system?198523%_
               _%metaclass198524%_
               _%methods198525%_)
        (let ((_%self198528%_ _%self198514%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self198528%_
             _%id198515%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self198528%_
             _%super198516%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self198528%_
             _%precedence-list198517%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self198528%_
             _%slots198518%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self198528%_
             _%fields198519%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self198528%_
             _%constructor198520%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self198528%_
             _%struct?198521%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self198528%_
             _%final?198522%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self198528%_
             _%metaclass198524%_
             '10
             '#f
             '#f))
          (if _%methods198525%_
              (let ((__tmp199173
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods198525%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self198528%_
                 __tmp199173
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g199174_
        (let ((_g199175_ (let () (declare (not safe)) (##length _g199174_))))
          (cond ((let () (declare (not safe)) (##fx= _g199175_ 9))
                 (apply gxc#!class:::init!__0 _g199174_))
                ((let () (declare (not safe)) (##fx= _g199175_ 12))
                 (apply gxc#!class:::init!__1 _g199174_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g199174_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where198202%_
               _%base-struct198203%_
               _%precedence-list198204%_
               _%direct-slots198205%_)
        (let* ((_%base-fields198207%_
                (if _%base-struct198203%_
                    (let ((__tmp199176
                           (gxc#optimizer-resolve-class
                            _%where198202%_
                            _%base-struct198203%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp199176 '5 '#f '#f))
                    '()))
               (_%r-fields198209%_ (reverse _%base-fields198207%_))
               (_%seen-slots198217%_
                (let ((_%tab198211%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g198212198214%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab198211%_ _%g198212198214%_ '#t)))
                   _%base-fields198207%_)
                  _%tab198211%_))
               (_%process-slot198221%_
                (lambda (_%slot198219%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots198217%_ _%slot198219%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots198217%_
                           _%slot198219%_
                           '#t))
                        (set! _%r-fields198209%_
                              (cons _%slot198219%_ _%r-fields198209%_)))))))
          (for-each
           (lambda (_%mixin198224%_)
             (let ((_%klass198226%_
                    (gxc#optimizer-resolve-class
                     _%where198202%_
                     _%mixin198224%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass198226%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot198221%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass198226%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list198204%_)
          (for-each _%process-slot198221%_ _%direct-slots198205%_)
          (let () (declare (not safe)) (##reverse _%r-fields198209%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass198161%_ _%slot198162%_)
        (let _%lp198164%_ ((_%rest198166%_
                            (##structure-ref
                             _%klass198161%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset198167%_ '1))
          (let* ((_%rest198168198176%_ _%rest198166%_)
                 (_%else198170198184%_
                  (lambda ()
                    (let ((__tmp199178
                           (##structure-ref
                            _%klass198161%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp199177
                           (##structure-ref
                            _%klass198161%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp199178
                       __tmp199177
                       _%slot198162%_))))
                 (_%K198172198190%_
                  (lambda (_%rest198187%_ _%s198188%_)
                    (if (eq? _%s198188%_ _%slot198162%_)
                        _%offset198167%_
                        (_%lp198164%_
                         _%rest198187%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset198167%_ '1)))))))
            (if (pair? _%rest198168198176%_)
                (let ((_%hd198173198193%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest198168198176%_)))
                      (_%tl198174198195%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest198168198176%_))))
                  (let* ((_%s198198%_ _%hd198173198193%_)
                         (_%rest198200%_ _%tl198174198195%_))
                    (_%K198172198190%_ _%rest198200%_ _%s198198%_)))
                (_%else198170198184%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass198119%_ _%slot198120%_)
        (if (gxc#!class-struct-slot? _%klass198119%_ _%slot198120%_)
            _%klass198119%_
            (let _%lp198122%_ ((_%rest198124%_
                                (##structure-ref
                                 _%klass198119%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest198125198133%_ _%rest198124%_)
                     (_%else198127198141%_ (lambda () '#f))
                     (_%K198129198149%_
                      (lambda (_%rest198144%_ _%super198145%_)
                        (let ((_%super-class198147%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass198119%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot198120%_ '())))
                                _%super198145%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class198147%_
                               _%slot198120%_)
                              _%super-class198147%_
                              (_%lp198122%_ _%rest198144%_))))))
                (if (pair? _%rest198125198133%_)
                    (let ((_%hd198130198152%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest198125198133%_)))
                          (_%tl198131198154%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest198125198133%_))))
                      (let* ((_%super198157%_ _%hd198130198152%_)
                             (_%rest198159%_ _%tl198131198154%_))
                        (_%K198129198149%_ _%rest198159%_ _%super198157%_)))
                    (_%else198127198141%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass198116%_ _%slot198117%_)
        (if (##structure-ref _%klass198116%_ '7 gxc#!class::t '#f)
            (memq _%slot198117%_
                  (##structure-ref _%klass198116%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self198101%_ _%id198102%_)
        (let ((_%self198105%_ _%self198101%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self198105%_
             _%id198102%_
             '1
             '#f
             '#f))
          (let ((__tmp199179
                 (let ((__obj199111
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
                      __obj199111
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj199111
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj199111
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj199111)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self198105%_
             __tmp199179
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self197964%_ _%id197965%_)
        (let ((_%self197968%_ _%self197964%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self197968%_
             _%id197965%_
             '1
             '#f
             '#f))
          (let ((__tmp199180
                 (let ((__obj199112
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
                      __obj199112
                      _%id197965%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj199112
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj199112)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self197968%_
             __tmp199180
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
      (lambda (_%self197825%_ _%id197826%_ _%slot197827%_ _%checked?197828%_)
        (let ((_%self197831%_ _%self197825%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self197831%_
             _%id197826%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self197831%_
             _%slot197827%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self197831%_
             _%checked?197828%_
             '4
             '#f
             '#f))
          (let ((__tmp199181
                 (let ((__obj199113
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
                     (##unchecked-structure-set! __obj199113 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj199113
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp199182 (cons _%id197826%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj199113
                      __tmp199182
                      '3
                      '#f
                      '#f))
                   __obj199113)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self197831%_
             __tmp199181
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self197686%_ _%id197687%_ _%slot197688%_ _%checked?197689%_)
        (let ((_%self197692%_ _%self197686%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self197692%_
             _%id197687%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self197692%_
             _%slot197688%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self197692%_
             _%checked?197689%_
             '4
             '#f
             '#f))
          (let ((__tmp199183
                 (let ((__obj199114
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
                      __obj199114
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj199114
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp199184 (cons _%id197687%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj199114
                      __tmp199184
                      '3
                      '#f
                      '#f))
                   __obj199114)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self197692%_
             __tmp199183
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords197530%_
               _%signature197527197531%_
               _%self197532%_
               _%arity197533%_
               _%dispatch197534%_)
        (let* ((_%signature197536%_
                (if (eq? _%signature197527197531%_ absent-value)
                    '#f
                    _%signature197527197531%_))
               (_%self197539%_ _%self197532%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self197539%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self197539%_
             _%arity197533%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self197539%_
             _%dispatch197534%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self197539%_
             _%signature197536%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords197554%_ . _%args197555%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords197554%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords197554%_
                  'signature:
                  absent-value))
               _%args197555%_)))
    (define gxc#!lambda:::init!
      (lambda _%args197528197561%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args197528197561%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords197371%_
               _%signature197368197372%_
               _%self197373%_
               _%clauses197374%_)
        (let* ((_%signature197376%_
                (if (eq? _%signature197368197372%_ absent-value)
                    '#f
                    _%signature197368197372%_))
               (_%self197379%_ _%self197373%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self197379%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self197379%_
             _%signature197376%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self197379%_
             _%clauses197374%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords197394%_ . _%args197395%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords197394%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords197394%_
                  'signature:
                  absent-value))
               _%args197395%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args197369197401%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args197369197401%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self197229%_ _%tab197230%_ _%dispatch197231%_)
        (let ((_%self197234%_ _%self197229%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self197234%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self197234%_
             _%tab197230%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self197234%_
             _%dispatch197231%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self197091%_ _%keys197092%_ _%main197093%_)
        (let ((_%self197096%_ _%self197091%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self197096%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self197096%_
             _%keys197092%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self197096%_
             _%main197093%_
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
      (lambda (_%self196710%_ _%id196711%_)
        (let ((_%self196714%_ _%self196710%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self196714%_
             _%id196711%_
             '1
             '#f
             '#f))
          (let ((__tmp199185
                 (let ((__obj199115
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
                      __obj199115
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj199115
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj199115
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj199115)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self196714%_
             __tmp199185
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
      (lambda (_%klass196580%_)
        (let ((_%$e196582%_
               (##structure-ref _%klass196580%_ '11 gxc#!class::t '#f)))
          (if _%$e196582%_
              _%$e196582%_
              (let ((_%tab196586%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass196580%_
                 _%tab196586%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab196586%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass196572%_ _%method196573%_)
        (let ((_%tab196574196576%_
               (##structure-ref _%klass196572%_ '11 gxc#!class::t '#f)))
          (if _%tab196574196576%_
              (let ((_%tab196578%_ _%tab196574196576%_))
                (declare (not safe))
                (hash-get _%tab196578%_ _%method196573%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a196560%_ _%type-b196561%_)
        (if _%type-a196560%_
            (if _%type-b196561%_
                (let ((_%$e196563%_ (eq? _%type-a196560%_ _%type-b196561%_)))
                  (if _%$e196563%_
                      _%$e196563%_
                      (let ((_%$e196566%_
                             (eq? (##structure-ref
                                   _%type-b196561%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e196566%_
                            _%$e196566%_
                            (let ((_%$e196569%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a196560%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b196561%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e196569%_
                                  _%$e196569%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a196560%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b196561%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a196560%_
                                           _%type-b196561%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a196511%_ _%klass-b196512%_)
        (let ((_%$e196514%_
               (eq? (##structure-ref _%klass-a196511%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b196512%_ '1 gxc#!type::t '#f))))
          (if _%$e196514%_
              _%$e196514%_
              (let ((_%klass-id-b196517%_
                     (##structure-ref _%klass-b196512%_ '1 gxc#!type::t '#f))
                    (_%precedence-list196518%_
                     (##structure-ref _%klass-a196511%_ '3 gxc#!class::t '#f)))
                (let _%loop196520%_ ((_%rest196522%_
                                      _%precedence-list196518%_))
                  (let* ((_%rest196523196531%_ _%rest196522%_)
                         (_%else196525196539%_ (lambda () '#f))
                         (_%K196527196548%_
                          (lambda (_%rest196542%_ _%klass-name196543%_)
                            (let ((_%$e196545%_
                                   (eq? (let ((__tmp199186
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a196511%_
                                                            (cons _%klass-b196512%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name196543%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp199186
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b196517%_)))
                              (if _%$e196545%_
                                  _%$e196545%_
                                  (_%loop196520%_ _%rest196542%_))))))
                    (if (pair? _%rest196523196531%_)
                        (let ((_%hd196528196551%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest196523196531%_)))
                              (_%tl196529196553%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest196523196531%_))))
                          (let* ((_%klass-name196556%_ _%hd196528196551%_)
                                 (_%rest196558%_ _%tl196529196553%_))
                            (_%K196527196548%_
                             _%rest196558%_
                             _%klass-name196556%_)))
                        (_%else196525196539%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type196509%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type196509%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type196509%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc196498%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc196498%_ 'gxc#!procedure::t))
            (let ((_%proc196501%_ _%proc196498%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc196501%_ '2 '#f '#f))
                  (let ((__tmp199187
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc196501%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp199187 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@378.11-378.15"
               'contract:
               '!procedure?
               'value:
               _%proc196498%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym196480%_ _%type196481%_ _%local?196482%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type196481%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym196480%_
                     _%type196481%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym196480%_ '" " _%type196481%_))
        (let ((_%table196484%_
               (if _%local?196482%_
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
          (hash-put! _%table196484%_ _%sym196480%_ _%type196481%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym196489%_ _%type196490%_)
        (let ((_%local?196492%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym196489%_
           _%type196490%_
           _%local?196492%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g199188_
        (let ((_g199189_ (let () (declare (not safe)) (##length _g199188_))))
          (cond ((let () (declare (not safe)) (##fx= _g199189_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g199188_))
                ((let () (declare (not safe)) (##fx= _g199189_ 3))
                 (apply gxc#optimizer-declare-type!__% _g199188_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g199188_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym196474%_ _%type196475%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type196475%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym196474%_
                     _%type196475%_)))
        (let ((_%table196477%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp199190
                 (let () (declare (not safe)) (struct->list _%type196475%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym196474%_ '" " __tmp199190))
          (let ()
            (declare (not safe))
            (hash-put! _%table196477%_ _%sym196474%_ _%type196475%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table196477%_ _%type196475%_ _%sym196474%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym196469%_ _%type196470%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type196470%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym196469%_
                     _%type196470%_)))
        (let ((_%table196472%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table196472%_ _%sym196469%_))
              '#!void
              (begin
                (let ((__tmp199191
                       (let ()
                         (declare (not safe))
                         (struct->list _%type196470%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym196469%_
                   '" "
                   __tmp199191))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table196472%_ _%sym196469%_ _%type196470%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table196472%_
                   _%type196470%_
                   _%sym196469%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym196467%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym196467%_))
        (let ((__tmp199192
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp199192 _%sym196467%_))
        (let ((__tmp199193
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp199193 _%sym196467%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t196435%_
               _%method196436%_
               _%sym196437%_
               _%rebind?196438%_)
        (let ((__tmp199194
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp199194 _%sym196437%_ '#t))
        (let ((_%klass196440%_ (gxc#optimizer-lookup-class _%type-t196435%_)))
          (if _%klass196440%_
              (let* ((_%vtab196442%_ (gxc#!class-method-table _%klass196440%_))
                     (_%$e196444%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab196442%_ _%method196436%_))))
                (if _%$e196444%_
                    ((lambda (_%existing196447%_)
                       (if _%rebind?196438%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t196435%_
                                '" "
                                _%method196436%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab196442%_
                                _%method196436%_
                                _%sym196437%_)))
                           (if (eq? _%existing196447%_ _%sym196437%_)
                               '#!void
                               (let ((__tmp199195
                                      (cons 'bind-method!
                                            (cons _%type-t196435%_
                                                  (cons _%method196436%_
                                                        (cons _%sym196437%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp199195
                                  _%method196436%_)))))
                     _%$e196444%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t196435%_
                         '" "
                         _%method196436%_
                         '" => "
                         _%sym196437%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab196442%_
                         _%method196436%_
                         _%sym196437%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t196435%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t196456%_ _%method196457%_ _%sym196458%_)
        (let ((_%rebind?196460%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t196456%_
           _%method196457%_
           _%sym196458%_
           _%rebind?196460%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g199196_
        (let ((_g199197_ (let () (declare (not safe)) (##length _g199196_))))
          (cond ((let () (declare (not safe)) (##fx= _g199197_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g199196_))
                ((let () (declare (not safe)) (##fx= _g199197_ 4))
                 (apply gxc#optimizer-declare-method!__% _g199196_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g199196_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym196421%_)
        (let ((_%$e196423%_
               (let ((__tmp199198
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym196421%_ __tmp199198))))
          (if _%$e196423%_
              _%$e196423%_
              (let ((_%$e196431%_
                     (let ((_%ht196425196427%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht196425196427%_
                           (let ((_%ht196429%_ _%ht196425196427%_))
                             (declare (not safe))
                             (hash-get _%ht196429%_ _%sym196421%_))
                           '#f))))
                (if _%$e196431%_
                    _%$e196431%_
                    (let ((__tmp199199
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp199199 _%sym196421%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym196414%_)
        (let ((_%type196415196417%_ (gxc#optimizer-lookup-type _%sym196414%_)))
          (if _%type196415196417%_
              (let ((_%type196419%_ _%type196415196417%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type196419%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type196419%_ '1 '#f '#f)))
                    _%type196419%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym196410%_)
        (let ((_%table196412%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table196412%_ _%sym196410%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where196395%_ _%sym196396%_)
        (let ((_%$e196399%_ (gxc#optimizer-lookup-class _%sym196396%_)))
          (if _%$e196399%_
              ((lambda (_%g196401196403%_)
                 (let ((_%val196406%_ _%g196401196403%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val196406%_
                          'gxc#!class::t))
                       _%val196406%_
                       (begin
                         (raise-contract-violation-error
                          '"contract violation"
                          'context:
                          'gerbil/compiler/optimize-base
                          'contract:
                          '(!class? val)
                          'value:
                          _%val196406%_)
                         '#!void))))
               _%$e196399%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where196395%_
                   _%sym196396%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass196393%_)
        (let ((__tmp199200
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp199200 _%klass196393%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t196390%_ _%method196391%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t196390%_)
         _%method196391%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym196388%_)
        (let ((__tmp199201
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp199201 _%sym196388%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e195905%_
                  (lambda (_%t196371%_)
                    (if (symbol? _%t196371%_)
                        (_%type-e195905%_
                         (gxc#optimizer-lookup-type _%t196371%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t196371%_
                               'gxc#!lambda::t))
                            (_%__lambda-type196031%_ _%t196371%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t196371%_
                                   'gxc#!kw-lambda::t))
                                (_%__kw-lambda-type196154%_ _%t196371%_)
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t196371%_
                                       'gxc#!kw-lambda-primary::t))
                                    (_%__kw-lambda-primary-type196277%_
                                     _%t196371%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t196371%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t196378%_ _%t196371%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t196378%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp199202
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t196378%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp199202
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t196371%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t196371%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%__lambda-type196031%_
                  (lambda (_%t196359%_)
                    (let ((_%t196362%_ _%t196359%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t196362%_ '4 '#f '#f))
                          (_%type-e195905%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t196362%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t196362%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp199203
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t196362%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp199203
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%lambda-type196032%_
                  (lambda (_%t196347%_)
                    (let ((_%t196350%_ _%t196347%_))
                      (_%__lambda-type196031%_ _%t196350%_))))
                 (_%__kw-lambda-type196154%_
                  (lambda (_%t196335%_)
                    (let ((_%t196338%_ _%t196335%_))
                      (_%type-e195905%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t196338%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-type196155%_
                  (lambda (_%t196323%_)
                    (let ((_%t196326%_ _%t196323%_))
                      (_%__kw-lambda-type196154%_ _%t196326%_))))
                 (_%__kw-lambda-primary-type196277%_
                  (lambda (_%t196311%_)
                    (let ((_%t196314%_ _%t196311%_))
                      (_%type-e195905%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t196314%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type196278%_
                  (lambda (_%t196299%_)
                    (let ((_%t196302%_ _%t196299%_))
                      (_%__kw-lambda-primary-type196277%_ _%t196302%_)))))
          (let* ((_%ht1196280%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2196282%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result196284%_
                  (if _%ht1196280%_
                      (let () (declare (not safe)) (hash->list _%ht1196280%_))
                      '()))
                 (_%result196286%_
                  (if _%ht2196282%_
                      (let ((__tmp199204
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2196282%_))))
                        (declare (not safe))
                        (__foldl1 cons _%result196284%_ __tmp199204))
                      _%result196284%_)))
            (for-each
             (lambda (_%p196289%_)
               (let* ((_%t196291%_ (cdr _%p196289%_))
                      (_%tr196293%_ (_%type-e195905%_ _%t196291%_)))
                 (set-cdr! _%p196289%_ _%tr196293%_)))
             _%result196286%_)
            (list-sort
             (lambda (_%a196296%_ _%b196297%_)
               (let ((__tmp199206 (symbol->string (car _%a196296%_)))
                     (__tmp199205 (symbol->string (car _%b196297%_))))
                 (declare (not safe))
                 (##string<? __tmp199206 __tmp199205)))
             _%result196286%_)))))))
