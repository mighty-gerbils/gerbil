(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1783878479)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp216201 (list)) (__tmp216200 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp216201
         '(type classes ssxi methods)
         __tmp216200
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args216120%_
        (apply make-instance gxc#optimizer-info::t _%$args216120%_)))
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
      (lambda (_%self216107%_)
        (let ((_%self216110%_ _%self216107%_))
          (if (let ((__tmp216202
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self216110%_))))
                (declare (not safe))
                (##fx< '4 __tmp216202))
              (begin
                (let ((__tmp216203
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self216110%_
                   __tmp216203
                   '1
                   '#f
                   '#f))
                (let ((__tmp216204
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self216110%_
                   __tmp216204
                   '2
                   '#f
                   '#f))
                (let ((__tmp216205
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self216110%_
                   __tmp216205
                   '3
                   '#f
                   '#f))
                (let ((__tmp216206
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self216110%_
                   __tmp216206
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp216207
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self216110%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self216110%_
                       '4
                       __tmp216207))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp216209 (list))
            (__tmp216208
             (cons (cons 'struct: '#t) '((equal: . #t) (print: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp216209
         '(id)
         __tmp216208
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args215982%_
        (apply make-instance gxc#!type::t _%$args215982%_)))
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
      (let ((__tmp216211 (list gxc#!type::t))
            (__tmp216210 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp216211
         '()
         __tmp216210
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args215979%_
        (apply make-instance gxc#!abort::t _%$args215979%_)))
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
      (let ((__tmp216213 (list gxc#!type::t))
            (__tmp216212 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp216213
         '()
         __tmp216212
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args215976%_
        (apply make-instance gxc#!alias::t _%$args215976%_)))
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
      (let ((__tmp216215 (list))
            (__tmp216214
             (cons (cons 'final: '#t) '((equal: . #t) (print: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp216215
         '(return effect arguments unchecked origin)
         __tmp216214
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args215973%_
        (apply make-instance gxc#!signature::t _%$args215973%_)))
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
      (let ((__tmp216217 (list gxc#!type::t))
            (__tmp216216
             (cons (cons 'struct: '#t) '((equal: . #t) (print: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp216217
         '(signature)
         __tmp216216
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
      (lambda (_%id215960%_ _%signature215961%_)
        (let ((_%signature215964%_ _%signature215961%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id215960%_ _%signature215964%_))))
    (define gxc#make-!procedure
      (lambda (_%id215938%_ _%signature215940%_)
        (if (or (not _%signature215940%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%signature215940%_
                   'gxc#!signature::t)))
            (let ((_%signature215950%_ _%signature215940%_))
              (gxc#__make-!procedure _%id215938%_ _%signature215950%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature215940%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj215917%_ _%signature215918%_)
        (let* ((_%$obj215921%_ _%$obj215917%_)
               (_%signature215929%_ _%signature215918%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj215921%_
           _%signature215929%_
           '2
           '#f
           '#f))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj215884%_ _%signature215886%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj215884%_ 'gxc#!procedure::t))
            (let ((_%$obj215891%_ _%$obj215884%_))
              (if (or (not _%signature215886%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature215886%_
                         'gxc#!signature::t)))
                  (let ((_%signature215907%_ _%signature215886%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj215891%_
                     _%signature215907%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature215886%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj215884%_)
              '#!void))))
    (define gxc#!class-meta::t
      (let ((__tmp216219 (list gxc#!type::t))
            (__tmp216218 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp216219
         '(class)
         __tmp216218
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args215881%_
        (apply make-instance gxc#!class-meta::t _%$args215881%_)))
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
      (let ((__tmp216221 (list gxc#!type::t))
            (__tmp216220
             (cons (cons 'struct: '#t)
                   '((equal: . #t) (print: super precedence-list)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!class::t
         '!class
         __tmp216221
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp216220
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args215878%_
        (apply make-instance gxc#!class::t _%$args215878%_)))
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
      (let ((__tmp216223 (list gxc#!procedure::t))
            (__tmp216222 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp216223
         '()
         __tmp216222
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args215875%_
        (apply make-instance gxc#!predicate::t _%$args215875%_)))
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
      (let ((__tmp216225 (list gxc#!procedure::t))
            (__tmp216224 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp216225
         '()
         __tmp216224
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args215872%_
        (apply make-instance gxc#!constructor::t _%$args215872%_)))
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
      (let ((__tmp216227 (list gxc#!procedure::t))
            (__tmp216226 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp216227
         '(slot checked?)
         __tmp216226
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args215869%_
        (apply make-instance gxc#!accessor::t _%$args215869%_)))
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
      (let ((__tmp216229 (list gxc#!procedure::t))
            (__tmp216228 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp216229
         '(slot checked?)
         __tmp216228
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args215866%_
        (apply make-instance gxc#!mutator::t _%$args215866%_)))
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
      (let ((__tmp216231 (list gxc#!type::t))
            (__tmp216230 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp216231
         '(methods)
         __tmp216230
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args215863%_
        (apply make-instance gxc#!interface::t _%$args215863%_)))
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
      (let ((__tmp216233 (list gxc#!procedure::t))
            (__tmp216232 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp216233
         '(arity dispatch inline inline-typedecl)
         __tmp216232
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args215860%_
        (apply make-instance gxc#!lambda::t _%$args215860%_)))
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
      (let ((__tmp216235 (list gxc#!procedure::t))
            (__tmp216234 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp216235
         '(clauses)
         __tmp216234
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args215857%_
        (apply make-instance gxc#!case-lambda::t _%$args215857%_)))
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
      (let ((__tmp216237 (list gxc#!procedure::t))
            (__tmp216236 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp216237
         '(table dispatch)
         __tmp216236
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args215854%_
        (apply make-instance gxc#!kw-lambda::t _%$args215854%_)))
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
      (let ((__tmp216239 (list gxc#!procedure::t))
            (__tmp216238 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp216239
         '(keys main)
         __tmp216238
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args215851%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args215851%_)))
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
      (let ((__tmp216240 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp216240
         '()
         '((equal: . #t))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args215848%_
        (apply make-instance gxc#!primitive::t _%$args215848%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp216242 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp216241 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp216242
         '()
         __tmp216241
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args215845%_
        (apply make-instance gxc#!primitive-predicate::t _%$args215845%_)))
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
      (let ((__tmp216244 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp216243 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp216244
         '()
         __tmp216243
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args215842%_
        (apply make-instance gxc#!primitive-lambda::t _%$args215842%_)))
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
      (let ((__tmp216246 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp216245 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp216246
         '()
         __tmp216245
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args215839%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args215839%_)))
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
      (lambda (_%self215826%_)
        (let ((_%self215829%_ _%self215826%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self215829%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self215689%_ _%klass215690%_)
        (let ((_%self215693%_ _%self215689%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self215693%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self215693%_
             _%klass215690%_
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
      (lambda (_%self215379%_
               _%id215380%_
               _%super215381%_
               _%slots215382%_
               _%ctor-method215383%_
               _%struct?215384%_
               _%final?215385%_
               _%system?215386%_
               _%metaclass215387%_)
        (let ((_%self215390%_ _%self215379%_))
          (let _%lp215401%_ ((_%rest215403%_ _%super215381%_))
            (let* ((_%$%rest215404215412%_ _%rest215403%_)
                   (_%$%else215406215420%_ (lambda () '#!void))
                   (_%$%K215408215426%_
                    (lambda (_%rest215423%_ _%super-id215424%_)
                      (if (let ((__tmp216247
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id215380%_ '()))
                                  _%super-id215424%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp216247 '8 '#f '#f))
                          (let ((__tmp216248
                                 (cons '!class (cons _%id215380%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp216248
                             _%super-id215424%_))
                          '#!void)
                      (_%lp215401%_ _%rest215423%_))))
              (if (pair? _%$%rest215404215412%_)
                  (let ((_%$%hd215409215429%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest215404215412%_)))
                        (_%$%tl215410215431%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest215404215412%_))))
                    (let* ((_%super-id215434%_ _%$%hd215409215429%_)
                           (_%rest215436%_ _%$%tl215410215431%_))
                      (_%$%K215408215426%_ _%rest215436%_ _%super-id215434%_)))
                  '#!void)))
          (let* ((_%ctor-method215487%_
                  (let ((_%$e215438%_ _%ctor-method215383%_))
                    (if _%$e215438%_
                        _%$e215438%_
                        (let _%lp215441%_ ((_%rest215443%_ _%super215381%_)
                                           (_%method215444%_ '#f))
                          (let* ((_%$%rest215445215453%_ _%rest215443%_)
                                 (_%$%else215447215461%_
                                  (lambda () _%method215444%_))
                                 (_%$%K215449215475%_
                                  (lambda (_%rest215464%_ _%super-id215465%_)
                                    (let* ((_%klass215467%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id215380%_ '()))
                                             _%super-id215465%_))
                                           (_%$e215469%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass215467%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e215469%_
                                          (if _%method215444%_
                                              (if (eq? _%$e215469%_
                                                       _%method215444%_)
                                                  (_%lp215441%_
                                                   _%rest215464%_
                                                   _%$e215469%_)
                                                  (let ((__tmp216249
                                                         (cons '!class
                                                               (cons _%id215380%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#raise-compile-error
                                                     '"conflicting implicit constructor methods"
                                                     __tmp216249
                                                     _%method215444%_
                                                     _%$e215469%_)))
                                              (_%lp215441%_
                                               _%rest215464%_
                                               _%$e215469%_))
                                          (_%lp215441%_
                                           _%rest215464%_
                                           _%method215444%_))))))
                            (if (pair? _%$%rest215445215453%_)
                                (let ((_%$%hd215450215478%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%rest215445215453%_)))
                                      (_%$%tl215451215480%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%rest215445215453%_))))
                                  (let* ((_%super-id215483%_
                                          _%$%hd215450215478%_)
                                         (_%rest215485%_ _%$%tl215451215480%_))
                                    (_%$%K215449215475%_
                                     _%rest215485%_
                                     _%super-id215483%_)))
                                (_%$%else215447215461%_)))))))
                 (_g216250_
                  (let ((__tmp216254
                         (lambda (_%klass-id215489%_)
                           (cons _%klass-id215489%_
                                 (let ((__tmp216255
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id215380%_ '()))
                                         _%klass-id215489%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp216255
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp216252
                         (lambda (_%klass-id215491%_)
                           (let ((__tmp216253
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id215380%_ '()))
                                   _%klass-id215491%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp216253
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp216254
                     __tmp216252
                     eq?
                     identity
                     '()
                     _%super215381%_))))
            (begin
              (let ((_g216251_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g216250_)
                           (##values-length _g216250_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g216251_ 2)))
                    (error "Context expects 2 values" _g216251_)))
              (let ((_%precedence-list215493%_
                     (let () (declare (not safe)) (##values-ref _g216250_ 0)))
                    (_%base-struct215494%_
                     (let () (declare (not safe)) (##values-ref _g216250_ 1))))
                (let* ((_%precedence-list215538%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id215380%_ '(t object class)))
                            _%precedence-list215493%_
                            (if (memq 'object::t _%precedence-list215493%_)
                                _%precedence-list215493%_
                                (if _%system?215386%_
                                    (if (memq 't::t _%precedence-list215493%_)
                                        _%precedence-list215493%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list215493%_
                                           '(t::t))))
                                    (let _%loop215500%_ ((_%tail215502%_
                                                          _%precedence-list215493%_)
                                                         (_%head215503%_ '()))
                                      (let* ((_%$%tail215504215512%_
                                              _%tail215502%_)
                                             (_%$%else215506215520%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (foldl__0
                                                   cons
                                                   '(object::t t::t)
                                                   _%head215503%_))))
                                             (_%$%K215508215526%_
                                              (lambda (_%rest215523%_
                                                       _%hd215524%_)
                                                (if (eq? _%hd215524%_ 't::t)
                                                    (let ((__tmp216256
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail215502%_)))
              (declare (not safe))
              (foldl__0 cons __tmp216256 _%head215503%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop215500%_
                                                     _%rest215523%_
                                                     (cons _%hd215524%_
                                                           _%head215503%_))))))
                                        (if (pair? _%$%tail215504215512%_)
                                            (let ((_%$%hd215509215529%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%tail215504215512%_)))
                                                  (_%$%tl215510215531%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%tail215504215512%_))))
                                              (let* ((_%hd215534%_
                                                      _%$%hd215509215529%_)
                                                     (_%rest215536%_
                                                      _%$%tl215510215531%_))
                                                (_%$%K215508215526%_
                                                 _%rest215536%_
                                                 _%hd215534%_)))
                                            (_%$%else215506215520%_))))))))
                       (_%fields215540%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id215380%_ '()))
                         _%precedence-list215538%_
                         _%slots215382%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self215390%_
                     _%id215380%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self215390%_
                     _%super215381%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self215390%_
                     _%precedence-list215538%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self215390%_
                     _%slots215382%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self215390%_
                     _%fields215540%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self215390%_
                     _%ctor-method215487%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self215390%_
                     _%struct?215384%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self215390%_
                     _%final?215385%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self215390%_
                     _%metaclass215387%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self215543%_
               _%id215544%_
               _%super215545%_
               _%precedence-list215546%_
               _%slots215547%_
               _%fields215548%_
               _%constructor215549%_
               _%struct?215550%_
               _%final?215551%_
               _%system?215552%_
               _%metaclass215553%_
               _%methods215554%_)
        (let ((_%self215557%_ _%self215543%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self215557%_
             _%id215544%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self215557%_
             _%super215545%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self215557%_
             _%precedence-list215546%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self215557%_
             _%slots215547%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self215557%_
             _%fields215548%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self215557%_
             _%constructor215549%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self215557%_
             _%struct?215550%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self215557%_
             _%final?215551%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self215557%_
             _%metaclass215553%_
             '10
             '#f
             '#f))
          (if _%methods215554%_
              (let ((__tmp216257
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods215554%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self215557%_
                 __tmp216257
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g216258_
        (let ((_g216259_ (let () (declare (not safe)) (##length _g216258_))))
          (cond ((let () (declare (not safe)) (##fx= _g216259_ 9))
                 (apply gxc#!class:::init!__0 _g216258_))
                ((let () (declare (not safe)) (##fx= _g216259_ 12))
                 (apply gxc#!class:::init!__1 _g216258_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g216258_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where215248%_
               _%precedence-list215249%_
               _%direct-slots215250%_)
        (let ((__tmp216261
               (lambda (_%mixin215252%_)
                 (let ((__tmp216262
                        (gxc#optimizer-resolve-class
                         _%where215248%_
                         _%mixin215252%_)))
                   (declare (not safe))
                   (##unchecked-structure-ref __tmp216262 '5 '#f '#f))))
              (__tmp216260
               (lambda (_%slot-list215254%_ _%slot-table215255%_)
                 (cdr _%slot-list215254%_))))
          (declare (not safe))
          (c4-compute-class-slots
           _%precedence-list215249%_
           _%direct-slots215250%_
           __tmp216261
           __tmp216260))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass215207%_ _%slot215208%_)
        (let _%lp215210%_ ((_%rest215212%_
                            (##structure-ref
                             _%klass215207%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset215213%_ '1))
          (let* ((_%$%rest215214215222%_ _%rest215212%_)
                 (_%$%else215216215230%_
                  (lambda ()
                    (let ((__tmp216264
                           (##structure-ref
                            _%klass215207%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp216263
                           (##structure-ref
                            _%klass215207%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp216264
                       __tmp216263
                       _%slot215208%_))))
                 (_%$%K215218215236%_
                  (lambda (_%rest215233%_ _%s215234%_)
                    (if (eq? _%s215234%_ _%slot215208%_)
                        _%offset215213%_
                        (_%lp215210%_
                         _%rest215233%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset215213%_ '1)))))))
            (if (pair? _%$%rest215214215222%_)
                (let ((_%$%hd215219215239%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest215214215222%_)))
                      (_%$%tl215220215241%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest215214215222%_))))
                  (let* ((_%s215244%_ _%$%hd215219215239%_)
                         (_%rest215246%_ _%$%tl215220215241%_))
                    (_%$%K215218215236%_ _%rest215246%_ _%s215244%_)))
                (_%$%else215216215230%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass215165%_ _%slot215166%_)
        (if (gxc#!class-struct-slot? _%klass215165%_ _%slot215166%_)
            _%klass215165%_
            (let _%lp215168%_ ((_%rest215170%_
                                (##structure-ref
                                 _%klass215165%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%$%rest215171215179%_ _%rest215170%_)
                     (_%$%else215173215187%_ (lambda () '#f))
                     (_%$%K215175215195%_
                      (lambda (_%rest215190%_ _%super215191%_)
                        (let ((_%super-class215193%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass215165%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot215166%_ '())))
                                _%super215191%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class215193%_
                               _%slot215166%_)
                              _%super-class215193%_
                              (_%lp215168%_ _%rest215190%_))))))
                (if (pair? _%$%rest215171215179%_)
                    (let ((_%$%hd215176215198%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest215171215179%_)))
                          (_%$%tl215177215200%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest215171215179%_))))
                      (let* ((_%super215203%_ _%$%hd215176215198%_)
                             (_%rest215205%_ _%$%tl215177215200%_))
                        (_%$%K215175215195%_ _%rest215205%_ _%super215203%_)))
                    (_%$%else215173215187%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass215162%_ _%slot215163%_)
        (if (##structure-ref _%klass215162%_ '7 gxc#!class::t '#f)
            (memq _%slot215163%_
                  (##structure-ref _%klass215162%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self215147%_ _%id215148%_)
        (let ((_%self215151%_ _%self215147%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self215151%_
             _%id215148%_
             '1
             '#f
             '#f))
          (let ((__tmp216265
                 (let ((__obj216195
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
                      __obj216195
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj216195
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj216195
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj216195)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self215151%_
             __tmp216265
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self215010%_ _%id215011%_)
        (let ((_%self215014%_ _%self215010%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self215014%_
             _%id215011%_
             '1
             '#f
             '#f))
          (let ((__tmp216266
                 (let ((__obj216196
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
                      __obj216196
                      _%id215011%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj216196
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj216196)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self215014%_
             __tmp216266
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
      (lambda (_%self214871%_ _%id214872%_ _%slot214873%_ _%checked?214874%_)
        (let ((_%self214877%_ _%self214871%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self214877%_
             _%id214872%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self214877%_
             _%slot214873%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self214877%_
             _%checked?214874%_
             '4
             '#f
             '#f))
          (let ((__tmp216267
                 (let ((__obj216197
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
                     (##unchecked-structure-set! __obj216197 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj216197
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp216268 (cons _%id214872%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj216197
                      __tmp216268
                      '3
                      '#f
                      '#f))
                   __obj216197)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self214877%_
             __tmp216267
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self214732%_ _%id214733%_ _%slot214734%_ _%checked?214735%_)
        (let ((_%self214738%_ _%self214732%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self214738%_
             _%id214733%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self214738%_
             _%slot214734%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self214738%_
             _%checked?214735%_
             '4
             '#f
             '#f))
          (let ((__tmp216269
                 (let ((__obj216198
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
                      __obj216198
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj216198
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp216270 (cons _%id214733%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj216198
                      __tmp216270
                      '3
                      '#f
                      '#f))
                   __obj216198)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self214738%_
             __tmp216269
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords214576%_
               _%$%signature214573214577%_
               _%self214578%_
               _%arity214579%_
               _%dispatch214580%_)
        (let* ((_%signature214582%_
                (if (eq? _%$%signature214573214577%_ absent-value)
                    '#f
                    _%$%signature214573214577%_))
               (_%self214585%_ _%self214578%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self214585%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self214585%_
             _%arity214579%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self214585%_
             _%dispatch214580%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self214585%_
             _%signature214582%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords214600%_ . _%args214601%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords214600%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords214600%_
                  'signature:
                  absent-value))
               _%args214601%_)))
    (define gxc#!lambda:::init!
      (lambda _%$%args214574214607%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%$%args214574214607%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords214417%_
               _%$%signature214414214418%_
               _%self214419%_
               _%clauses214420%_)
        (let* ((_%signature214422%_
                (if (eq? _%$%signature214414214418%_ absent-value)
                    '#f
                    _%$%signature214414214418%_))
               (_%self214425%_ _%self214419%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self214425%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self214425%_
             _%signature214422%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self214425%_
             _%clauses214420%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords214440%_ . _%args214441%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords214440%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords214440%_
                  'signature:
                  absent-value))
               _%args214441%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%$%args214415214447%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%$%args214415214447%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self214275%_ _%tab214276%_ _%dispatch214277%_)
        (let ((_%self214280%_ _%self214275%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self214280%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self214280%_
             _%tab214276%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self214280%_
             _%dispatch214277%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self214137%_ _%keys214138%_ _%main214139%_)
        (let ((_%self214142%_ _%self214137%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self214142%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self214142%_
             _%keys214138%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self214142%_
             _%main214139%_
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
      (lambda (_%self213756%_ _%id213757%_)
        (let ((_%self213760%_ _%self213756%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self213760%_
             _%id213757%_
             '1
             '#f
             '#f))
          (let ((__tmp216271
                 (let ((__obj216199
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
                      __obj216199
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj216199
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj216199
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj216199)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self213760%_
             __tmp216271
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
      (lambda (_%klass213626%_)
        (let ((_%$e213628%_
               (##structure-ref _%klass213626%_ '11 gxc#!class::t '#f)))
          (if _%$e213628%_
              _%$e213628%_
              (let ((_%tab213632%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass213626%_
                 _%tab213632%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab213632%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass213618%_ _%method213619%_)
        (let ((_%$%tab213620213622%_
               (##structure-ref _%klass213618%_ '11 gxc#!class::t '#f)))
          (if _%$%tab213620213622%_
              (let ((_%tab213624%_ _%$%tab213620213622%_))
                (declare (not safe))
                (hash-get _%tab213624%_ _%method213619%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a213603%_ _%type-b213604%_)
        (if _%type-a213603%_
            (if _%type-b213604%_
                (let ((_%$e213606%_ (eq? _%type-a213603%_ _%type-b213604%_)))
                  (if _%$e213606%_
                      _%$e213606%_
                      (let ((_%$e213609%_
                             (eq? (##structure-ref
                                   _%type-b213604%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e213609%_
                            _%$e213609%_
                            (let ((_%$e213612%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a213603%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b213604%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e213612%_
                                  _%$e213612%_
                                  (let ((_%$e213615%_
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-instance-of?
                                                _%type-a213603%_
                                                'gxc#!class::t))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-instance-of?
                                                    _%type-b213604%_
                                                    'gxc#!class::t))
                                                 (gxc#!class-subclass?
                                                  _%type-a213603%_
                                                  _%type-b213604%_)
                                                 '#f)
                                             '#f)))
                                    (if _%$e213615%_
                                        _%$e213615%_
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%type-a213603%_
                                               'gxc#!interface::t))
                                            (eq? (##structure-ref
                                                  _%type-b213604%_
                                                  '1
                                                  gxc#!type::t
                                                  '#f)
                                                 'interface-descriptor::t)
                                            '#f)))))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a213554%_ _%klass-b213555%_)
        (let ((_%$e213557%_
               (eq? (##structure-ref _%klass-a213554%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b213555%_ '1 gxc#!type::t '#f))))
          (if _%$e213557%_
              _%$e213557%_
              (let ((_%klass-id-b213560%_
                     (##structure-ref _%klass-b213555%_ '1 gxc#!type::t '#f))
                    (_%precedence-list213561%_
                     (##structure-ref _%klass-a213554%_ '3 gxc#!class::t '#f)))
                (let _%loop213563%_ ((_%rest213565%_
                                      _%precedence-list213561%_))
                  (let* ((_%$%rest213566213574%_ _%rest213565%_)
                         (_%$%else213568213582%_ (lambda () '#f))
                         (_%$%K213570213591%_
                          (lambda (_%rest213585%_ _%klass-name213586%_)
                            (let ((_%$e213588%_
                                   (eq? (let ((__tmp216272
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a213554%_
                                                            (cons _%klass-b213555%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name213586%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp216272
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b213560%_)))
                              (if _%$e213588%_
                                  _%$e213588%_
                                  (_%loop213563%_ _%rest213585%_))))))
                    (if (pair? _%$%rest213566213574%_)
                        (let ((_%$%hd213571213594%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest213566213574%_)))
                              (_%$%tl213572213596%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest213566213574%_))))
                          (let* ((_%klass-name213599%_ _%$%hd213571213594%_)
                                 (_%rest213601%_ _%$%tl213572213596%_))
                            (_%$%K213570213591%_
                             _%rest213601%_
                             _%klass-name213599%_)))
                        (_%$%else213568213582%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type213552%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type213552%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type213552%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc213541%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc213541%_ 'gxc#!procedure::t))
            (let ((_%proc213544%_ _%proc213541%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc213544%_ '2 '#f '#f))
                  (let ((__tmp216273
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc213544%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp216273 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@365.11-365.15"
               'contract:
               '!procedure?
               'value:
               _%proc213541%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym213523%_ _%type213524%_ _%local?213525%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type213524%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym213523%_
                     _%type213524%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym213523%_ '" " _%type213524%_))
        (let ((_%table213527%_
               (if _%local?213525%_
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
          (hash-put! _%table213527%_ _%sym213523%_ _%type213524%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym213532%_ _%type213533%_)
        (let ((_%local?213535%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym213532%_
           _%type213533%_
           _%local?213535%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g216274_
        (let ((_g216275_ (let () (declare (not safe)) (##length _g216274_))))
          (cond ((let () (declare (not safe)) (##fx= _g216275_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g216274_))
                ((let () (declare (not safe)) (##fx= _g216275_ 3))
                 (apply gxc#optimizer-declare-type!__% _g216274_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g216274_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym213517%_ _%type213518%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type213518%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym213517%_
                     _%type213518%_)))
        (let ((_%table213520%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp216276
                 (let () (declare (not safe)) (struct->list _%type213518%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym213517%_ '" " __tmp216276))
          (let ()
            (declare (not safe))
            (hash-put! _%table213520%_ _%sym213517%_ _%type213518%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table213520%_ _%type213518%_ _%sym213517%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym213512%_ _%type213513%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type213513%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym213512%_
                     _%type213513%_)))
        (let ((_%table213515%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table213515%_ _%sym213512%_))
              '#!void
              (begin
                (let ((__tmp216277
                       (let ()
                         (declare (not safe))
                         (struct->list _%type213513%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym213512%_
                   '" "
                   __tmp216277))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table213515%_ _%sym213512%_ _%type213513%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table213515%_
                   _%type213513%_
                   _%sym213512%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym213510%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym213510%_))
        (let ((__tmp216278
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp216278 _%sym213510%_))
        (let ((__tmp216279
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp216279 _%sym213510%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t213478%_
               _%method213479%_
               _%sym213480%_
               _%rebind?213481%_)
        (let ((__tmp216280
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp216280 _%sym213480%_ '#t))
        (let ((_%klass213483%_ (gxc#optimizer-lookup-class _%type-t213478%_)))
          (if _%klass213483%_
              (let* ((_%vtab213485%_ (gxc#!class-method-table _%klass213483%_))
                     (_%$e213487%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab213485%_ _%method213479%_))))
                (if _%$e213487%_
                    (if _%rebind?213481%_
                        (let ()
                          (let ()
                            (declare (not safe))
                            (gxc#verbose
                             '"declare-method: rebind existing method"
                             _%type-t213478%_
                             '" "
                             _%method213479%_))
                          (let ()
                            (declare (not safe))
                            (hash-put!
                             _%vtab213485%_
                             _%method213479%_
                             _%sym213480%_)))
                        (if (eq? _%$e213487%_ _%sym213480%_)
                            '#!void
                            (let ((__tmp216281
                                   (cons 'bind-method!
                                         (cons _%type-t213478%_
                                               (cons _%method213479%_
                                                     (cons _%sym213480%_
                                                           '()))))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"declare-method: duplicate method declaration"
                               __tmp216281
                               _%method213479%_))))
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t213478%_
                         '" "
                         _%method213479%_
                         '" => "
                         _%sym213480%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab213485%_
                         _%method213479%_
                         _%sym213480%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t213478%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t213499%_ _%method213500%_ _%sym213501%_)
        (let ((_%rebind?213503%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t213499%_
           _%method213500%_
           _%sym213501%_
           _%rebind?213503%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g216282_
        (let ((_g216283_ (let () (declare (not safe)) (##length _g216282_))))
          (cond ((let () (declare (not safe)) (##fx= _g216283_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g216282_))
                ((let () (declare (not safe)) (##fx= _g216283_ 4))
                 (apply gxc#optimizer-declare-method!__% _g216282_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g216282_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym213464%_)
        (let ((_%$e213466%_
               (let ((__tmp216284
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym213464%_ __tmp216284))))
          (if _%$e213466%_
              _%$e213466%_
              (let ((_%$e213474%_
                     (let ((_%$%ht213468213470%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%$%ht213468213470%_
                           (let ((_%ht213472%_ _%$%ht213468213470%_))
                             (declare (not safe))
                             (hash-get _%ht213472%_ _%sym213464%_))
                           '#f))))
                (if _%$e213474%_
                    _%$e213474%_
                    (let ((__tmp216285
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp216285 _%sym213464%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym213457%_)
        (let ((_%$%type213458213460%_
               (gxc#optimizer-lookup-type _%sym213457%_)))
          (if _%$%type213458213460%_
              (let ((_%type213462%_ _%$%type213458213460%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type213462%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type213462%_ '1 '#f '#f)))
                    _%type213462%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym213453%_)
        (let ((_%table213455%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table213455%_ _%sym213453%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where213438%_ _%sym213439%_)
        (let ((_%$e213442%_ (gxc#optimizer-lookup-class _%sym213439%_)))
          (if _%$e213442%_
              (let ((_%val213449%_ _%$e213442%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%val213449%_ 'gxc#!class::t))
                    _%val213449%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/compiler/optimize-base
                       'contract:
                       '(!class? val)
                       'value:
                       _%val213449%_)
                      '#!void)))
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where213438%_
                   _%sym213439%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass213436%_)
        (let ((__tmp216286
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp216286 _%klass213436%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t213433%_ _%method213434%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t213433%_)
         _%method213434%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym213431%_)
        (let ((__tmp216287
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp216287 _%sym213431%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e212906%_
                  (lambda (_%t213372%_)
                    (if (symbol? _%t213372%_)
                        (_%type-e212906%_
                         (gxc#optimizer-lookup-type _%t213372%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t213372%_
                               'gxc#!lambda::t))
                            (let* ((_%t213376%_ _%t213372%_)
                                   (_%t213380%_ _%t213376%_))
                              (_%__lambda-type213032%_ _%t213380%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t213372%_
                                   'gxc#!kw-lambda::t))
                                (let* ((_%t213392%_ _%t213372%_)
                                       (_%t213396%_ _%t213392%_))
                                  (_%__kw-lambda-type213155%_ _%t213396%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t213372%_
                                       'gxc#!kw-lambda-primary::t))
                                    (let* ((_%t213407%_ _%t213372%_)
                                           (_%t213411%_ _%t213407%_))
                                      (_%__kw-lambda-primary-type213278%_
                                       _%t213411%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t213372%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t213422%_ _%t213372%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t213422%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp216288
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t213422%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp216288
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t213372%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t213372%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%__lambda-type213032%_
                  (lambda (_%t213360%_)
                    (let ((_%t213363%_ _%t213360%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t213363%_ '4 '#f '#f))
                          (_%type-e212906%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t213363%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t213363%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp216289
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t213363%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp216289
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%lambda-type213033%_
                  (lambda (_%t213348%_)
                    (let ((_%t213351%_ _%t213348%_))
                      (_%__lambda-type213032%_ _%t213351%_))))
                 (_%__kw-lambda-type213155%_
                  (lambda (_%t213336%_)
                    (let ((_%t213339%_ _%t213336%_))
                      (_%type-e212906%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t213339%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-type213156%_
                  (lambda (_%t213324%_)
                    (let ((_%t213327%_ _%t213324%_))
                      (_%__kw-lambda-type213155%_ _%t213327%_))))
                 (_%__kw-lambda-primary-type213278%_
                  (lambda (_%t213312%_)
                    (let ((_%t213315%_ _%t213312%_))
                      (_%type-e212906%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t213315%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type213279%_
                  (lambda (_%t213300%_)
                    (let ((_%t213303%_ _%t213300%_))
                      (_%__kw-lambda-primary-type213278%_ _%t213303%_)))))
          (let* ((_%ht1213281%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2213283%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result213285%_
                  (if _%ht1213281%_
                      (let () (declare (not safe)) (hash->list _%ht1213281%_))
                      '()))
                 (_%result213287%_
                  (if _%ht2213283%_
                      (let ((__tmp216290
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2213283%_))))
                        (declare (not safe))
                        (foldl__0 cons _%result213285%_ __tmp216290))
                      _%result213285%_)))
            (for-each
             (lambda (_%p213290%_)
               (let* ((_%t213292%_ (cdr _%p213290%_))
                      (_%tr213294%_ (_%type-e212906%_ _%t213292%_)))
                 (set-cdr! _%p213290%_ _%tr213294%_)))
             _%result213287%_)
            (list-sort
             (lambda (_%a213297%_ _%b213298%_)
               (let ((__tmp216292 (symbol->string (car _%a213297%_)))
                     (__tmp216291 (symbol->string (car _%b213298%_))))
                 (declare (not safe))
                 (##string<? __tmp216292 __tmp216291)))
             _%result213287%_)))))))
