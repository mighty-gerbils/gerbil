(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1712991654)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp150233 (list)) (__tmp150232 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp150233
         '(type classes ssxi methods)
         __tmp150232
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args150204%_
        (apply make-instance gxc#optimizer-info::t _%$args150204%_)))
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
      (lambda (_%self147464150189%_)
        (let* ((_%self150192%_ _%self147464150189%_)
               (_%self150194%_ _%self150192%_))
          (if (let ((__tmp150234
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self150194%_))))
                (declare (not safe))
                (##fx< '4 __tmp150234))
              (begin
                (let ((__tmp150235
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self150194%_
                   __tmp150235
                   '1
                   '#f
                   '#f))
                (let ((__tmp150236
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self150194%_
                   __tmp150236
                   '2
                   '#f
                   '#f))
                (let ((__tmp150237
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self150194%_
                   __tmp150237
                   '3
                   '#f
                   '#f))
                (let ((__tmp150238
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self150194%_
                   __tmp150238
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp150239
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self150194%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self150194%_
                       '4
                       __tmp150239))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp150241 (list))
            (__tmp150240
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp150241
         '(id)
         __tmp150240
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args150064%_
        (apply make-instance gxc#!type::t _%$args150064%_)))
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
      (let ((__tmp150243 (list gxc#!type::t))
            (__tmp150242 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp150243
         '()
         __tmp150242
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args150061%_
        (apply make-instance gxc#!abort::t _%$args150061%_)))
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
      (let ((__tmp150245 (list gxc#!type::t))
            (__tmp150244 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp150245
         '()
         __tmp150244
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args150058%_
        (apply make-instance gxc#!alias::t _%$args150058%_)))
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
      (let ((__tmp150247 (list))
            (__tmp150246
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp150247
         '(return effect arguments unchecked origin)
         __tmp150246
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args150055%_
        (apply make-instance gxc#!signature::t _%$args150055%_)))
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
      (let ((__tmp150249 (list gxc#!type::t))
            (__tmp150248
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp150249
         '(signature)
         __tmp150248
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
      (lambda (_%id150034%_ _%signature150035%_)
        (if ((lambda (_%$obj150038%_)
               (or (not _%$obj150038%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj150038%_
                      'gxc#!signature::t))))
             _%signature150035%_)
            (let ((_%signature150045%_ _%signature150035%_))
              (gxc#__make-!procedure _%id150034%_ _%signature150045%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature150035%_)
              '#!void))))
    (define gxc#__make-!procedure
      (lambda (_%id150020%_ _%signature150022%_)
        (let ((_%signature150025%_ _%signature150022%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id150020%_ _%signature150025%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj149989%_ _%signature149990%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj149989%_ 'gxc#!procedure::t))
            (let ((_%$obj149994%_ _%$obj149989%_))
              (if ((lambda (_%$obj150003%_)
                     (or (not _%$obj150003%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj150003%_
                            'gxc#!signature::t))))
                   _%signature149990%_)
                  (let ((_%signature150010%_ _%signature149990%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj149994%_
                     _%signature150010%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature149990%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj149989%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj149966%_ _%signature149968%_)
        (let* ((_%$obj149972%_ _%$obj149966%_)
               (_%signature149980%_ _%signature149968%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj149972%_
           _%signature149980%_
           '2
           '#f
           '#f))))
    (define gxc#!class-meta::t
      (let ((__tmp150251 (list gxc#!type::t))
            (__tmp150250 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp150251
         '(class)
         __tmp150250
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args149963%_
        (apply make-instance gxc#!class-meta::t _%$args149963%_)))
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
      (let ((__tmp150253 (list gxc#!type::t))
            (__tmp150252
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
         __tmp150253
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp150252
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args149960%_
        (apply make-instance gxc#!class::t _%$args149960%_)))
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
      (let ((__tmp150255 (list gxc#!procedure::t))
            (__tmp150254 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp150255
         '()
         __tmp150254
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args149957%_
        (apply make-instance gxc#!predicate::t _%$args149957%_)))
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
      (let ((__tmp150257 (list gxc#!procedure::t))
            (__tmp150256 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp150257
         '()
         __tmp150256
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args149954%_
        (apply make-instance gxc#!constructor::t _%$args149954%_)))
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
      (let ((__tmp150259 (list gxc#!procedure::t))
            (__tmp150258 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp150259
         '(slot checked?)
         __tmp150258
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args149951%_
        (apply make-instance gxc#!accessor::t _%$args149951%_)))
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
      (let ((__tmp150261 (list gxc#!procedure::t))
            (__tmp150260 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp150261
         '(slot checked?)
         __tmp150260
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args149948%_
        (apply make-instance gxc#!mutator::t _%$args149948%_)))
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
      (let ((__tmp150263 (list gxc#!type::t))
            (__tmp150262 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp150263
         '(methods)
         __tmp150262
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args149945%_
        (apply make-instance gxc#!interface::t _%$args149945%_)))
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
      (let ((__tmp150265 (list gxc#!procedure::t))
            (__tmp150264
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp150265
         '(arity dispatch inline inline-typedecl)
         __tmp150264
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args149942%_
        (apply make-instance gxc#!lambda::t _%$args149942%_)))
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
      (let ((__tmp150267 (list gxc#!procedure::t))
            (__tmp150266 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp150267
         '(clauses)
         __tmp150266
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args149939%_
        (apply make-instance gxc#!case-lambda::t _%$args149939%_)))
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
      (let ((__tmp150269 (list gxc#!procedure::t))
            (__tmp150268 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp150269
         '(table dispatch)
         __tmp150268
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args149936%_
        (apply make-instance gxc#!kw-lambda::t _%$args149936%_)))
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
      (let ((__tmp150271 (list gxc#!procedure::t))
            (__tmp150270 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp150271
         '(keys main)
         __tmp150270
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args149933%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args149933%_)))
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
      (let ((__tmp150272 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp150272
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args149930%_
        (apply make-instance gxc#!primitive::t _%$args149930%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp150274 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp150273 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp150274
         '()
         __tmp150273
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args149927%_
        (apply make-instance gxc#!primitive-predicate::t _%$args149927%_)))
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
      (let ((__tmp150276 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp150275 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp150276
         '()
         __tmp150275
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args149924%_
        (apply make-instance gxc#!primitive-lambda::t _%$args149924%_)))
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
      (let ((__tmp150278 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp150277 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp150278
         '()
         __tmp150277
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args149921%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args149921%_)))
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
      (lambda (_%self147465149906%_)
        (let* ((_%self149909%_ _%self147465149906%_)
               (_%self149911%_ _%self149909%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self149911%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self147466149768%_ _%klass149770%_)
        (let* ((_%self149772%_ _%self147466149768%_)
               (_%self149774%_ _%self149772%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self149774%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149774%_
             _%klass149770%_
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
      (lambda (_%self147467149456%_
               _%id149458%_
               _%super149459%_
               _%slots149460%_
               _%ctor-method149461%_
               _%struct?149462%_
               _%final?149463%_
               _%system?149464%_
               _%metaclass149465%_)
        (let* ((_%self149467%_ _%self147467149456%_)
               (_%self149469%_ _%self149467%_))
          (let _%lp149479%_ ((_%rest149481%_ _%super149459%_))
            (let* ((_%rest149482149490%_ _%rest149481%_)
                   (_%else149484149498%_ (lambda () '#!void))
                   (_%K149486149504%_
                    (lambda (_%rest149501%_ _%super-id149502%_)
                      (if (let ((__tmp150279
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id149458%_ '()))
                                  _%super-id149502%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp150279 '8 '#f '#f))
                          (let ((__tmp150280
                                 (cons '!class (cons _%id149458%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp150280
                             _%super-id149502%_))
                          '#!void)
                      (_%lp149479%_ _%rest149501%_))))
              (if (let () (declare (not safe)) (##pair? _%rest149482149490%_))
                  (let ((_%hd149487149507%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest149482149490%_)))
                        (_%tl149488149509%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest149482149490%_))))
                    (let* ((_%super-id149512%_ _%hd149487149507%_)
                           (_%rest149514%_ _%tl149488149509%_))
                      (_%K149486149504%_ _%rest149514%_ _%super-id149512%_)))
                  '#!void)))
          (let* ((_%ctor-method149565%_
                  (let ((_%$e149516%_ _%ctor-method149461%_))
                    (if _%$e149516%_
                        _%$e149516%_
                        (let _%lp149519%_ ((_%rest149521%_ _%super149459%_)
                                           (_%method149522%_ '#f))
                          (let* ((_%rest149523149531%_ _%rest149521%_)
                                 (_%else149525149539%_
                                  (lambda () _%method149522%_))
                                 (_%K149527149553%_
                                  (lambda (_%rest149542%_ _%super-id149543%_)
                                    (let* ((_%klass149545%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id149458%_ '()))
                                             _%super-id149543%_))
                                           (_%$e149547%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass149545%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e149547%_
                                          ((lambda (_%ctor-method149550%_)
                                             (if _%method149522%_
                                                 (if (eq? _%ctor-method149550%_
                                                          _%method149522%_)
                                                     (_%lp149519%_
                                                      _%rest149542%_
                                                      _%ctor-method149550%_)
                                                     (let ((__tmp150281
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id149458%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp150281
                _%method149522%_
                _%ctor-method149550%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp149519%_
                                                  _%rest149542%_
                                                  _%ctor-method149550%_)))
                                           _%$e149547%_)
                                          (_%lp149519%_
                                           _%rest149542%_
                                           _%method149522%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest149523149531%_))
                                (let ((_%hd149528149556%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest149523149531%_)))
                                      (_%tl149529149558%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest149523149531%_))))
                                  (let* ((_%super-id149561%_
                                          _%hd149528149556%_)
                                         (_%rest149563%_ _%tl149529149558%_))
                                    (_%K149527149553%_
                                     _%rest149563%_
                                     _%super-id149561%_)))
                                (_%else149525149539%_)))))))
                 (_g150282_
                  (let ((__tmp150286
                         (lambda (_%klass-id149567%_)
                           (cons _%klass-id149567%_
                                 (let ((__tmp150287
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id149458%_ '()))
                                         _%klass-id149567%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp150287
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp150284
                         (lambda (_%klass-id149569%_)
                           (let ((__tmp150285
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id149458%_ '()))
                                   _%klass-id149569%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp150285
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp150286
                     __tmp150284
                     eq?
                     identity
                     '()
                     _%super149459%_))))
            (begin
              (let ((_g150283_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g150282_)
                           (##vector-length _g150282_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g150283_ 2)))
                    (error "Context expects 2 values" _g150283_)))
              (let ((_%precedence-list149571%_
                     (let () (declare (not safe)) (##vector-ref _g150282_ 0)))
                    (_%base-struct149572%_
                     (let () (declare (not safe)) (##vector-ref _g150282_ 1))))
                (let* ((_%precedence-list149616%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id149458%_ '(t object class)))
                            _%precedence-list149571%_
                            (if (memq 'object::t _%precedence-list149571%_)
                                _%precedence-list149571%_
                                (if _%system?149464%_
                                    (if (memq 't::t _%precedence-list149571%_)
                                        _%precedence-list149571%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list149571%_
                                           '(t::t))))
                                    (let _%loop149578%_ ((_%tail149580%_
                                                          _%precedence-list149571%_)
                                                         (_%head149581%_ '()))
                                      (let* ((_%tail149582149590%_
                                              _%tail149580%_)
                                             (_%else149584149598%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head149581%_))))
                                             (_%K149586149604%_
                                              (lambda (_%rest149601%_
                                                       _%hd149602%_)
                                                (if (eq? _%hd149602%_ 't::t)
                                                    (let ((__tmp150288
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail149580%_)))
              (declare (not safe))
              (__foldl1 cons __tmp150288 _%head149581%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop149578%_
                                                     _%rest149601%_
                                                     (cons _%hd149602%_
                                                           _%head149581%_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tail149582149590%_))
                                            (let ((_%hd149587149607%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail149582149590%_)))
                                                  (_%tl149588149609%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail149582149590%_))))
                                              (let* ((_%hd149612%_
                                                      _%hd149587149607%_)
                                                     (_%rest149614%_
                                                      _%tl149588149609%_))
                                                (_%K149586149604%_
                                                 _%rest149614%_
                                                 _%hd149612%_)))
                                            (_%else149584149598%_))))))))
                       (_%fields149618%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id149458%_ '()))
                         _%base-struct149572%_
                         _%precedence-list149616%_
                         _%slots149460%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149469%_
                     _%id149458%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149469%_
                     _%super149459%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149469%_
                     _%precedence-list149616%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149469%_
                     _%slots149460%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149469%_
                     _%fields149618%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149469%_
                     _%ctor-method149565%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149469%_
                     _%struct?149462%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149469%_
                     _%final?149463%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149469%_
                     _%metaclass149465%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self147468149621%_
               _%id149623%_
               _%super149624%_
               _%precedence-list149625%_
               _%slots149626%_
               _%fields149627%_
               _%constructor149628%_
               _%struct?149629%_
               _%final?149630%_
               _%system?149631%_
               _%metaclass149632%_
               _%methods149633%_)
        (let* ((_%self149635%_ _%self147468149621%_)
               (_%self149637%_ _%self149635%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149637%_
             _%id149623%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149637%_
             _%super149624%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149637%_
             _%precedence-list149625%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149637%_
             _%slots149626%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149637%_
             _%fields149627%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149637%_
             _%constructor149628%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149637%_
             _%struct?149629%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149637%_
             _%final?149630%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149637%_
             _%metaclass149632%_
             '10
             '#f
             '#f))
          (if _%methods149633%_
              (let ((__tmp150289
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods149633%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self149637%_
                 __tmp150289
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g150291_
        (let ((_g150290_ (let () (declare (not safe)) (##length _g150291_))))
          (cond ((let () (declare (not safe)) (##fx= _g150290_ 9))
                 (apply gxc#!class:::init!__0 _g150291_))
                ((let () (declare (not safe)) (##fx= _g150290_ 12))
                 (apply gxc#!class:::init!__1 _g150291_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g150291_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where149308%_
               _%base-struct149309%_
               _%precedence-list149310%_
               _%direct-slots149311%_)
        (let* ((_%base-fields149313%_
                (if _%base-struct149309%_
                    (let ((__tmp150292
                           (gxc#optimizer-resolve-class
                            _%where149308%_
                            _%base-struct149309%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp150292 '5 '#f '#f))
                    '()))
               (_%r-fields149315%_ (reverse _%base-fields149313%_))
               (_%seen-slots149323%_
                (let ((_%tab149317%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g149318149320%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab149317%_ _%g149318149320%_ '#t)))
                   _%base-fields149313%_)
                  _%tab149317%_))
               (_%process-slot149327%_
                (lambda (_%slot149325%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots149323%_ _%slot149325%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots149323%_
                           _%slot149325%_
                           '#t))
                        (set! _%r-fields149315%_
                              (cons _%slot149325%_ _%r-fields149315%_)))))))
          (for-each
           (lambda (_%mixin149330%_)
             (let ((_%klass149332%_
                    (gxc#optimizer-resolve-class
                     _%where149308%_
                     _%mixin149330%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass149332%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot149327%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass149332%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list149310%_)
          (for-each _%process-slot149327%_ _%direct-slots149311%_)
          (let () (declare (not safe)) (##reverse _%r-fields149315%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass149267%_ _%slot149268%_)
        (let _%lp149270%_ ((_%rest149272%_
                            (##structure-ref
                             _%klass149267%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset149273%_ '1))
          (let* ((_%rest149274149282%_ _%rest149272%_)
                 (_%else149276149290%_
                  (lambda ()
                    (let ((__tmp150294
                           (##structure-ref
                            _%klass149267%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp150293
                           (##structure-ref
                            _%klass149267%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp150294
                       __tmp150293
                       _%slot149268%_))))
                 (_%K149278149296%_
                  (lambda (_%rest149293%_ _%s149294%_)
                    (if (eq? _%s149294%_ _%slot149268%_)
                        _%offset149273%_
                        (_%lp149270%_
                         _%rest149293%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset149273%_ '1)))))))
            (if (let () (declare (not safe)) (##pair? _%rest149274149282%_))
                (let ((_%hd149279149299%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest149274149282%_)))
                      (_%tl149280149301%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest149274149282%_))))
                  (let* ((_%s149304%_ _%hd149279149299%_)
                         (_%rest149306%_ _%tl149280149301%_))
                    (_%K149278149296%_ _%rest149306%_ _%s149304%_)))
                (_%else149276149290%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass149225%_ _%slot149226%_)
        (if (gxc#!class-struct-slot? _%klass149225%_ _%slot149226%_)
            _%klass149225%_
            (let _%lp149228%_ ((_%rest149230%_
                                (##structure-ref
                                 _%klass149225%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest149231149239%_ _%rest149230%_)
                     (_%else149233149247%_ (lambda () '#f))
                     (_%K149235149255%_
                      (lambda (_%rest149250%_ _%super149251%_)
                        (let ((_%super-class149253%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass149225%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot149226%_ '())))
                                _%super149251%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class149253%_
                               _%slot149226%_)
                              _%super-class149253%_
                              (_%lp149228%_ _%rest149250%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest149231149239%_))
                    (let ((_%hd149236149258%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest149231149239%_)))
                          (_%tl149237149260%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest149231149239%_))))
                      (let* ((_%super149263%_ _%hd149236149258%_)
                             (_%rest149265%_ _%tl149237149260%_))
                        (_%K149235149255%_ _%rest149265%_ _%super149263%_)))
                    (_%else149233149247%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass149222%_ _%slot149223%_)
        (if (##structure-ref _%klass149222%_ '7 gxc#!class::t '#f)
            (memq _%slot149223%_
                  (##structure-ref _%klass149222%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self147469149206%_ _%id149208%_)
        (let* ((_%self149210%_ _%self147469149206%_)
               (_%self149212%_ _%self149210%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149212%_
             _%id149208%_
             '1
             '#f
             '#f))
          (let ((__tmp150295
                 (let ((__obj150227
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
                      __obj150227
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150227
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150227
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj150227)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149212%_
             __tmp150295
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self147470149068%_ _%id149070%_)
        (let* ((_%self149072%_ _%self147470149068%_)
               (_%self149074%_ _%self149072%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149074%_
             _%id149070%_
             '1
             '#f
             '#f))
          (let ((__tmp150296
                 (let ((__obj150228
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
                      __obj150228
                      _%id149070%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150228
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj150228)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149074%_
             __tmp150296
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
      (lambda (_%self147471148928%_
               _%id148930%_
               _%slot148931%_
               _%checked?148932%_)
        (let* ((_%self148934%_ _%self147471148928%_)
               (_%self148936%_ _%self148934%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148936%_
             _%id148930%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148936%_
             _%slot148931%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148936%_
             _%checked?148932%_
             '4
             '#f
             '#f))
          (let ((__tmp150297
                 (let ((__obj150229
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
                     (##unchecked-structure-set! __obj150229 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150229
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp150298 (cons _%id148930%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150229
                      __tmp150298
                      '3
                      '#f
                      '#f))
                   __obj150229)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148936%_
             __tmp150297
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self147472148788%_
               _%id148790%_
               _%slot148791%_
               _%checked?148792%_)
        (let* ((_%self148794%_ _%self147472148788%_)
               (_%self148796%_ _%self148794%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148796%_
             _%id148790%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148796%_
             _%slot148791%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148796%_
             _%checked?148792%_
             '4
             '#f
             '#f))
          (let ((__tmp150299
                 (let ((__obj150230
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
                      __obj150230
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150230
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp150300 (cons _%id148790%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150230
                      __tmp150300
                      '3
                      '#f
                      '#f))
                   __obj150230)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148796%_
             __tmp150299
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords148630%_
               _%signature148627148631%_
               _%self147473148633%_
               _%arity148635%_
               _%dispatch148636%_)
        (let* ((_%signature148638%_
                (if (eq? _%signature148627148631%_ absent-value)
                    '#f
                    _%signature148627148631%_))
               (_%self148640%_ _%self147473148633%_)
               (_%self148642%_ _%self148640%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self148642%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148642%_
             _%arity148635%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148642%_
             _%dispatch148636%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148642%_
             _%signature148638%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords148656%_ . _%args148657%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords148656%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords148656%_
                  'signature:
                  absent-value))
               _%args148657%_)))
    (define gxc#!lambda:::init!
      (lambda _%args148628148663%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args148628148663%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords148469%_
               _%signature148466148470%_
               _%self147474148472%_
               _%clauses148474%_)
        (let* ((_%signature148476%_
                (if (eq? _%signature148466148470%_ absent-value)
                    '#f
                    _%signature148466148470%_))
               (_%self148478%_ _%self147474148472%_)
               (_%self148480%_ _%self148478%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self148480%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148480%_
             _%signature148476%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148480%_
             _%clauses148474%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords148494%_ . _%args148495%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords148494%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords148494%_
                  'signature:
                  absent-value))
               _%args148495%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args148467148501%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args148467148501%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self147475148326%_ _%tab148328%_ _%dispatch148329%_)
        (let* ((_%self148331%_ _%self147475148326%_)
               (_%self148333%_ _%self148331%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self148333%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148333%_
             _%tab148328%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148333%_
             _%dispatch148329%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self147476148187%_ _%keys148189%_ _%main148190%_)
        (let* ((_%self148192%_ _%self147476148187%_)
               (_%self148194%_ _%self148192%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self148194%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148194%_
             _%keys148189%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148194%_
             _%main148190%_
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
      (lambda (_%self147477147805%_ _%id147807%_)
        (let* ((_%self147809%_ _%self147477147805%_)
               (_%self147811%_ _%self147809%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147811%_
             _%id147807%_
             '1
             '#f
             '#f))
          (let ((__tmp150301
                 (let ((__obj150231
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
                      __obj150231
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150231
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150231
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj150231)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147811%_
             __tmp150301
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
      (lambda (_%klass147674%_)
        (let ((_%$e147676%_
               (##structure-ref _%klass147674%_ '11 gxc#!class::t '#f)))
          (if _%$e147676%_
              _%$e147676%_
              (let ((_%tab147680%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass147674%_
                 _%tab147680%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab147680%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass147665%_ _%method147666%_)
        (let ((_%tab147667147669%_
               (##structure-ref _%klass147665%_ '11 gxc#!class::t '#f)))
          (if _%tab147667147669%_
              (let ((_%tab147672%_ _%tab147667147669%_))
                (declare (not safe))
                (hash-get _%tab147672%_ _%method147666%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a147653%_ _%type-b147654%_)
        (if _%type-a147653%_
            (if _%type-b147654%_
                (let ((_%$e147656%_ (eq? _%type-a147653%_ _%type-b147654%_)))
                  (if _%$e147656%_
                      _%$e147656%_
                      (let ((_%$e147659%_
                             (eq? (##structure-ref
                                   _%type-b147654%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e147659%_
                            _%$e147659%_
                            (let ((_%$e147662%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a147653%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b147654%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e147662%_
                                  _%$e147662%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a147653%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b147654%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a147653%_
                                           _%type-b147654%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a147604%_ _%klass-b147605%_)
        (let ((_%$e147607%_
               (eq? (##structure-ref _%klass-a147604%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b147605%_ '1 gxc#!type::t '#f))))
          (if _%$e147607%_
              _%$e147607%_
              (let ((_%klass-id-b147610%_
                     (##structure-ref _%klass-b147605%_ '1 gxc#!type::t '#f))
                    (_%precedence-list147611%_
                     (##structure-ref _%klass-a147604%_ '3 gxc#!class::t '#f)))
                (let _%loop147613%_ ((_%rest147615%_
                                      _%precedence-list147611%_))
                  (let* ((_%rest147616147624%_ _%rest147615%_)
                         (_%else147618147632%_ (lambda () '#f))
                         (_%K147620147641%_
                          (lambda (_%rest147635%_ _%klass-name147636%_)
                            (let ((_%$e147638%_
                                   (eq? (let ((__tmp150302
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a147604%_
                                                            (cons _%klass-b147605%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name147636%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp150302
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b147610%_)))
                              (if _%$e147638%_
                                  _%$e147638%_
                                  (_%loop147613%_ _%rest147635%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest147616147624%_))
                        (let ((_%hd147621147644%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest147616147624%_)))
                              (_%tl147622147646%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest147616147624%_))))
                          (let* ((_%klass-name147649%_ _%hd147621147644%_)
                                 (_%rest147651%_ _%tl147622147646%_))
                            (_%K147620147641%_
                             _%rest147651%_
                             _%klass-name147649%_)))
                        (_%else147618147632%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type147602%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type147602%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type147602%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc147591%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc147591%_ 'gxc#!procedure::t))
            (let ((_%proc147594%_ _%proc147591%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc147594%_ '2 '#f '#f))
                  (let ((__tmp150303
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc147594%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp150303 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@376.11-376.15"
               'contract:
               '!procedure?
               'value:
               _%proc147591%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym147573%_ _%type147574%_ _%local?147575%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type147574%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym147573%_
                     _%type147574%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym147573%_ '" " _%type147574%_))
        (let ((_%table147577%_
               (if _%local?147575%_
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
          (hash-put! _%table147577%_ _%sym147573%_ _%type147574%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym147582%_ _%type147583%_)
        (let ((_%local?147585%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym147582%_
           _%type147583%_
           _%local?147585%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g150305_
        (let ((_g150304_ (let () (declare (not safe)) (##length _g150305_))))
          (cond ((let () (declare (not safe)) (##fx= _g150304_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g150305_))
                ((let () (declare (not safe)) (##fx= _g150304_ 3))
                 (apply gxc#optimizer-declare-type!__% _g150305_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g150305_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym147567%_ _%type147568%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type147568%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym147567%_
                     _%type147568%_)))
        (let ((_%table147570%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp150306
                 (let () (declare (not safe)) (struct->list _%type147568%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym147567%_ '" " __tmp150306))
          (let ()
            (declare (not safe))
            (hash-put! _%table147570%_ _%sym147567%_ _%type147568%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table147570%_ _%type147568%_ _%sym147567%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym147562%_ _%type147563%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type147563%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym147562%_
                     _%type147563%_)))
        (let ((_%table147565%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table147565%_ _%sym147562%_))
              '#!void
              (begin
                (let ((__tmp150307
                       (let ()
                         (declare (not safe))
                         (struct->list _%type147563%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym147562%_
                   '" "
                   __tmp150307))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table147565%_ _%sym147562%_ _%type147563%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table147565%_
                   _%type147563%_
                   _%sym147562%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym147560%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym147560%_))
        (let ((__tmp150308
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp150308 _%sym147560%_))
        (let ((__tmp150309
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp150309 _%sym147560%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t147528%_
               _%method147529%_
               _%sym147530%_
               _%rebind?147531%_)
        (let ((__tmp150310
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp150310 _%sym147530%_ '#t))
        (let ((_%klass147533%_ (gxc#optimizer-lookup-class _%type-t147528%_)))
          (if _%klass147533%_
              (let* ((_%vtab147535%_ (gxc#!class-method-table _%klass147533%_))
                     (_%$e147537%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab147535%_ _%method147529%_))))
                (if _%$e147537%_
                    ((lambda (_%existing147540%_)
                       (if _%rebind?147531%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t147528%_
                                '" "
                                _%method147529%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab147535%_
                                _%method147529%_
                                _%sym147530%_)))
                           (if (eq? _%existing147540%_ _%sym147530%_)
                               '#!void
                               (let ((__tmp150311
                                      (cons 'bind-method!
                                            (cons _%type-t147528%_
                                                  (cons _%method147529%_
                                                        (cons _%sym147530%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp150311
                                  _%method147529%_)))))
                     _%$e147537%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t147528%_
                         '" "
                         _%method147529%_
                         '" => "
                         _%sym147530%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab147535%_
                         _%method147529%_
                         _%sym147530%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t147528%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t147549%_ _%method147550%_ _%sym147551%_)
        (let ((_%rebind?147553%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t147549%_
           _%method147550%_
           _%sym147551%_
           _%rebind?147553%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g150313_
        (let ((_g150312_ (let () (declare (not safe)) (##length _g150313_))))
          (cond ((let () (declare (not safe)) (##fx= _g150312_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g150313_))
                ((let () (declare (not safe)) (##fx= _g150312_ 4))
                 (apply gxc#optimizer-declare-method!__% _g150313_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g150313_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym147513%_)
        (let ((_%$e147515%_
               (let ((__tmp150314
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym147513%_ __tmp150314))))
          (if _%$e147515%_
              _%$e147515%_
              (let ((_%$e147524%_
                     (let ((_%ht147517147519%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht147517147519%_
                           (let ((_%ht147522%_ _%ht147517147519%_))
                             (declare (not safe))
                             (hash-get _%ht147522%_ _%sym147513%_))
                           '#f))))
                (if _%$e147524%_
                    _%$e147524%_
                    (let ((__tmp150315
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp150315 _%sym147513%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym147505%_)
        (let ((_%type147506147508%_ (gxc#optimizer-lookup-type _%sym147505%_)))
          (if _%type147506147508%_
              (let ((_%type147511%_ _%type147506147508%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type147511%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type147511%_ '1 '#f '#f)))
                    _%type147511%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym147501%_)
        (let ((_%table147503%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table147503%_ _%sym147501%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where147486%_ _%sym147487%_)
        (let ((_%$e147490%_ (gxc#optimizer-lookup-class _%sym147487%_)))
          (if _%$e147490%_
              ((lambda (_%g147492147494%_)
                 (let ((_%val147497%_ _%g147492147494%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val147497%_
                          'gxc#!class::t))
                       _%val147497%_
                       (let ()
                         (declare (not safe))
                         (error '"bad cast" gxc#!class::t _%val147497%_)))))
               _%$e147490%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where147486%_
                   _%sym147487%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass147484%_)
        (let ((__tmp150316
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp150316 _%klass147484%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t147481%_ _%method147482%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t147481%_)
         _%method147482%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym147479%_)
        (let ((__tmp150317
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp150317 _%sym147479%_))))))
