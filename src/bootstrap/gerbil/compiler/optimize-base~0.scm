(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1712944164)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp150175 (list)) (__tmp150174 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp150175
         '(type classes ssxi methods)
         __tmp150174
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args150146%_
        (apply make-instance gxc#optimizer-info::t _%$args150146%_)))
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
      (lambda (_%self147406150131%_)
        (let* ((_%self150134%_ _%self147406150131%_)
               (_%self150136%_ _%self150134%_))
          (if (let ((__tmp150176
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self150136%_))))
                (declare (not safe))
                (##fx< '4 __tmp150176))
              (begin
                (let ((__tmp150177
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self150136%_
                   __tmp150177
                   '1
                   '#f
                   '#f))
                (let ((__tmp150178
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self150136%_
                   __tmp150178
                   '2
                   '#f
                   '#f))
                (let ((__tmp150179
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self150136%_
                   __tmp150179
                   '3
                   '#f
                   '#f))
                (let ((__tmp150180
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self150136%_
                   __tmp150180
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp150181
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self150136%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self150136%_
                       '4
                       __tmp150181))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp150183 (list))
            (__tmp150182
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp150183
         '(id)
         __tmp150182
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args150006%_
        (apply make-instance gxc#!type::t _%$args150006%_)))
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
      (let ((__tmp150185 (list gxc#!type::t))
            (__tmp150184 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp150185
         '()
         __tmp150184
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args150003%_
        (apply make-instance gxc#!abort::t _%$args150003%_)))
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
      (let ((__tmp150187 (list gxc#!type::t))
            (__tmp150186 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp150187
         '()
         __tmp150186
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args150000%_
        (apply make-instance gxc#!alias::t _%$args150000%_)))
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
      (let ((__tmp150189 (list))
            (__tmp150188
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp150189
         '(return effect arguments unchecked origin)
         __tmp150188
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args149997%_
        (apply make-instance gxc#!signature::t _%$args149997%_)))
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
      (let ((__tmp150191 (list gxc#!type::t))
            (__tmp150190
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp150191
         '(signature)
         __tmp150190
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
      (lambda (_%id149976%_ _%signature149977%_)
        (if ((lambda (_%$obj149980%_)
               (or (not _%$obj149980%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj149980%_
                      'gxc#!signature::t))))
             _%signature149977%_)
            (let ((_%signature149987%_ _%signature149977%_))
              (gxc#__make-!procedure _%id149976%_ _%signature149987%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature149977%_)
              '#!void))))
    (define gxc#__make-!procedure
      (lambda (_%id149962%_ _%signature149964%_)
        (let ((_%signature149967%_ _%signature149964%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id149962%_ _%signature149967%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj149931%_ _%signature149932%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj149931%_ 'gxc#!procedure::t))
            (let ((_%$obj149936%_ _%$obj149931%_))
              (if ((lambda (_%$obj149945%_)
                     (or (not _%$obj149945%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj149945%_
                            'gxc#!signature::t))))
                   _%signature149932%_)
                  (let ((_%signature149952%_ _%signature149932%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj149936%_
                     _%signature149952%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature149932%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj149931%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj149908%_ _%signature149910%_)
        (let* ((_%$obj149914%_ _%$obj149908%_)
               (_%signature149922%_ _%signature149910%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj149914%_
           _%signature149922%_
           '2
           '#f
           '#f))))
    (define gxc#!class-meta::t
      (let ((__tmp150193 (list gxc#!type::t))
            (__tmp150192 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp150193
         '(class)
         __tmp150192
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args149905%_
        (apply make-instance gxc#!class-meta::t _%$args149905%_)))
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
      (let ((__tmp150195 (list gxc#!type::t))
            (__tmp150194
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
         __tmp150195
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp150194
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args149902%_
        (apply make-instance gxc#!class::t _%$args149902%_)))
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
      (let ((__tmp150197 (list gxc#!procedure::t))
            (__tmp150196 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp150197
         '()
         __tmp150196
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args149899%_
        (apply make-instance gxc#!predicate::t _%$args149899%_)))
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
      (let ((__tmp150199 (list gxc#!procedure::t))
            (__tmp150198 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp150199
         '()
         __tmp150198
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args149896%_
        (apply make-instance gxc#!constructor::t _%$args149896%_)))
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
      (let ((__tmp150201 (list gxc#!procedure::t))
            (__tmp150200 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp150201
         '(slot checked?)
         __tmp150200
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args149893%_
        (apply make-instance gxc#!accessor::t _%$args149893%_)))
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
      (let ((__tmp150203 (list gxc#!procedure::t))
            (__tmp150202 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp150203
         '(slot checked?)
         __tmp150202
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args149890%_
        (apply make-instance gxc#!mutator::t _%$args149890%_)))
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
      (let ((__tmp150205 (list gxc#!type::t))
            (__tmp150204 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp150205
         '(methods)
         __tmp150204
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args149887%_
        (apply make-instance gxc#!interface::t _%$args149887%_)))
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
      (let ((__tmp150207 (list gxc#!procedure::t))
            (__tmp150206
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp150207
         '(arity dispatch inline inline-typedecl)
         __tmp150206
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args149884%_
        (apply make-instance gxc#!lambda::t _%$args149884%_)))
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
      (let ((__tmp150209 (list gxc#!procedure::t))
            (__tmp150208 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp150209
         '(clauses)
         __tmp150208
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args149881%_
        (apply make-instance gxc#!case-lambda::t _%$args149881%_)))
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
      (let ((__tmp150211 (list gxc#!procedure::t))
            (__tmp150210 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp150211
         '(table dispatch)
         __tmp150210
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args149878%_
        (apply make-instance gxc#!kw-lambda::t _%$args149878%_)))
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
      (let ((__tmp150213 (list gxc#!procedure::t))
            (__tmp150212 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp150213
         '(keys main)
         __tmp150212
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args149875%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args149875%_)))
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
      (let ((__tmp150214 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp150214
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args149872%_
        (apply make-instance gxc#!primitive::t _%$args149872%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp150216 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp150215 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp150216
         '()
         __tmp150215
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args149869%_
        (apply make-instance gxc#!primitive-predicate::t _%$args149869%_)))
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
      (let ((__tmp150218 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp150217 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp150218
         '()
         __tmp150217
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args149866%_
        (apply make-instance gxc#!primitive-lambda::t _%$args149866%_)))
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
      (let ((__tmp150220 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp150219 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp150220
         '()
         __tmp150219
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args149863%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args149863%_)))
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
      (lambda (_%self147407149848%_)
        (let* ((_%self149851%_ _%self147407149848%_)
               (_%self149853%_ _%self149851%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self149853%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self147408149710%_ _%klass149712%_)
        (let* ((_%self149714%_ _%self147408149710%_)
               (_%self149716%_ _%self149714%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self149716%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149716%_
             _%klass149712%_
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
      (lambda (_%self147409149398%_
               _%id149400%_
               _%super149401%_
               _%slots149402%_
               _%ctor-method149403%_
               _%struct?149404%_
               _%final?149405%_
               _%system?149406%_
               _%metaclass149407%_)
        (let* ((_%self149409%_ _%self147409149398%_)
               (_%self149411%_ _%self149409%_))
          (let _%lp149421%_ ((_%rest149423%_ _%super149401%_))
            (let* ((_%rest149424149432%_ _%rest149423%_)
                   (_%else149426149440%_ (lambda () '#!void))
                   (_%K149428149446%_
                    (lambda (_%rest149443%_ _%super-id149444%_)
                      (if (let ((__tmp150221
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id149400%_ '()))
                                  _%super-id149444%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp150221 '8 '#f '#f))
                          (let ((__tmp150222
                                 (cons '!class (cons _%id149400%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp150222
                             _%super-id149444%_))
                          '#!void)
                      (_%lp149421%_ _%rest149443%_))))
              (if (let () (declare (not safe)) (##pair? _%rest149424149432%_))
                  (let ((_%hd149429149449%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest149424149432%_)))
                        (_%tl149430149451%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest149424149432%_))))
                    (let* ((_%super-id149454%_ _%hd149429149449%_)
                           (_%rest149456%_ _%tl149430149451%_))
                      (_%K149428149446%_ _%rest149456%_ _%super-id149454%_)))
                  '#!void)))
          (let* ((_%ctor-method149507%_
                  (let ((_%$e149458%_ _%ctor-method149403%_))
                    (if _%$e149458%_
                        _%$e149458%_
                        (let _%lp149461%_ ((_%rest149463%_ _%super149401%_)
                                           (_%method149464%_ '#f))
                          (let* ((_%rest149465149473%_ _%rest149463%_)
                                 (_%else149467149481%_
                                  (lambda () _%method149464%_))
                                 (_%K149469149495%_
                                  (lambda (_%rest149484%_ _%super-id149485%_)
                                    (let* ((_%klass149487%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id149400%_ '()))
                                             _%super-id149485%_))
                                           (_%$e149489%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass149487%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e149489%_
                                          ((lambda (_%ctor-method149492%_)
                                             (if _%method149464%_
                                                 (if (eq? _%ctor-method149492%_
                                                          _%method149464%_)
                                                     (_%lp149461%_
                                                      _%rest149484%_
                                                      _%ctor-method149492%_)
                                                     (let ((__tmp150223
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id149400%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp150223
                _%method149464%_
                _%ctor-method149492%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp149461%_
                                                  _%rest149484%_
                                                  _%ctor-method149492%_)))
                                           _%$e149489%_)
                                          (_%lp149461%_
                                           _%rest149484%_
                                           _%method149464%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest149465149473%_))
                                (let ((_%hd149470149498%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest149465149473%_)))
                                      (_%tl149471149500%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest149465149473%_))))
                                  (let* ((_%super-id149503%_
                                          _%hd149470149498%_)
                                         (_%rest149505%_ _%tl149471149500%_))
                                    (_%K149469149495%_
                                     _%rest149505%_
                                     _%super-id149503%_)))
                                (_%else149467149481%_)))))))
                 (_g150224_
                  (let ((__tmp150228
                         (lambda (_%klass-id149509%_)
                           (cons _%klass-id149509%_
                                 (let ((__tmp150229
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id149400%_ '()))
                                         _%klass-id149509%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp150229
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp150226
                         (lambda (_%klass-id149511%_)
                           (let ((__tmp150227
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id149400%_ '()))
                                   _%klass-id149511%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp150227
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp150228
                     __tmp150226
                     eq?
                     identity
                     '()
                     _%super149401%_))))
            (begin
              (let ((_g150225_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g150224_)
                           (##vector-length _g150224_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g150225_ 2)))
                    (error "Context expects 2 values" _g150225_)))
              (let ((_%precedence-list149513%_
                     (let () (declare (not safe)) (##vector-ref _g150224_ 0)))
                    (_%base-struct149514%_
                     (let () (declare (not safe)) (##vector-ref _g150224_ 1))))
                (let* ((_%precedence-list149558%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id149400%_ '(t object class)))
                            _%precedence-list149513%_
                            (if (memq 'object::t _%precedence-list149513%_)
                                _%precedence-list149513%_
                                (if _%system?149406%_
                                    (if (memq 't::t _%precedence-list149513%_)
                                        _%precedence-list149513%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list149513%_
                                           '(t::t))))
                                    (let _%loop149520%_ ((_%tail149522%_
                                                          _%precedence-list149513%_)
                                                         (_%head149523%_ '()))
                                      (let* ((_%tail149524149532%_
                                              _%tail149522%_)
                                             (_%else149526149540%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head149523%_))))
                                             (_%K149528149546%_
                                              (lambda (_%rest149543%_
                                                       _%hd149544%_)
                                                (if (eq? _%hd149544%_ 't::t)
                                                    (let ((__tmp150230
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail149522%_)))
              (declare (not safe))
              (__foldl1 cons __tmp150230 _%head149523%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop149520%_
                                                     _%rest149543%_
                                                     (cons _%hd149544%_
                                                           _%head149523%_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tail149524149532%_))
                                            (let ((_%hd149529149549%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail149524149532%_)))
                                                  (_%tl149530149551%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail149524149532%_))))
                                              (let* ((_%hd149554%_
                                                      _%hd149529149549%_)
                                                     (_%rest149556%_
                                                      _%tl149530149551%_))
                                                (_%K149528149546%_
                                                 _%rest149556%_
                                                 _%hd149554%_)))
                                            (_%else149526149540%_))))))))
                       (_%fields149560%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id149400%_ '()))
                         _%base-struct149514%_
                         _%precedence-list149558%_
                         _%slots149402%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149411%_
                     _%id149400%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149411%_
                     _%super149401%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149411%_
                     _%precedence-list149558%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149411%_
                     _%slots149402%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149411%_
                     _%fields149560%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149411%_
                     _%ctor-method149507%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149411%_
                     _%struct?149404%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149411%_
                     _%final?149405%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149411%_
                     _%metaclass149407%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self147410149563%_
               _%id149565%_
               _%super149566%_
               _%precedence-list149567%_
               _%slots149568%_
               _%fields149569%_
               _%constructor149570%_
               _%struct?149571%_
               _%final?149572%_
               _%system?149573%_
               _%metaclass149574%_
               _%methods149575%_)
        (let* ((_%self149577%_ _%self147410149563%_)
               (_%self149579%_ _%self149577%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149579%_
             _%id149565%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149579%_
             _%super149566%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149579%_
             _%precedence-list149567%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149579%_
             _%slots149568%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149579%_
             _%fields149569%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149579%_
             _%constructor149570%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149579%_
             _%struct?149571%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149579%_
             _%final?149572%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149579%_
             _%metaclass149574%_
             '10
             '#f
             '#f))
          (if _%methods149575%_
              (let ((__tmp150231
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods149575%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self149579%_
                 __tmp150231
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g150233_
        (let ((_g150232_ (let () (declare (not safe)) (##length _g150233_))))
          (cond ((let () (declare (not safe)) (##fx= _g150232_ 9))
                 (apply gxc#!class:::init!__0 _g150233_))
                ((let () (declare (not safe)) (##fx= _g150232_ 12))
                 (apply gxc#!class:::init!__1 _g150233_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g150233_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where149250%_
               _%base-struct149251%_
               _%precedence-list149252%_
               _%direct-slots149253%_)
        (let* ((_%base-fields149255%_
                (if _%base-struct149251%_
                    (let ((__tmp150234
                           (gxc#optimizer-resolve-class
                            _%where149250%_
                            _%base-struct149251%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp150234 '5 '#f '#f))
                    '()))
               (_%r-fields149257%_ (reverse _%base-fields149255%_))
               (_%seen-slots149265%_
                (let ((_%tab149259%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g149260149262%_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _%tab149259%_ _%g149260149262%_ '#t)))
                   _%base-fields149255%_)
                  _%tab149259%_))
               (_%process-slot149269%_
                (lambda (_%slot149267%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%seen-slots149265%_ _%slot149267%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _%seen-slots149265%_ _%slot149267%_ '#t))
                        (set! _%r-fields149257%_
                              (cons _%slot149267%_ _%r-fields149257%_)))))))
          (for-each
           (lambda (_%mixin149272%_)
             (let ((_%klass149274%_
                    (gxc#optimizer-resolve-class
                     _%where149250%_
                     _%mixin149272%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass149274%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot149269%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass149274%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list149252%_)
          (for-each _%process-slot149269%_ _%direct-slots149253%_)
          (let () (declare (not safe)) (##reverse _%r-fields149257%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass149209%_ _%slot149210%_)
        (let _%lp149212%_ ((_%rest149214%_
                            (##structure-ref
                             _%klass149209%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset149215%_ '1))
          (let* ((_%rest149216149224%_ _%rest149214%_)
                 (_%else149218149232%_
                  (lambda ()
                    (let ((__tmp150236
                           (##structure-ref
                            _%klass149209%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp150235
                           (##structure-ref
                            _%klass149209%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp150236
                       __tmp150235
                       _%slot149210%_))))
                 (_%K149220149238%_
                  (lambda (_%rest149235%_ _%s149236%_)
                    (if (eq? _%s149236%_ _%slot149210%_)
                        _%offset149215%_
                        (_%lp149212%_
                         _%rest149235%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset149215%_ '1)))))))
            (if (let () (declare (not safe)) (##pair? _%rest149216149224%_))
                (let ((_%hd149221149241%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest149216149224%_)))
                      (_%tl149222149243%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest149216149224%_))))
                  (let* ((_%s149246%_ _%hd149221149241%_)
                         (_%rest149248%_ _%tl149222149243%_))
                    (_%K149220149238%_ _%rest149248%_ _%s149246%_)))
                (_%else149218149232%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass149167%_ _%slot149168%_)
        (if (gxc#!class-struct-slot? _%klass149167%_ _%slot149168%_)
            _%klass149167%_
            (let _%lp149170%_ ((_%rest149172%_
                                (##structure-ref
                                 _%klass149167%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest149173149181%_ _%rest149172%_)
                     (_%else149175149189%_ (lambda () '#f))
                     (_%K149177149197%_
                      (lambda (_%rest149192%_ _%super149193%_)
                        (let ((_%super-class149195%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass149167%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot149168%_ '())))
                                _%super149193%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class149195%_
                               _%slot149168%_)
                              _%super-class149195%_
                              (_%lp149170%_ _%rest149192%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest149173149181%_))
                    (let ((_%hd149178149200%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest149173149181%_)))
                          (_%tl149179149202%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest149173149181%_))))
                      (let* ((_%super149205%_ _%hd149178149200%_)
                             (_%rest149207%_ _%tl149179149202%_))
                        (_%K149177149197%_ _%rest149207%_ _%super149205%_)))
                    (_%else149175149189%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass149164%_ _%slot149165%_)
        (if (##structure-ref _%klass149164%_ '7 gxc#!class::t '#f)
            (memq _%slot149165%_
                  (##structure-ref _%klass149164%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self147411149148%_ _%id149150%_)
        (let* ((_%self149152%_ _%self147411149148%_)
               (_%self149154%_ _%self149152%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149154%_
             _%id149150%_
             '1
             '#f
             '#f))
          (let ((__tmp150237
                 (let ((__obj150169
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
                      __obj150169
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150169
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150169
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj150169)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149154%_
             __tmp150237
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self147412149010%_ _%id149012%_)
        (let* ((_%self149014%_ _%self147412149010%_)
               (_%self149016%_ _%self149014%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149016%_
             _%id149012%_
             '1
             '#f
             '#f))
          (let ((__tmp150238
                 (let ((__obj150170
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
                      __obj150170
                      _%id149012%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150170
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj150170)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149016%_
             __tmp150238
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
      (lambda (_%self147413148870%_
               _%id148872%_
               _%slot148873%_
               _%checked?148874%_)
        (let* ((_%self148876%_ _%self147413148870%_)
               (_%self148878%_ _%self148876%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148878%_
             _%id148872%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148878%_
             _%slot148873%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148878%_
             _%checked?148874%_
             '4
             '#f
             '#f))
          (let ((__tmp150239
                 (let ((__obj150171
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
                     (##unchecked-structure-set! __obj150171 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150171
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp150240 (cons _%id148872%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150171
                      __tmp150240
                      '3
                      '#f
                      '#f))
                   __obj150171)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148878%_
             __tmp150239
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self147414148730%_
               _%id148732%_
               _%slot148733%_
               _%checked?148734%_)
        (let* ((_%self148736%_ _%self147414148730%_)
               (_%self148738%_ _%self148736%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148738%_
             _%id148732%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148738%_
             _%slot148733%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148738%_
             _%checked?148734%_
             '4
             '#f
             '#f))
          (let ((__tmp150241
                 (let ((__obj150172
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
                      __obj150172
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150172
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp150242 (cons _%id148732%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150172
                      __tmp150242
                      '3
                      '#f
                      '#f))
                   __obj150172)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148738%_
             __tmp150241
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords148572%_
               _%signature148569148573%_
               _%self147415148575%_
               _%arity148577%_
               _%dispatch148578%_)
        (let* ((_%signature148580%_
                (if (eq? _%signature148569148573%_ absent-value)
                    '#f
                    _%signature148569148573%_))
               (_%self148582%_ _%self147415148575%_)
               (_%self148584%_ _%self148582%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self148584%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148584%_
             _%arity148577%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148584%_
             _%dispatch148578%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148584%_
             _%signature148580%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords148598%_ . _%args148599%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords148598%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords148598%_
                  'signature:
                  absent-value))
               _%args148599%_)))
    (define gxc#!lambda:::init!
      (lambda _%args148570148605%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args148570148605%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords148411%_
               _%signature148408148412%_
               _%self147416148414%_
               _%clauses148416%_)
        (let* ((_%signature148418%_
                (if (eq? _%signature148408148412%_ absent-value)
                    '#f
                    _%signature148408148412%_))
               (_%self148420%_ _%self147416148414%_)
               (_%self148422%_ _%self148420%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self148422%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148422%_
             _%signature148418%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148422%_
             _%clauses148416%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords148436%_ . _%args148437%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords148436%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords148436%_
                  'signature:
                  absent-value))
               _%args148437%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args148409148443%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args148409148443%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self147417148268%_ _%tab148270%_ _%dispatch148271%_)
        (let* ((_%self148273%_ _%self147417148268%_)
               (_%self148275%_ _%self148273%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self148275%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148275%_
             _%tab148270%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148275%_
             _%dispatch148271%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self147418148129%_ _%keys148131%_ _%main148132%_)
        (let* ((_%self148134%_ _%self147418148129%_)
               (_%self148136%_ _%self148134%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self148136%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148136%_
             _%keys148131%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148136%_
             _%main148132%_
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
      (lambda (_%self147419147747%_ _%id147749%_)
        (let* ((_%self147751%_ _%self147419147747%_)
               (_%self147753%_ _%self147751%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147753%_
             _%id147749%_
             '1
             '#f
             '#f))
          (let ((__tmp150243
                 (let ((__obj150173
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
                      __obj150173
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150173
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150173
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj150173)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147753%_
             __tmp150243
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
      (lambda (_%klass147616%_)
        (let ((_%$e147618%_
               (##structure-ref _%klass147616%_ '11 gxc#!class::t '#f)))
          (if _%$e147618%_
              _%$e147618%_
              (let ((_%tab147622%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass147616%_
                 _%tab147622%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab147622%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass147607%_ _%method147608%_)
        (let ((_%tab147609147611%_
               (##structure-ref _%klass147607%_ '11 gxc#!class::t '#f)))
          (if _%tab147609147611%_
              (let ((_%tab147614%_ _%tab147609147611%_))
                (declare (not safe))
                (hash-get _%tab147614%_ _%method147608%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a147595%_ _%type-b147596%_)
        (if _%type-a147595%_
            (if _%type-b147596%_
                (let ((_%$e147598%_ (eq? _%type-a147595%_ _%type-b147596%_)))
                  (if _%$e147598%_
                      _%$e147598%_
                      (let ((_%$e147601%_
                             (eq? (##structure-ref
                                   _%type-b147596%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e147601%_
                            _%$e147601%_
                            (let ((_%$e147604%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a147595%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b147596%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e147604%_
                                  _%$e147604%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a147595%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b147596%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a147595%_
                                           _%type-b147596%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a147546%_ _%klass-b147547%_)
        (let ((_%$e147549%_
               (eq? (##structure-ref _%klass-a147546%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b147547%_ '1 gxc#!type::t '#f))))
          (if _%$e147549%_
              _%$e147549%_
              (let ((_%klass-id-b147552%_
                     (##structure-ref _%klass-b147547%_ '1 gxc#!type::t '#f))
                    (_%precedence-list147553%_
                     (##structure-ref _%klass-a147546%_ '3 gxc#!class::t '#f)))
                (let _%loop147555%_ ((_%rest147557%_
                                      _%precedence-list147553%_))
                  (let* ((_%rest147558147566%_ _%rest147557%_)
                         (_%else147560147574%_ (lambda () '#f))
                         (_%K147562147583%_
                          (lambda (_%rest147577%_ _%klass-name147578%_)
                            (let ((_%$e147580%_
                                   (eq? (let ((__tmp150244
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a147546%_
                                                            (cons _%klass-b147547%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name147578%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp150244
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b147552%_)))
                              (if _%$e147580%_
                                  _%$e147580%_
                                  (_%loop147555%_ _%rest147577%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest147558147566%_))
                        (let ((_%hd147563147586%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest147558147566%_)))
                              (_%tl147564147588%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest147558147566%_))))
                          (let* ((_%klass-name147591%_ _%hd147563147586%_)
                                 (_%rest147593%_ _%tl147564147588%_))
                            (_%K147562147583%_
                             _%rest147593%_
                             _%klass-name147591%_)))
                        (_%else147560147574%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type147544%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type147544%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type147544%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc147533%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc147533%_ 'gxc#!procedure::t))
            (let ((_%proc147536%_ _%proc147533%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc147536%_ '2 '#f '#f))
                  (let ((__tmp150245
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc147536%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp150245 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@376.11-376.15"
               'contract:
               '!procedure?
               'value:
               _%proc147533%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym147515%_ _%type147516%_ _%local?147517%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type147516%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym147515%_
                     _%type147516%_)))
        (let ((__tmp150246
               (let () (declare (not safe)) (struct->list _%type147516%_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym147515%_ '" " __tmp150246))
        (let ((_%table147519%_
               (if _%local?147517%_
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
          (hash-put! _%table147519%_ _%sym147515%_ _%type147516%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym147524%_ _%type147525%_)
        (let ((_%local?147527%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym147524%_
           _%type147525%_
           _%local?147527%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g150248_
        (let ((_g150247_ (let () (declare (not safe)) (##length _g150248_))))
          (cond ((let () (declare (not safe)) (##fx= _g150247_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g150248_))
                ((let () (declare (not safe)) (##fx= _g150247_ 3))
                 (apply gxc#optimizer-declare-type!__% _g150248_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g150248_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym147509%_ _%type147510%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type147510%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym147509%_
                     _%type147510%_)))
        (let ((_%table147512%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp150249
                 (let () (declare (not safe)) (struct->list _%type147510%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym147509%_ '" " __tmp150249))
          (let ()
            (declare (not safe))
            (hash-put! _%table147512%_ _%sym147509%_ _%type147510%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table147512%_ _%type147510%_ _%sym147509%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym147504%_ _%type147505%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type147505%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym147504%_
                     _%type147505%_)))
        (let ((_%table147507%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table147507%_ _%sym147504%_))
              '#!void
              (begin
                (let ((__tmp150250
                       (let ()
                         (declare (not safe))
                         (struct->list _%type147505%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym147504%_
                   '" "
                   __tmp150250))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table147507%_ _%sym147504%_ _%type147505%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table147507%_
                   _%type147505%_
                   _%sym147504%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym147502%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym147502%_))
        (let ((__tmp150251
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp150251 _%sym147502%_))
        (let ((__tmp150252
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp150252 _%sym147502%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t147470%_
               _%method147471%_
               _%sym147472%_
               _%rebind?147473%_)
        (let ((__tmp150253
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp150253 _%sym147472%_ '#t))
        (let ((_%klass147475%_ (gxc#optimizer-lookup-class _%type-t147470%_)))
          (if _%klass147475%_
              (let* ((_%vtab147477%_ (gxc#!class-method-table _%klass147475%_))
                     (_%$e147479%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab147477%_ _%method147471%_))))
                (if _%$e147479%_
                    ((lambda (_%existing147482%_)
                       (if _%rebind?147473%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t147470%_
                                '" "
                                _%method147471%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab147477%_
                                _%method147471%_
                                _%sym147472%_)))
                           (if (eq? _%existing147482%_ _%sym147472%_)
                               '#!void
                               (let ((__tmp150254
                                      (cons 'bind-method!
                                            (cons _%type-t147470%_
                                                  (cons _%method147471%_
                                                        (cons _%sym147472%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp150254
                                  _%method147471%_)))))
                     _%$e147479%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t147470%_
                         '" "
                         _%method147471%_
                         '" => "
                         _%sym147472%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab147477%_
                         _%method147471%_
                         _%sym147472%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t147470%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t147491%_ _%method147492%_ _%sym147493%_)
        (let ((_%rebind?147495%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t147491%_
           _%method147492%_
           _%sym147493%_
           _%rebind?147495%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g150256_
        (let ((_g150255_ (let () (declare (not safe)) (##length _g150256_))))
          (cond ((let () (declare (not safe)) (##fx= _g150255_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g150256_))
                ((let () (declare (not safe)) (##fx= _g150255_ 4))
                 (apply gxc#optimizer-declare-method!__% _g150256_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g150256_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym147455%_)
        (let ((_%$e147457%_
               (let ((__tmp150257
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym147455%_ __tmp150257))))
          (if _%$e147457%_
              _%$e147457%_
              (let ((_%$e147466%_
                     (let ((_%ht147459147461%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht147459147461%_
                           (let ((_%ht147464%_ _%ht147459147461%_))
                             (declare (not safe))
                             (hash-get _%ht147464%_ _%sym147455%_))
                           '#f))))
                (if _%$e147466%_
                    _%$e147466%_
                    (let ((__tmp150258
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp150258 _%sym147455%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym147447%_)
        (let ((_%type147448147450%_ (gxc#optimizer-lookup-type _%sym147447%_)))
          (if _%type147448147450%_
              (let ((_%type147453%_ _%type147448147450%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type147453%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type147453%_ '1 '#f '#f)))
                    _%type147453%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym147443%_)
        (let ((_%table147445%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table147445%_ _%sym147443%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where147428%_ _%sym147429%_)
        (let ((_%$e147432%_ (gxc#optimizer-lookup-class _%sym147429%_)))
          (if _%$e147432%_
              ((lambda (_%g147434147436%_)
                 (let ((_%val147439%_ _%g147434147436%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val147439%_
                          'gxc#!class::t))
                       _%val147439%_
                       (let ()
                         (declare (not safe))
                         (error '"bad cast" gxc#!class::t _%val147439%_)))))
               _%$e147432%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where147428%_
                   _%sym147429%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass147426%_)
        (let ((__tmp150259
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp150259 _%klass147426%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t147423%_ _%method147424%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t147423%_)
         _%method147424%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym147421%_)
        (let ((__tmp150260
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp150260 _%sym147421%_))))))
