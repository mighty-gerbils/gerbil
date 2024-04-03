(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1712161242)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp148249 (list)) (__tmp148248 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp148249
         '(type classes ssxi methods)
         __tmp148248
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args148220%_
        (apply make-instance gxc#optimizer-info::t _%$args148220%_)))
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
      (lambda (_%self148207%_)
        (let ((_%self148210%_ _%self148207%_))
          (if (let ((__tmp148250
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self148210%_))))
                (declare (not safe))
                (##fx< '4 __tmp148250))
              (begin
                (let ((__tmp148251
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self148210%_
                   __tmp148251
                   '1
                   '#f
                   '#f))
                (let ((__tmp148252
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self148210%_
                   __tmp148252
                   '2
                   '#f
                   '#f))
                (let ((__tmp148253
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self148210%_
                   __tmp148253
                   '3
                   '#f
                   '#f))
                (let ((__tmp148254
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self148210%_
                   __tmp148254
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp148255
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self148210%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self148210%_
                       '4
                       __tmp148255))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp148257 (list))
            (__tmp148256
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp148257
         '(id)
         __tmp148256
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args148082%_
        (apply make-instance gxc#!type::t _%$args148082%_)))
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
      (let ((__tmp148259 (list gxc#!type::t))
            (__tmp148258 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (make-class-type
         'gxc#!abort::t
         '!abort
         __tmp148259
         '()
         __tmp148258
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args148079%_
        (apply make-instance gxc#!abort::t _%$args148079%_)))
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
      (let ((__tmp148261 (list gxc#!type::t))
            (__tmp148260 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp148261
         '()
         __tmp148260
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args148076%_
        (apply make-instance gxc#!alias::t _%$args148076%_)))
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
      (let ((__tmp148263 (list gxc#!type::t))
            (__tmp148262
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp148263
         '(signature)
         __tmp148262
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (__make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _%$args148073%_
        (apply make-instance gxc#!procedure::t _%$args148073%_)))
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
      (let ((__tmp148265 (list))
            (__tmp148264
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked)
                     (print: return effect arguments unchecked)))))
        (declare (not safe))
        (make-class-type
         'gxc#!signature::t
         '!signature
         __tmp148265
         '(return effect arguments unchecked)
         __tmp148264
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args148070%_
        (apply make-instance gxc#!signature::t _%$args148070%_)))
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
      (let ((__tmp148267 (list gxc#!procedure::t))
            (__tmp148266 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp148267
         '()
         __tmp148266
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args148067%_
        (apply make-instance gxc#!primitive-predicate::t _%$args148067%_)))
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
      (let ((__tmp148269 (list gxc#!type::t))
            (__tmp148268 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp148269
         '(class)
         __tmp148268
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args148064%_
        (apply make-instance gxc#!class-meta::t _%$args148064%_)))
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
      (let ((__tmp148271 (list gxc#!type::t))
            (__tmp148270
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
         __tmp148271
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp148270
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args148061%_
        (apply make-instance gxc#!class::t _%$args148061%_)))
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
      (let ((__tmp148273 (list gxc#!procedure::t))
            (__tmp148272 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp148273
         '()
         __tmp148272
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args148058%_
        (apply make-instance gxc#!predicate::t _%$args148058%_)))
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
      (let ((__tmp148275 (list gxc#!procedure::t))
            (__tmp148274 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp148275
         '()
         __tmp148274
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args148055%_
        (apply make-instance gxc#!constructor::t _%$args148055%_)))
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
      (let ((__tmp148277 (list gxc#!procedure::t))
            (__tmp148276 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp148277
         '(slot checked?)
         __tmp148276
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args148052%_
        (apply make-instance gxc#!accessor::t _%$args148052%_)))
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
      (let ((__tmp148279 (list gxc#!procedure::t))
            (__tmp148278 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp148279
         '(slot checked?)
         __tmp148278
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args148049%_
        (apply make-instance gxc#!mutator::t _%$args148049%_)))
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
      (let ((__tmp148281 (list gxc#!type::t))
            (__tmp148280 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (make-class-type
         'gxc#!interface::t
         '!interface
         __tmp148281
         '(methods)
         __tmp148280
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args148046%_
        (apply make-instance gxc#!interface::t _%$args148046%_)))
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
      (let ((__tmp148283 (list gxc#!procedure::t))
            (__tmp148282
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp148283
         '(arity dispatch inline inline-typedecl)
         __tmp148282
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args148043%_
        (apply make-instance gxc#!lambda::t _%$args148043%_)))
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
      (let ((__tmp148285 (list gxc#!procedure::t))
            (__tmp148284 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp148285
         '(clauses)
         __tmp148284
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args148040%_
        (apply make-instance gxc#!case-lambda::t _%$args148040%_)))
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
      (let ((__tmp148287 (list gxc#!procedure::t))
            (__tmp148286 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp148287
         '(table dispatch)
         __tmp148286
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args148037%_
        (apply make-instance gxc#!kw-lambda::t _%$args148037%_)))
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
      (let ((__tmp148289 (list gxc#!procedure::t))
            (__tmp148288 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp148289
         '(keys main)
         __tmp148288
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args148034%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args148034%_)))
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
      (let ((__tmp148290 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp148290
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args148031%_
        (apply make-instance gxc#!primitive::t _%$args148031%_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp148291 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp148291
         '()
         '((equal:))
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args148028%_
        (apply make-instance gxc#!primitive-lambda::t _%$args148028%_)))
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
      (let ((__tmp148292 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp148292
         '()
         '((equal:))
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args148025%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args148025%_)))
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
      (lambda (_%self148012%_)
        (let ((_%self148015%_ _%self148012%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self148015%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self147876%_ _%klass147877%_)
        (let ((_%self147880%_ _%self147876%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self147880%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147880%_
             _%klass147877%_
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class-meta::t ':init! gxc#!class-meta:::init! '#f))
    (define gxc#!class:::init!__0
      (lambda (_%self147568%_
               _%id147569%_
               _%super147570%_
               _%slots147571%_
               _%ctor-method147572%_
               _%struct?147573%_
               _%final?147574%_
               _%system?147575%_
               _%metaclass147576%_)
        (let ((_%self147579%_ _%self147568%_))
          (let _%lp147589%_ ((_%rest147591%_ _%super147570%_))
            (let* ((_%rest147592147600%_ _%rest147591%_)
                   (_%else147594147608%_ (lambda () '#!void))
                   (_%K147596147614%_
                    (lambda (_%rest147611%_ _%super-id147612%_)
                      (if (let ((__tmp148293
                                 (let ((__tmp148294
                                        (cons '!class
                                              (cons _%id147569%_ '()))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp148294
                                    _%super-id147612%_))))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp148293 '8 '#f '#f))
                          (let ((__tmp148295
                                 (cons '!class (cons _%id147569%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp148295
                             _%super-id147612%_))
                          '#!void)
                      (let ()
                        (declare (not safe))
                        (_%lp147589%_ _%rest147611%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest147592147600%_))
                  (let ((_%hd147597147617%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest147592147600%_)))
                        (_%tl147598147619%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest147592147600%_))))
                    (let* ((_%super-id147622%_ _%hd147597147617%_)
                           (_%rest147624%_ _%tl147598147619%_))
                      (declare (not safe))
                      (_%K147596147614%_ _%rest147624%_ _%super-id147622%_)))
                  '#!void)))
          (let* ((_%ctor-method147675%_
                  (let ((_%$e147626%_ _%ctor-method147572%_))
                    (if _%$e147626%_
                        _%$e147626%_
                        (let _%lp147629%_ ((_%rest147631%_ _%super147570%_)
                                           (_%method147632%_ '#f))
                          (let* ((_%rest147633147641%_ _%rest147631%_)
                                 (_%else147635147649%_
                                  (lambda () _%method147632%_))
                                 (_%K147637147663%_
                                  (lambda (_%rest147652%_ _%super-id147653%_)
                                    (let* ((_%klass147655%_
                                            (let ((__tmp148296
                                                   (cons '!class
                                                         (cons _%id147569%_
                                                               '()))))
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               __tmp148296
                                               _%super-id147653%_)))
                                           (_%$e147657%_
                                            (##structure-ref
                                             _%klass147655%_
                                             '6
                                             gxc#!class::t
                                             '#f)))
                                      (if _%$e147657%_
                                          ((lambda (_%ctor-method147660%_)
                                             (if _%method147632%_
                                                 (if (eq? _%ctor-method147660%_
                                                          _%method147632%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%lp147629%_
                                                        _%rest147652%_
                                                        _%ctor-method147660%_))
                                                     (let ((__tmp148297
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id147569%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp148297
                _%method147632%_
                _%ctor-method147660%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%lp147629%_
                                                    _%rest147652%_
                                                    _%ctor-method147660%_))))
                                           _%$e147657%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%lp147629%_
                                             _%rest147652%_
                                             _%method147632%_)))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest147633147641%_))
                                (let ((_%hd147638147666%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest147633147641%_)))
                                      (_%tl147639147668%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest147633147641%_))))
                                  (let* ((_%super-id147671%_
                                          _%hd147638147666%_)
                                         (_%rest147673%_ _%tl147639147668%_))
                                    (declare (not safe))
                                    (_%K147637147663%_
                                     _%rest147673%_
                                     _%super-id147671%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else147635147649%_))))))))
                 (_g148298_
                  (let ((__tmp148303
                         (lambda (_%klass-id147677%_)
                           (cons _%klass-id147677%_
                                 (let ((__tmp148304
                                        (let ((__tmp148305
                                               (cons '!class
                                                     (cons _%id147569%_ '()))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           __tmp148305
                                           _%klass-id147677%_))))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp148304
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp148300
                         (lambda (_%klass-id147679%_)
                           (let ((__tmp148301
                                  (let ((__tmp148302
                                         (cons '!class
                                               (cons _%id147569%_ '()))))
                                    (declare (not safe))
                                    (gxc#optimizer-resolve-class
                                     __tmp148302
                                     _%klass-id147679%_))))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp148301
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp148303
                     __tmp148300
                     eq?
                     identity
                     '()
                     _%super147570%_))))
            (begin
              (let ((_g148299_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g148298_)
                           (##vector-length _g148298_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g148299_ 2)))
                    (error "Context expects 2 values" _g148299_)))
              (let ((_%precedence-list147681%_
                     (let () (declare (not safe)) (##vector-ref _g148298_ 0)))
                    (_%base-struct147682%_
                     (let () (declare (not safe)) (##vector-ref _g148298_ 1))))
                (let* ((_%precedence-list147726%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id147569%_ '(t object class)))
                            (let () _%precedence-list147681%_)
                            (if (memq 'object::t _%precedence-list147681%_)
                                (let () _%precedence-list147681%_)
                                (if _%system?147575%_
                                    (let ()
                                      (if (memq 't::t
                                                _%precedence-list147681%_)
                                          _%precedence-list147681%_
                                          (let ()
                                            (declare (not safe))
                                            (##append
                                             _%precedence-list147681%_
                                             '(t::t)))))
                                    (let _%loop147688%_ ((_%tail147690%_
                                                          _%precedence-list147681%_)
                                                         (_%head147691%_ '()))
                                      (let* ((_%tail147692147700%_
                                              _%tail147690%_)
                                             (_%else147694147708%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head147691%_))))
                                             (_%K147696147714%_
                                              (lambda (_%rest147711%_
                                                       _%hd147712%_)
                                                (if (eq? _%hd147712%_ 't::t)
                                                    (let ((__tmp148306
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail147690%_)))
              (declare (not safe))
              (__foldl1 cons __tmp148306 _%head147691%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp148307
                                                           (cons _%hd147712%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%head147691%_)))
              (declare (not safe))
              (_%loop147688%_ _%rest147711%_ __tmp148307))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tail147692147700%_))
                                            (let ((_%hd147697147717%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail147692147700%_)))
                                                  (_%tl147698147719%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail147692147700%_))))
                                              (let* ((_%hd147722%_
                                                      _%hd147697147717%_)
                                                     (_%rest147724%_
                                                      _%tl147698147719%_))
                                                (declare (not safe))
                                                (_%K147696147714%_
                                                 _%rest147724%_
                                                 _%hd147722%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%else147694147708%_)))))))))
                       (_%fields147728%_
                        (let ((__tmp148308
                               (cons '!class (cons _%id147569%_ '()))))
                          (declare (not safe))
                          (gxc#compute-class-fields
                           __tmp148308
                           _%base-struct147682%_
                           _%precedence-list147726%_
                           _%slots147571%_))))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147579%_
                     _%id147569%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147579%_
                     _%super147570%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147579%_
                     _%precedence-list147726%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147579%_
                     _%slots147571%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147579%_
                     _%fields147728%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147579%_
                     _%ctor-method147675%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147579%_
                     _%struct?147573%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147579%_
                     _%final?147574%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147579%_
                     _%metaclass147576%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self147731%_
               _%id147732%_
               _%super147733%_
               _%precedence-list147734%_
               _%slots147735%_
               _%fields147736%_
               _%constructor147737%_
               _%struct?147738%_
               _%final?147739%_
               _%system?147740%_
               _%metaclass147741%_
               _%methods147742%_)
        (let ((_%self147745%_ _%self147731%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147745%_
             _%id147732%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147745%_
             _%super147733%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147745%_
             _%precedence-list147734%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147745%_
             _%slots147735%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147745%_
             _%fields147736%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147745%_
             _%constructor147737%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147745%_
             _%struct?147738%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147745%_
             _%final?147739%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147745%_
             _%metaclass147741%_
             '10
             '#f
             '#f))
          (if _%methods147742%_
              (let ((__tmp148309
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods147742%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147745%_
                 __tmp148309
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g148311_
        (let ((_g148310_ (let () (declare (not safe)) (##length _g148311_))))
          (cond ((let () (declare (not safe)) (##fx= _g148310_ 9))
                 (apply (lambda (_%self147568%_
                                 _%id147569%_
                                 _%super147570%_
                                 _%slots147571%_
                                 _%ctor-method147572%_
                                 _%struct?147573%_
                                 _%final?147574%_
                                 _%system?147575%_
                                 _%metaclass147576%_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _%self147568%_
                             _%id147569%_
                             _%super147570%_
                             _%slots147571%_
                             _%ctor-method147572%_
                             _%struct?147573%_
                             _%final?147574%_
                             _%system?147575%_
                             _%metaclass147576%_)))
                        _g148311_))
                ((let () (declare (not safe)) (##fx= _g148310_ 12))
                 (apply (lambda (_%self147731%_
                                 _%id147732%_
                                 _%super147733%_
                                 _%precedence-list147734%_
                                 _%slots147735%_
                                 _%fields147736%_
                                 _%constructor147737%_
                                 _%struct?147738%_
                                 _%final?147739%_
                                 _%system?147740%_
                                 _%metaclass147741%_
                                 _%methods147742%_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _%self147731%_
                             _%id147732%_
                             _%super147733%_
                             _%precedence-list147734%_
                             _%slots147735%_
                             _%fields147736%_
                             _%constructor147737%_
                             _%struct?147738%_
                             _%final?147739%_
                             _%system?147740%_
                             _%metaclass147741%_
                             _%methods147742%_)))
                        _g148311_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g148311_))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where147420%_
               _%base-struct147421%_
               _%precedence-list147422%_
               _%direct-slots147423%_)
        (let* ((_%base-fields147425%_
                (if _%base-struct147421%_
                    (let ((__tmp148312
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%where147420%_
                              _%base-struct147421%_))))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp148312 '5 '#f '#f))
                    '()))
               (_%r-fields147427%_ (reverse _%base-fields147425%_))
               (_%seen-slots147435%_
                (let ((_%tab147429%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g147430147432%_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _%tab147429%_ _%g147430147432%_ '#t)))
                   _%base-fields147425%_)
                  _%tab147429%_))
               (_%process-slot147439%_
                (lambda (_%slot147437%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%seen-slots147435%_ _%slot147437%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _%seen-slots147435%_ _%slot147437%_ '#t))
                        (set! _%r-fields147427%_
                              (cons _%slot147437%_ _%r-fields147427%_)))))))
          (for-each
           (lambda (_%mixin147442%_)
             (let ((_%klass147444%_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _%where147420%_
                       _%mixin147442%_))))
               (if (##structure-ref _%klass147444%_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _%process-slot147439%_
                    (##structure-ref _%klass147444%_ '5 gxc#!class::t '#f)))))
           _%precedence-list147422%_)
          (for-each _%process-slot147439%_ _%direct-slots147423%_)
          (let () (declare (not safe)) (##reverse _%r-fields147427%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass147379%_ _%slot147380%_)
        (let _%lp147382%_ ((_%rest147384%_
                            (##structure-ref
                             _%klass147379%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset147385%_ '1))
          (let* ((_%rest147386147394%_ _%rest147384%_)
                 (_%else147388147402%_
                  (lambda ()
                    (let ((__tmp148314
                           (##structure-ref
                            _%klass147379%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp148313
                           (##structure-ref
                            _%klass147379%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp148314
                       __tmp148313
                       _%slot147380%_))))
                 (_%K147390147408%_
                  (lambda (_%rest147405%_ _%s147406%_)
                    (if (eq? _%s147406%_ _%slot147380%_)
                        _%offset147385%_
                        (let ((__tmp148315
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%offset147385%_ '1))))
                          (declare (not safe))
                          (_%lp147382%_ _%rest147405%_ __tmp148315))))))
            (if (let () (declare (not safe)) (##pair? _%rest147386147394%_))
                (let ((_%hd147391147411%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest147386147394%_)))
                      (_%tl147392147413%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest147386147394%_))))
                  (let* ((_%s147416%_ _%hd147391147411%_)
                         (_%rest147418%_ _%tl147392147413%_))
                    (declare (not safe))
                    (_%K147390147408%_ _%rest147418%_ _%s147416%_)))
                (let () (declare (not safe)) (_%else147388147402%_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass147337%_ _%slot147338%_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _%klass147337%_ _%slot147338%_))
            _%klass147337%_
            (let _%lp147340%_ ((_%rest147342%_
                                (##structure-ref
                                 _%klass147337%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest147343147351%_ _%rest147342%_)
                     (_%else147345147359%_ (lambda () '#f))
                     (_%K147347147367%_
                      (lambda (_%rest147362%_ _%super147363%_)
                        (let ((_%super-class147365%_
                               (let ((__tmp148316
                                      (cons '!class-slot-find-struct
                                            (cons (##structure-ref
                                                   _%klass147337%_
                                                   '1
                                                   gxc#!type::t
                                                   '#f)
                                                  (cons _%slot147338%_ '())))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp148316
                                  _%super147363%_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _%super-class147365%_
                                 _%slot147338%_))
                              _%super-class147365%_
                              (let ()
                                (declare (not safe))
                                (_%lp147340%_ _%rest147362%_)))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest147343147351%_))
                    (let ((_%hd147348147370%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest147343147351%_)))
                          (_%tl147349147372%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest147343147351%_))))
                      (let* ((_%super147375%_ _%hd147348147370%_)
                             (_%rest147377%_ _%tl147349147372%_))
                        (declare (not safe))
                        (_%K147347147367%_ _%rest147377%_ _%super147375%_)))
                    (let () (declare (not safe)) (_%else147345147359%_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass147334%_ _%slot147335%_)
        (if (##structure-ref _%klass147334%_ '7 gxc#!class::t '#f)
            (memq _%slot147335%_
                  (##structure-ref _%klass147334%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self147320%_ _%id147321%_)
        (let ((_%self147324%_ _%self147320%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147324%_
             _%id147321%_
             '1
             '#f
             '#f))
          (let ((__tmp148317
                 (let ((__obj148243
                        (let ()
                          (declare (not safe))
                          (##structure gxc#!signature::t '#f '#f '#f '#f))))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148243
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148243
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148243
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj148243)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147324%_
             __tmp148317
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self147184%_ _%id147185%_)
        (let ((_%self147188%_ _%self147184%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147188%_
             _%id147185%_
             '1
             '#f
             '#f))
          (let ((__tmp148318
                 (let ((__obj148244
                        (let ()
                          (declare (not safe))
                          (##structure gxc#!signature::t '#f '#f '#f '#f))))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148244
                      _%id147185%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148244
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj148244)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147188%_
             __tmp148318
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
      (lambda (_%self147046%_ _%id147047%_ _%slot147048%_ _%checked?147049%_)
        (let ((_%self147052%_ _%self147046%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147052%_
             _%id147047%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147052%_
             _%slot147048%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147052%_
             _%checked?147049%_
             '4
             '#f
             '#f))
          (let ((__tmp148319
                 (let ((__obj148245
                        (let ()
                          (declare (not safe))
                          (##structure gxc#!signature::t '#f '#f '#f '#f))))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set! __obj148245 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148245
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp148320 (cons _%id147047%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148245
                      __tmp148320
                      '3
                      '#f
                      '#f))
                   __obj148245)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147052%_
             __tmp148319
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self146908%_ _%id146909%_ _%slot146910%_ _%checked?146911%_)
        (let ((_%self146914%_ _%self146908%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146914%_
             _%id146909%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146914%_
             _%slot146910%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146914%_
             _%checked?146911%_
             '4
             '#f
             '#f))
          (let ((__tmp148321
                 (let ((__obj148246
                        (let ()
                          (declare (not safe))
                          (##structure gxc#!signature::t '#f '#f '#f '#f))))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148246
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148246
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp148322 (cons _%id146909%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148246
                      __tmp148322
                      '3
                      '#f
                      '#f))
                   __obj148246)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146914%_
             __tmp148321
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%_146751%_
               _%signature146748146753%_
               _%self146755%_
               _%arity146756%_
               _%dispatch146757%_)
        (let* ((_%signature146759%_
                (if (eq? _%signature146748146753%_ absent-value)
                    '#f
                    _%signature146748146753%_))
               (_%self146762%_ _%self146755%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self146762%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146762%_
             _%arity146756%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146762%_
             _%dispatch146757%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146762%_
             _%signature146759%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords146776%_ . _%args146777%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords146776%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords146776%_
                  'signature:
                  absent-value))
               _%args146777%_)))
    (define gxc#!lambda:::init!
      (lambda _%args146749146783%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args146749146783%_)))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%_146591%_
               _%signature146588146593%_
               _%self146595%_
               _%clauses146596%_)
        (let* ((_%signature146598%_
                (if (eq? _%signature146588146593%_ absent-value)
                    '#f
                    _%signature146588146593%_))
               (_%self146601%_ _%self146595%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self146601%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146601%_
             _%signature146598%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146601%_
             _%clauses146596%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords146615%_ . _%args146616%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords146615%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords146615%_
                  'signature:
                  absent-value))
               _%args146616%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args146589146622%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args146589146622%_)))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self146450%_ _%tab146451%_ _%dispatch146452%_)
        (let ((_%self146455%_ _%self146450%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self146455%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146455%_
             _%tab146451%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146455%_
             _%dispatch146452%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self146313%_ _%keys146314%_ _%main146315%_)
        (let ((_%self146318%_ _%self146313%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self146318%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146318%_
             _%keys146314%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146318%_
             _%main146315%_
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
      (lambda (_%self145933%_ _%id145934%_)
        (let ((_%self145937%_ _%self145933%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self145937%_
             _%id145934%_
             '1
             '#f
             '#f))
          (let ((__tmp148323
                 (let ((__obj148247
                        (let ()
                          (declare (not safe))
                          (##structure gxc#!signature::t '#f '#f '#f '#f))))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148247
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148247
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148247
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj148247)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self145937%_
             __tmp148323
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
      (lambda (_%klass145802%_)
        (let ((_%$e145804%_
               (##structure-ref _%klass145802%_ '11 gxc#!class::t '#f)))
          (if _%$e145804%_
              _%$e145804%_
              (let ((_%tab145808%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass145802%_
                 _%tab145808%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab145808%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass145793%_ _%method145794%_)
        (let ((_%tab145795145797%_
               (##structure-ref _%klass145793%_ '11 gxc#!class::t '#f)))
          (if _%tab145795145797%_
              (let ((_%tab145800%_ _%tab145795145797%_))
                (declare (not safe))
                (hash-get _%tab145800%_ _%method145794%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a145781%_ _%type-b145782%_)
        (if _%type-a145781%_
            (if _%type-b145782%_
                (let ((_%$e145784%_ (eq? _%type-a145781%_ _%type-b145782%_)))
                  (if _%$e145784%_
                      _%$e145784%_
                      (let ((_%$e145787%_
                             (eq? (##structure-ref
                                   _%type-b145782%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e145787%_
                            _%$e145787%_
                            (let ((_%$e145790%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a145781%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b145782%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e145790%_
                                  _%$e145790%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a145781%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b145782%_
                                             'gxc#!class::t))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#!class-subclass?
                                             _%type-a145781%_
                                             _%type-b145782%_))
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a145732%_ _%klass-b145733%_)
        (let ((_%$e145735%_
               (eq? (##structure-ref _%klass-a145732%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b145733%_ '1 gxc#!type::t '#f))))
          (if _%$e145735%_
              _%$e145735%_
              (let ((_%klass-id-b145738%_
                     (##structure-ref _%klass-b145733%_ '1 gxc#!type::t '#f))
                    (_%precedence-list145739%_
                     (##structure-ref _%klass-a145732%_ '3 gxc#!class::t '#f)))
                (let _%loop145741%_ ((_%rest145743%_
                                      _%precedence-list145739%_))
                  (let* ((_%rest145744145752%_ _%rest145743%_)
                         (_%else145746145760%_ (lambda () '#f))
                         (_%K145748145769%_
                          (lambda (_%rest145763%_ _%klass-name145764%_)
                            (let ((_%$e145766%_
                                   (eq? (let ((__tmp148324
                                               (let ((__tmp148325
                                                      (cons 'subclass?
                                                            (cons _%klass-a145732%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%klass-b145733%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp148325
                                                  _%klass-name145764%_))))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp148324
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b145738%_)))
                              (if _%$e145766%_
                                  _%$e145766%_
                                  (let ()
                                    (declare (not safe))
                                    (_%loop145741%_ _%rest145763%_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest145744145752%_))
                        (let ((_%hd145749145772%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest145744145752%_)))
                              (_%tl145750145774%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest145744145752%_))))
                          (let* ((_%klass-name145777%_ _%hd145749145772%_)
                                 (_%rest145779%_ _%tl145750145774%_))
                            (declare (not safe))
                            (_%K145748145769%_
                             _%rest145779%_
                             _%klass-name145777%_)))
                        (let ()
                          (declare (not safe))
                          (_%else145746145760%_))))))))))
    (define gxc#!interface-instance?
      (lambda (_%type145730%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145730%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (##structure-ref _%type145730%_ '3 gxc#!class::t '#f))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym145712%_ _%type145713%_ _%local?145714%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145713%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym145712%_
                     _%type145713%_)))
        (let ((__tmp148326
               (let () (declare (not safe)) (struct->list _%type145713%_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym145712%_ '" " __tmp148326))
        (let ((_%table145716%_
               (if _%local?145714%_
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
          (hash-put! _%table145716%_ _%sym145712%_ _%type145713%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym145721%_ _%type145722%_)
        (let ((_%local?145724%_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _%sym145721%_
           _%type145722%_
           _%local?145724%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g148328_
        (let ((_g148327_ (let () (declare (not safe)) (##length _g148328_))))
          (cond ((let () (declare (not safe)) (##fx= _g148327_ 2))
                 (apply (lambda (_%sym145721%_ _%type145722%_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _%sym145721%_
                             _%type145722%_)))
                        _g148328_))
                ((let () (declare (not safe)) (##fx= _g148327_ 3))
                 (apply (lambda (_%sym145726%_ _%type145727%_ _%local?145728%_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _%sym145726%_
                             _%type145727%_
                             _%local?145728%_)))
                        _g148328_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g148328_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym145706%_ _%type145707%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145707%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym145706%_
                     _%type145707%_)))
        (let ((_%table145709%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp148329
                 (let () (declare (not safe)) (struct->list _%type145707%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym145706%_ '" " __tmp148329))
          (let ()
            (declare (not safe))
            (hash-put! _%table145709%_ _%sym145706%_ _%type145707%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table145709%_ _%type145707%_ _%sym145706%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym145701%_ _%type145702%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145702%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym145701%_
                     _%type145702%_)))
        (let ((_%table145704%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table145704%_ _%sym145701%_))
              '#!void
              (begin
                (let ((__tmp148330
                       (let ()
                         (declare (not safe))
                         (struct->list _%type145702%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym145701%_
                   '" "
                   __tmp148330))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table145704%_ _%sym145701%_ _%type145702%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table145704%_
                   _%type145702%_
                   _%sym145701%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym145699%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym145699%_))
        (let ((__tmp148331
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp148331 _%sym145699%_))
        (let ((__tmp148332
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp148332 _%sym145699%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t145667%_
               _%method145668%_
               _%sym145669%_
               _%rebind?145670%_)
        (let ((_%klass145672%_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-class _%type-t145667%_))))
          (if _%klass145672%_
              (let* ((_%vtab145674%_
                      (let ()
                        (declare (not safe))
                        (gxc#!class-method-table _%klass145672%_)))
                     (_%$e145676%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab145674%_ _%method145668%_))))
                (if _%$e145676%_
                    ((lambda (_%existing145679%_)
                       (if _%rebind?145670%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t145667%_
                                '" "
                                _%method145668%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab145674%_
                                _%method145668%_
                                _%sym145669%_)))
                           (if (eq? _%existing145679%_ _%sym145669%_)
                               (let () '#!void)
                               (let ((__tmp148333
                                      (cons 'bind-method!
                                            (cons _%type-t145667%_
                                                  (cons _%method145668%_
                                                        (cons _%sym145669%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp148333
                                  _%method145668%_)))))
                     _%$e145676%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t145667%_
                         '" "
                         _%method145668%_
                         '" => "
                         _%sym145669%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab145674%_
                         _%method145668%_
                         _%sym145669%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t145667%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t145688%_ _%method145689%_ _%sym145690%_)
        (let ((_%rebind?145692%_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _%type-t145688%_
           _%method145689%_
           _%sym145690%_
           _%rebind?145692%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g148335_
        (let ((_g148334_ (let () (declare (not safe)) (##length _g148335_))))
          (cond ((let () (declare (not safe)) (##fx= _g148334_ 3))
                 (apply (lambda (_%type-t145688%_
                                 _%method145689%_
                                 _%sym145690%_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _%type-t145688%_
                             _%method145689%_
                             _%sym145690%_)))
                        _g148335_))
                ((let () (declare (not safe)) (##fx= _g148334_ 4))
                 (apply (lambda (_%type-t145694%_
                                 _%method145695%_
                                 _%sym145696%_
                                 _%rebind?145697%_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _%type-t145694%_
                             _%method145695%_
                             _%sym145696%_
                             _%rebind?145697%_)))
                        _g148335_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g148335_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym145655%_)
        (let ((_%$e145663%_
               (let ((_%ht145656145658%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-local-type))))
                 (if _%ht145656145658%_
                     (let ((_%ht145661%_ _%ht145656145658%_))
                       (declare (not safe))
                       (hash-get _%ht145661%_ _%sym145655%_))
                     '#f))))
          (if _%$e145663%_
              _%$e145663%_
              (let ((__tmp148336
                     (##structure-ref
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-optimizer-info))
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp148336 _%sym145655%_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym145647%_)
        (let ((_%type145648145650%_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _%sym145647%_))))
          (if _%type145648145650%_
              (let ((_%type145653%_ _%type145648145650%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type145653%_ 'gxc#!alias::t))
                    (let ((__tmp148337
                           (##structure-ref
                            _%type145653%_
                            '1
                            gxc#!type::t
                            '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp148337))
                    _%type145653%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym145643%_)
        (let ((_%table145645%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table145645%_ _%sym145643%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where145628%_ _%sym145629%_)
        (let ((_%$e145632%_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-class _%sym145629%_))))
          (if _%$e145632%_
              ((lambda (_%g145634145636%_)
                 (let ((_%val145639%_ _%g145634145636%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val145639%_
                          'gxc#!class::t))
                       _%val145639%_
                       (let ()
                         (declare (not safe))
                         (error '"bad cast" gxc#!class::t _%val145639%_)))))
               _%$e145632%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where145628%_
                   _%sym145629%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass145626%_)
        (let ((__tmp148338
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp148338 _%klass145626%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t145623%_ _%method145624%_)
        (let ((__tmp148339
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-class
                  'lookup-method
                  _%type-t145623%_))))
          (declare (not safe))
          (gxc#!class-lookup-method __tmp148339 _%method145624%_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_%sym145621%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _%sym145621%_))
        (let ((__tmp148340
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp148340 _%sym145621%_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym145619%_)
        (let ((__tmp148341
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp148341 _%sym145619%_))))))
