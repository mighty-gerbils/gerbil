(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1712146028)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp148226 (list)) (__tmp148225 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp148226
         '(type classes ssxi methods)
         __tmp148225
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args148197%_
        (apply make-instance gxc#optimizer-info::t _%$args148197%_)))
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
      (lambda (_%self148184%_)
        (let ((_%self148187%_ _%self148184%_))
          (if (let ((__tmp148227
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self148187%_))))
                (declare (not safe))
                (##fx< '4 __tmp148227))
              (begin
                (let ((__tmp148228
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self148187%_
                   __tmp148228
                   '1
                   '#f
                   '#f))
                (let ((__tmp148229
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self148187%_
                   __tmp148229
                   '2
                   '#f
                   '#f))
                (let ((__tmp148230
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self148187%_
                   __tmp148230
                   '3
                   '#f
                   '#f))
                (let ((__tmp148231
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self148187%_
                   __tmp148231
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp148232
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self148187%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self148187%_
                       '4
                       __tmp148232))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp148234 (list))
            (__tmp148233
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp148234
         '(id)
         __tmp148233
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args148059%_
        (apply make-instance gxc#!type::t _%$args148059%_)))
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
      (let ((__tmp148236 (list gxc#!type::t))
            (__tmp148235 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (make-class-type
         'gxc#!abort::t
         '!abort
         __tmp148236
         '()
         __tmp148235
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args148056%_
        (apply make-instance gxc#!abort::t _%$args148056%_)))
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
      (let ((__tmp148238 (list gxc#!type::t))
            (__tmp148237 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp148238
         '()
         __tmp148237
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args148053%_
        (apply make-instance gxc#!alias::t _%$args148053%_)))
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
    (define gxc#!procedure::t
      (let ((__tmp148240 (list gxc#!type::t))
            (__tmp148239
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp148240
         '(signature)
         __tmp148239
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (__make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _%$args148050%_
        (apply make-instance gxc#!procedure::t _%$args148050%_)))
    (define gxc#!procedure-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!procedure::t 'signature)))
    (define gxc#!procedure-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!procedure::t 'id)))
    (define gxc#!procedure-signature-set!
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
    (define gxc#&!procedure-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!procedure::t 'signature)))
    (define gxc#&!procedure-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!procedure::t 'id)))
    (define gxc#!signature::t
      (let ((__tmp148242 (list))
            (__tmp148241
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked)
                     (print: return effect arguments unchecked)))))
        (declare (not safe))
        (make-class-type
         'gxc#!signature::t
         '!signature
         __tmp148242
         '(return effect arguments unchecked)
         __tmp148241
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args148047%_
        (apply make-instance gxc#!signature::t _%$args148047%_)))
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
    (define gxc#!primitive-predicate::t
      (let ((__tmp148244 (list gxc#!procedure::t))
            (__tmp148243 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp148244
         '()
         __tmp148243
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args148044%_
        (apply make-instance gxc#!primitive-predicate::t _%$args148044%_)))
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
    (define gxc#!class-meta::t
      (let ((__tmp148246 (list gxc#!type::t))
            (__tmp148245 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp148246
         '(class)
         __tmp148245
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args148041%_
        (apply make-instance gxc#!class-meta::t _%$args148041%_)))
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
      (let ((__tmp148248 (list gxc#!type::t))
            (__tmp148247
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
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp148248
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp148247
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args148038%_
        (apply make-instance gxc#!class::t _%$args148038%_)))
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
      (let ((__tmp148250 (list gxc#!procedure::t))
            (__tmp148249 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp148250
         '()
         __tmp148249
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args148035%_
        (apply make-instance gxc#!predicate::t _%$args148035%_)))
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
      (let ((__tmp148252 (list gxc#!procedure::t))
            (__tmp148251 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp148252
         '()
         __tmp148251
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args148032%_
        (apply make-instance gxc#!constructor::t _%$args148032%_)))
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
      (let ((__tmp148254 (list gxc#!procedure::t))
            (__tmp148253 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp148254
         '(slot checked?)
         __tmp148253
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args148029%_
        (apply make-instance gxc#!accessor::t _%$args148029%_)))
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
      (let ((__tmp148256 (list gxc#!procedure::t))
            (__tmp148255 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp148256
         '(slot checked?)
         __tmp148255
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args148026%_
        (apply make-instance gxc#!mutator::t _%$args148026%_)))
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
      (let ((__tmp148258 (list gxc#!type::t))
            (__tmp148257 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (make-class-type
         'gxc#!interface::t
         '!interface
         __tmp148258
         '(methods)
         __tmp148257
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args148023%_
        (apply make-instance gxc#!interface::t _%$args148023%_)))
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
      (let ((__tmp148260 (list gxc#!procedure::t))
            (__tmp148259
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp148260
         '(arity dispatch inline inline-typedecl)
         __tmp148259
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args148020%_
        (apply make-instance gxc#!lambda::t _%$args148020%_)))
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
      (let ((__tmp148262 (list gxc#!procedure::t))
            (__tmp148261 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp148262
         '(clauses)
         __tmp148261
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args148017%_
        (apply make-instance gxc#!case-lambda::t _%$args148017%_)))
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
      (let ((__tmp148264 (list gxc#!procedure::t))
            (__tmp148263 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp148264
         '(table dispatch)
         __tmp148263
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args148014%_
        (apply make-instance gxc#!kw-lambda::t _%$args148014%_)))
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
      (let ((__tmp148266 (list gxc#!procedure::t))
            (__tmp148265 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp148266
         '(keys main)
         __tmp148265
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args148011%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args148011%_)))
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
      (let ((__tmp148267 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp148267
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args148008%_
        (apply make-instance gxc#!primitive::t _%$args148008%_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp148268 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp148268
         '()
         '((equal:))
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args148005%_
        (apply make-instance gxc#!primitive-lambda::t _%$args148005%_)))
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
      (let ((__tmp148269 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp148269
         '()
         '((equal:))
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args148002%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args148002%_)))
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
      (lambda (_%self147989%_)
        (let ((_%self147992%_ _%self147989%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self147992%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self147853%_ _%klass147854%_)
        (let ((_%self147857%_ _%self147853%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self147857%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147857%_
             _%klass147854%_
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class-meta::t ':init! gxc#!class-meta:::init! '#f))
    (define gxc#!class:::init!__0
      (lambda (_%self147545%_
               _%id147546%_
               _%super147547%_
               _%slots147548%_
               _%ctor-method147549%_
               _%struct?147550%_
               _%final?147551%_
               _%system?147552%_
               _%metaclass147553%_)
        (let ((_%self147556%_ _%self147545%_))
          (let _%lp147566%_ ((_%rest147568%_ _%super147547%_))
            (let* ((_%rest147569147577%_ _%rest147568%_)
                   (_%else147571147585%_ (lambda () '#!void))
                   (_%K147573147591%_
                    (lambda (_%rest147588%_ _%super-id147589%_)
                      (if (let ((__tmp148270
                                 (let ((__tmp148271
                                        (cons '!class
                                              (cons _%id147546%_ '()))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp148271
                                    _%super-id147589%_))))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp148270 '8 '#f '#f))
                          (let ((__tmp148272
                                 (cons '!class (cons _%id147546%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp148272
                             _%super-id147589%_))
                          '#!void)
                      (let ()
                        (declare (not safe))
                        (_%lp147566%_ _%rest147588%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest147569147577%_))
                  (let ((_%hd147574147594%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest147569147577%_)))
                        (_%tl147575147596%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest147569147577%_))))
                    (let* ((_%super-id147599%_ _%hd147574147594%_)
                           (_%rest147601%_ _%tl147575147596%_))
                      (declare (not safe))
                      (_%K147573147591%_ _%rest147601%_ _%super-id147599%_)))
                  '#!void)))
          (let* ((_%ctor-method147652%_
                  (let ((_%$e147603%_ _%ctor-method147549%_))
                    (if _%$e147603%_
                        _%$e147603%_
                        (let _%lp147606%_ ((_%rest147608%_ _%super147547%_)
                                           (_%method147609%_ '#f))
                          (let* ((_%rest147610147618%_ _%rest147608%_)
                                 (_%else147612147626%_
                                  (lambda () _%method147609%_))
                                 (_%K147614147640%_
                                  (lambda (_%rest147629%_ _%super-id147630%_)
                                    (let* ((_%klass147632%_
                                            (let ((__tmp148273
                                                   (cons '!class
                                                         (cons _%id147546%_
                                                               '()))))
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               __tmp148273
                                               _%super-id147630%_)))
                                           (_%$e147634%_
                                            (##structure-ref
                                             _%klass147632%_
                                             '6
                                             gxc#!class::t
                                             '#f)))
                                      (if _%$e147634%_
                                          ((lambda (_%ctor-method147637%_)
                                             (if _%method147609%_
                                                 (if (eq? _%ctor-method147637%_
                                                          _%method147609%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%lp147606%_
                                                        _%rest147629%_
                                                        _%ctor-method147637%_))
                                                     (let ((__tmp148274
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id147546%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp148274
                _%method147609%_
                _%ctor-method147637%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%lp147606%_
                                                    _%rest147629%_
                                                    _%ctor-method147637%_))))
                                           _%$e147634%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%lp147606%_
                                             _%rest147629%_
                                             _%method147609%_)))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest147610147618%_))
                                (let ((_%hd147615147643%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest147610147618%_)))
                                      (_%tl147616147645%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest147610147618%_))))
                                  (let* ((_%super-id147648%_
                                          _%hd147615147643%_)
                                         (_%rest147650%_ _%tl147616147645%_))
                                    (declare (not safe))
                                    (_%K147614147640%_
                                     _%rest147650%_
                                     _%super-id147648%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else147612147626%_))))))))
                 (_g148275_
                  (let ((__tmp148280
                         (lambda (_%klass-id147654%_)
                           (cons _%klass-id147654%_
                                 (let ((__tmp148281
                                        (let ((__tmp148282
                                               (cons '!class
                                                     (cons _%id147546%_ '()))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           __tmp148282
                                           _%klass-id147654%_))))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp148281
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp148277
                         (lambda (_%klass-id147656%_)
                           (let ((__tmp148278
                                  (let ((__tmp148279
                                         (cons '!class
                                               (cons _%id147546%_ '()))))
                                    (declare (not safe))
                                    (gxc#optimizer-resolve-class
                                     __tmp148279
                                     _%klass-id147656%_))))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp148278
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize
                     '()
                     _%super147547%_
                     'get-precedence-list:
                     __tmp148280
                     'struct:
                     __tmp148277
                     'eq:
                     eq?
                     'get-name:
                     identity))))
            (begin
              (let ((_g148276_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g148275_)
                           (##vector-length _g148275_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g148276_ 2)))
                    (error "Context expects 2 values" _g148276_)))
              (let ((_%precedence-list147658%_
                     (let () (declare (not safe)) (##vector-ref _g148275_ 0)))
                    (_%base-struct147659%_
                     (let () (declare (not safe)) (##vector-ref _g148275_ 1))))
                (let* ((_%precedence-list147703%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id147546%_ '(t object class)))
                            (let () _%precedence-list147658%_)
                            (if (memq 'object::t _%precedence-list147658%_)
                                (let () _%precedence-list147658%_)
                                (if _%system?147552%_
                                    (let ()
                                      (if (memq 't::t
                                                _%precedence-list147658%_)
                                          _%precedence-list147658%_
                                          (let ()
                                            (declare (not safe))
                                            (##append
                                             _%precedence-list147658%_
                                             '(t::t)))))
                                    (let _%loop147665%_ ((_%tail147667%_
                                                          _%precedence-list147658%_)
                                                         (_%head147668%_ '()))
                                      (let* ((_%tail147669147677%_
                                              _%tail147667%_)
                                             (_%else147671147685%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head147668%_))))
                                             (_%K147673147691%_
                                              (lambda (_%rest147688%_
                                                       _%hd147689%_)
                                                (if (eq? _%hd147689%_ 't::t)
                                                    (let ((__tmp148283
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail147667%_)))
              (declare (not safe))
              (__foldl1 cons __tmp148283 _%head147668%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp148284
                                                           (cons _%hd147689%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%head147668%_)))
              (declare (not safe))
              (_%loop147665%_ _%rest147688%_ __tmp148284))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tail147669147677%_))
                                            (let ((_%hd147674147694%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail147669147677%_)))
                                                  (_%tl147675147696%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail147669147677%_))))
                                              (let* ((_%hd147699%_
                                                      _%hd147674147694%_)
                                                     (_%rest147701%_
                                                      _%tl147675147696%_))
                                                (declare (not safe))
                                                (_%K147673147691%_
                                                 _%rest147701%_
                                                 _%hd147699%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%else147671147685%_)))))))))
                       (_%fields147705%_
                        (let ((__tmp148285
                               (cons '!class (cons _%id147546%_ '()))))
                          (declare (not safe))
                          (gxc#compute-class-fields
                           __tmp148285
                           _%base-struct147659%_
                           _%precedence-list147703%_
                           _%slots147548%_))))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147556%_
                     _%id147546%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147556%_
                     _%super147547%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147556%_
                     _%precedence-list147703%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147556%_
                     _%slots147548%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147556%_
                     _%fields147705%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147556%_
                     _%ctor-method147652%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147556%_
                     _%struct?147550%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147556%_
                     _%final?147551%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147556%_
                     _%metaclass147553%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self147708%_
               _%id147709%_
               _%super147710%_
               _%precedence-list147711%_
               _%slots147712%_
               _%fields147713%_
               _%constructor147714%_
               _%struct?147715%_
               _%final?147716%_
               _%system?147717%_
               _%metaclass147718%_
               _%methods147719%_)
        (let ((_%self147722%_ _%self147708%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147722%_
             _%id147709%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147722%_
             _%super147710%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147722%_
             _%precedence-list147711%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147722%_
             _%slots147712%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147722%_
             _%fields147713%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147722%_
             _%constructor147714%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147722%_
             _%struct?147715%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147722%_
             _%final?147716%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147722%_
             _%metaclass147718%_
             '10
             '#f
             '#f))
          (if _%methods147719%_
              (let ((__tmp148286
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods147719%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147722%_
                 __tmp148286
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g148288_
        (let ((_g148287_ (let () (declare (not safe)) (##length _g148288_))))
          (cond ((let () (declare (not safe)) (##fx= _g148287_ 9))
                 (apply (lambda (_%self147545%_
                                 _%id147546%_
                                 _%super147547%_
                                 _%slots147548%_
                                 _%ctor-method147549%_
                                 _%struct?147550%_
                                 _%final?147551%_
                                 _%system?147552%_
                                 _%metaclass147553%_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _%self147545%_
                             _%id147546%_
                             _%super147547%_
                             _%slots147548%_
                             _%ctor-method147549%_
                             _%struct?147550%_
                             _%final?147551%_
                             _%system?147552%_
                             _%metaclass147553%_)))
                        _g148288_))
                ((let () (declare (not safe)) (##fx= _g148287_ 12))
                 (apply (lambda (_%self147708%_
                                 _%id147709%_
                                 _%super147710%_
                                 _%precedence-list147711%_
                                 _%slots147712%_
                                 _%fields147713%_
                                 _%constructor147714%_
                                 _%struct?147715%_
                                 _%final?147716%_
                                 _%system?147717%_
                                 _%metaclass147718%_
                                 _%methods147719%_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _%self147708%_
                             _%id147709%_
                             _%super147710%_
                             _%precedence-list147711%_
                             _%slots147712%_
                             _%fields147713%_
                             _%constructor147714%_
                             _%struct?147715%_
                             _%final?147716%_
                             _%system?147717%_
                             _%metaclass147718%_
                             _%methods147719%_)))
                        _g148288_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g148288_))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where147397%_
               _%base-struct147398%_
               _%precedence-list147399%_
               _%direct-slots147400%_)
        (let* ((_%base-fields147402%_
                (if _%base-struct147398%_
                    (let ((__tmp148289
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%where147397%_
                              _%base-struct147398%_))))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp148289 '5 '#f '#f))
                    '()))
               (_%r-fields147404%_ (reverse _%base-fields147402%_))
               (_%seen-slots147412%_
                (let ((_%tab147406%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g147407147409%_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _%tab147406%_ _%g147407147409%_ '#t)))
                   _%base-fields147402%_)
                  _%tab147406%_))
               (_%process-slot147416%_
                (lambda (_%slot147414%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%seen-slots147412%_ _%slot147414%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _%seen-slots147412%_ _%slot147414%_ '#t))
                        (set! _%r-fields147404%_
                              (cons _%slot147414%_ _%r-fields147404%_)))))))
          (for-each
           (lambda (_%mixin147419%_)
             (let ((_%klass147421%_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _%where147397%_
                       _%mixin147419%_))))
               (if (##structure-ref _%klass147421%_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _%process-slot147416%_
                    (##structure-ref _%klass147421%_ '5 gxc#!class::t '#f)))))
           _%precedence-list147399%_)
          (for-each _%process-slot147416%_ _%direct-slots147400%_)
          (let () (declare (not safe)) (##reverse _%r-fields147404%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass147356%_ _%slot147357%_)
        (let _%lp147359%_ ((_%rest147361%_
                            (##structure-ref
                             _%klass147356%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset147362%_ '1))
          (let* ((_%rest147363147371%_ _%rest147361%_)
                 (_%else147365147379%_
                  (lambda ()
                    (let ((__tmp148291
                           (##structure-ref
                            _%klass147356%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp148290
                           (##structure-ref
                            _%klass147356%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp148291
                       __tmp148290
                       _%slot147357%_))))
                 (_%K147367147385%_
                  (lambda (_%rest147382%_ _%s147383%_)
                    (if (eq? _%s147383%_ _%slot147357%_)
                        _%offset147362%_
                        (let ((__tmp148292
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%offset147362%_ '1))))
                          (declare (not safe))
                          (_%lp147359%_ _%rest147382%_ __tmp148292))))))
            (if (let () (declare (not safe)) (##pair? _%rest147363147371%_))
                (let ((_%hd147368147388%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest147363147371%_)))
                      (_%tl147369147390%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest147363147371%_))))
                  (let* ((_%s147393%_ _%hd147368147388%_)
                         (_%rest147395%_ _%tl147369147390%_))
                    (declare (not safe))
                    (_%K147367147385%_ _%rest147395%_ _%s147393%_)))
                (let () (declare (not safe)) (_%else147365147379%_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass147314%_ _%slot147315%_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _%klass147314%_ _%slot147315%_))
            _%klass147314%_
            (let _%lp147317%_ ((_%rest147319%_
                                (##structure-ref
                                 _%klass147314%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest147320147328%_ _%rest147319%_)
                     (_%else147322147336%_ (lambda () '#f))
                     (_%K147324147344%_
                      (lambda (_%rest147339%_ _%super147340%_)
                        (let ((_%super-class147342%_
                               (let ((__tmp148293
                                      (cons '!class-slot-find-struct
                                            (cons (##structure-ref
                                                   _%klass147314%_
                                                   '1
                                                   gxc#!type::t
                                                   '#f)
                                                  (cons _%slot147315%_ '())))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp148293
                                  _%super147340%_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _%super-class147342%_
                                 _%slot147315%_))
                              _%super-class147342%_
                              (let ()
                                (declare (not safe))
                                (_%lp147317%_ _%rest147339%_)))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest147320147328%_))
                    (let ((_%hd147325147347%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest147320147328%_)))
                          (_%tl147326147349%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest147320147328%_))))
                      (let* ((_%super147352%_ _%hd147325147347%_)
                             (_%rest147354%_ _%tl147326147349%_))
                        (declare (not safe))
                        (_%K147324147344%_ _%rest147354%_ _%super147352%_)))
                    (let () (declare (not safe)) (_%else147322147336%_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass147311%_ _%slot147312%_)
        (if (##structure-ref _%klass147311%_ '7 gxc#!class::t '#f)
            (memq _%slot147312%_
                  (##structure-ref _%klass147311%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self147297%_ _%id147298%_)
        (let ((_%self147301%_ _%self147297%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147301%_
             _%id147298%_
             '1
             '#f
             '#f))
          (let ((__tmp148294
                 (let ((__obj148220
                        (let ()
                          (declare (not safe))
                          (##structure gxc#!signature::t '#f '#f '#f '#f))))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148220
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148220
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148220
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj148220)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147301%_
             __tmp148294
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self147161%_ _%id147162%_)
        (let ((_%self147165%_ _%self147161%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147165%_
             _%id147162%_
             '1
             '#f
             '#f))
          (let ((__tmp148295
                 (let ((__obj148221
                        (let ()
                          (declare (not safe))
                          (##structure gxc#!signature::t '#f '#f '#f '#f))))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148221
                      _%id147162%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148221
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj148221)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147165%_
             __tmp148295
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
      (lambda (_%self147023%_ _%id147024%_ _%slot147025%_ _%checked?147026%_)
        (let ((_%self147029%_ _%self147023%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147029%_
             _%id147024%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147029%_
             _%slot147025%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147029%_
             _%checked?147026%_
             '4
             '#f
             '#f))
          (let ((__tmp148296
                 (let ((__obj148222
                        (let ()
                          (declare (not safe))
                          (##structure gxc#!signature::t '#f '#f '#f '#f))))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set! __obj148222 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148222
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp148297 (cons _%id147024%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148222
                      __tmp148297
                      '3
                      '#f
                      '#f))
                   __obj148222)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147029%_
             __tmp148296
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self146885%_ _%id146886%_ _%slot146887%_ _%checked?146888%_)
        (let ((_%self146891%_ _%self146885%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146891%_
             _%id146886%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146891%_
             _%slot146887%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146891%_
             _%checked?146888%_
             '4
             '#f
             '#f))
          (let ((__tmp148298
                 (let ((__obj148223
                        (let ()
                          (declare (not safe))
                          (##structure gxc#!signature::t '#f '#f '#f '#f))))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148223
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148223
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp148299 (cons _%id146886%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148223
                      __tmp148299
                      '3
                      '#f
                      '#f))
                   __obj148223)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146891%_
             __tmp148298
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%_146728%_
               _%signature146725146730%_
               _%self146732%_
               _%arity146733%_
               _%dispatch146734%_)
        (let* ((_%signature146736%_
                (if (eq? _%signature146725146730%_ absent-value)
                    '#f
                    _%signature146725146730%_))
               (_%self146739%_ _%self146732%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self146739%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146739%_
             _%arity146733%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146739%_
             _%dispatch146734%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146739%_
             _%signature146736%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords146753%_ . _%args146754%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords146753%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords146753%_
                  'signature:
                  absent-value))
               _%args146754%_)))
    (define gxc#!lambda:::init!
      (lambda _%args146726146760%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args146726146760%_)))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!
      (lambda (_%self146588%_ _%clauses146589%_)
        (let ((_%self146592%_ _%self146588%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self146592%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146592%_
             _%clauses146589%_
             '3
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self146451%_ _%tab146452%_ _%dispatch146453%_)
        (let ((_%self146456%_ _%self146451%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self146456%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146456%_
             _%tab146452%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146456%_
             _%dispatch146453%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self146314%_ _%keys146315%_ _%main146316%_)
        (let ((_%self146319%_ _%self146314%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self146319%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146319%_
             _%keys146315%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146319%_
             _%main146316%_
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
      (lambda (_%self145934%_ _%id145935%_)
        (let ((_%self145938%_ _%self145934%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self145938%_
             _%id145935%_
             '1
             '#f
             '#f))
          (let ((__tmp148300
                 (let ((__obj148224
                        (let ()
                          (declare (not safe))
                          (##structure gxc#!signature::t '#f '#f '#f '#f))))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148224
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148224
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148224
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj148224)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self145938%_
             __tmp148300
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
      (lambda (_%klass145803%_)
        (let ((_%$e145805%_
               (##structure-ref _%klass145803%_ '11 gxc#!class::t '#f)))
          (if _%$e145805%_
              _%$e145805%_
              (let ((_%tab145809%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass145803%_
                 _%tab145809%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab145809%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass145794%_ _%method145795%_)
        (let ((_%tab145796145798%_
               (##structure-ref _%klass145794%_ '11 gxc#!class::t '#f)))
          (if _%tab145796145798%_
              (let ((_%tab145801%_ _%tab145796145798%_))
                (declare (not safe))
                (hash-get _%tab145801%_ _%method145795%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a145782%_ _%type-b145783%_)
        (if _%type-a145782%_
            (if _%type-b145783%_
                (let ((_%$e145785%_ (eq? _%type-a145782%_ _%type-b145783%_)))
                  (if _%$e145785%_
                      _%$e145785%_
                      (let ((_%$e145788%_
                             (eq? (##structure-ref
                                   _%type-b145783%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e145788%_
                            _%$e145788%_
                            (let ((_%$e145791%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a145782%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b145783%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e145791%_
                                  _%$e145791%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a145782%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b145783%_
                                             'gxc#!class::t))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#!class-subclass?
                                             _%type-a145782%_
                                             _%type-b145783%_))
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a145733%_ _%klass-b145734%_)
        (let ((_%$e145736%_
               (eq? (##structure-ref _%klass-a145733%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b145734%_ '1 gxc#!type::t '#f))))
          (if _%$e145736%_
              _%$e145736%_
              (let ((_%klass-id-b145739%_
                     (##structure-ref _%klass-b145734%_ '1 gxc#!type::t '#f))
                    (_%precedence-list145740%_
                     (##structure-ref _%klass-a145733%_ '3 gxc#!class::t '#f)))
                (let _%loop145742%_ ((_%rest145744%_
                                      _%precedence-list145740%_))
                  (let* ((_%rest145745145753%_ _%rest145744%_)
                         (_%else145747145761%_ (lambda () '#f))
                         (_%K145749145770%_
                          (lambda (_%rest145764%_ _%klass-name145765%_)
                            (let ((_%$e145767%_
                                   (eq? (let ((__tmp148301
                                               (let ((__tmp148302
                                                      (cons 'subclass?
                                                            (cons _%klass-a145733%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%klass-b145734%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp148302
                                                  _%klass-name145765%_))))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp148301
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b145739%_)))
                              (if _%$e145767%_
                                  _%$e145767%_
                                  (let ()
                                    (declare (not safe))
                                    (_%loop145742%_ _%rest145764%_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest145745145753%_))
                        (let ((_%hd145750145773%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest145745145753%_)))
                              (_%tl145751145775%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest145745145753%_))))
                          (let* ((_%klass-name145778%_ _%hd145750145773%_)
                                 (_%rest145780%_ _%tl145751145775%_))
                            (declare (not safe))
                            (_%K145749145770%_
                             _%rest145780%_
                             _%klass-name145778%_)))
                        (let ()
                          (declare (not safe))
                          (_%else145747145761%_))))))))))
    (define gxc#!interface-instance?
      (lambda (_%type145731%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145731%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (##structure-ref _%type145731%_ '3 gxc#!class::t '#f))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym145713%_ _%type145714%_ _%local?145715%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145714%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym145713%_
                     _%type145714%_)))
        (let ((__tmp148303
               (let () (declare (not safe)) (struct->list _%type145714%_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym145713%_ '" " __tmp148303))
        (let ((_%table145717%_
               (if _%local?145715%_
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
          (hash-put! _%table145717%_ _%sym145713%_ _%type145714%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym145722%_ _%type145723%_)
        (let ((_%local?145725%_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _%sym145722%_
           _%type145723%_
           _%local?145725%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g148305_
        (let ((_g148304_ (let () (declare (not safe)) (##length _g148305_))))
          (cond ((let () (declare (not safe)) (##fx= _g148304_ 2))
                 (apply (lambda (_%sym145722%_ _%type145723%_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _%sym145722%_
                             _%type145723%_)))
                        _g148305_))
                ((let () (declare (not safe)) (##fx= _g148304_ 3))
                 (apply (lambda (_%sym145727%_ _%type145728%_ _%local?145729%_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _%sym145727%_
                             _%type145728%_
                             _%local?145729%_)))
                        _g148305_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g148305_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym145707%_ _%type145708%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145708%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym145707%_
                     _%type145708%_)))
        (let ((_%table145710%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp148306
                 (let () (declare (not safe)) (struct->list _%type145708%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym145707%_ '" " __tmp148306))
          (let ()
            (declare (not safe))
            (hash-put! _%table145710%_ _%sym145707%_ _%type145708%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table145710%_ _%type145708%_ _%sym145707%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym145702%_ _%type145703%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145703%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym145702%_
                     _%type145703%_)))
        (let ((_%table145705%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table145705%_ _%sym145702%_))
              '#!void
              (begin
                (let ((__tmp148307
                       (let ()
                         (declare (not safe))
                         (struct->list _%type145703%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym145702%_
                   '" "
                   __tmp148307))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table145705%_ _%sym145702%_ _%type145703%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table145705%_
                   _%type145703%_
                   _%sym145702%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym145700%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym145700%_))
        (let ((__tmp148308
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp148308 _%sym145700%_))
        (let ((__tmp148309
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp148309 _%sym145700%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t145668%_
               _%method145669%_
               _%sym145670%_
               _%rebind?145671%_)
        (let ((_%klass145673%_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-class _%type-t145668%_))))
          (if _%klass145673%_
              (let* ((_%vtab145675%_
                      (let ()
                        (declare (not safe))
                        (gxc#!class-method-table _%klass145673%_)))
                     (_%$e145677%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab145675%_ _%method145669%_))))
                (if _%$e145677%_
                    ((lambda (_%existing145680%_)
                       (if _%rebind?145671%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t145668%_
                                '" "
                                _%method145669%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab145675%_
                                _%method145669%_
                                _%sym145670%_)))
                           (if (eq? _%existing145680%_ _%sym145670%_)
                               (let () '#!void)
                               (let ((__tmp148310
                                      (cons 'bind-method!
                                            (cons _%type-t145668%_
                                                  (cons _%method145669%_
                                                        (cons _%sym145670%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp148310
                                  _%method145669%_)))))
                     _%$e145677%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t145668%_
                         '" "
                         _%method145669%_
                         '" => "
                         _%sym145670%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab145675%_
                         _%method145669%_
                         _%sym145670%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t145668%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t145689%_ _%method145690%_ _%sym145691%_)
        (let ((_%rebind?145693%_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _%type-t145689%_
           _%method145690%_
           _%sym145691%_
           _%rebind?145693%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g148312_
        (let ((_g148311_ (let () (declare (not safe)) (##length _g148312_))))
          (cond ((let () (declare (not safe)) (##fx= _g148311_ 3))
                 (apply (lambda (_%type-t145689%_
                                 _%method145690%_
                                 _%sym145691%_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _%type-t145689%_
                             _%method145690%_
                             _%sym145691%_)))
                        _g148312_))
                ((let () (declare (not safe)) (##fx= _g148311_ 4))
                 (apply (lambda (_%type-t145695%_
                                 _%method145696%_
                                 _%sym145697%_
                                 _%rebind?145698%_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _%type-t145695%_
                             _%method145696%_
                             _%sym145697%_
                             _%rebind?145698%_)))
                        _g148312_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g148312_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym145656%_)
        (let ((_%$e145664%_
               (let ((_%ht145657145659%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-local-type))))
                 (if _%ht145657145659%_
                     (let ((_%ht145662%_ _%ht145657145659%_))
                       (declare (not safe))
                       (hash-get _%ht145662%_ _%sym145656%_))
                     '#f))))
          (if _%$e145664%_
              _%$e145664%_
              (let ((__tmp148313
                     (##structure-ref
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-optimizer-info))
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp148313 _%sym145656%_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym145648%_)
        (let ((_%type145649145651%_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _%sym145648%_))))
          (if _%type145649145651%_
              (let ((_%type145654%_ _%type145649145651%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type145654%_ 'gxc#!alias::t))
                    (let ((__tmp148314
                           (##structure-ref
                            _%type145654%_
                            '1
                            gxc#!type::t
                            '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp148314))
                    _%type145654%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym145644%_)
        (let ((_%table145646%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table145646%_ _%sym145644%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where145628%_ _%sym145629%_)
        (let ((_%$e145641%_
               (let ((_%klass145631145633%_
                      (let ()
                        (declare (not safe))
                        (gxc#optimizer-lookup-class _%sym145629%_))))
                 (if _%klass145631145633%_
                     (let* ((_%klass145636%_ _%klass145631145633%_)
                            (_%val145638%_ _%klass145636%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-instance-of?
                              _%val145638%_
                              'gxc#!class::t))
                           _%val145638%_
                           (let ()
                             (declare (not safe))
                             (error '"bad cast" gxc#!class::t _%val145638%_))))
                     '#f))))
          (if _%$e145641%_
              _%$e145641%_
              (let ()
                (declare (not safe))
                (gxc#raise-compile-error
                 '"unknown class"
                 _%where145628%_
                 _%sym145629%_))))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass145626%_)
        (let ((__tmp148315
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp148315 _%klass145626%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t145623%_ _%method145624%_)
        (let ((__tmp148316
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-class
                  'lookup-method
                  _%type-t145623%_))))
          (declare (not safe))
          (gxc#!class-lookup-method __tmp148316 _%method145624%_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_%sym145621%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _%sym145621%_))
        (let ((__tmp148317
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp148317 _%sym145621%_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym145619%_)
        (let ((__tmp148318
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp148318 _%sym145619%_))))))
