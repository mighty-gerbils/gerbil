(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1770327924)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp176125 (list)) (__tmp176124 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp176125
         '(type classes ssxi methods)
         __tmp176124
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args176096%_
        (apply make-instance gxc#optimizer-info::t _%$args176096%_)))
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
      (lambda (_%self176083%_)
        (let ((_%self176086%_ _%self176083%_))
          (if (let ((__tmp176126
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self176086%_))))
                (declare (not safe))
                (##fx< '4 __tmp176126))
              (begin
                (let ((__tmp176127
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self176086%_
                   __tmp176127
                   '1
                   '#f
                   '#f))
                (let ((__tmp176128
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self176086%_
                   __tmp176128
                   '2
                   '#f
                   '#f))
                (let ((__tmp176129
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self176086%_
                   __tmp176129
                   '3
                   '#f
                   '#f))
                (let ((__tmp176130
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self176086%_
                   __tmp176130
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp176131
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self176086%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self176086%_
                       '4
                       __tmp176131))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp176133 (list)) (__tmp176132 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp176133
         '(id)
         __tmp176132
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args175958%_
        (apply make-instance gxc#!type::t _%$args175958%_)))
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
      (let ((__tmp176135 (list gxc#!type::t))
            (__tmp176134 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp176135
         '()
         __tmp176134
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args175955%_
        (apply make-instance gxc#!abort::t _%$args175955%_)))
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
      (let ((__tmp176137 (list gxc#!type::t))
            (__tmp176136 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp176137
         '()
         __tmp176136
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args175952%_
        (apply make-instance gxc#!alias::t _%$args175952%_)))
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
      (let ((__tmp176139 (list)) (__tmp176138 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp176139
         '(return effect arguments unchecked origin)
         __tmp176138
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args175949%_
        (apply make-instance gxc#!signature::t _%$args175949%_)))
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
      (let ((__tmp176141 (list gxc#!type::t))
            (__tmp176140 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp176141
         '(signature)
         __tmp176140
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
      (lambda (_%id175928%_ _%signature175929%_)
        (if ((lambda (_%$obj175932%_)
               (or (not _%$obj175932%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj175932%_
                      'gxc#!signature::t))))
             _%signature175929%_)
            (let ((_%signature175939%_ _%signature175929%_))
              (gxc#__make-!procedure _%id175928%_ _%signature175939%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature175929%_)
              '#!void))))
    (define gxc#__make-!procedure
      (lambda (_%id175914%_ _%signature175916%_)
        (let ((_%signature175919%_ _%signature175916%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id175914%_ _%signature175919%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj175883%_ _%signature175884%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj175883%_ 'gxc#!procedure::t))
            (let ((_%$obj175888%_ _%$obj175883%_))
              (if ((lambda (_%$obj175897%_)
                     (or (not _%$obj175897%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj175897%_
                            'gxc#!signature::t))))
                   _%signature175884%_)
                  (let ((_%signature175904%_ _%signature175884%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj175888%_
                     _%signature175904%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature175884%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj175883%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj175860%_ _%signature175862%_)
        (let* ((_%$obj175866%_ _%$obj175860%_)
               (_%signature175874%_ _%signature175862%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj175866%_
           _%signature175874%_
           '2
           '#f
           '#f))))
    (define gxc#!class-meta::t
      (let ((__tmp176143 (list gxc#!type::t))
            (__tmp176142 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp176143
         '(class)
         __tmp176142
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args175857%_
        (apply make-instance gxc#!class-meta::t _%$args175857%_)))
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
      (let ((__tmp176145 (list gxc#!type::t))
            (__tmp176144 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class::t
         '!class
         __tmp176145
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp176144
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args175854%_
        (apply make-instance gxc#!class::t _%$args175854%_)))
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
      (let ((__tmp176147 (list gxc#!procedure::t))
            (__tmp176146 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp176147
         '()
         __tmp176146
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args175851%_
        (apply make-instance gxc#!predicate::t _%$args175851%_)))
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
      (let ((__tmp176149 (list gxc#!procedure::t))
            (__tmp176148 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp176149
         '()
         __tmp176148
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args175848%_
        (apply make-instance gxc#!constructor::t _%$args175848%_)))
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
      (let ((__tmp176151 (list gxc#!procedure::t))
            (__tmp176150 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp176151
         '(slot checked?)
         __tmp176150
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args175845%_
        (apply make-instance gxc#!accessor::t _%$args175845%_)))
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
      (let ((__tmp176153 (list gxc#!procedure::t))
            (__tmp176152 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp176153
         '(slot checked?)
         __tmp176152
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args175842%_
        (apply make-instance gxc#!mutator::t _%$args175842%_)))
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
      (let ((__tmp176155 (list gxc#!type::t))
            (__tmp176154 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp176155
         '(methods)
         __tmp176154
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args175839%_
        (apply make-instance gxc#!interface::t _%$args175839%_)))
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
      (let ((__tmp176157 (list gxc#!procedure::t))
            (__tmp176156 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp176157
         '(arity dispatch inline inline-typedecl)
         __tmp176156
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args175836%_
        (apply make-instance gxc#!lambda::t _%$args175836%_)))
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
      (let ((__tmp176159 (list gxc#!procedure::t))
            (__tmp176158 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp176159
         '(clauses)
         __tmp176158
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args175833%_
        (apply make-instance gxc#!case-lambda::t _%$args175833%_)))
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
      (let ((__tmp176161 (list gxc#!procedure::t))
            (__tmp176160 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp176161
         '(table dispatch)
         __tmp176160
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args175830%_
        (apply make-instance gxc#!kw-lambda::t _%$args175830%_)))
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
      (let ((__tmp176163 (list gxc#!procedure::t))
            (__tmp176162 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp176163
         '(keys main)
         __tmp176162
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args175827%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args175827%_)))
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
      (let ((__tmp176164 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp176164
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args175824%_
        (apply make-instance gxc#!primitive::t _%$args175824%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp176166 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp176165 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp176166
         '()
         __tmp176165
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args175821%_
        (apply make-instance gxc#!primitive-predicate::t _%$args175821%_)))
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
      (let ((__tmp176168 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp176167 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp176168
         '()
         __tmp176167
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args175818%_
        (apply make-instance gxc#!primitive-lambda::t _%$args175818%_)))
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
      (let ((__tmp176170 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp176169 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp176170
         '()
         __tmp176169
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args175815%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args175815%_)))
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
      (lambda (_%self175802%_)
        (let ((_%self175805%_ _%self175802%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self175805%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self175665%_ _%klass175666%_)
        (let ((_%self175669%_ _%self175665%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self175669%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175669%_
             _%klass175666%_
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
      (lambda (_%self175355%_
               _%id175356%_
               _%super175357%_
               _%slots175358%_
               _%ctor-method175359%_
               _%struct?175360%_
               _%final?175361%_
               _%system?175362%_
               _%metaclass175363%_)
        (let ((_%self175366%_ _%self175355%_))
          (let _%lp175377%_ ((_%rest175379%_ _%super175357%_))
            (let* ((_%rest175380175388%_ _%rest175379%_)
                   (_%else175382175396%_ (lambda () '#!void))
                   (_%K175384175402%_
                    (lambda (_%rest175399%_ _%super-id175400%_)
                      (if (let ((__tmp176171
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id175356%_ '()))
                                  _%super-id175400%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp176171 '8 '#f '#f))
                          (let ((__tmp176172
                                 (cons '!class (cons _%id175356%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp176172
                             _%super-id175400%_))
                          '#!void)
                      (_%lp175377%_ _%rest175399%_))))
              (if (pair? _%rest175380175388%_)
                  (let ((_%hd175385175405%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest175380175388%_)))
                        (_%tl175386175407%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest175380175388%_))))
                    (let* ((_%super-id175410%_ _%hd175385175405%_)
                           (_%rest175412%_ _%tl175386175407%_))
                      (_%K175384175402%_ _%rest175412%_ _%super-id175410%_)))
                  '#!void)))
          (let* ((_%ctor-method175463%_
                  (let ((_%$e175414%_ _%ctor-method175359%_))
                    (if _%$e175414%_
                        _%$e175414%_
                        (let _%lp175417%_ ((_%rest175419%_ _%super175357%_)
                                           (_%method175420%_ '#f))
                          (let* ((_%rest175421175429%_ _%rest175419%_)
                                 (_%else175423175437%_
                                  (lambda () _%method175420%_))
                                 (_%K175425175451%_
                                  (lambda (_%rest175440%_ _%super-id175441%_)
                                    (let* ((_%klass175443%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id175356%_ '()))
                                             _%super-id175441%_))
                                           (_%$e175445%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass175443%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e175445%_
                                          ((lambda (_%ctor-method175448%_)
                                             (if _%method175420%_
                                                 (if (eq? _%ctor-method175448%_
                                                          _%method175420%_)
                                                     (_%lp175417%_
                                                      _%rest175440%_
                                                      _%ctor-method175448%_)
                                                     (let ((__tmp176173
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id175356%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp176173
                _%method175420%_
                _%ctor-method175448%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp175417%_
                                                  _%rest175440%_
                                                  _%ctor-method175448%_)))
                                           _%$e175445%_)
                                          (_%lp175417%_
                                           _%rest175440%_
                                           _%method175420%_))))))
                            (if (pair? _%rest175421175429%_)
                                (let ((_%hd175426175454%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest175421175429%_)))
                                      (_%tl175427175456%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest175421175429%_))))
                                  (let* ((_%super-id175459%_
                                          _%hd175426175454%_)
                                         (_%rest175461%_ _%tl175427175456%_))
                                    (_%K175425175451%_
                                     _%rest175461%_
                                     _%super-id175459%_)))
                                (_%else175423175437%_)))))))
                 (_g176174_
                  (let ((__tmp176178
                         (lambda (_%klass-id175465%_)
                           (cons _%klass-id175465%_
                                 (let ((__tmp176179
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id175356%_ '()))
                                         _%klass-id175465%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp176179
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp176176
                         (lambda (_%klass-id175467%_)
                           (let ((__tmp176177
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id175356%_ '()))
                                   _%klass-id175467%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp176177
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp176178
                     __tmp176176
                     eq?
                     identity
                     '()
                     _%super175357%_))))
            (begin
              (let ((_g176175_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g176174_)
                           (##values-length _g176174_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g176175_ 2)))
                    (error "Context expects 2 values" _g176175_)))
              (let ((_%precedence-list175469%_
                     (let () (declare (not safe)) (##values-ref _g176174_ 0)))
                    (_%base-struct175470%_
                     (let () (declare (not safe)) (##values-ref _g176174_ 1))))
                (let* ((_%precedence-list175514%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id175356%_ '(t object class)))
                            _%precedence-list175469%_
                            (if (memq 'object::t _%precedence-list175469%_)
                                _%precedence-list175469%_
                                (if _%system?175362%_
                                    (if (memq 't::t _%precedence-list175469%_)
                                        _%precedence-list175469%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list175469%_
                                           '(t::t))))
                                    (let _%loop175476%_ ((_%tail175478%_
                                                          _%precedence-list175469%_)
                                                         (_%head175479%_ '()))
                                      (let* ((_%tail175480175488%_
                                              _%tail175478%_)
                                             (_%else175482175496%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head175479%_))))
                                             (_%K175484175502%_
                                              (lambda (_%rest175499%_
                                                       _%hd175500%_)
                                                (if (eq? _%hd175500%_ 't::t)
                                                    (let ((__tmp176180
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail175478%_)))
              (declare (not safe))
              (__foldl1 cons __tmp176180 _%head175479%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop175476%_
                                                     _%rest175499%_
                                                     (cons _%hd175500%_
                                                           _%head175479%_))))))
                                        (if (pair? _%tail175480175488%_)
                                            (let ((_%hd175485175505%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail175480175488%_)))
                                                  (_%tl175486175507%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail175480175488%_))))
                                              (let* ((_%hd175510%_
                                                      _%hd175485175505%_)
                                                     (_%rest175512%_
                                                      _%tl175486175507%_))
                                                (_%K175484175502%_
                                                 _%rest175512%_
                                                 _%hd175510%_)))
                                            (_%else175482175496%_))))))))
                       (_%fields175516%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id175356%_ '()))
                         _%base-struct175470%_
                         _%precedence-list175514%_
                         _%slots175358%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175366%_
                     _%id175356%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175366%_
                     _%super175357%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175366%_
                     _%precedence-list175514%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175366%_
                     _%slots175358%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175366%_
                     _%fields175516%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175366%_
                     _%ctor-method175463%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175366%_
                     _%struct?175360%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175366%_
                     _%final?175361%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175366%_
                     _%metaclass175363%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self175519%_
               _%id175520%_
               _%super175521%_
               _%precedence-list175522%_
               _%slots175523%_
               _%fields175524%_
               _%constructor175525%_
               _%struct?175526%_
               _%final?175527%_
               _%system?175528%_
               _%metaclass175529%_
               _%methods175530%_)
        (let ((_%self175533%_ _%self175519%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175533%_
             _%id175520%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175533%_
             _%super175521%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175533%_
             _%precedence-list175522%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175533%_
             _%slots175523%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175533%_
             _%fields175524%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175533%_
             _%constructor175525%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175533%_
             _%struct?175526%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175533%_
             _%final?175527%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175533%_
             _%metaclass175529%_
             '10
             '#f
             '#f))
          (if _%methods175530%_
              (let ((__tmp176181
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods175530%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self175533%_
                 __tmp176181
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g176182_
        (let ((_g176183_ (let () (declare (not safe)) (##length _g176182_))))
          (cond ((let () (declare (not safe)) (##fx= _g176183_ 9))
                 (apply gxc#!class:::init!__0 _g176182_))
                ((let () (declare (not safe)) (##fx= _g176183_ 12))
                 (apply gxc#!class:::init!__1 _g176182_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g176182_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where175207%_
               _%base-struct175208%_
               _%precedence-list175209%_
               _%direct-slots175210%_)
        (let* ((_%base-fields175212%_
                (if _%base-struct175208%_
                    (let ((__tmp176184
                           (gxc#optimizer-resolve-class
                            _%where175207%_
                            _%base-struct175208%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp176184 '5 '#f '#f))
                    '()))
               (_%r-fields175214%_ (reverse _%base-fields175212%_))
               (_%seen-slots175222%_
                (let ((_%tab175216%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g175217175219%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab175216%_ _%g175217175219%_ '#t)))
                   _%base-fields175212%_)
                  _%tab175216%_))
               (_%process-slot175226%_
                (lambda (_%slot175224%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots175222%_ _%slot175224%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots175222%_
                           _%slot175224%_
                           '#t))
                        (set! _%r-fields175214%_
                              (cons _%slot175224%_ _%r-fields175214%_)))))))
          (for-each
           (lambda (_%mixin175229%_)
             (let ((_%klass175231%_
                    (gxc#optimizer-resolve-class
                     _%where175207%_
                     _%mixin175229%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass175231%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot175226%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass175231%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list175209%_)
          (for-each _%process-slot175226%_ _%direct-slots175210%_)
          (let () (declare (not safe)) (##reverse _%r-fields175214%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass175166%_ _%slot175167%_)
        (let _%lp175169%_ ((_%rest175171%_
                            (##structure-ref
                             _%klass175166%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset175172%_ '1))
          (let* ((_%rest175173175181%_ _%rest175171%_)
                 (_%else175175175189%_
                  (lambda ()
                    (let ((__tmp176186
                           (##structure-ref
                            _%klass175166%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp176185
                           (##structure-ref
                            _%klass175166%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp176186
                       __tmp176185
                       _%slot175167%_))))
                 (_%K175177175195%_
                  (lambda (_%rest175192%_ _%s175193%_)
                    (if (eq? _%s175193%_ _%slot175167%_)
                        _%offset175172%_
                        (_%lp175169%_
                         _%rest175192%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset175172%_ '1)))))))
            (if (pair? _%rest175173175181%_)
                (let ((_%hd175178175198%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest175173175181%_)))
                      (_%tl175179175200%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest175173175181%_))))
                  (let* ((_%s175203%_ _%hd175178175198%_)
                         (_%rest175205%_ _%tl175179175200%_))
                    (_%K175177175195%_ _%rest175205%_ _%s175203%_)))
                (_%else175175175189%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass175124%_ _%slot175125%_)
        (if (gxc#!class-struct-slot? _%klass175124%_ _%slot175125%_)
            _%klass175124%_
            (let _%lp175127%_ ((_%rest175129%_
                                (##structure-ref
                                 _%klass175124%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest175130175138%_ _%rest175129%_)
                     (_%else175132175146%_ (lambda () '#f))
                     (_%K175134175154%_
                      (lambda (_%rest175149%_ _%super175150%_)
                        (let ((_%super-class175152%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass175124%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot175125%_ '())))
                                _%super175150%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class175152%_
                               _%slot175125%_)
                              _%super-class175152%_
                              (_%lp175127%_ _%rest175149%_))))))
                (if (pair? _%rest175130175138%_)
                    (let ((_%hd175135175157%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest175130175138%_)))
                          (_%tl175136175159%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest175130175138%_))))
                      (let* ((_%super175162%_ _%hd175135175157%_)
                             (_%rest175164%_ _%tl175136175159%_))
                        (_%K175134175154%_ _%rest175164%_ _%super175162%_)))
                    (_%else175132175146%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass175121%_ _%slot175122%_)
        (if (##structure-ref _%klass175121%_ '7 gxc#!class::t '#f)
            (memq _%slot175122%_
                  (##structure-ref _%klass175121%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self175106%_ _%id175107%_)
        (let ((_%self175110%_ _%self175106%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175110%_
             _%id175107%_
             '1
             '#f
             '#f))
          (let ((__tmp176187
                 (let ((__obj176119
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
                      __obj176119
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176119
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176119
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj176119)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175110%_
             __tmp176187
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self174969%_ _%id174970%_)
        (let ((_%self174973%_ _%self174969%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174973%_
             _%id174970%_
             '1
             '#f
             '#f))
          (let ((__tmp176188
                 (let ((__obj176120
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
                      __obj176120
                      _%id174970%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176120
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj176120)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174973%_
             __tmp176188
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
      (lambda (_%self174830%_ _%id174831%_ _%slot174832%_ _%checked?174833%_)
        (let ((_%self174836%_ _%self174830%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174836%_
             _%id174831%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174836%_
             _%slot174832%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174836%_
             _%checked?174833%_
             '4
             '#f
             '#f))
          (let ((__tmp176189
                 (let ((__obj176121
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
                     (##unchecked-structure-set! __obj176121 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176121
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp176190 (cons _%id174831%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176121
                      __tmp176190
                      '3
                      '#f
                      '#f))
                   __obj176121)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174836%_
             __tmp176189
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self174691%_ _%id174692%_ _%slot174693%_ _%checked?174694%_)
        (let ((_%self174697%_ _%self174691%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174697%_
             _%id174692%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174697%_
             _%slot174693%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174697%_
             _%checked?174694%_
             '4
             '#f
             '#f))
          (let ((__tmp176191
                 (let ((__obj176122
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
                      __obj176122
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176122
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp176192 (cons _%id174692%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176122
                      __tmp176192
                      '3
                      '#f
                      '#f))
                   __obj176122)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174697%_
             __tmp176191
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords174535%_
               _%signature174532174536%_
               _%self174537%_
               _%arity174538%_
               _%dispatch174539%_)
        (let* ((_%signature174541%_
                (if (eq? _%signature174532174536%_ absent-value)
                    '#f
                    _%signature174532174536%_))
               (_%self174544%_ _%self174537%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self174544%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174544%_
             _%arity174538%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174544%_
             _%dispatch174539%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174544%_
             _%signature174541%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords174559%_ . _%args174560%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords174559%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords174559%_
                  'signature:
                  absent-value))
               _%args174560%_)))
    (define gxc#!lambda:::init!
      (lambda _%args174533174566%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args174533174566%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords174376%_
               _%signature174373174377%_
               _%self174378%_
               _%clauses174379%_)
        (let* ((_%signature174381%_
                (if (eq? _%signature174373174377%_ absent-value)
                    '#f
                    _%signature174373174377%_))
               (_%self174384%_ _%self174378%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self174384%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174384%_
             _%signature174381%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174384%_
             _%clauses174379%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords174399%_ . _%args174400%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords174399%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords174399%_
                  'signature:
                  absent-value))
               _%args174400%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args174374174406%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args174374174406%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self174234%_ _%tab174235%_ _%dispatch174236%_)
        (let ((_%self174239%_ _%self174234%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self174239%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174239%_
             _%tab174235%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174239%_
             _%dispatch174236%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self174096%_ _%keys174097%_ _%main174098%_)
        (let ((_%self174101%_ _%self174096%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self174101%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174101%_
             _%keys174097%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174101%_
             _%main174098%_
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
      (lambda (_%self173715%_ _%id173716%_)
        (let ((_%self173719%_ _%self173715%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self173719%_
             _%id173716%_
             '1
             '#f
             '#f))
          (let ((__tmp176193
                 (let ((__obj176123
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
                      __obj176123
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176123
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176123
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj176123)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self173719%_
             __tmp176193
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
      (lambda (_%klass173584%_)
        (let ((_%$e173586%_
               (##structure-ref _%klass173584%_ '11 gxc#!class::t '#f)))
          (if _%$e173586%_
              _%$e173586%_
              (let ((_%tab173590%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass173584%_
                 _%tab173590%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab173590%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass173576%_ _%method173577%_)
        (let ((_%tab173578173580%_
               (##structure-ref _%klass173576%_ '11 gxc#!class::t '#f)))
          (if _%tab173578173580%_
              (let ((_%tab173582%_ _%tab173578173580%_))
                (declare (not safe))
                (hash-get _%tab173582%_ _%method173577%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a173564%_ _%type-b173565%_)
        (if _%type-a173564%_
            (if _%type-b173565%_
                (let ((_%$e173567%_ (eq? _%type-a173564%_ _%type-b173565%_)))
                  (if _%$e173567%_
                      _%$e173567%_
                      (let ((_%$e173570%_
                             (eq? (##structure-ref
                                   _%type-b173565%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e173570%_
                            _%$e173570%_
                            (let ((_%$e173573%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a173564%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b173565%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e173573%_
                                  _%$e173573%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a173564%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b173565%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a173564%_
                                           _%type-b173565%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a173515%_ _%klass-b173516%_)
        (let ((_%$e173518%_
               (eq? (##structure-ref _%klass-a173515%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b173516%_ '1 gxc#!type::t '#f))))
          (if _%$e173518%_
              _%$e173518%_
              (let ((_%klass-id-b173521%_
                     (##structure-ref _%klass-b173516%_ '1 gxc#!type::t '#f))
                    (_%precedence-list173522%_
                     (##structure-ref _%klass-a173515%_ '3 gxc#!class::t '#f)))
                (let _%loop173524%_ ((_%rest173526%_
                                      _%precedence-list173522%_))
                  (let* ((_%rest173527173535%_ _%rest173526%_)
                         (_%else173529173543%_ (lambda () '#f))
                         (_%K173531173552%_
                          (lambda (_%rest173546%_ _%klass-name173547%_)
                            (let ((_%$e173549%_
                                   (eq? (let ((__tmp176194
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a173515%_
                                                            (cons _%klass-b173516%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name173547%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp176194
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b173521%_)))
                              (if _%$e173549%_
                                  _%$e173549%_
                                  (_%loop173524%_ _%rest173546%_))))))
                    (if (pair? _%rest173527173535%_)
                        (let ((_%hd173532173555%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest173527173535%_)))
                              (_%tl173533173557%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest173527173535%_))))
                          (let* ((_%klass-name173560%_ _%hd173532173555%_)
                                 (_%rest173562%_ _%tl173533173557%_))
                            (_%K173531173552%_
                             _%rest173562%_
                             _%klass-name173560%_)))
                        (_%else173529173543%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type173513%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type173513%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type173513%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc173502%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc173502%_ 'gxc#!procedure::t))
            (let ((_%proc173505%_ _%proc173502%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc173505%_ '2 '#f '#f))
                  (let ((__tmp176195
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc173505%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp176195 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@378.11-378.15"
               'contract:
               '!procedure?
               'value:
               _%proc173502%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym173484%_ _%type173485%_ _%local?173486%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type173485%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym173484%_
                     _%type173485%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym173484%_ '" " _%type173485%_))
        (let ((_%table173488%_
               (if _%local?173486%_
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
          (hash-put! _%table173488%_ _%sym173484%_ _%type173485%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym173493%_ _%type173494%_)
        (let ((_%local?173496%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym173493%_
           _%type173494%_
           _%local?173496%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g176196_
        (let ((_g176197_ (let () (declare (not safe)) (##length _g176196_))))
          (cond ((let () (declare (not safe)) (##fx= _g176197_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g176196_))
                ((let () (declare (not safe)) (##fx= _g176197_ 3))
                 (apply gxc#optimizer-declare-type!__% _g176196_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g176196_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym173478%_ _%type173479%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type173479%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym173478%_
                     _%type173479%_)))
        (let ((_%table173481%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp176198
                 (let () (declare (not safe)) (struct->list _%type173479%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym173478%_ '" " __tmp176198))
          (let ()
            (declare (not safe))
            (hash-put! _%table173481%_ _%sym173478%_ _%type173479%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table173481%_ _%type173479%_ _%sym173478%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym173473%_ _%type173474%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type173474%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym173473%_
                     _%type173474%_)))
        (let ((_%table173476%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table173476%_ _%sym173473%_))
              '#!void
              (begin
                (let ((__tmp176199
                       (let ()
                         (declare (not safe))
                         (struct->list _%type173474%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym173473%_
                   '" "
                   __tmp176199))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table173476%_ _%sym173473%_ _%type173474%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table173476%_
                   _%type173474%_
                   _%sym173473%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym173471%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym173471%_))
        (let ((__tmp176200
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp176200 _%sym173471%_))
        (let ((__tmp176201
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp176201 _%sym173471%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t173439%_
               _%method173440%_
               _%sym173441%_
               _%rebind?173442%_)
        (let ((__tmp176202
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp176202 _%sym173441%_ '#t))
        (let ((_%klass173444%_ (gxc#optimizer-lookup-class _%type-t173439%_)))
          (if _%klass173444%_
              (let* ((_%vtab173446%_ (gxc#!class-method-table _%klass173444%_))
                     (_%$e173448%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab173446%_ _%method173440%_))))
                (if _%$e173448%_
                    ((lambda (_%existing173451%_)
                       (if _%rebind?173442%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t173439%_
                                '" "
                                _%method173440%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab173446%_
                                _%method173440%_
                                _%sym173441%_)))
                           (if (eq? _%existing173451%_ _%sym173441%_)
                               '#!void
                               (let ((__tmp176203
                                      (cons 'bind-method!
                                            (cons _%type-t173439%_
                                                  (cons _%method173440%_
                                                        (cons _%sym173441%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp176203
                                  _%method173440%_)))))
                     _%$e173448%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t173439%_
                         '" "
                         _%method173440%_
                         '" => "
                         _%sym173441%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab173446%_
                         _%method173440%_
                         _%sym173441%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t173439%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t173460%_ _%method173461%_ _%sym173462%_)
        (let ((_%rebind?173464%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t173460%_
           _%method173461%_
           _%sym173462%_
           _%rebind?173464%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g176204_
        (let ((_g176205_ (let () (declare (not safe)) (##length _g176204_))))
          (cond ((let () (declare (not safe)) (##fx= _g176205_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g176204_))
                ((let () (declare (not safe)) (##fx= _g176205_ 4))
                 (apply gxc#optimizer-declare-method!__% _g176204_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g176204_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym173425%_)
        (let ((_%$e173427%_
               (let ((__tmp176206
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym173425%_ __tmp176206))))
          (if _%$e173427%_
              _%$e173427%_
              (let ((_%$e173435%_
                     (let ((_%ht173429173431%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht173429173431%_
                           (let ((_%ht173433%_ _%ht173429173431%_))
                             (declare (not safe))
                             (hash-get _%ht173433%_ _%sym173425%_))
                           '#f))))
                (if _%$e173435%_
                    _%$e173435%_
                    (let ((__tmp176207
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp176207 _%sym173425%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym173418%_)
        (let ((_%type173419173421%_ (gxc#optimizer-lookup-type _%sym173418%_)))
          (if _%type173419173421%_
              (let ((_%type173423%_ _%type173419173421%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type173423%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type173423%_ '1 '#f '#f)))
                    _%type173423%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym173414%_)
        (let ((_%table173416%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table173416%_ _%sym173414%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where173399%_ _%sym173400%_)
        (let ((_%$e173403%_ (gxc#optimizer-lookup-class _%sym173400%_)))
          (if _%$e173403%_
              ((lambda (_%g173405173407%_)
                 (let ((_%val173410%_ _%g173405173407%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val173410%_
                          'gxc#!class::t))
                       _%val173410%_
                       (begin
                         (raise-contract-violation-error
                          '"contract violation"
                          'context:
                          'gerbil/compiler/optimize-base
                          'contract:
                          '(!class? val)
                          'value:
                          _%val173410%_)
                         '#!void))))
               _%$e173403%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where173399%_
                   _%sym173400%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass173397%_)
        (let ((__tmp176208
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp176208 _%klass173397%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t173394%_ _%method173395%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t173394%_)
         _%method173395%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym173392%_)
        (let ((__tmp176209
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp176209 _%sym173392%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e173274%_
                  (lambda (_%t173375%_)
                    (if (symbol? _%t173375%_)
                        (_%type-e173274%_
                         (gxc#optimizer-lookup-type _%t173375%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t173375%_
                               'gxc#!lambda::t))
                            (_%__lambda-type173276%_ _%t173375%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t173375%_
                                   'gxc#!kw-lambda::t))
                                (_%__kw-lambda-type173278%_ _%t173375%_)
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t173375%_
                                       'gxc#!kw-lambda-primary::t))
                                    (_%__kw-lambda-primary-type173280%_
                                     _%t173375%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t173375%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t173382%_ _%t173375%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t173382%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp176210
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t173382%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp176210
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t173375%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t173375%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%lambda-type173275%_
                  (lambda (_%t173363%_)
                    (let ((_%t173366%_ _%t173363%_))
                      (_%__lambda-type173276%_ _%t173366%_))))
                 (_%__lambda-type173276%_
                  (lambda (_%t173351%_)
                    (let ((_%t173354%_ _%t173351%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t173354%_ '4 '#f '#f))
                          (_%type-e173274%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t173354%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t173354%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp176211
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t173354%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp176211
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%kw-lambda-type173277%_
                  (lambda (_%t173339%_)
                    (let ((_%t173342%_ _%t173339%_))
                      (_%__kw-lambda-type173278%_ _%t173342%_))))
                 (_%__kw-lambda-type173278%_
                  (lambda (_%t173327%_)
                    (let ((_%t173330%_ _%t173327%_))
                      (_%type-e173274%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t173330%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type173279%_
                  (lambda (_%t173315%_)
                    (let ((_%t173318%_ _%t173315%_))
                      (_%__kw-lambda-primary-type173280%_ _%t173318%_))))
                 (_%__kw-lambda-primary-type173280%_
                  (lambda (_%t173301%_)
                    (let ((_%t173304%_ _%t173301%_))
                      (_%type-e173274%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t173304%_
                          '4
                          '#f
                          '#f)))))))
          (let* ((_%ht1173282%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2173284%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result173286%_
                  (if _%ht1173282%_
                      (let () (declare (not safe)) (hash->list _%ht1173282%_))
                      '()))
                 (_%result173288%_
                  (if _%ht2173284%_
                      (let ((__tmp176212
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2173284%_))))
                        (declare (not safe))
                        (__foldl1 cons _%result173286%_ __tmp176212))
                      _%result173286%_)))
            (for-each
             (lambda (_%p173291%_)
               (let* ((_%t173293%_ (cdr _%p173291%_))
                      (_%tr173295%_ (_%type-e173274%_ _%t173293%_)))
                 (set-cdr! _%p173291%_ _%tr173295%_)))
             _%result173288%_)
            (list-sort
             (lambda (_%a173298%_ _%b173299%_)
               (let ((__tmp176214 (symbol->string (car _%a173298%_)))
                     (__tmp176213 (symbol->string (car _%b173299%_))))
                 (declare (not safe))
                 (##string<? __tmp176214 __tmp176213)))
             _%result173288%_)))))))
