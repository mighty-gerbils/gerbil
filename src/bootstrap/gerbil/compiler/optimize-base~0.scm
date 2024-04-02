(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1712093478)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp148222 (list)) (__tmp148221 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp148222
         '(type classes ssxi methods)
         __tmp148221
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args148193%_
        (apply make-instance gxc#optimizer-info::t _%$args148193%_)))
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
      (lambda (_%self148180%_)
        (let ()
          (let ((_%self148183%_ _%self148180%_))
            (let ()
              (if (let ((__tmp148223
                         (let ()
                           (declare (not safe))
                           (##structure-length _%self148183%_))))
                    (declare (not safe))
                    (##fx< '4 __tmp148223))
                  (begin
                    (let ((__tmp148224
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%self148183%_
                       __tmp148224
                       '1
                       '#f
                       '#f))
                    (let ((__tmp148225
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%self148183%_
                       __tmp148225
                       '2
                       '#f
                       '#f))
                    (let ((__tmp148226
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%self148183%_
                       __tmp148226
                       '3
                       '#f
                       '#f))
                    (let ((__tmp148227
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%self148183%_
                       __tmp148227
                       '4
                       '#f
                       '#f))
                    '#!void)
                  (let ((__tmp148228
                         (let ()
                           (declare (not safe))
                           (##vector-length _%self148183%_))))
                    (declare (not safe))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self148183%_
                           '4
                           __tmp148228))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp148230 (list))
            (__tmp148229
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp148230
         '(id)
         __tmp148229
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args148055%_
        (apply make-instance gxc#!type::t _%$args148055%_)))
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
      (let ((__tmp148232 (list gxc#!type::t))
            (__tmp148231 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (make-class-type
         'gxc#!abort::t
         '!abort
         __tmp148232
         '()
         __tmp148231
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args148052%_
        (apply make-instance gxc#!abort::t _%$args148052%_)))
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
      (let ((__tmp148234 (list gxc#!type::t))
            (__tmp148233 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp148234
         '()
         __tmp148233
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args148049%_
        (apply make-instance gxc#!alias::t _%$args148049%_)))
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
      (let ((__tmp148236 (list gxc#!type::t))
            (__tmp148235
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp148236
         '(signature)
         __tmp148235
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (__make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _%$args148046%_
        (apply make-instance gxc#!procedure::t _%$args148046%_)))
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
      (let ((__tmp148238 (list))
            (__tmp148237
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked)
                     (print: return effect arguments unchecked)))))
        (declare (not safe))
        (make-class-type
         'gxc#!signature::t
         '!signature
         __tmp148238
         '(return effect arguments unchecked)
         __tmp148237
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args148043%_
        (apply make-instance gxc#!signature::t _%$args148043%_)))
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
      (let ((__tmp148240 (list gxc#!procedure::t))
            (__tmp148239 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp148240
         '()
         __tmp148239
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args148040%_
        (apply make-instance gxc#!primitive-predicate::t _%$args148040%_)))
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
      (let ((__tmp148242 (list gxc#!type::t))
            (__tmp148241 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp148242
         '(class)
         __tmp148241
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args148037%_
        (apply make-instance gxc#!class-meta::t _%$args148037%_)))
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
      (let ((__tmp148244 (list gxc#!type::t))
            (__tmp148243
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
         __tmp148244
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp148243
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args148034%_
        (apply make-instance gxc#!class::t _%$args148034%_)))
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
      (let ((__tmp148246 (list gxc#!procedure::t))
            (__tmp148245 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp148246
         '()
         __tmp148245
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args148031%_
        (apply make-instance gxc#!predicate::t _%$args148031%_)))
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
      (let ((__tmp148248 (list gxc#!procedure::t))
            (__tmp148247 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp148248
         '()
         __tmp148247
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args148028%_
        (apply make-instance gxc#!constructor::t _%$args148028%_)))
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
      (let ((__tmp148250 (list gxc#!procedure::t))
            (__tmp148249 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp148250
         '(slot checked?)
         __tmp148249
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args148025%_
        (apply make-instance gxc#!accessor::t _%$args148025%_)))
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
      (let ((__tmp148252 (list gxc#!procedure::t))
            (__tmp148251 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp148252
         '(slot checked?)
         __tmp148251
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args148022%_
        (apply make-instance gxc#!mutator::t _%$args148022%_)))
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
      (let ((__tmp148254 (list gxc#!type::t))
            (__tmp148253 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (make-class-type
         'gxc#!interface::t
         '!interface
         __tmp148254
         '(methods)
         __tmp148253
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args148019%_
        (apply make-instance gxc#!interface::t _%$args148019%_)))
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
      (let ((__tmp148256 (list gxc#!procedure::t))
            (__tmp148255
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp148256
         '(arity dispatch inline inline-typedecl)
         __tmp148255
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args148016%_
        (apply make-instance gxc#!lambda::t _%$args148016%_)))
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
      (let ((__tmp148258 (list gxc#!procedure::t))
            (__tmp148257 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp148258
         '(clauses)
         __tmp148257
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args148013%_
        (apply make-instance gxc#!case-lambda::t _%$args148013%_)))
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
      (let ((__tmp148260 (list gxc#!procedure::t))
            (__tmp148259 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp148260
         '(table dispatch)
         __tmp148259
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args148010%_
        (apply make-instance gxc#!kw-lambda::t _%$args148010%_)))
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
      (let ((__tmp148262 (list gxc#!procedure::t))
            (__tmp148261 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp148262
         '(keys main)
         __tmp148261
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args148007%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args148007%_)))
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
      (let ((__tmp148263 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp148263
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args148004%_
        (apply make-instance gxc#!primitive::t _%$args148004%_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp148264 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp148264
         '()
         '((equal:))
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args148001%_
        (apply make-instance gxc#!primitive-lambda::t _%$args148001%_)))
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
      (let ((__tmp148265 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp148265
         '()
         '((equal:))
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args147998%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args147998%_)))
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
      (lambda (_%self147985%_)
        (let ()
          (let ((_%self147988%_ _%self147985%_))
            (let ()
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147988%_
                 'abort
                 '1
                 '#f
                 '#f)))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self147849%_ _%klass147850%_)
        (let ()
          (let ((_%self147853%_ _%self147849%_))
            (let ()
              (let ()
                (declare (not safe))
                (##unchecked-structure-set! _%self147853%_ 'class '1 '#f '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147853%_
                 _%klass147850%_
                 '2
                 '#f
                 '#f)))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class-meta::t ':init! gxc#!class-meta:::init! '#f))
    (define gxc#!class:::init!__0
      (lambda (_%self147541%_
               _%id147542%_
               _%super147543%_
               _%slots147544%_
               _%ctor-method147545%_
               _%struct?147546%_
               _%final?147547%_
               _%system?147548%_
               _%metaclass147549%_)
        (let ()
          (let ((_%self147552%_ _%self147541%_))
            (let ()
              (let _%lp147562%_ ((_%rest147564%_ _%super147543%_))
                (let* ((_%rest147565147573%_ _%rest147564%_)
                       (_%else147567147581%_ (lambda () '#!void))
                       (_%K147569147587%_
                        (lambda (_%rest147584%_ _%super-id147585%_)
                          (if (let ((__tmp148266
                                     (let ((__tmp148267
                                            (cons '!class
                                                  (cons _%id147542%_ '()))))
                                       (declare (not safe))
                                       (gxc#optimizer-resolve-class
                                        __tmp148267
                                        _%super-id147585%_))))
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __tmp148266
                                 '8
                                 '#f
                                 '#f))
                              (let ((__tmp148268
                                     (cons '!class (cons _%id147542%_ '()))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot extend final class"
                                 __tmp148268
                                 _%super-id147585%_))
                              '#!void)
                          (let ()
                            (declare (not safe))
                            (_%lp147562%_ _%rest147584%_)))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest147565147573%_))
                      (let ((_%hd147570147590%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest147565147573%_)))
                            (_%tl147571147592%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest147565147573%_))))
                        (let* ((_%super-id147595%_ _%hd147570147590%_)
                               (_%rest147597%_ _%tl147571147592%_))
                          (declare (not safe))
                          (_%K147569147587%_
                           _%rest147597%_
                           _%super-id147595%_)))
                      '#!void)))
              (let* ((_%ctor-method147648%_
                      (let ((_%$e147599%_ _%ctor-method147545%_))
                        (if _%$e147599%_
                            _%$e147599%_
                            (let _%lp147602%_ ((_%rest147604%_ _%super147543%_)
                                               (_%method147605%_ '#f))
                              (let* ((_%rest147606147614%_ _%rest147604%_)
                                     (_%else147608147622%_
                                      (lambda () _%method147605%_))
                                     (_%K147610147636%_
                                      (lambda (_%rest147625%_
                                               _%super-id147626%_)
                                        (let* ((_%klass147628%_
                                                (let ((__tmp148269
                                                       (cons '!class
                                                             (cons _%id147542%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp148269
                                                   _%super-id147626%_)))
                                               (_%$e147630%_
                                                (##structure-ref
                                                 _%klass147628%_
                                                 '6
                                                 gxc#!class::t
                                                 '#f)))
                                          (if _%$e147630%_
                                              ((lambda (_%ctor-method147633%_)
                                                 (if _%method147605%_
                                                     (if (eq? _%ctor-method147633%_
                                                              _%method147605%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%lp147602%_
                                                            _%rest147625%_
                                                            _%ctor-method147633%_))
                                                         (let ((__tmp148270
                                                                (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%id147542%_ '()))))
                   (declare (not safe))
                   (gxc#raise-compile-error
                    '"conflicting implicit constructor methods"
                    __tmp148270
                    _%method147605%_
                    _%ctor-method147633%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%lp147602%_
                                                        _%rest147625%_
                                                        _%ctor-method147633%_))))
                                               _%$e147630%_)
                                              (let ()
                                                (let ()
                                                  (declare (not safe))
                                                  (_%lp147602%_
                                                   _%rest147625%_
                                                   _%method147605%_))))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%rest147606147614%_))
                                    (let ((_%hd147611147639%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%rest147606147614%_)))
                                          (_%tl147612147641%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%rest147606147614%_))))
                                      (let* ((_%super-id147644%_
                                              _%hd147611147639%_)
                                             (_%rest147646%_
                                              _%tl147612147641%_))
                                        (declare (not safe))
                                        (_%K147610147636%_
                                         _%rest147646%_
                                         _%super-id147644%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%else147608147622%_))))))))
                     (_g148271_
                      (let ((__tmp148276
                             (lambda (_%klass-id147650%_)
                               (cons _%klass-id147650%_
                                     (let ((__tmp148277
                                            (let ((__tmp148278
                                                   (cons '!class
                                                         (cons _%id147542%_
                                                               '()))))
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               __tmp148278
                                               _%klass-id147650%_))))
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        __tmp148277
                                        '3
                                        '#f
                                        '#f)))))
                            (__tmp148273
                             (lambda (_%klass-id147652%_)
                               (let ((__tmp148274
                                      (let ((__tmp148275
                                             (cons '!class
                                                   (cons _%id147542%_ '()))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         __tmp148275
                                         _%klass-id147652%_))))
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  __tmp148274
                                  '7
                                  '#f
                                  '#f)))))
                        (declare (not safe))
                        (c4-linearize
                         '()
                         _%super147543%_
                         'get-precedence-list:
                         __tmp148276
                         'struct:
                         __tmp148273
                         'eq:
                         eq?
                         'get-name:
                         identity))))
                (begin
                  (let ((_g148272_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g148271_)
                               (##vector-length _g148271_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g148272_ 2)))
                        (error "Context expects 2 values" _g148272_)))
                  (let ((_%precedence-list147654%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g148271_ 0)))
                        (_%base-struct147655%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g148271_ 1))))
                    (let* ((_%precedence-list147699%_
                            (if (let ()
                                  (declare (not safe))
                                  (##memq _%id147542%_ '(t object class)))
                                (let () _%precedence-list147654%_)
                                (if (memq 'object::t _%precedence-list147654%_)
                                    (let () _%precedence-list147654%_)
                                    (if _%system?147548%_
                                        (let ()
                                          (if (memq 't::t
                                                    _%precedence-list147654%_)
                                              _%precedence-list147654%_
                                              (let ()
                                                (declare (not safe))
                                                (##append
                                                 _%precedence-list147654%_
                                                 '(t::t)))))
                                        (let ()
                                          (let _%loop147661%_ ((_%tail147663%_
                                                                _%precedence-list147654%_)
                                                               (_%head147664%_
                                                                '()))
                                            (let* ((_%tail147665147673%_
                                                    _%tail147663%_)
                                                   (_%else147667147681%_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (__foldl1
                                                         cons
                                                         '(object::t t::t)
                                                         _%head147664%_))))
                                                   (_%K147669147687%_
                                                    (lambda (_%rest147684%_
                                                             _%hd147685%_)
                                                      (if (eq? _%hd147685%_
                                                               't::t)
                                                          (let ((__tmp148279
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons 'object::t _%tail147663%_)))
                    (declare (not safe))
                    (__foldl1 cons __tmp148279 _%head147664%_))
                  (let ((__tmp148280 (cons _%hd147685%_ _%head147664%_)))
                    (declare (not safe))
                    (_%loop147661%_ _%rest147684%_ __tmp148280))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tail147665147673%_))
                                                  (let ((_%hd147670147690%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tail147665147673%_)))
                                                        (_%tl147671147692%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tail147665147673%_))))
                                                    (let* ((_%hd147695%_
                                                            _%hd147670147690%_)
                                                           (_%rest147697%_
                                                            _%tl147671147692%_))
                                                      (declare (not safe))
                                                      (_%K147669147687%_
                                                       _%rest147697%_
                                                       _%hd147695%_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%else147667147681%_))))))))))
                           (_%fields147701%_
                            (let ((__tmp148281
                                   (cons '!class (cons _%id147542%_ '()))))
                              (declare (not safe))
                              (gxc#compute-class-fields
                               __tmp148281
                               _%base-struct147655%_
                               _%precedence-list147699%_
                               _%slots147544%_))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _%self147552%_
                         _%id147542%_
                         '1
                         '#f
                         '#f))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _%self147552%_
                         _%super147543%_
                         '2
                         '#f
                         '#f))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _%self147552%_
                         _%precedence-list147699%_
                         '3
                         '#f
                         '#f))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _%self147552%_
                         _%slots147544%_
                         '4
                         '#f
                         '#f))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _%self147552%_
                         _%fields147701%_
                         '5
                         '#f
                         '#f))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _%self147552%_
                         _%ctor-method147648%_
                         '6
                         '#f
                         '#f))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _%self147552%_
                         _%struct?147546%_
                         '7
                         '#f
                         '#f))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _%self147552%_
                         _%final?147547%_
                         '8
                         '#f
                         '#f))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _%self147552%_
                         _%metaclass147549%_
                         '10
                         '#f
                         '#f)))))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self147704%_
               _%id147705%_
               _%super147706%_
               _%precedence-list147707%_
               _%slots147708%_
               _%fields147709%_
               _%constructor147710%_
               _%struct?147711%_
               _%final?147712%_
               _%system?147713%_
               _%metaclass147714%_
               _%methods147715%_)
        (let ()
          (let ((_%self147718%_ _%self147704%_))
            (let ()
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147718%_
                 _%id147705%_
                 '1
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147718%_
                 _%super147706%_
                 '2
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147718%_
                 _%precedence-list147707%_
                 '3
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147718%_
                 _%slots147708%_
                 '4
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147718%_
                 _%fields147709%_
                 '5
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147718%_
                 _%constructor147710%_
                 '6
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147718%_
                 _%struct?147711%_
                 '7
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147718%_
                 _%final?147712%_
                 '8
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147718%_
                 _%metaclass147714%_
                 '10
                 '#f
                 '#f))
              (if _%methods147715%_
                  (let ((__tmp148282
                         (let ()
                           (declare (not safe))
                           (list->hash-table-eq _%methods147715%_))))
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147718%_
                     __tmp148282
                     '11
                     '#f
                     '#f))
                  '#!void))))))
    (define gxc#!class:::init!
      (lambda _g148284_
        (let ((_g148283_ (let () (declare (not safe)) (##length _g148284_))))
          (cond ((let () (declare (not safe)) (##fx= _g148283_ 9))
                 (apply (lambda (_%self147541%_
                                 _%id147542%_
                                 _%super147543%_
                                 _%slots147544%_
                                 _%ctor-method147545%_
                                 _%struct?147546%_
                                 _%final?147547%_
                                 _%system?147548%_
                                 _%metaclass147549%_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _%self147541%_
                             _%id147542%_
                             _%super147543%_
                             _%slots147544%_
                             _%ctor-method147545%_
                             _%struct?147546%_
                             _%final?147547%_
                             _%system?147548%_
                             _%metaclass147549%_)))
                        _g148284_))
                ((let () (declare (not safe)) (##fx= _g148283_ 12))
                 (apply (lambda (_%self147704%_
                                 _%id147705%_
                                 _%super147706%_
                                 _%precedence-list147707%_
                                 _%slots147708%_
                                 _%fields147709%_
                                 _%constructor147710%_
                                 _%struct?147711%_
                                 _%final?147712%_
                                 _%system?147713%_
                                 _%metaclass147714%_
                                 _%methods147715%_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _%self147704%_
                             _%id147705%_
                             _%super147706%_
                             _%precedence-list147707%_
                             _%slots147708%_
                             _%fields147709%_
                             _%constructor147710%_
                             _%struct?147711%_
                             _%final?147712%_
                             _%system?147713%_
                             _%metaclass147714%_
                             _%methods147715%_)))
                        _g148284_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g148284_))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where147393%_
               _%base-struct147394%_
               _%precedence-list147395%_
               _%direct-slots147396%_)
        (let* ((_%base-fields147398%_
                (if _%base-struct147394%_
                    (let ((__tmp148285
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%where147393%_
                              _%base-struct147394%_))))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp148285 '5 '#f '#f))
                    '()))
               (_%r-fields147400%_ (reverse _%base-fields147398%_))
               (_%seen-slots147408%_
                (let ((_%tab147402%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g147403147405%_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _%tab147402%_ _%g147403147405%_ '#t)))
                   _%base-fields147398%_)
                  _%tab147402%_))
               (_%process-slot147412%_
                (lambda (_%slot147410%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%seen-slots147408%_ _%slot147410%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _%seen-slots147408%_ _%slot147410%_ '#t))
                        (set! _%r-fields147400%_
                              (cons _%slot147410%_ _%r-fields147400%_)))))))
          (for-each
           (lambda (_%mixin147415%_)
             (let ((_%klass147417%_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _%where147393%_
                       _%mixin147415%_))))
               (if (##structure-ref _%klass147417%_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _%process-slot147412%_
                    (##structure-ref _%klass147417%_ '5 gxc#!class::t '#f)))))
           _%precedence-list147395%_)
          (for-each _%process-slot147412%_ _%direct-slots147396%_)
          (let () (declare (not safe)) (##reverse _%r-fields147400%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass147352%_ _%slot147353%_)
        (let _%lp147355%_ ((_%rest147357%_
                            (##structure-ref
                             _%klass147352%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset147358%_ '1))
          (let* ((_%rest147359147367%_ _%rest147357%_)
                 (_%else147361147375%_
                  (lambda ()
                    (let ((__tmp148287
                           (##structure-ref
                            _%klass147352%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp148286
                           (##structure-ref
                            _%klass147352%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp148287
                       __tmp148286
                       _%slot147353%_))))
                 (_%K147363147381%_
                  (lambda (_%rest147378%_ _%s147379%_)
                    (if (eq? _%s147379%_ _%slot147353%_)
                        _%offset147358%_
                        (let ((__tmp148288
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%offset147358%_ '1))))
                          (declare (not safe))
                          (_%lp147355%_ _%rest147378%_ __tmp148288))))))
            (if (let () (declare (not safe)) (##pair? _%rest147359147367%_))
                (let ((_%hd147364147384%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest147359147367%_)))
                      (_%tl147365147386%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest147359147367%_))))
                  (let* ((_%s147389%_ _%hd147364147384%_)
                         (_%rest147391%_ _%tl147365147386%_))
                    (declare (not safe))
                    (_%K147363147381%_ _%rest147391%_ _%s147389%_)))
                (let () (declare (not safe)) (_%else147361147375%_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass147310%_ _%slot147311%_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _%klass147310%_ _%slot147311%_))
            _%klass147310%_
            (let _%lp147313%_ ((_%rest147315%_
                                (##structure-ref
                                 _%klass147310%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest147316147324%_ _%rest147315%_)
                     (_%else147318147332%_ (lambda () '#f))
                     (_%K147320147340%_
                      (lambda (_%rest147335%_ _%super147336%_)
                        (let ((_%super-class147338%_
                               (let ((__tmp148289
                                      (cons '!class-slot-find-struct
                                            (cons (##structure-ref
                                                   _%klass147310%_
                                                   '1
                                                   gxc#!type::t
                                                   '#f)
                                                  (cons _%slot147311%_ '())))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp148289
                                  _%super147336%_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _%super-class147338%_
                                 _%slot147311%_))
                              _%super-class147338%_
                              (let ()
                                (declare (not safe))
                                (_%lp147313%_ _%rest147335%_)))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest147316147324%_))
                    (let ((_%hd147321147343%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest147316147324%_)))
                          (_%tl147322147345%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest147316147324%_))))
                      (let* ((_%super147348%_ _%hd147321147343%_)
                             (_%rest147350%_ _%tl147322147345%_))
                        (declare (not safe))
                        (_%K147320147340%_ _%rest147350%_ _%super147348%_)))
                    (let () (declare (not safe)) (_%else147318147332%_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass147307%_ _%slot147308%_)
        (if (##structure-ref _%klass147307%_ '7 gxc#!class::t '#f)
            (memq _%slot147308%_
                  (##structure-ref _%klass147307%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self147293%_ _%id147294%_)
        (let ()
          (let ((_%self147297%_ _%self147293%_))
            (let ()
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147297%_
                 _%id147294%_
                 '1
                 '#f
                 '#f))
              (let ((__tmp148290
                     (let ((__obj148216
                            (let ()
                              (declare (not safe))
                              (##structure
                               gxc#!signature::t
                               '#f
                               '#f
                               '#f
                               '#f))))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-set!
                          __obj148216
                          'boolean::t
                          '1
                          '#f
                          '#f))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-set!
                          __obj148216
                          '(pure predicate)
                          '2
                          '#f
                          '#f))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-set!
                          __obj148216
                          '(t::t)
                          '3
                          '#f
                          '#f))
                       __obj148216)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147297%_
                 __tmp148290
                 '2
                 '#f
                 '#f)))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self147157%_ _%id147158%_)
        (let ()
          (let ((_%self147161%_ _%self147157%_))
            (let ()
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147161%_
                 _%id147158%_
                 '1
                 '#f
                 '#f))
              (let ((__tmp148291
                     (let ((__obj148217
                            (let ()
                              (declare (not safe))
                              (##structure
                               gxc#!signature::t
                               '#f
                               '#f
                               '#f
                               '#f))))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-set!
                          __obj148217
                          _%id147158%_
                          '1
                          '#f
                          '#f))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-set!
                          __obj148217
                          '(alloc)
                          '2
                          '#f
                          '#f))
                       __obj148217)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147161%_
                 __tmp148291
                 '2
                 '#f
                 '#f)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       ':init!
       gxc#!constructor:::init!
       '#f))
    (define gxc#!accessor:::init!
      (lambda (_%self147019%_ _%id147020%_ _%slot147021%_ _%checked?147022%_)
        (let ()
          (let ((_%self147025%_ _%self147019%_))
            (let ()
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147025%_
                 _%id147020%_
                 '1
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147025%_
                 _%slot147021%_
                 '3
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147025%_
                 _%checked?147022%_
                 '4
                 '#f
                 '#f))
              (let ((__tmp148292
                     (let ((__obj148218
                            (let ()
                              (declare (not safe))
                              (##structure
                               gxc#!signature::t
                               '#f
                               '#f
                               '#f
                               '#f))))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-set!
                          __obj148218
                          't::t
                          '1
                          '#f
                          '#f))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-set!
                          __obj148218
                          '(pure)
                          '2
                          '#f
                          '#f))
                       (let ((__tmp148293 (cons _%id147020%_ '())))
                         (declare (not safe))
                         (##unchecked-structure-set!
                          __obj148218
                          __tmp148293
                          '3
                          '#f
                          '#f))
                       __obj148218)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147025%_
                 __tmp148292
                 '2
                 '#f
                 '#f)))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self146881%_ _%id146882%_ _%slot146883%_ _%checked?146884%_)
        (let ()
          (let ((_%self146887%_ _%self146881%_))
            (let ()
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146887%_
                 _%id146882%_
                 '1
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146887%_
                 _%slot146883%_
                 '3
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146887%_
                 _%checked?146884%_
                 '4
                 '#f
                 '#f))
              (let ((__tmp148294
                     (let ((__obj148219
                            (let ()
                              (declare (not safe))
                              (##structure
                               gxc#!signature::t
                               '#f
                               '#f
                               '#f
                               '#f))))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-set!
                          __obj148219
                          'void::t
                          '1
                          '#f
                          '#f))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-set!
                          __obj148219
                          '(mut)
                          '2
                          '#f
                          '#f))
                       (let ((__tmp148295
                              (cons _%id146882%_ (cons 't::t '()))))
                         (declare (not safe))
                         (##unchecked-structure-set!
                          __obj148219
                          __tmp148295
                          '3
                          '#f
                          '#f))
                       __obj148219)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146887%_
                 __tmp148294
                 '2
                 '#f
                 '#f)))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%_146724%_
               _%signature146721146726%_
               _%self146728%_
               _%arity146729%_
               _%dispatch146730%_)
        (let ((_%signature146732%_
               (if (eq? _%signature146721146726%_ absent-value)
                   '#f
                   _%signature146721146726%_)))
          (let ((_%self146735%_ _%self146728%_))
            (let ()
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146735%_
                 'procedure
                 '1
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146735%_
                 _%arity146729%_
                 '3
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146735%_
                 _%dispatch146730%_
                 '4
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146735%_
                 _%signature146732%_
                 '2
                 '#f
                 '#f)))))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords146749%_ . _%args146750%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords146749%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords146749%_
                  'signature:
                  absent-value))
               _%args146750%_)))
    (define gxc#!lambda:::init!
      (lambda _%args146722146756%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args146722146756%_)))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!
      (lambda (_%self146584%_ _%clauses146585%_)
        (let ()
          (let ((_%self146588%_ _%self146584%_))
            (let ()
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146588%_
                 'procedure
                 '1
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146588%_
                 _%clauses146585%_
                 '3
                 '#f
                 '#f)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self146447%_ _%tab146448%_ _%dispatch146449%_)
        (let ()
          (let ((_%self146452%_ _%self146447%_))
            (let ()
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146452%_
                 'procedure
                 '1
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146452%_
                 _%tab146448%_
                 '3
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146452%_
                 _%dispatch146449%_
                 '4
                 '#f
                 '#f)))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self146310%_ _%keys146311%_ _%main146312%_)
        (let ()
          (let ((_%self146315%_ _%self146310%_))
            (let ()
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146315%_
                 'procedure
                 '1
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146315%_
                 _%keys146311%_
                 '3
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146315%_
                 _%main146312%_
                 '4
                 '#f
                 '#f)))))))
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
      (lambda (_%self145930%_ _%id145931%_)
        (let ()
          (let ((_%self145934%_ _%self145930%_))
            (let ()
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self145934%_
                 _%id145931%_
                 '1
                 '#f
                 '#f))
              (let ((__tmp148296
                     (let ((__obj148220
                            (let ()
                              (declare (not safe))
                              (##structure
                               gxc#!signature::t
                               '#f
                               '#f
                               '#f
                               '#f))))
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
                          '(pure)
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
                 _%self145934%_
                 __tmp148296
                 '2
                 '#f
                 '#f)))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-predicate::t
       ':init!
       gxc#!primitive-predicate:::init!
       '#f))
    (define gxc#!class-method-table
      (lambda (_%klass145799%_)
        (let ((_%$e145801%_
               (##structure-ref _%klass145799%_ '11 gxc#!class::t '#f)))
          (if _%$e145801%_
              _%$e145801%_
              (let ()
                (let ((_%tab145805%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (##structure-set!
                   _%klass145799%_
                   _%tab145805%_
                   '11
                   gxc#!class::t
                   '#f)
                  _%tab145805%_))))))
    (define gxc#!class-lookup-method
      (lambda (_%klass145790%_ _%method145791%_)
        (let ((_%tab145792145794%_
               (##structure-ref _%klass145790%_ '11 gxc#!class::t '#f)))
          (if _%tab145792145794%_
              (let ((_%tab145797%_ _%tab145792145794%_))
                (declare (not safe))
                (hash-get _%tab145797%_ _%method145791%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a145778%_ _%type-b145779%_)
        (if _%type-a145778%_
            (if _%type-b145779%_
                (let ((_%$e145781%_ (eq? _%type-a145778%_ _%type-b145779%_)))
                  (if _%$e145781%_
                      _%$e145781%_
                      (let ((_%$e145784%_
                             (eq? (##structure-ref
                                   _%type-b145779%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e145784%_
                            _%$e145784%_
                            (let ((_%$e145787%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a145778%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b145779%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e145787%_
                                  _%$e145787%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a145778%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b145779%_
                                             'gxc#!class::t))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#!class-subclass?
                                             _%type-a145778%_
                                             _%type-b145779%_))
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a145729%_ _%klass-b145730%_)
        (let ((_%$e145732%_
               (eq? (##structure-ref _%klass-a145729%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b145730%_ '1 gxc#!type::t '#f))))
          (if _%$e145732%_
              _%$e145732%_
              (let ((_%klass-id-b145735%_
                     (##structure-ref _%klass-b145730%_ '1 gxc#!type::t '#f))
                    (_%precedence-list145736%_
                     (##structure-ref _%klass-a145729%_ '3 gxc#!class::t '#f)))
                (let _%loop145738%_ ((_%rest145740%_
                                      _%precedence-list145736%_))
                  (let* ((_%rest145741145749%_ _%rest145740%_)
                         (_%else145743145757%_ (lambda () '#f))
                         (_%K145745145766%_
                          (lambda (_%rest145760%_ _%klass-name145761%_)
                            (let ((_%$e145763%_
                                   (eq? (let ((__tmp148297
                                               (let ((__tmp148298
                                                      (cons 'subclass?
                                                            (cons _%klass-a145729%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%klass-b145730%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp148298
                                                  _%klass-name145761%_))))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp148297
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b145735%_)))
                              (if _%$e145763%_
                                  _%$e145763%_
                                  (let ()
                                    (declare (not safe))
                                    (_%loop145738%_ _%rest145760%_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest145741145749%_))
                        (let ((_%hd145746145769%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest145741145749%_)))
                              (_%tl145747145771%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest145741145749%_))))
                          (let* ((_%klass-name145774%_ _%hd145746145769%_)
                                 (_%rest145776%_ _%tl145747145771%_))
                            (declare (not safe))
                            (_%K145745145766%_
                             _%rest145776%_
                             _%klass-name145774%_)))
                        (let ()
                          (declare (not safe))
                          (_%else145743145757%_))))))))))
    (define gxc#!interface-instance?
      (lambda (_%type145727%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145727%_ 'gxc#!class::t))
            (memq 'gerbil#interface-instance::t
                  (##structure-ref _%type145727%_ '3 gxc#!class::t '#f))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym145709%_ _%type145710%_ _%local?145711%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145710%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym145709%_
                     _%type145710%_)))
        (let ((__tmp148299
               (let () (declare (not safe)) (struct->list _%type145710%_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym145709%_ '" " __tmp148299))
        (let ((_%table145713%_
               (if _%local?145711%_
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
          (hash-put! _%table145713%_ _%sym145709%_ _%type145710%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym145718%_ _%type145719%_)
        (let ((_%local?145721%_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _%sym145718%_
           _%type145719%_
           _%local?145721%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g148301_
        (let ((_g148300_ (let () (declare (not safe)) (##length _g148301_))))
          (cond ((let () (declare (not safe)) (##fx= _g148300_ 2))
                 (apply (lambda (_%sym145718%_ _%type145719%_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _%sym145718%_
                             _%type145719%_)))
                        _g148301_))
                ((let () (declare (not safe)) (##fx= _g148300_ 3))
                 (apply (lambda (_%sym145723%_ _%type145724%_ _%local?145725%_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _%sym145723%_
                             _%type145724%_
                             _%local?145725%_)))
                        _g148301_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g148301_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym145703%_ _%type145704%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145704%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym145703%_
                     _%type145704%_)))
        (let ((_%table145706%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp148302
                 (let () (declare (not safe)) (struct->list _%type145704%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym145703%_ '" " __tmp148302))
          (let ()
            (declare (not safe))
            (hash-put! _%table145706%_ _%sym145703%_ _%type145704%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table145706%_ _%type145704%_ _%sym145703%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym145698%_ _%type145699%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145699%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym145698%_
                     _%type145699%_)))
        (let ((_%table145701%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table145701%_ _%sym145698%_))
              '#!void
              (begin
                (let ((__tmp148303
                       (let ()
                         (declare (not safe))
                         (struct->list _%type145699%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym145698%_
                   '" "
                   __tmp148303))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table145701%_ _%sym145698%_ _%type145699%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table145701%_
                   _%type145699%_
                   _%sym145698%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym145696%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym145696%_))
        (let ((__tmp148304
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp148304 _%sym145696%_))
        (let ((__tmp148305
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp148305 _%sym145696%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t145664%_
               _%method145665%_
               _%sym145666%_
               _%rebind?145667%_)
        (let ((_%klass145669%_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-class _%type-t145664%_))))
          (if _%klass145669%_
              (let* ((_%vtab145671%_
                      (let ()
                        (declare (not safe))
                        (gxc#!class-method-table _%klass145669%_)))
                     (_%$e145673%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab145671%_ _%method145665%_))))
                (if _%$e145673%_
                    ((lambda (_%existing145676%_)
                       (if _%rebind?145667%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t145664%_
                                '" "
                                _%method145665%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab145671%_
                                _%method145665%_
                                _%sym145666%_)))
                           (if (eq? _%existing145676%_ _%sym145666%_)
                               (let () '#!void)
                               (let ()
                                 (let ((__tmp148306
                                        (cons 'bind-method!
                                              (cons _%type-t145664%_
                                                    (cons _%method145665%_
                                                          (cons _%sym145666%_
                                                                '()))))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"declare-method: duplicate method declaration"
                                    __tmp148306
                                    _%method145665%_))))))
                     _%$e145673%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t145664%_
                         '" "
                         _%method145665%_
                         '" => "
                         _%sym145666%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab145671%_
                         _%method145665%_
                         _%sym145666%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t145664%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t145685%_ _%method145686%_ _%sym145687%_)
        (let ((_%rebind?145689%_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _%type-t145685%_
           _%method145686%_
           _%sym145687%_
           _%rebind?145689%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g148308_
        (let ((_g148307_ (let () (declare (not safe)) (##length _g148308_))))
          (cond ((let () (declare (not safe)) (##fx= _g148307_ 3))
                 (apply (lambda (_%type-t145685%_
                                 _%method145686%_
                                 _%sym145687%_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _%type-t145685%_
                             _%method145686%_
                             _%sym145687%_)))
                        _g148308_))
                ((let () (declare (not safe)) (##fx= _g148307_ 4))
                 (apply (lambda (_%type-t145691%_
                                 _%method145692%_
                                 _%sym145693%_
                                 _%rebind?145694%_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _%type-t145691%_
                             _%method145692%_
                             _%sym145693%_
                             _%rebind?145694%_)))
                        _g148308_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g148308_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym145652%_)
        (let ((_%$e145660%_
               (let ((_%ht145653145655%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-local-type))))
                 (if _%ht145653145655%_
                     (let ((_%ht145658%_ _%ht145653145655%_))
                       (declare (not safe))
                       (hash-get _%ht145658%_ _%sym145652%_))
                     '#f))))
          (if _%$e145660%_
              _%$e145660%_
              (let ((__tmp148309
                     (##structure-ref
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-optimizer-info))
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp148309 _%sym145652%_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym145644%_)
        (let ((_%type145645145647%_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _%sym145644%_))))
          (if _%type145645145647%_
              (let ((_%type145650%_ _%type145645145647%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type145650%_ 'gxc#!alias::t))
                    (let ((__tmp148310
                           (##structure-ref
                            _%type145650%_
                            '1
                            gxc#!type::t
                            '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp148310))
                    _%type145650%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym145640%_)
        (let ((_%table145642%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table145642%_ _%sym145640%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where145624%_ _%sym145625%_)
        (let ()
          (let ((_%$e145637%_
                 (let ((_%klass145627145629%_
                        (let ()
                          (declare (not safe))
                          (gxc#optimizer-lookup-class _%sym145625%_))))
                   (if _%klass145627145629%_
                       (let* ((_%klass145632%_ _%klass145627145629%_)
                              (_%val145634%_ _%klass145632%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%val145634%_
                                'gxc#!class::t))
                             _%val145634%_
                             (let ()
                               (declare (not safe))
                               (error '"bad cast"
                                      gxc#!class::t
                                      _%val145634%_))))
                       '#f))))
            (if _%$e145637%_
                _%$e145637%_
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where145624%_
                   _%sym145625%_)))))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass145622%_)
        (let ((__tmp148311
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp148311 _%klass145622%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t145619%_ _%method145620%_)
        (let ((__tmp148312
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-class
                  'lookup-method
                  _%type-t145619%_))))
          (declare (not safe))
          (gxc#!class-lookup-method __tmp148312 _%method145620%_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_%sym145617%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _%sym145617%_))
        (let ((__tmp148313
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp148313 _%sym145617%_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym145615%_)
        (let ((__tmp148314
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp148314 _%sym145615%_))))))
