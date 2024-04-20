(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1713631268)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp152104 (list)) (__tmp152103 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp152104
         '(type classes ssxi methods)
         __tmp152103
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args152075%_
        (apply make-instance gxc#optimizer-info::t _%$args152075%_)))
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
      (lambda (_%self149216152060%_)
        (let* ((_%self152063%_ _%self149216152060%_)
               (_%self152065%_ _%self152063%_))
          (if (let ((__tmp152105
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self152065%_))))
                (declare (not safe))
                (##fx< '4 __tmp152105))
              (begin
                (let ((__tmp152106
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self152065%_
                   __tmp152106
                   '1
                   '#f
                   '#f))
                (let ((__tmp152107
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self152065%_
                   __tmp152107
                   '2
                   '#f
                   '#f))
                (let ((__tmp152108
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self152065%_
                   __tmp152108
                   '3
                   '#f
                   '#f))
                (let ((__tmp152109
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self152065%_
                   __tmp152109
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp152110
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self152065%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self152065%_
                       '4
                       __tmp152110))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp152112 (list))
            (__tmp152111
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp152112
         '(id)
         __tmp152111
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args151935%_
        (apply make-instance gxc#!type::t _%$args151935%_)))
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
      (let ((__tmp152114 (list gxc#!type::t))
            (__tmp152113 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp152114
         '()
         __tmp152113
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args151932%_
        (apply make-instance gxc#!abort::t _%$args151932%_)))
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
      (let ((__tmp152116 (list gxc#!type::t))
            (__tmp152115 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp152116
         '()
         __tmp152115
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args151929%_
        (apply make-instance gxc#!alias::t _%$args151929%_)))
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
      (let ((__tmp152118 (list))
            (__tmp152117
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp152118
         '(return effect arguments unchecked origin)
         __tmp152117
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args151926%_
        (apply make-instance gxc#!signature::t _%$args151926%_)))
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
      (let ((__tmp152120 (list gxc#!type::t))
            (__tmp152119
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp152120
         '(signature)
         __tmp152119
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
      (lambda (_%id151905%_ _%signature151906%_)
        (if ((lambda (_%$obj151909%_)
               (or (not _%$obj151909%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj151909%_
                      'gxc#!signature::t))))
             _%signature151906%_)
            (let ((_%signature151916%_ _%signature151906%_))
              (gxc#__make-!procedure _%id151905%_ _%signature151916%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature151906%_)
              '#!void))))
    (define gxc#__make-!procedure
      (lambda (_%id151891%_ _%signature151893%_)
        (let ((_%signature151896%_ _%signature151893%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id151891%_ _%signature151896%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj151860%_ _%signature151861%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj151860%_ 'gxc#!procedure::t))
            (let ((_%$obj151865%_ _%$obj151860%_))
              (if ((lambda (_%$obj151874%_)
                     (or (not _%$obj151874%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj151874%_
                            'gxc#!signature::t))))
                   _%signature151861%_)
                  (let ((_%signature151881%_ _%signature151861%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj151865%_
                     _%signature151881%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature151861%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj151860%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj151837%_ _%signature151839%_)
        (let* ((_%$obj151843%_ _%$obj151837%_)
               (_%signature151851%_ _%signature151839%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj151843%_
           _%signature151851%_
           '2
           '#f
           '#f))))
    (define gxc#!class-meta::t
      (let ((__tmp152122 (list gxc#!type::t))
            (__tmp152121 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp152122
         '(class)
         __tmp152121
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args151834%_
        (apply make-instance gxc#!class-meta::t _%$args151834%_)))
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
      (let ((__tmp152124 (list gxc#!type::t))
            (__tmp152123
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
         __tmp152124
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp152123
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args151831%_
        (apply make-instance gxc#!class::t _%$args151831%_)))
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
      (let ((__tmp152126 (list gxc#!procedure::t))
            (__tmp152125 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp152126
         '()
         __tmp152125
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args151828%_
        (apply make-instance gxc#!predicate::t _%$args151828%_)))
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
      (let ((__tmp152128 (list gxc#!procedure::t))
            (__tmp152127 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp152128
         '()
         __tmp152127
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args151825%_
        (apply make-instance gxc#!constructor::t _%$args151825%_)))
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
      (let ((__tmp152130 (list gxc#!procedure::t))
            (__tmp152129 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp152130
         '(slot checked?)
         __tmp152129
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args151822%_
        (apply make-instance gxc#!accessor::t _%$args151822%_)))
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
      (let ((__tmp152132 (list gxc#!procedure::t))
            (__tmp152131 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp152132
         '(slot checked?)
         __tmp152131
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args151819%_
        (apply make-instance gxc#!mutator::t _%$args151819%_)))
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
      (let ((__tmp152134 (list gxc#!type::t))
            (__tmp152133 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp152134
         '(methods)
         __tmp152133
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args151816%_
        (apply make-instance gxc#!interface::t _%$args151816%_)))
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
      (let ((__tmp152136 (list gxc#!procedure::t))
            (__tmp152135
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp152136
         '(arity dispatch inline inline-typedecl)
         __tmp152135
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args151813%_
        (apply make-instance gxc#!lambda::t _%$args151813%_)))
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
      (let ((__tmp152138 (list gxc#!procedure::t))
            (__tmp152137 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp152138
         '(clauses)
         __tmp152137
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args151810%_
        (apply make-instance gxc#!case-lambda::t _%$args151810%_)))
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
      (let ((__tmp152140 (list gxc#!procedure::t))
            (__tmp152139
             (cons (cons 'struct: '#t) '((equal: table dispatch)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp152140
         '(table dispatch)
         __tmp152139
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args151807%_
        (apply make-instance gxc#!kw-lambda::t _%$args151807%_)))
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
      (let ((__tmp152142 (list gxc#!procedure::t))
            (__tmp152141 (cons (cons 'struct: '#t) '((equal: keys main)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp152142
         '(keys main)
         __tmp152141
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args151804%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args151804%_)))
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
      (let ((__tmp152143 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp152143
         '()
         '((equal:))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args151801%_
        (apply make-instance gxc#!primitive::t _%$args151801%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp152145 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp152144 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp152145
         '()
         __tmp152144
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args151798%_
        (apply make-instance gxc#!primitive-predicate::t _%$args151798%_)))
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
      (let ((__tmp152147 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp152146 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp152147
         '()
         __tmp152146
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args151795%_
        (apply make-instance gxc#!primitive-lambda::t _%$args151795%_)))
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
      (let ((__tmp152149 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp152148 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp152149
         '()
         __tmp152148
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args151792%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args151792%_)))
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
      (lambda (_%self149217151777%_)
        (let* ((_%self151780%_ _%self149217151777%_)
               (_%self151782%_ _%self151780%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self151782%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self149218151639%_ _%klass151641%_)
        (let* ((_%self151643%_ _%self149218151639%_)
               (_%self151645%_ _%self151643%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self151645%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151645%_
             _%klass151641%_
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
      (lambda (_%self149219151327%_
               _%id151329%_
               _%super151330%_
               _%slots151331%_
               _%ctor-method151332%_
               _%struct?151333%_
               _%final?151334%_
               _%system?151335%_
               _%metaclass151336%_)
        (let* ((_%self151338%_ _%self149219151327%_)
               (_%self151340%_ _%self151338%_))
          (let _%lp151350%_ ((_%rest151352%_ _%super151330%_))
            (let* ((_%rest151353151361%_ _%rest151352%_)
                   (_%else151355151369%_ (lambda () '#!void))
                   (_%K151357151375%_
                    (lambda (_%rest151372%_ _%super-id151373%_)
                      (if (let ((__tmp152150
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id151329%_ '()))
                                  _%super-id151373%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp152150 '8 '#f '#f))
                          (let ((__tmp152151
                                 (cons '!class (cons _%id151329%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp152151
                             _%super-id151373%_))
                          '#!void)
                      (_%lp151350%_ _%rest151372%_))))
              (if (pair? _%rest151353151361%_)
                  (let ((_%hd151358151378%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest151353151361%_)))
                        (_%tl151359151380%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest151353151361%_))))
                    (let* ((_%super-id151383%_ _%hd151358151378%_)
                           (_%rest151385%_ _%tl151359151380%_))
                      (_%K151357151375%_ _%rest151385%_ _%super-id151383%_)))
                  '#!void)))
          (let* ((_%ctor-method151436%_
                  (let ((_%$e151387%_ _%ctor-method151332%_))
                    (if _%$e151387%_
                        _%$e151387%_
                        (let _%lp151390%_ ((_%rest151392%_ _%super151330%_)
                                           (_%method151393%_ '#f))
                          (let* ((_%rest151394151402%_ _%rest151392%_)
                                 (_%else151396151410%_
                                  (lambda () _%method151393%_))
                                 (_%K151398151424%_
                                  (lambda (_%rest151413%_ _%super-id151414%_)
                                    (let* ((_%klass151416%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id151329%_ '()))
                                             _%super-id151414%_))
                                           (_%$e151418%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass151416%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e151418%_
                                          ((lambda (_%ctor-method151421%_)
                                             (if _%method151393%_
                                                 (if (eq? _%ctor-method151421%_
                                                          _%method151393%_)
                                                     (_%lp151390%_
                                                      _%rest151413%_
                                                      _%ctor-method151421%_)
                                                     (let ((__tmp152152
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id151329%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp152152
                _%method151393%_
                _%ctor-method151421%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp151390%_
                                                  _%rest151413%_
                                                  _%ctor-method151421%_)))
                                           _%$e151418%_)
                                          (_%lp151390%_
                                           _%rest151413%_
                                           _%method151393%_))))))
                            (if (pair? _%rest151394151402%_)
                                (let ((_%hd151399151427%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest151394151402%_)))
                                      (_%tl151400151429%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest151394151402%_))))
                                  (let* ((_%super-id151432%_
                                          _%hd151399151427%_)
                                         (_%rest151434%_ _%tl151400151429%_))
                                    (_%K151398151424%_
                                     _%rest151434%_
                                     _%super-id151432%_)))
                                (_%else151396151410%_)))))))
                 (_g152153_
                  (let ((__tmp152157
                         (lambda (_%klass-id151438%_)
                           (cons _%klass-id151438%_
                                 (let ((__tmp152158
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id151329%_ '()))
                                         _%klass-id151438%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp152158
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp152155
                         (lambda (_%klass-id151440%_)
                           (let ((__tmp152156
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id151329%_ '()))
                                   _%klass-id151440%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp152156
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp152157
                     __tmp152155
                     eq?
                     identity
                     '()
                     _%super151330%_))))
            (begin
              (let ((_g152154_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g152153_)
                           (##vector-length _g152153_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g152154_ 2)))
                    (error "Context expects 2 values" _g152154_)))
              (let ((_%precedence-list151442%_
                     (let () (declare (not safe)) (##vector-ref _g152153_ 0)))
                    (_%base-struct151443%_
                     (let () (declare (not safe)) (##vector-ref _g152153_ 1))))
                (let* ((_%precedence-list151487%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id151329%_ '(t object class)))
                            _%precedence-list151442%_
                            (if (memq 'object::t _%precedence-list151442%_)
                                _%precedence-list151442%_
                                (if _%system?151335%_
                                    (if (memq 't::t _%precedence-list151442%_)
                                        _%precedence-list151442%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list151442%_
                                           '(t::t))))
                                    (let _%loop151449%_ ((_%tail151451%_
                                                          _%precedence-list151442%_)
                                                         (_%head151452%_ '()))
                                      (let* ((_%tail151453151461%_
                                              _%tail151451%_)
                                             (_%else151455151469%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head151452%_))))
                                             (_%K151457151475%_
                                              (lambda (_%rest151472%_
                                                       _%hd151473%_)
                                                (if (eq? _%hd151473%_ 't::t)
                                                    (let ((__tmp152159
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail151451%_)))
              (declare (not safe))
              (__foldl1 cons __tmp152159 _%head151452%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop151449%_
                                                     _%rest151472%_
                                                     (cons _%hd151473%_
                                                           _%head151452%_))))))
                                        (if (pair? _%tail151453151461%_)
                                            (let ((_%hd151458151478%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail151453151461%_)))
                                                  (_%tl151459151480%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail151453151461%_))))
                                              (let* ((_%hd151483%_
                                                      _%hd151458151478%_)
                                                     (_%rest151485%_
                                                      _%tl151459151480%_))
                                                (_%K151457151475%_
                                                 _%rest151485%_
                                                 _%hd151483%_)))
                                            (_%else151455151469%_))))))))
                       (_%fields151489%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id151329%_ '()))
                         _%base-struct151443%_
                         _%precedence-list151487%_
                         _%slots151331%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self151340%_
                     _%id151329%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self151340%_
                     _%super151330%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self151340%_
                     _%precedence-list151487%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self151340%_
                     _%slots151331%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self151340%_
                     _%fields151489%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self151340%_
                     _%ctor-method151436%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self151340%_
                     _%struct?151333%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self151340%_
                     _%final?151334%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self151340%_
                     _%metaclass151336%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self149220151492%_
               _%id151494%_
               _%super151495%_
               _%precedence-list151496%_
               _%slots151497%_
               _%fields151498%_
               _%constructor151499%_
               _%struct?151500%_
               _%final?151501%_
               _%system?151502%_
               _%metaclass151503%_
               _%methods151504%_)
        (let* ((_%self151506%_ _%self149220151492%_)
               (_%self151508%_ _%self151506%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151508%_
             _%id151494%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151508%_
             _%super151495%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151508%_
             _%precedence-list151496%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151508%_
             _%slots151497%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151508%_
             _%fields151498%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151508%_
             _%constructor151499%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151508%_
             _%struct?151500%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151508%_
             _%final?151501%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151508%_
             _%metaclass151503%_
             '10
             '#f
             '#f))
          (if _%methods151504%_
              (let ((__tmp152160
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods151504%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self151508%_
                 __tmp152160
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g152162_
        (let ((_g152161_ (let () (declare (not safe)) (##length _g152162_))))
          (cond ((let () (declare (not safe)) (##fx= _g152161_ 9))
                 (apply gxc#!class:::init!__0 _g152162_))
                ((let () (declare (not safe)) (##fx= _g152161_ 12))
                 (apply gxc#!class:::init!__1 _g152162_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g152162_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where151179%_
               _%base-struct151180%_
               _%precedence-list151181%_
               _%direct-slots151182%_)
        (let* ((_%base-fields151184%_
                (if _%base-struct151180%_
                    (let ((__tmp152163
                           (gxc#optimizer-resolve-class
                            _%where151179%_
                            _%base-struct151180%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp152163 '5 '#f '#f))
                    '()))
               (_%r-fields151186%_ (reverse _%base-fields151184%_))
               (_%seen-slots151194%_
                (let ((_%tab151188%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g151189151191%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab151188%_ _%g151189151191%_ '#t)))
                   _%base-fields151184%_)
                  _%tab151188%_))
               (_%process-slot151198%_
                (lambda (_%slot151196%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots151194%_ _%slot151196%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots151194%_
                           _%slot151196%_
                           '#t))
                        (set! _%r-fields151186%_
                              (cons _%slot151196%_ _%r-fields151186%_)))))))
          (for-each
           (lambda (_%mixin151201%_)
             (let ((_%klass151203%_
                    (gxc#optimizer-resolve-class
                     _%where151179%_
                     _%mixin151201%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass151203%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot151198%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass151203%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list151181%_)
          (for-each _%process-slot151198%_ _%direct-slots151182%_)
          (let () (declare (not safe)) (##reverse _%r-fields151186%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass151138%_ _%slot151139%_)
        (let _%lp151141%_ ((_%rest151143%_
                            (##structure-ref
                             _%klass151138%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset151144%_ '1))
          (let* ((_%rest151145151153%_ _%rest151143%_)
                 (_%else151147151161%_
                  (lambda ()
                    (let ((__tmp152165
                           (##structure-ref
                            _%klass151138%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp152164
                           (##structure-ref
                            _%klass151138%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp152165
                       __tmp152164
                       _%slot151139%_))))
                 (_%K151149151167%_
                  (lambda (_%rest151164%_ _%s151165%_)
                    (if (eq? _%s151165%_ _%slot151139%_)
                        _%offset151144%_
                        (_%lp151141%_
                         _%rest151164%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset151144%_ '1)))))))
            (if (pair? _%rest151145151153%_)
                (let ((_%hd151150151170%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest151145151153%_)))
                      (_%tl151151151172%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest151145151153%_))))
                  (let* ((_%s151175%_ _%hd151150151170%_)
                         (_%rest151177%_ _%tl151151151172%_))
                    (_%K151149151167%_ _%rest151177%_ _%s151175%_)))
                (_%else151147151161%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass151096%_ _%slot151097%_)
        (if (gxc#!class-struct-slot? _%klass151096%_ _%slot151097%_)
            _%klass151096%_
            (let _%lp151099%_ ((_%rest151101%_
                                (##structure-ref
                                 _%klass151096%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest151102151110%_ _%rest151101%_)
                     (_%else151104151118%_ (lambda () '#f))
                     (_%K151106151126%_
                      (lambda (_%rest151121%_ _%super151122%_)
                        (let ((_%super-class151124%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass151096%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot151097%_ '())))
                                _%super151122%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class151124%_
                               _%slot151097%_)
                              _%super-class151124%_
                              (_%lp151099%_ _%rest151121%_))))))
                (if (pair? _%rest151102151110%_)
                    (let ((_%hd151107151129%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest151102151110%_)))
                          (_%tl151108151131%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest151102151110%_))))
                      (let* ((_%super151134%_ _%hd151107151129%_)
                             (_%rest151136%_ _%tl151108151131%_))
                        (_%K151106151126%_ _%rest151136%_ _%super151134%_)))
                    (_%else151104151118%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass151093%_ _%slot151094%_)
        (if (##structure-ref _%klass151093%_ '7 gxc#!class::t '#f)
            (memq _%slot151094%_
                  (##structure-ref _%klass151093%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self149221151077%_ _%id151079%_)
        (let* ((_%self151081%_ _%self149221151077%_)
               (_%self151083%_ _%self151081%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151083%_
             _%id151079%_
             '1
             '#f
             '#f))
          (let ((__tmp152166
                 (let ((__obj152098
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
                      __obj152098
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj152098
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj152098
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj152098)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151083%_
             __tmp152166
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self149222150939%_ _%id150941%_)
        (let* ((_%self150943%_ _%self149222150939%_)
               (_%self150945%_ _%self150943%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150945%_
             _%id150941%_
             '1
             '#f
             '#f))
          (let ((__tmp152167
                 (let ((__obj152099
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
                      __obj152099
                      _%id150941%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj152099
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj152099)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150945%_
             __tmp152167
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
      (lambda (_%self149223150799%_
               _%id150801%_
               _%slot150802%_
               _%checked?150803%_)
        (let* ((_%self150805%_ _%self149223150799%_)
               (_%self150807%_ _%self150805%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150807%_
             _%id150801%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150807%_
             _%slot150802%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150807%_
             _%checked?150803%_
             '4
             '#f
             '#f))
          (let ((__tmp152168
                 (let ((__obj152100
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
                     (##unchecked-structure-set! __obj152100 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj152100
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp152169 (cons _%id150801%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj152100
                      __tmp152169
                      '3
                      '#f
                      '#f))
                   __obj152100)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150807%_
             __tmp152168
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self149224150659%_
               _%id150661%_
               _%slot150662%_
               _%checked?150663%_)
        (let* ((_%self150665%_ _%self149224150659%_)
               (_%self150667%_ _%self150665%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150667%_
             _%id150661%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150667%_
             _%slot150662%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150667%_
             _%checked?150663%_
             '4
             '#f
             '#f))
          (let ((__tmp152170
                 (let ((__obj152101
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
                      __obj152101
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj152101
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp152171 (cons _%id150661%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj152101
                      __tmp152171
                      '3
                      '#f
                      '#f))
                   __obj152101)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150667%_
             __tmp152170
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords150501%_
               _%signature150498150502%_
               _%self149225150504%_
               _%arity150506%_
               _%dispatch150507%_)
        (let* ((_%signature150509%_
                (if (eq? _%signature150498150502%_ absent-value)
                    '#f
                    _%signature150498150502%_))
               (_%self150511%_ _%self149225150504%_)
               (_%self150513%_ _%self150511%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self150513%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150513%_
             _%arity150506%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150513%_
             _%dispatch150507%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150513%_
             _%signature150509%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords150527%_ . _%args150528%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords150527%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150527%_
                  'signature:
                  absent-value))
               _%args150528%_)))
    (define gxc#!lambda:::init!
      (lambda _%args150499150534%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args150499150534%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords150340%_
               _%signature150337150341%_
               _%self149226150343%_
               _%clauses150345%_)
        (let* ((_%signature150347%_
                (if (eq? _%signature150337150341%_ absent-value)
                    '#f
                    _%signature150337150341%_))
               (_%self150349%_ _%self149226150343%_)
               (_%self150351%_ _%self150349%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self150351%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150351%_
             _%signature150347%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150351%_
             _%clauses150345%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords150365%_ . _%args150366%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords150365%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150365%_
                  'signature:
                  absent-value))
               _%args150366%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args150338150372%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args150338150372%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self149227150197%_ _%tab150199%_ _%dispatch150200%_)
        (let* ((_%self150202%_ _%self149227150197%_)
               (_%self150204%_ _%self150202%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self150204%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150204%_
             _%tab150199%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150204%_
             _%dispatch150200%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self149228150058%_ _%keys150060%_ _%main150061%_)
        (let* ((_%self150063%_ _%self149228150058%_)
               (_%self150065%_ _%self150063%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self150065%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150065%_
             _%keys150060%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150065%_
             _%main150061%_
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
      (lambda (_%self149229149676%_ _%id149678%_)
        (let* ((_%self149680%_ _%self149229149676%_)
               (_%self149682%_ _%self149680%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149682%_
             _%id149678%_
             '1
             '#f
             '#f))
          (let ((__tmp152172
                 (let ((__obj152102
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
                      __obj152102
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj152102
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj152102
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj152102)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149682%_
             __tmp152172
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
      (lambda (_%klass149545%_)
        (let ((_%$e149547%_
               (##structure-ref _%klass149545%_ '11 gxc#!class::t '#f)))
          (if _%$e149547%_
              _%$e149547%_
              (let ((_%tab149551%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass149545%_
                 _%tab149551%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab149551%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass149536%_ _%method149537%_)
        (let ((_%tab149538149540%_
               (##structure-ref _%klass149536%_ '11 gxc#!class::t '#f)))
          (if _%tab149538149540%_
              (let ((_%tab149543%_ _%tab149538149540%_))
                (declare (not safe))
                (hash-get _%tab149543%_ _%method149537%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a149524%_ _%type-b149525%_)
        (if _%type-a149524%_
            (if _%type-b149525%_
                (let ((_%$e149527%_ (eq? _%type-a149524%_ _%type-b149525%_)))
                  (if _%$e149527%_
                      _%$e149527%_
                      (let ((_%$e149530%_
                             (eq? (##structure-ref
                                   _%type-b149525%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e149530%_
                            _%$e149530%_
                            (let ((_%$e149533%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a149524%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b149525%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e149533%_
                                  _%$e149533%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a149524%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b149525%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a149524%_
                                           _%type-b149525%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a149475%_ _%klass-b149476%_)
        (let ((_%$e149478%_
               (eq? (##structure-ref _%klass-a149475%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b149476%_ '1 gxc#!type::t '#f))))
          (if _%$e149478%_
              _%$e149478%_
              (let ((_%klass-id-b149481%_
                     (##structure-ref _%klass-b149476%_ '1 gxc#!type::t '#f))
                    (_%precedence-list149482%_
                     (##structure-ref _%klass-a149475%_ '3 gxc#!class::t '#f)))
                (let _%loop149484%_ ((_%rest149486%_
                                      _%precedence-list149482%_))
                  (let* ((_%rest149487149495%_ _%rest149486%_)
                         (_%else149489149503%_ (lambda () '#f))
                         (_%K149491149512%_
                          (lambda (_%rest149506%_ _%klass-name149507%_)
                            (let ((_%$e149509%_
                                   (eq? (let ((__tmp152173
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a149475%_
                                                            (cons _%klass-b149476%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name149507%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp152173
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b149481%_)))
                              (if _%$e149509%_
                                  _%$e149509%_
                                  (_%loop149484%_ _%rest149506%_))))))
                    (if (pair? _%rest149487149495%_)
                        (let ((_%hd149492149515%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest149487149495%_)))
                              (_%tl149493149517%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest149487149495%_))))
                          (let* ((_%klass-name149520%_ _%hd149492149515%_)
                                 (_%rest149522%_ _%tl149493149517%_))
                            (_%K149491149512%_
                             _%rest149522%_
                             _%klass-name149520%_)))
                        (_%else149489149503%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type149473%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type149473%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type149473%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc149462%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc149462%_ 'gxc#!procedure::t))
            (let ((_%proc149465%_ _%proc149462%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc149465%_ '2 '#f '#f))
                  (let ((__tmp152174
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc149465%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp152174 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@378.11-378.15"
               'contract:
               '!procedure?
               'value:
               _%proc149462%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym149444%_ _%type149445%_ _%local?149446%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type149445%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym149444%_
                     _%type149445%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym149444%_ '" " _%type149445%_))
        (let ((_%table149448%_
               (if _%local?149446%_
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
          (hash-put! _%table149448%_ _%sym149444%_ _%type149445%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym149453%_ _%type149454%_)
        (let ((_%local?149456%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym149453%_
           _%type149454%_
           _%local?149456%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g152176_
        (let ((_g152175_ (let () (declare (not safe)) (##length _g152176_))))
          (cond ((let () (declare (not safe)) (##fx= _g152175_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g152176_))
                ((let () (declare (not safe)) (##fx= _g152175_ 3))
                 (apply gxc#optimizer-declare-type!__% _g152176_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g152176_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym149438%_ _%type149439%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type149439%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym149438%_
                     _%type149439%_)))
        (let ((_%table149441%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp152177
                 (let () (declare (not safe)) (struct->list _%type149439%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym149438%_ '" " __tmp152177))
          (let ()
            (declare (not safe))
            (hash-put! _%table149441%_ _%sym149438%_ _%type149439%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table149441%_ _%type149439%_ _%sym149438%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym149433%_ _%type149434%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type149434%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym149433%_
                     _%type149434%_)))
        (let ((_%table149436%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table149436%_ _%sym149433%_))
              '#!void
              (begin
                (let ((__tmp152178
                       (let ()
                         (declare (not safe))
                         (struct->list _%type149434%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym149433%_
                   '" "
                   __tmp152178))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table149436%_ _%sym149433%_ _%type149434%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table149436%_
                   _%type149434%_
                   _%sym149433%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym149431%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym149431%_))
        (let ((__tmp152179
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp152179 _%sym149431%_))
        (let ((__tmp152180
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp152180 _%sym149431%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t149399%_
               _%method149400%_
               _%sym149401%_
               _%rebind?149402%_)
        (let ((__tmp152181
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp152181 _%sym149401%_ '#t))
        (let ((_%klass149404%_ (gxc#optimizer-lookup-class _%type-t149399%_)))
          (if _%klass149404%_
              (let* ((_%vtab149406%_ (gxc#!class-method-table _%klass149404%_))
                     (_%$e149408%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab149406%_ _%method149400%_))))
                (if _%$e149408%_
                    ((lambda (_%existing149411%_)
                       (if _%rebind?149402%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t149399%_
                                '" "
                                _%method149400%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab149406%_
                                _%method149400%_
                                _%sym149401%_)))
                           (if (eq? _%existing149411%_ _%sym149401%_)
                               '#!void
                               (let ((__tmp152182
                                      (cons 'bind-method!
                                            (cons _%type-t149399%_
                                                  (cons _%method149400%_
                                                        (cons _%sym149401%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp152182
                                  _%method149400%_)))))
                     _%$e149408%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t149399%_
                         '" "
                         _%method149400%_
                         '" => "
                         _%sym149401%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab149406%_
                         _%method149400%_
                         _%sym149401%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t149399%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t149420%_ _%method149421%_ _%sym149422%_)
        (let ((_%rebind?149424%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t149420%_
           _%method149421%_
           _%sym149422%_
           _%rebind?149424%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g152184_
        (let ((_g152183_ (let () (declare (not safe)) (##length _g152184_))))
          (cond ((let () (declare (not safe)) (##fx= _g152183_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g152184_))
                ((let () (declare (not safe)) (##fx= _g152183_ 4))
                 (apply gxc#optimizer-declare-method!__% _g152184_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g152184_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym149384%_)
        (let ((_%$e149386%_
               (let ((__tmp152185
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym149384%_ __tmp152185))))
          (if _%$e149386%_
              _%$e149386%_
              (let ((_%$e149395%_
                     (let ((_%ht149388149390%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht149388149390%_
                           (let ((_%ht149393%_ _%ht149388149390%_))
                             (declare (not safe))
                             (hash-get _%ht149393%_ _%sym149384%_))
                           '#f))))
                (if _%$e149395%_
                    _%$e149395%_
                    (let ((__tmp152186
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp152186 _%sym149384%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym149376%_)
        (let ((_%type149377149379%_ (gxc#optimizer-lookup-type _%sym149376%_)))
          (if _%type149377149379%_
              (let ((_%type149382%_ _%type149377149379%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type149382%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type149382%_ '1 '#f '#f)))
                    _%type149382%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym149372%_)
        (let ((_%table149374%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table149374%_ _%sym149372%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where149357%_ _%sym149358%_)
        (let ((_%$e149361%_ (gxc#optimizer-lookup-class _%sym149358%_)))
          (if _%$e149361%_
              ((lambda (_%g149363149365%_)
                 (let ((_%val149368%_ _%g149363149365%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val149368%_
                          'gxc#!class::t))
                       _%val149368%_
                       (let ()
                         (declare (not safe))
                         (error '"bad cast" gxc#!class::t _%val149368%_)))))
               _%$e149361%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where149357%_
                   _%sym149358%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass149355%_)
        (let ((__tmp152187
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp152187 _%klass149355%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t149352%_ _%method149353%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t149352%_)
         _%method149353%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym149350%_)
        (let ((__tmp152188
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp152188 _%sym149350%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e149232%_
                  (lambda (_%t149333%_)
                    (if (symbol? _%t149333%_)
                        (_%type-e149232%_
                         (gxc#optimizer-lookup-type _%t149333%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t149333%_
                               'gxc#!lambda::t))
                            (_%__lambda-type149234%_ _%t149333%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t149333%_
                                   'gxc#!kw-lambda::t))
                                (_%__kw-lambda-type149236%_ _%t149333%_)
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t149333%_
                                       'gxc#!kw-lambda-primary::t))
                                    (_%__kw-lambda-primary-type149238%_
                                     _%t149333%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t149333%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t149340%_ _%t149333%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t149340%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp152189
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t149340%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp152189
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t149333%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t149333%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%lambda-type149233%_
                  (lambda (_%t149321%_)
                    (let ((_%t149324%_ _%t149321%_))
                      (_%__lambda-type149234%_ _%t149324%_))))
                 (_%__lambda-type149234%_
                  (lambda (_%t149309%_)
                    (let ((_%t149312%_ _%t149309%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t149312%_ '4 '#f '#f))
                          (_%type-e149232%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t149312%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t149312%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp152190
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t149312%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp152190
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%kw-lambda-type149235%_
                  (lambda (_%t149297%_)
                    (let ((_%t149300%_ _%t149297%_))
                      (_%__kw-lambda-type149236%_ _%t149300%_))))
                 (_%__kw-lambda-type149236%_
                  (lambda (_%t149285%_)
                    (let ((_%t149288%_ _%t149285%_))
                      (_%type-e149232%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t149288%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type149237%_
                  (lambda (_%t149273%_)
                    (let ((_%t149276%_ _%t149273%_))
                      (_%__kw-lambda-primary-type149238%_ _%t149276%_))))
                 (_%__kw-lambda-primary-type149238%_
                  (lambda (_%t149259%_)
                    (let ((_%t149262%_ _%t149259%_))
                      (_%type-e149232%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t149262%_
                          '4
                          '#f
                          '#f)))))))
          (let* ((_%ht1149240%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2149242%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result149244%_
                  (if _%ht1149240%_
                      (let () (declare (not safe)) (hash->list _%ht1149240%_))
                      '()))
                 (_%result149246%_
                  (if _%ht2149242%_
                      (let ((__tmp152191
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2149242%_))))
                        (declare (not safe))
                        (__foldl1 cons _%result149244%_ __tmp152191))
                      _%result149244%_)))
            (for-each
             (lambda (_%p149249%_)
               (let* ((_%t149251%_ (cdr _%p149249%_))
                      (_%tr149253%_ (_%type-e149232%_ _%t149251%_)))
                 (set-cdr! _%p149249%_ _%tr149253%_)))
             _%result149246%_)
            (list-sort
             (lambda (_%a149256%_ _%b149257%_)
               (let ((__tmp152193 (symbol->string (car _%a149256%_)))
                     (__tmp152192 (symbol->string (car _%b149257%_))))
                 (declare (not safe))
                 (##string<? __tmp152193 __tmp152192)))
             _%result149246%_)))))))
