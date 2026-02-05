(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1770313937)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp176169 (list)) (__tmp176168 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp176169
         '(type classes ssxi methods)
         __tmp176168
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args176140%_
        (apply make-instance gxc#optimizer-info::t _%$args176140%_)))
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
      (lambda (_%self176127%_)
        (let ((_%self176130%_ _%self176127%_))
          (if (let ((__tmp176170
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self176130%_))))
                (declare (not safe))
                (##fx< '4 __tmp176170))
              (begin
                (let ((__tmp176171
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self176130%_
                   __tmp176171
                   '1
                   '#f
                   '#f))
                (let ((__tmp176172
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self176130%_
                   __tmp176172
                   '2
                   '#f
                   '#f))
                (let ((__tmp176173
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self176130%_
                   __tmp176173
                   '3
                   '#f
                   '#f))
                (let ((__tmp176174
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self176130%_
                   __tmp176174
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp176175
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self176130%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self176130%_
                       '4
                       __tmp176175))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp176177 (list)) (__tmp176176 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp176177
         '(id)
         __tmp176176
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args176002%_
        (apply make-instance gxc#!type::t _%$args176002%_)))
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
      (let ((__tmp176179 (list gxc#!type::t))
            (__tmp176178 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp176179
         '()
         __tmp176178
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args175999%_
        (apply make-instance gxc#!abort::t _%$args175999%_)))
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
      (let ((__tmp176181 (list gxc#!type::t))
            (__tmp176180 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp176181
         '()
         __tmp176180
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args175996%_
        (apply make-instance gxc#!alias::t _%$args175996%_)))
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
      (let ((__tmp176183 (list)) (__tmp176182 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp176183
         '(return effect arguments unchecked origin)
         __tmp176182
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args175993%_
        (apply make-instance gxc#!signature::t _%$args175993%_)))
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
      (let ((__tmp176185 (list gxc#!type::t))
            (__tmp176184 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp176185
         '(signature)
         __tmp176184
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
      (lambda (_%id175972%_ _%signature175973%_)
        (if ((lambda (_%$obj175976%_)
               (or (not _%$obj175976%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj175976%_
                      'gxc#!signature::t))))
             _%signature175973%_)
            (let ((_%signature175983%_ _%signature175973%_))
              (gxc#__make-!procedure _%id175972%_ _%signature175983%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature175973%_)
              '#!void))))
    (define gxc#__make-!procedure
      (lambda (_%id175958%_ _%signature175960%_)
        (let ((_%signature175963%_ _%signature175960%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id175958%_ _%signature175963%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj175927%_ _%signature175928%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj175927%_ 'gxc#!procedure::t))
            (let ((_%$obj175932%_ _%$obj175927%_))
              (if ((lambda (_%$obj175941%_)
                     (or (not _%$obj175941%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj175941%_
                            'gxc#!signature::t))))
                   _%signature175928%_)
                  (let ((_%signature175948%_ _%signature175928%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj175932%_
                     _%signature175948%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature175928%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj175927%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj175904%_ _%signature175906%_)
        (let* ((_%$obj175910%_ _%$obj175904%_)
               (_%signature175918%_ _%signature175906%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj175910%_
           _%signature175918%_
           '2
           '#f
           '#f))))
    (define gxc#!class-meta::t
      (let ((__tmp176187 (list gxc#!type::t))
            (__tmp176186 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp176187
         '(class)
         __tmp176186
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args175901%_
        (apply make-instance gxc#!class-meta::t _%$args175901%_)))
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
      (let ((__tmp176189 (list gxc#!type::t))
            (__tmp176188 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class::t
         '!class
         __tmp176189
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp176188
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args175898%_
        (apply make-instance gxc#!class::t _%$args175898%_)))
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
      (let ((__tmp176191 (list gxc#!procedure::t))
            (__tmp176190 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp176191
         '()
         __tmp176190
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args175895%_
        (apply make-instance gxc#!predicate::t _%$args175895%_)))
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
      (let ((__tmp176193 (list gxc#!procedure::t))
            (__tmp176192 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp176193
         '()
         __tmp176192
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args175892%_
        (apply make-instance gxc#!constructor::t _%$args175892%_)))
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
      (let ((__tmp176195 (list gxc#!procedure::t))
            (__tmp176194 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp176195
         '(slot checked?)
         __tmp176194
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args175889%_
        (apply make-instance gxc#!accessor::t _%$args175889%_)))
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
      (let ((__tmp176197 (list gxc#!procedure::t))
            (__tmp176196 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp176197
         '(slot checked?)
         __tmp176196
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args175886%_
        (apply make-instance gxc#!mutator::t _%$args175886%_)))
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
      (let ((__tmp176199 (list gxc#!type::t))
            (__tmp176198 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp176199
         '(methods)
         __tmp176198
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args175883%_
        (apply make-instance gxc#!interface::t _%$args175883%_)))
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
      (let ((__tmp176201 (list gxc#!procedure::t))
            (__tmp176200 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp176201
         '(arity dispatch inline inline-typedecl)
         __tmp176200
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args175880%_
        (apply make-instance gxc#!lambda::t _%$args175880%_)))
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
      (let ((__tmp176203 (list gxc#!procedure::t))
            (__tmp176202 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp176203
         '(clauses)
         __tmp176202
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args175877%_
        (apply make-instance gxc#!case-lambda::t _%$args175877%_)))
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
      (let ((__tmp176205 (list gxc#!procedure::t))
            (__tmp176204 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp176205
         '(table dispatch)
         __tmp176204
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args175874%_
        (apply make-instance gxc#!kw-lambda::t _%$args175874%_)))
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
      (let ((__tmp176207 (list gxc#!procedure::t))
            (__tmp176206 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp176207
         '(keys main)
         __tmp176206
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args175871%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args175871%_)))
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
      (let ((__tmp176208 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp176208
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args175868%_
        (apply make-instance gxc#!primitive::t _%$args175868%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp176210 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp176209 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp176210
         '()
         __tmp176209
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args175865%_
        (apply make-instance gxc#!primitive-predicate::t _%$args175865%_)))
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
      (let ((__tmp176212 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp176211 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp176212
         '()
         __tmp176211
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args175862%_
        (apply make-instance gxc#!primitive-lambda::t _%$args175862%_)))
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
      (let ((__tmp176214 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp176213 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp176214
         '()
         __tmp176213
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args175859%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args175859%_)))
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
      (lambda (_%self175846%_)
        (let ((_%self175849%_ _%self175846%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self175849%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self175709%_ _%klass175710%_)
        (let ((_%self175713%_ _%self175709%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self175713%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175713%_
             _%klass175710%_
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
      (lambda (_%self175399%_
               _%id175400%_
               _%super175401%_
               _%slots175402%_
               _%ctor-method175403%_
               _%struct?175404%_
               _%final?175405%_
               _%system?175406%_
               _%metaclass175407%_)
        (let ((_%self175410%_ _%self175399%_))
          (let _%lp175421%_ ((_%rest175423%_ _%super175401%_))
            (let* ((_%rest175424175432%_ _%rest175423%_)
                   (_%else175426175440%_ (lambda () '#!void))
                   (_%K175428175446%_
                    (lambda (_%rest175443%_ _%super-id175444%_)
                      (if (let ((__tmp176215
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id175400%_ '()))
                                  _%super-id175444%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp176215 '8 '#f '#f))
                          (let ((__tmp176216
                                 (cons '!class (cons _%id175400%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp176216
                             _%super-id175444%_))
                          '#!void)
                      (_%lp175421%_ _%rest175443%_))))
              (if (pair? _%rest175424175432%_)
                  (let ((_%hd175429175449%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest175424175432%_)))
                        (_%tl175430175451%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest175424175432%_))))
                    (let* ((_%super-id175454%_ _%hd175429175449%_)
                           (_%rest175456%_ _%tl175430175451%_))
                      (_%K175428175446%_ _%rest175456%_ _%super-id175454%_)))
                  '#!void)))
          (let* ((_%ctor-method175507%_
                  (let ((_%$e175458%_ _%ctor-method175403%_))
                    (if _%$e175458%_
                        _%$e175458%_
                        (let _%lp175461%_ ((_%rest175463%_ _%super175401%_)
                                           (_%method175464%_ '#f))
                          (let* ((_%rest175465175473%_ _%rest175463%_)
                                 (_%else175467175481%_
                                  (lambda () _%method175464%_))
                                 (_%K175469175495%_
                                  (lambda (_%rest175484%_ _%super-id175485%_)
                                    (let* ((_%klass175487%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id175400%_ '()))
                                             _%super-id175485%_))
                                           (_%$e175489%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass175487%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e175489%_
                                          ((lambda (_%ctor-method175492%_)
                                             (if _%method175464%_
                                                 (if (eq? _%ctor-method175492%_
                                                          _%method175464%_)
                                                     (_%lp175461%_
                                                      _%rest175484%_
                                                      _%ctor-method175492%_)
                                                     (let ((__tmp176217
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id175400%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp176217
                _%method175464%_
                _%ctor-method175492%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp175461%_
                                                  _%rest175484%_
                                                  _%ctor-method175492%_)))
                                           _%$e175489%_)
                                          (_%lp175461%_
                                           _%rest175484%_
                                           _%method175464%_))))))
                            (if (pair? _%rest175465175473%_)
                                (let ((_%hd175470175498%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest175465175473%_)))
                                      (_%tl175471175500%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest175465175473%_))))
                                  (let* ((_%super-id175503%_
                                          _%hd175470175498%_)
                                         (_%rest175505%_ _%tl175471175500%_))
                                    (_%K175469175495%_
                                     _%rest175505%_
                                     _%super-id175503%_)))
                                (_%else175467175481%_)))))))
                 (_g176218_
                  (let ((__tmp176222
                         (lambda (_%klass-id175509%_)
                           (cons _%klass-id175509%_
                                 (let ((__tmp176223
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id175400%_ '()))
                                         _%klass-id175509%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp176223
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp176220
                         (lambda (_%klass-id175511%_)
                           (let ((__tmp176221
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id175400%_ '()))
                                   _%klass-id175511%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp176221
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp176222
                     __tmp176220
                     eq?
                     identity
                     '()
                     _%super175401%_))))
            (begin
              (let ((_g176219_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g176218_)
                           (##values-length _g176218_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g176219_ 2)))
                    (error "Context expects 2 values" _g176219_)))
              (let ((_%precedence-list175513%_
                     (let () (declare (not safe)) (##values-ref _g176218_ 0)))
                    (_%base-struct175514%_
                     (let () (declare (not safe)) (##values-ref _g176218_ 1))))
                (let* ((_%precedence-list175558%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id175400%_ '(t object class)))
                            _%precedence-list175513%_
                            (if (memq 'object::t _%precedence-list175513%_)
                                _%precedence-list175513%_
                                (if _%system?175406%_
                                    (if (memq 't::t _%precedence-list175513%_)
                                        _%precedence-list175513%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list175513%_
                                           '(t::t))))
                                    (let _%loop175520%_ ((_%tail175522%_
                                                          _%precedence-list175513%_)
                                                         (_%head175523%_ '()))
                                      (let* ((_%tail175524175532%_
                                              _%tail175522%_)
                                             (_%else175526175540%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head175523%_))))
                                             (_%K175528175546%_
                                              (lambda (_%rest175543%_
                                                       _%hd175544%_)
                                                (if (eq? _%hd175544%_ 't::t)
                                                    (let ((__tmp176224
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail175522%_)))
              (declare (not safe))
              (__foldl1 cons __tmp176224 _%head175523%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop175520%_
                                                     _%rest175543%_
                                                     (cons _%hd175544%_
                                                           _%head175523%_))))))
                                        (if (pair? _%tail175524175532%_)
                                            (let ((_%hd175529175549%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail175524175532%_)))
                                                  (_%tl175530175551%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail175524175532%_))))
                                              (let* ((_%hd175554%_
                                                      _%hd175529175549%_)
                                                     (_%rest175556%_
                                                      _%tl175530175551%_))
                                                (_%K175528175546%_
                                                 _%rest175556%_
                                                 _%hd175554%_)))
                                            (_%else175526175540%_))))))))
                       (_%fields175560%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id175400%_ '()))
                         _%base-struct175514%_
                         _%precedence-list175558%_
                         _%slots175402%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175410%_
                     _%id175400%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175410%_
                     _%super175401%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175410%_
                     _%precedence-list175558%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175410%_
                     _%slots175402%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175410%_
                     _%fields175560%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175410%_
                     _%ctor-method175507%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175410%_
                     _%struct?175404%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175410%_
                     _%final?175405%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175410%_
                     _%metaclass175407%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self175563%_
               _%id175564%_
               _%super175565%_
               _%precedence-list175566%_
               _%slots175567%_
               _%fields175568%_
               _%constructor175569%_
               _%struct?175570%_
               _%final?175571%_
               _%system?175572%_
               _%metaclass175573%_
               _%methods175574%_)
        (let ((_%self175577%_ _%self175563%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175577%_
             _%id175564%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175577%_
             _%super175565%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175577%_
             _%precedence-list175566%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175577%_
             _%slots175567%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175577%_
             _%fields175568%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175577%_
             _%constructor175569%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175577%_
             _%struct?175570%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175577%_
             _%final?175571%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175577%_
             _%metaclass175573%_
             '10
             '#f
             '#f))
          (if _%methods175574%_
              (let ((__tmp176225
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods175574%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self175577%_
                 __tmp176225
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g176226_
        (let ((_g176227_ (let () (declare (not safe)) (##length _g176226_))))
          (cond ((let () (declare (not safe)) (##fx= _g176227_ 9))
                 (apply gxc#!class:::init!__0 _g176226_))
                ((let () (declare (not safe)) (##fx= _g176227_ 12))
                 (apply gxc#!class:::init!__1 _g176226_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g176226_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where175251%_
               _%base-struct175252%_
               _%precedence-list175253%_
               _%direct-slots175254%_)
        (let* ((_%base-fields175256%_
                (if _%base-struct175252%_
                    (let ((__tmp176228
                           (gxc#optimizer-resolve-class
                            _%where175251%_
                            _%base-struct175252%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp176228 '5 '#f '#f))
                    '()))
               (_%r-fields175258%_ (reverse _%base-fields175256%_))
               (_%seen-slots175266%_
                (let ((_%tab175260%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g175261175263%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab175260%_ _%g175261175263%_ '#t)))
                   _%base-fields175256%_)
                  _%tab175260%_))
               (_%process-slot175270%_
                (lambda (_%slot175268%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots175266%_ _%slot175268%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots175266%_
                           _%slot175268%_
                           '#t))
                        (set! _%r-fields175258%_
                              (cons _%slot175268%_ _%r-fields175258%_)))))))
          (for-each
           (lambda (_%mixin175273%_)
             (let ((_%klass175275%_
                    (gxc#optimizer-resolve-class
                     _%where175251%_
                     _%mixin175273%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass175275%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot175270%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass175275%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list175253%_)
          (for-each _%process-slot175270%_ _%direct-slots175254%_)
          (let () (declare (not safe)) (##reverse _%r-fields175258%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass175210%_ _%slot175211%_)
        (let _%lp175213%_ ((_%rest175215%_
                            (##structure-ref
                             _%klass175210%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset175216%_ '1))
          (let* ((_%rest175217175225%_ _%rest175215%_)
                 (_%else175219175233%_
                  (lambda ()
                    (let ((__tmp176230
                           (##structure-ref
                            _%klass175210%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp176229
                           (##structure-ref
                            _%klass175210%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp176230
                       __tmp176229
                       _%slot175211%_))))
                 (_%K175221175239%_
                  (lambda (_%rest175236%_ _%s175237%_)
                    (if (eq? _%s175237%_ _%slot175211%_)
                        _%offset175216%_
                        (_%lp175213%_
                         _%rest175236%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset175216%_ '1)))))))
            (if (pair? _%rest175217175225%_)
                (let ((_%hd175222175242%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest175217175225%_)))
                      (_%tl175223175244%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest175217175225%_))))
                  (let* ((_%s175247%_ _%hd175222175242%_)
                         (_%rest175249%_ _%tl175223175244%_))
                    (_%K175221175239%_ _%rest175249%_ _%s175247%_)))
                (_%else175219175233%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass175168%_ _%slot175169%_)
        (if (gxc#!class-struct-slot? _%klass175168%_ _%slot175169%_)
            _%klass175168%_
            (let _%lp175171%_ ((_%rest175173%_
                                (##structure-ref
                                 _%klass175168%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest175174175182%_ _%rest175173%_)
                     (_%else175176175190%_ (lambda () '#f))
                     (_%K175178175198%_
                      (lambda (_%rest175193%_ _%super175194%_)
                        (let ((_%super-class175196%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass175168%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot175169%_ '())))
                                _%super175194%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class175196%_
                               _%slot175169%_)
                              _%super-class175196%_
                              (_%lp175171%_ _%rest175193%_))))))
                (if (pair? _%rest175174175182%_)
                    (let ((_%hd175179175201%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest175174175182%_)))
                          (_%tl175180175203%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest175174175182%_))))
                      (let* ((_%super175206%_ _%hd175179175201%_)
                             (_%rest175208%_ _%tl175180175203%_))
                        (_%K175178175198%_ _%rest175208%_ _%super175206%_)))
                    (_%else175176175190%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass175165%_ _%slot175166%_)
        (if (##structure-ref _%klass175165%_ '7 gxc#!class::t '#f)
            (memq _%slot175166%_
                  (##structure-ref _%klass175165%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self175150%_ _%id175151%_)
        (let ((_%self175154%_ _%self175150%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175154%_
             _%id175151%_
             '1
             '#f
             '#f))
          (let ((__tmp176231
                 (let ((__obj176163
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
                      __obj176163
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176163
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176163
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj176163)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175154%_
             __tmp176231
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self175013%_ _%id175014%_)
        (let ((_%self175017%_ _%self175013%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175017%_
             _%id175014%_
             '1
             '#f
             '#f))
          (let ((__tmp176232
                 (let ((__obj176164
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
                      __obj176164
                      _%id175014%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176164
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj176164)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175017%_
             __tmp176232
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
      (lambda (_%self174874%_ _%id174875%_ _%slot174876%_ _%checked?174877%_)
        (let ((_%self174880%_ _%self174874%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174880%_
             _%id174875%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174880%_
             _%slot174876%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174880%_
             _%checked?174877%_
             '4
             '#f
             '#f))
          (let ((__tmp176233
                 (let ((__obj176165
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
                     (##unchecked-structure-set! __obj176165 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176165
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp176234 (cons _%id174875%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176165
                      __tmp176234
                      '3
                      '#f
                      '#f))
                   __obj176165)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174880%_
             __tmp176233
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self174735%_ _%id174736%_ _%slot174737%_ _%checked?174738%_)
        (let ((_%self174741%_ _%self174735%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174741%_
             _%id174736%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174741%_
             _%slot174737%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174741%_
             _%checked?174738%_
             '4
             '#f
             '#f))
          (let ((__tmp176235
                 (let ((__obj176166
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
                      __obj176166
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176166
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp176236 (cons _%id174736%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176166
                      __tmp176236
                      '3
                      '#f
                      '#f))
                   __obj176166)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174741%_
             __tmp176235
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords174579%_
               _%signature174576174580%_
               _%self174581%_
               _%arity174582%_
               _%dispatch174583%_)
        (let* ((_%signature174585%_
                (if (eq? _%signature174576174580%_ absent-value)
                    '#f
                    _%signature174576174580%_))
               (_%self174588%_ _%self174581%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self174588%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174588%_
             _%arity174582%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174588%_
             _%dispatch174583%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174588%_
             _%signature174585%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords174603%_ . _%args174604%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords174603%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords174603%_
                  'signature:
                  absent-value))
               _%args174604%_)))
    (define gxc#!lambda:::init!
      (lambda _%args174577174610%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args174577174610%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords174420%_
               _%signature174417174421%_
               _%self174422%_
               _%clauses174423%_)
        (let* ((_%signature174425%_
                (if (eq? _%signature174417174421%_ absent-value)
                    '#f
                    _%signature174417174421%_))
               (_%self174428%_ _%self174422%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self174428%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174428%_
             _%signature174425%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174428%_
             _%clauses174423%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords174443%_ . _%args174444%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords174443%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords174443%_
                  'signature:
                  absent-value))
               _%args174444%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args174418174450%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args174418174450%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self174278%_ _%tab174279%_ _%dispatch174280%_)
        (let ((_%self174283%_ _%self174278%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self174283%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174283%_
             _%tab174279%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174283%_
             _%dispatch174280%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self174140%_ _%keys174141%_ _%main174142%_)
        (let ((_%self174145%_ _%self174140%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self174145%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174145%_
             _%keys174141%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174145%_
             _%main174142%_
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
      (lambda (_%self173759%_ _%id173760%_)
        (let ((_%self173763%_ _%self173759%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self173763%_
             _%id173760%_
             '1
             '#f
             '#f))
          (let ((__tmp176237
                 (let ((__obj176167
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
                      __obj176167
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176167
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176167
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj176167)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self173763%_
             __tmp176237
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
      (lambda (_%klass173628%_)
        (let ((_%$e173630%_
               (##structure-ref _%klass173628%_ '11 gxc#!class::t '#f)))
          (if _%$e173630%_
              _%$e173630%_
              (let ((_%tab173634%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass173628%_
                 _%tab173634%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab173634%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass173620%_ _%method173621%_)
        (let ((_%tab173622173624%_
               (##structure-ref _%klass173620%_ '11 gxc#!class::t '#f)))
          (if _%tab173622173624%_
              (let ((_%tab173626%_ _%tab173622173624%_))
                (declare (not safe))
                (hash-get _%tab173626%_ _%method173621%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a173608%_ _%type-b173609%_)
        (if _%type-a173608%_
            (if _%type-b173609%_
                (let ((_%$e173611%_ (eq? _%type-a173608%_ _%type-b173609%_)))
                  (if _%$e173611%_
                      _%$e173611%_
                      (let ((_%$e173614%_
                             (eq? (##structure-ref
                                   _%type-b173609%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e173614%_
                            _%$e173614%_
                            (let ((_%$e173617%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a173608%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b173609%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e173617%_
                                  _%$e173617%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a173608%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b173609%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a173608%_
                                           _%type-b173609%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a173559%_ _%klass-b173560%_)
        (let ((_%$e173562%_
               (eq? (##structure-ref _%klass-a173559%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b173560%_ '1 gxc#!type::t '#f))))
          (if _%$e173562%_
              _%$e173562%_
              (let ((_%klass-id-b173565%_
                     (##structure-ref _%klass-b173560%_ '1 gxc#!type::t '#f))
                    (_%precedence-list173566%_
                     (##structure-ref _%klass-a173559%_ '3 gxc#!class::t '#f)))
                (let _%loop173568%_ ((_%rest173570%_
                                      _%precedence-list173566%_))
                  (let* ((_%rest173571173579%_ _%rest173570%_)
                         (_%else173573173587%_ (lambda () '#f))
                         (_%K173575173596%_
                          (lambda (_%rest173590%_ _%klass-name173591%_)
                            (let ((_%$e173593%_
                                   (eq? (let ((__tmp176238
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a173559%_
                                                            (cons _%klass-b173560%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name173591%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp176238
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b173565%_)))
                              (if _%$e173593%_
                                  _%$e173593%_
                                  (_%loop173568%_ _%rest173590%_))))))
                    (if (pair? _%rest173571173579%_)
                        (let ((_%hd173576173599%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest173571173579%_)))
                              (_%tl173577173601%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest173571173579%_))))
                          (let* ((_%klass-name173604%_ _%hd173576173599%_)
                                 (_%rest173606%_ _%tl173577173601%_))
                            (_%K173575173596%_
                             _%rest173606%_
                             _%klass-name173604%_)))
                        (_%else173573173587%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type173557%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type173557%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type173557%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc173546%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc173546%_ 'gxc#!procedure::t))
            (let ((_%proc173549%_ _%proc173546%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc173549%_ '2 '#f '#f))
                  (let ((__tmp176239
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc173549%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp176239 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@378.11-378.15"
               'contract:
               '!procedure?
               'value:
               _%proc173546%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym173528%_ _%type173529%_ _%local?173530%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type173529%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym173528%_
                     _%type173529%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym173528%_ '" " _%type173529%_))
        (let ((_%table173532%_
               (if _%local?173530%_
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
          (hash-put! _%table173532%_ _%sym173528%_ _%type173529%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym173537%_ _%type173538%_)
        (let ((_%local?173540%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym173537%_
           _%type173538%_
           _%local?173540%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g176240_
        (let ((_g176241_ (let () (declare (not safe)) (##length _g176240_))))
          (cond ((let () (declare (not safe)) (##fx= _g176241_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g176240_))
                ((let () (declare (not safe)) (##fx= _g176241_ 3))
                 (apply gxc#optimizer-declare-type!__% _g176240_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g176240_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym173522%_ _%type173523%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type173523%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym173522%_
                     _%type173523%_)))
        (let ((_%table173525%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp176242
                 (let () (declare (not safe)) (struct->list _%type173523%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym173522%_ '" " __tmp176242))
          (let ()
            (declare (not safe))
            (hash-put! _%table173525%_ _%sym173522%_ _%type173523%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table173525%_ _%type173523%_ _%sym173522%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym173517%_ _%type173518%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type173518%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym173517%_
                     _%type173518%_)))
        (let ((_%table173520%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table173520%_ _%sym173517%_))
              '#!void
              (begin
                (let ((__tmp176243
                       (let ()
                         (declare (not safe))
                         (struct->list _%type173518%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym173517%_
                   '" "
                   __tmp176243))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table173520%_ _%sym173517%_ _%type173518%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table173520%_
                   _%type173518%_
                   _%sym173517%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym173515%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym173515%_))
        (let ((__tmp176244
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp176244 _%sym173515%_))
        (let ((__tmp176245
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp176245 _%sym173515%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t173483%_
               _%method173484%_
               _%sym173485%_
               _%rebind?173486%_)
        (let ((__tmp176246
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp176246 _%sym173485%_ '#t))
        (let ((_%klass173488%_ (gxc#optimizer-lookup-class _%type-t173483%_)))
          (if _%klass173488%_
              (let* ((_%vtab173490%_ (gxc#!class-method-table _%klass173488%_))
                     (_%$e173492%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab173490%_ _%method173484%_))))
                (if _%$e173492%_
                    ((lambda (_%existing173495%_)
                       (if _%rebind?173486%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t173483%_
                                '" "
                                _%method173484%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab173490%_
                                _%method173484%_
                                _%sym173485%_)))
                           (if (eq? _%existing173495%_ _%sym173485%_)
                               '#!void
                               (let ((__tmp176247
                                      (cons 'bind-method!
                                            (cons _%type-t173483%_
                                                  (cons _%method173484%_
                                                        (cons _%sym173485%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp176247
                                  _%method173484%_)))))
                     _%$e173492%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t173483%_
                         '" "
                         _%method173484%_
                         '" => "
                         _%sym173485%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab173490%_
                         _%method173484%_
                         _%sym173485%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t173483%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t173504%_ _%method173505%_ _%sym173506%_)
        (let ((_%rebind?173508%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t173504%_
           _%method173505%_
           _%sym173506%_
           _%rebind?173508%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g176248_
        (let ((_g176249_ (let () (declare (not safe)) (##length _g176248_))))
          (cond ((let () (declare (not safe)) (##fx= _g176249_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g176248_))
                ((let () (declare (not safe)) (##fx= _g176249_ 4))
                 (apply gxc#optimizer-declare-method!__% _g176248_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g176248_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym173469%_)
        (let ((_%$e173471%_
               (let ((__tmp176250
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym173469%_ __tmp176250))))
          (if _%$e173471%_
              _%$e173471%_
              (let ((_%$e173479%_
                     (let ((_%ht173473173475%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht173473173475%_
                           (let ((_%ht173477%_ _%ht173473173475%_))
                             (declare (not safe))
                             (hash-get _%ht173477%_ _%sym173469%_))
                           '#f))))
                (if _%$e173479%_
                    _%$e173479%_
                    (let ((__tmp176251
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp176251 _%sym173469%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym173462%_)
        (let ((_%type173463173465%_ (gxc#optimizer-lookup-type _%sym173462%_)))
          (if _%type173463173465%_
              (let ((_%type173467%_ _%type173463173465%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type173467%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type173467%_ '1 '#f '#f)))
                    _%type173467%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym173458%_)
        (let ((_%table173460%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table173460%_ _%sym173458%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where173443%_ _%sym173444%_)
        (let ((_%$e173447%_ (gxc#optimizer-lookup-class _%sym173444%_)))
          (if _%$e173447%_
              ((lambda (_%g173449173451%_)
                 (let ((_%val173454%_ _%g173449173451%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val173454%_
                          'gxc#!class::t))
                       _%val173454%_
                       (begin
                         (raise-contract-violation-error
                          '"contract violation"
                          'context:
                          'gerbil/compiler/optimize-base
                          'contract:
                          '(!class? val)
                          'value:
                          _%val173454%_)
                         '#!void))))
               _%$e173447%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where173443%_
                   _%sym173444%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass173441%_)
        (let ((__tmp176252
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp176252 _%klass173441%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t173438%_ _%method173439%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t173438%_)
         _%method173439%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym173436%_)
        (let ((__tmp176253
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp176253 _%sym173436%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e173318%_
                  (lambda (_%t173419%_)
                    (if (symbol? _%t173419%_)
                        (_%type-e173318%_
                         (gxc#optimizer-lookup-type _%t173419%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t173419%_
                               'gxc#!lambda::t))
                            (_%__lambda-type173320%_ _%t173419%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t173419%_
                                   'gxc#!kw-lambda::t))
                                (_%__kw-lambda-type173322%_ _%t173419%_)
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t173419%_
                                       'gxc#!kw-lambda-primary::t))
                                    (_%__kw-lambda-primary-type173324%_
                                     _%t173419%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t173419%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t173426%_ _%t173419%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t173426%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp176254
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t173426%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp176254
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t173419%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t173419%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%lambda-type173319%_
                  (lambda (_%t173407%_)
                    (let ((_%t173410%_ _%t173407%_))
                      (_%__lambda-type173320%_ _%t173410%_))))
                 (_%__lambda-type173320%_
                  (lambda (_%t173395%_)
                    (let ((_%t173398%_ _%t173395%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t173398%_ '4 '#f '#f))
                          (_%type-e173318%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t173398%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t173398%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp176255
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t173398%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp176255
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%kw-lambda-type173321%_
                  (lambda (_%t173383%_)
                    (let ((_%t173386%_ _%t173383%_))
                      (_%__kw-lambda-type173322%_ _%t173386%_))))
                 (_%__kw-lambda-type173322%_
                  (lambda (_%t173371%_)
                    (let ((_%t173374%_ _%t173371%_))
                      (_%type-e173318%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t173374%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type173323%_
                  (lambda (_%t173359%_)
                    (let ((_%t173362%_ _%t173359%_))
                      (_%__kw-lambda-primary-type173324%_ _%t173362%_))))
                 (_%__kw-lambda-primary-type173324%_
                  (lambda (_%t173345%_)
                    (let ((_%t173348%_ _%t173345%_))
                      (_%type-e173318%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t173348%_
                          '4
                          '#f
                          '#f)))))))
          (let* ((_%ht1173326%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2173328%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result173330%_
                  (if _%ht1173326%_
                      (let () (declare (not safe)) (hash->list _%ht1173326%_))
                      '()))
                 (_%result173332%_
                  (if _%ht2173328%_
                      (let ((__tmp176256
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2173328%_))))
                        (declare (not safe))
                        (__foldl1 cons _%result173330%_ __tmp176256))
                      _%result173330%_)))
            (for-each
             (lambda (_%p173335%_)
               (let* ((_%t173337%_ (cdr _%p173335%_))
                      (_%tr173339%_ (_%type-e173318%_ _%t173337%_)))
                 (set-cdr! _%p173335%_ _%tr173339%_)))
             _%result173332%_)
            (list-sort
             (lambda (_%a173342%_ _%b173343%_)
               (let ((__tmp176258 (symbol->string (car _%a173342%_)))
                     (__tmp176257 (symbol->string (car _%b173343%_))))
                 (declare (not safe))
                 (##string<? __tmp176258 __tmp176257)))
             _%result173332%_)))))))
