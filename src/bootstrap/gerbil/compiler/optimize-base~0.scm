(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1712084997)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp148027 (list)) (__tmp148026 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp148027
         '(type classes ssxi methods)
         __tmp148026
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args147998%_
        (apply make-instance gxc#optimizer-info::t _%$args147998%_)))
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
      (lambda (_%self147985%_)
        (let ()
          (let ((_%self147988%_ _%self147985%_))
            (let ()
              (if (let ((__tmp148028
                         (let ()
                           (declare (not safe))
                           (##structure-length _%self147988%_))))
                    (declare (not safe))
                    (##fx< '4 __tmp148028))
                  (begin
                    (let ((__tmp148029
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%self147988%_
                       __tmp148029
                       '1
                       '#f
                       '#f))
                    (let ((__tmp148030
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%self147988%_
                       __tmp148030
                       '2
                       '#f
                       '#f))
                    (let ((__tmp148031
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%self147988%_
                       __tmp148031
                       '3
                       '#f
                       '#f))
                    (let ((__tmp148032
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%self147988%_
                       __tmp148032
                       '4
                       '#f
                       '#f))
                    '#!void)
                  (let ((__tmp148033
                         (let ()
                           (declare (not safe))
                           (##vector-length _%self147988%_))))
                    (declare (not safe))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self147988%_
                           '4
                           __tmp148033))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp148035 (list))
            (__tmp148034
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp148035
         '(id)
         __tmp148034
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args147860%_
        (apply make-instance gxc#!type::t _%$args147860%_)))
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
      (let ((__tmp148037 (list gxc#!type::t))
            (__tmp148036 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (make-class-type
         'gxc#!abort::t
         '!abort
         __tmp148037
         '()
         __tmp148036
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args147857%_
        (apply make-instance gxc#!abort::t _%$args147857%_)))
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
      (let ((__tmp148039 (list gxc#!type::t))
            (__tmp148038 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp148039
         '()
         __tmp148038
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args147854%_
        (apply make-instance gxc#!alias::t _%$args147854%_)))
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
      (let ((__tmp148041 (list gxc#!type::t))
            (__tmp148040
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp148041
         '(signature)
         __tmp148040
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (__make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _%$args147851%_
        (apply make-instance gxc#!procedure::t _%$args147851%_)))
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
      (let ((__tmp148043 (list))
            (__tmp148042
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked)
                     (print: return effect arguments unchecked)))))
        (declare (not safe))
        (make-class-type
         'gxc#!signature::t
         '!signature
         __tmp148043
         '(return effect arguments unchecked)
         __tmp148042
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args147848%_
        (apply make-instance gxc#!signature::t _%$args147848%_)))
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
      (let ((__tmp148045 (list gxc#!procedure::t))
            (__tmp148044 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp148045
         '()
         __tmp148044
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args147845%_
        (apply make-instance gxc#!primitive-predicate::t _%$args147845%_)))
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
      (let ((__tmp148047 (list gxc#!type::t))
            (__tmp148046 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp148047
         '(class)
         __tmp148046
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args147842%_
        (apply make-instance gxc#!class-meta::t _%$args147842%_)))
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
      (let ((__tmp148049 (list gxc#!type::t))
            (__tmp148048
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
         __tmp148049
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp148048
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args147839%_
        (apply make-instance gxc#!class::t _%$args147839%_)))
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
      (let ((__tmp148051 (list gxc#!procedure::t))
            (__tmp148050 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp148051
         '()
         __tmp148050
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args147836%_
        (apply make-instance gxc#!predicate::t _%$args147836%_)))
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
      (let ((__tmp148053 (list gxc#!procedure::t))
            (__tmp148052 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp148053
         '()
         __tmp148052
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args147833%_
        (apply make-instance gxc#!constructor::t _%$args147833%_)))
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
      (let ((__tmp148055 (list gxc#!procedure::t))
            (__tmp148054 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp148055
         '(slot checked?)
         __tmp148054
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args147830%_
        (apply make-instance gxc#!accessor::t _%$args147830%_)))
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
      (let ((__tmp148057 (list gxc#!procedure::t))
            (__tmp148056 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp148057
         '(slot checked?)
         __tmp148056
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args147827%_
        (apply make-instance gxc#!mutator::t _%$args147827%_)))
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
      (let ((__tmp148059 (list gxc#!type::t))
            (__tmp148058 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (make-class-type
         'gxc#!interface::t
         '!interface
         __tmp148059
         '(methods)
         __tmp148058
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args147824%_
        (apply make-instance gxc#!interface::t _%$args147824%_)))
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
      (let ((__tmp148061 (list gxc#!procedure::t))
            (__tmp148060
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp148061
         '(arity dispatch inline inline-typedecl)
         __tmp148060
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args147821%_
        (apply make-instance gxc#!lambda::t _%$args147821%_)))
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
      (let ((__tmp148063 (list gxc#!procedure::t))
            (__tmp148062 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp148063
         '(clauses)
         __tmp148062
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args147818%_
        (apply make-instance gxc#!case-lambda::t _%$args147818%_)))
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
      (let ((__tmp148065 (list gxc#!procedure::t))
            (__tmp148064 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp148065
         '(table dispatch)
         __tmp148064
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args147815%_
        (apply make-instance gxc#!kw-lambda::t _%$args147815%_)))
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
      (let ((__tmp148067 (list gxc#!procedure::t))
            (__tmp148066 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp148067
         '(keys main)
         __tmp148066
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args147812%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args147812%_)))
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
      (let ((__tmp148068 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp148068
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args147809%_
        (apply make-instance gxc#!primitive::t _%$args147809%_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp148069 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp148069
         '()
         '((equal:))
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args147806%_
        (apply make-instance gxc#!primitive-lambda::t _%$args147806%_)))
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
      (let ((__tmp148070 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp148070
         '()
         '((equal:))
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args147803%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args147803%_)))
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
      (lambda (_%self147790%_)
        (let ()
          (let ((_%self147793%_ _%self147790%_))
            (let ()
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147793%_
                 'abort
                 '1
                 '#f
                 '#f)))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self147654%_ _%klass147655%_)
        (let ()
          (let ((_%self147658%_ _%self147654%_))
            (let ()
              (let ()
                (declare (not safe))
                (##unchecked-structure-set! _%self147658%_ 'class '1 '#f '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147658%_
                 _%klass147655%_
                 '2
                 '#f
                 '#f)))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class-meta::t ':init! gxc#!class-meta:::init! '#f))
    (define gxc#!class:::init!__0
      (lambda (_%self147346%_
               _%id147347%_
               _%super147348%_
               _%slots147349%_
               _%ctor-method147350%_
               _%struct?147351%_
               _%final?147352%_
               _%system?147353%_
               _%metaclass147354%_)
        (let ()
          (let ((_%self147357%_ _%self147346%_))
            (let ()
              (let _%lp147367%_ ((_%rest147369%_ _%super147348%_))
                (let* ((_%rest147370147378%_ _%rest147369%_)
                       (_%else147372147386%_ (lambda () '#!void))
                       (_%K147374147392%_
                        (lambda (_%rest147389%_ _%super-id147390%_)
                          (if (let ((__tmp148071
                                     (let ((__tmp148072
                                            (cons '!class
                                                  (cons _%id147347%_ '()))))
                                       (declare (not safe))
                                       (gxc#optimizer-resolve-class
                                        __tmp148072
                                        _%super-id147390%_))))
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __tmp148071
                                 '8
                                 '#f
                                 '#f))
                              (let ((__tmp148073
                                     (cons '!class (cons _%id147347%_ '()))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot extend final class"
                                 __tmp148073
                                 _%super-id147390%_))
                              '#!void)
                          (let ()
                            (declare (not safe))
                            (_%lp147367%_ _%rest147389%_)))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest147370147378%_))
                      (let ((_%hd147375147395%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest147370147378%_)))
                            (_%tl147376147397%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest147370147378%_))))
                        (let* ((_%super-id147400%_ _%hd147375147395%_)
                               (_%rest147402%_ _%tl147376147397%_))
                          (declare (not safe))
                          (_%K147374147392%_
                           _%rest147402%_
                           _%super-id147400%_)))
                      '#!void)))
              (let* ((_%ctor-method147453%_
                      (let ((_%$e147404%_ _%ctor-method147350%_))
                        (if _%$e147404%_
                            _%$e147404%_
                            (let _%lp147407%_ ((_%rest147409%_ _%super147348%_)
                                               (_%method147410%_ '#f))
                              (let* ((_%rest147411147419%_ _%rest147409%_)
                                     (_%else147413147427%_
                                      (lambda () _%method147410%_))
                                     (_%K147415147441%_
                                      (lambda (_%rest147430%_
                                               _%super-id147431%_)
                                        (let* ((_%klass147433%_
                                                (let ((__tmp148074
                                                       (cons '!class
                                                             (cons _%id147347%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp148074
                                                   _%super-id147431%_)))
                                               (_%$e147435%_
                                                (##structure-ref
                                                 _%klass147433%_
                                                 '6
                                                 gxc#!class::t
                                                 '#f)))
                                          (if _%$e147435%_
                                              ((lambda (_%ctor-method147438%_)
                                                 (if _%method147410%_
                                                     (if (eq? _%ctor-method147438%_
                                                              _%method147410%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%lp147407%_
                                                            _%rest147430%_
                                                            _%ctor-method147438%_))
                                                         (let ((__tmp148075
                                                                (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%id147347%_ '()))))
                   (declare (not safe))
                   (gxc#raise-compile-error
                    '"conflicting implicit constructor methods"
                    __tmp148075
                    _%method147410%_
                    _%ctor-method147438%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%lp147407%_
                                                        _%rest147430%_
                                                        _%ctor-method147438%_))))
                                               _%$e147435%_)
                                              (let ()
                                                (let ()
                                                  (declare (not safe))
                                                  (_%lp147407%_
                                                   _%rest147430%_
                                                   _%method147410%_))))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%rest147411147419%_))
                                    (let ((_%hd147416147444%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%rest147411147419%_)))
                                          (_%tl147417147446%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%rest147411147419%_))))
                                      (let* ((_%super-id147449%_
                                              _%hd147416147444%_)
                                             (_%rest147451%_
                                              _%tl147417147446%_))
                                        (declare (not safe))
                                        (_%K147415147441%_
                                         _%rest147451%_
                                         _%super-id147449%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%else147413147427%_))))))))
                     (_g148076_
                      (let ((__tmp148081
                             (lambda (_%klass-id147455%_)
                               (cons _%klass-id147455%_
                                     (let ((__tmp148082
                                            (let ((__tmp148083
                                                   (cons '!class
                                                         (cons _%id147347%_
                                                               '()))))
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               __tmp148083
                                               _%klass-id147455%_))))
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        __tmp148082
                                        '3
                                        '#f
                                        '#f)))))
                            (__tmp148078
                             (lambda (_%klass-id147457%_)
                               (let ((__tmp148079
                                      (let ((__tmp148080
                                             (cons '!class
                                                   (cons _%id147347%_ '()))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         __tmp148080
                                         _%klass-id147457%_))))
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  __tmp148079
                                  '7
                                  '#f
                                  '#f)))))
                        (declare (not safe))
                        (c4-linearize
                         '()
                         _%super147348%_
                         'get-precedence-list:
                         __tmp148081
                         'struct:
                         __tmp148078
                         'eq:
                         eq?
                         'get-name:
                         identity))))
                (begin
                  (let ((_g148077_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g148076_)
                               (##vector-length _g148076_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g148077_ 2)))
                        (error "Context expects 2 values" _g148077_)))
                  (let ((_%precedence-list147459%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g148076_ 0)))
                        (_%base-struct147460%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g148076_ 1))))
                    (let* ((_%precedence-list147504%_
                            (if (let ()
                                  (declare (not safe))
                                  (##memq _%id147347%_ '(t object class)))
                                (let () _%precedence-list147459%_)
                                (if (memq 'object::t _%precedence-list147459%_)
                                    (let () _%precedence-list147459%_)
                                    (if _%system?147353%_
                                        (let ()
                                          (if (memq 't::t
                                                    _%precedence-list147459%_)
                                              _%precedence-list147459%_
                                              (let ()
                                                (declare (not safe))
                                                (##append
                                                 _%precedence-list147459%_
                                                 '(t::t)))))
                                        (let ()
                                          (let _%loop147466%_ ((_%tail147468%_
                                                                _%precedence-list147459%_)
                                                               (_%head147469%_
                                                                '()))
                                            (let* ((_%tail147470147478%_
                                                    _%tail147468%_)
                                                   (_%else147472147486%_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (__foldl1
                                                         cons
                                                         '(object::t t::t)
                                                         _%head147469%_))))
                                                   (_%K147474147492%_
                                                    (lambda (_%rest147489%_
                                                             _%hd147490%_)
                                                      (if (eq? _%hd147490%_
                                                               't::t)
                                                          (let ((__tmp148084
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons 'object::t _%tail147468%_)))
                    (declare (not safe))
                    (__foldl1 cons __tmp148084 _%head147469%_))
                  (let ((__tmp148085 (cons _%hd147490%_ _%head147469%_)))
                    (declare (not safe))
                    (_%loop147466%_ _%rest147489%_ __tmp148085))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tail147470147478%_))
                                                  (let ((_%hd147475147495%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tail147470147478%_)))
                                                        (_%tl147476147497%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tail147470147478%_))))
                                                    (let* ((_%hd147500%_
                                                            _%hd147475147495%_)
                                                           (_%rest147502%_
                                                            _%tl147476147497%_))
                                                      (declare (not safe))
                                                      (_%K147474147492%_
                                                       _%rest147502%_
                                                       _%hd147500%_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%else147472147486%_))))))))))
                           (_%fields147506%_
                            (let ((__tmp148086
                                   (cons '!class (cons _%id147347%_ '()))))
                              (declare (not safe))
                              (gxc#compute-class-fields
                               __tmp148086
                               _%base-struct147460%_
                               _%precedence-list147504%_
                               _%slots147349%_))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _%self147357%_
                         _%id147347%_
                         '1
                         '#f
                         '#f))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _%self147357%_
                         _%super147348%_
                         '2
                         '#f
                         '#f))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _%self147357%_
                         _%precedence-list147504%_
                         '3
                         '#f
                         '#f))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _%self147357%_
                         _%slots147349%_
                         '4
                         '#f
                         '#f))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _%self147357%_
                         _%fields147506%_
                         '5
                         '#f
                         '#f))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _%self147357%_
                         _%ctor-method147453%_
                         '6
                         '#f
                         '#f))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _%self147357%_
                         _%struct?147351%_
                         '7
                         '#f
                         '#f))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _%self147357%_
                         _%final?147352%_
                         '8
                         '#f
                         '#f))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _%self147357%_
                         _%metaclass147354%_
                         '10
                         '#f
                         '#f)))))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self147509%_
               _%id147510%_
               _%super147511%_
               _%precedence-list147512%_
               _%slots147513%_
               _%fields147514%_
               _%constructor147515%_
               _%struct?147516%_
               _%final?147517%_
               _%system?147518%_
               _%metaclass147519%_
               _%methods147520%_)
        (let ()
          (let ((_%self147523%_ _%self147509%_))
            (let ()
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147523%_
                 _%id147510%_
                 '1
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147523%_
                 _%super147511%_
                 '2
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147523%_
                 _%precedence-list147512%_
                 '3
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147523%_
                 _%slots147513%_
                 '4
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147523%_
                 _%fields147514%_
                 '5
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147523%_
                 _%constructor147515%_
                 '6
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147523%_
                 _%struct?147516%_
                 '7
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147523%_
                 _%final?147517%_
                 '8
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147523%_
                 _%metaclass147519%_
                 '10
                 '#f
                 '#f))
              (if _%methods147520%_
                  (let ((__tmp148087
                         (let ()
                           (declare (not safe))
                           (list->hash-table-eq _%methods147520%_))))
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147523%_
                     __tmp148087
                     '11
                     '#f
                     '#f))
                  '#!void))))))
    (define gxc#!class:::init!
      (lambda _g148089_
        (let ((_g148088_ (let () (declare (not safe)) (##length _g148089_))))
          (cond ((let () (declare (not safe)) (##fx= _g148088_ 9))
                 (apply (lambda (_%self147346%_
                                 _%id147347%_
                                 _%super147348%_
                                 _%slots147349%_
                                 _%ctor-method147350%_
                                 _%struct?147351%_
                                 _%final?147352%_
                                 _%system?147353%_
                                 _%metaclass147354%_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _%self147346%_
                             _%id147347%_
                             _%super147348%_
                             _%slots147349%_
                             _%ctor-method147350%_
                             _%struct?147351%_
                             _%final?147352%_
                             _%system?147353%_
                             _%metaclass147354%_)))
                        _g148089_))
                ((let () (declare (not safe)) (##fx= _g148088_ 12))
                 (apply (lambda (_%self147509%_
                                 _%id147510%_
                                 _%super147511%_
                                 _%precedence-list147512%_
                                 _%slots147513%_
                                 _%fields147514%_
                                 _%constructor147515%_
                                 _%struct?147516%_
                                 _%final?147517%_
                                 _%system?147518%_
                                 _%metaclass147519%_
                                 _%methods147520%_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _%self147509%_
                             _%id147510%_
                             _%super147511%_
                             _%precedence-list147512%_
                             _%slots147513%_
                             _%fields147514%_
                             _%constructor147515%_
                             _%struct?147516%_
                             _%final?147517%_
                             _%system?147518%_
                             _%metaclass147519%_
                             _%methods147520%_)))
                        _g148089_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g148089_))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where147198%_
               _%base-struct147199%_
               _%precedence-list147200%_
               _%direct-slots147201%_)
        (let* ((_%base-fields147203%_
                (if _%base-struct147199%_
                    (let ((__tmp148090
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%where147198%_
                              _%base-struct147199%_))))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp148090 '5 '#f '#f))
                    '()))
               (_%r-fields147205%_ (reverse _%base-fields147203%_))
               (_%seen-slots147213%_
                (let ((_%tab147207%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g147208147210%_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _%tab147207%_ _%g147208147210%_ '#t)))
                   _%base-fields147203%_)
                  _%tab147207%_))
               (_%process-slot147217%_
                (lambda (_%slot147215%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%seen-slots147213%_ _%slot147215%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _%seen-slots147213%_ _%slot147215%_ '#t))
                        (set! _%r-fields147205%_
                              (cons _%slot147215%_ _%r-fields147205%_)))))))
          (for-each
           (lambda (_%mixin147220%_)
             (let ((_%klass147222%_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _%where147198%_
                       _%mixin147220%_))))
               (if (##structure-ref _%klass147222%_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _%process-slot147217%_
                    (##structure-ref _%klass147222%_ '5 gxc#!class::t '#f)))))
           _%precedence-list147200%_)
          (for-each _%process-slot147217%_ _%direct-slots147201%_)
          (let () (declare (not safe)) (##reverse _%r-fields147205%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass147157%_ _%slot147158%_)
        (let _%lp147160%_ ((_%rest147162%_
                            (##structure-ref
                             _%klass147157%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset147163%_ '1))
          (let* ((_%rest147164147172%_ _%rest147162%_)
                 (_%else147166147180%_
                  (lambda ()
                    (let ((__tmp148092
                           (##structure-ref
                            _%klass147157%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp148091
                           (##structure-ref
                            _%klass147157%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp148092
                       __tmp148091
                       _%slot147158%_))))
                 (_%K147168147186%_
                  (lambda (_%rest147183%_ _%s147184%_)
                    (if (eq? _%s147184%_ _%slot147158%_)
                        _%offset147163%_
                        (let ((__tmp148093
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%offset147163%_ '1))))
                          (declare (not safe))
                          (_%lp147160%_ _%rest147183%_ __tmp148093))))))
            (if (let () (declare (not safe)) (##pair? _%rest147164147172%_))
                (let ((_%hd147169147189%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest147164147172%_)))
                      (_%tl147170147191%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest147164147172%_))))
                  (let* ((_%s147194%_ _%hd147169147189%_)
                         (_%rest147196%_ _%tl147170147191%_))
                    (declare (not safe))
                    (_%K147168147186%_ _%rest147196%_ _%s147194%_)))
                (let () (declare (not safe)) (_%else147166147180%_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass147115%_ _%slot147116%_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _%klass147115%_ _%slot147116%_))
            _%klass147115%_
            (let _%lp147118%_ ((_%rest147120%_
                                (##structure-ref
                                 _%klass147115%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest147121147129%_ _%rest147120%_)
                     (_%else147123147137%_ (lambda () '#f))
                     (_%K147125147145%_
                      (lambda (_%rest147140%_ _%super147141%_)
                        (let ((_%super-class147143%_
                               (let ((__tmp148094
                                      (cons '!class-slot-find-struct
                                            (cons (##structure-ref
                                                   _%klass147115%_
                                                   '1
                                                   gxc#!type::t
                                                   '#f)
                                                  (cons _%slot147116%_ '())))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp148094
                                  _%super147141%_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _%super-class147143%_
                                 _%slot147116%_))
                              _%super-class147143%_
                              (let ()
                                (declare (not safe))
                                (_%lp147118%_ _%rest147140%_)))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest147121147129%_))
                    (let ((_%hd147126147148%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest147121147129%_)))
                          (_%tl147127147150%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest147121147129%_))))
                      (let* ((_%super147153%_ _%hd147126147148%_)
                             (_%rest147155%_ _%tl147127147150%_))
                        (declare (not safe))
                        (_%K147125147145%_ _%rest147155%_ _%super147153%_)))
                    (let () (declare (not safe)) (_%else147123147137%_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass147112%_ _%slot147113%_)
        (if (##structure-ref _%klass147112%_ '7 gxc#!class::t '#f)
            (memq _%slot147113%_
                  (##structure-ref _%klass147112%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self147098%_ _%id147099%_)
        (let ()
          (let ((_%self147102%_ _%self147098%_))
            (let ()
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147102%_
                 _%id147099%_
                 '1
                 '#f
                 '#f))
              (let ((__tmp148095
                     (let ((__obj148021
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
                          __obj148021
                          'boolean::t
                          '1
                          '#f
                          '#f))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-set!
                          __obj148021
                          '(pure predicate)
                          '2
                          '#f
                          '#f))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-set!
                          __obj148021
                          '(t::t)
                          '3
                          '#f
                          '#f))
                       __obj148021)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147102%_
                 __tmp148095
                 '2
                 '#f
                 '#f)))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self146962%_ _%id146963%_)
        (let ()
          (let ((_%self146966%_ _%self146962%_))
            (let ()
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146966%_
                 _%id146963%_
                 '1
                 '#f
                 '#f))
              (let ((__tmp148096
                     (let ((__obj148022
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
                          __obj148022
                          _%id146963%_
                          '1
                          '#f
                          '#f))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-set!
                          __obj148022
                          '(alloc)
                          '2
                          '#f
                          '#f))
                       __obj148022)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146966%_
                 __tmp148096
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
      (lambda (_%self146824%_ _%id146825%_ _%slot146826%_ _%checked?146827%_)
        (let ()
          (let ((_%self146830%_ _%self146824%_))
            (let ()
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146830%_
                 _%id146825%_
                 '1
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146830%_
                 _%slot146826%_
                 '3
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146830%_
                 _%checked?146827%_
                 '4
                 '#f
                 '#f))
              (let ((__tmp148097
                     (let ((__obj148023
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
                          __obj148023
                          't::t
                          '1
                          '#f
                          '#f))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-set!
                          __obj148023
                          '(pure)
                          '2
                          '#f
                          '#f))
                       (let ((__tmp148098 (cons _%id146825%_ '())))
                         (declare (not safe))
                         (##unchecked-structure-set!
                          __obj148023
                          __tmp148098
                          '3
                          '#f
                          '#f))
                       __obj148023)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146830%_
                 __tmp148097
                 '2
                 '#f
                 '#f)))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self146686%_ _%id146687%_ _%slot146688%_ _%checked?146689%_)
        (let ()
          (let ((_%self146692%_ _%self146686%_))
            (let ()
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146692%_
                 _%id146687%_
                 '1
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146692%_
                 _%slot146688%_
                 '3
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146692%_
                 _%checked?146689%_
                 '4
                 '#f
                 '#f))
              (let ((__tmp148099
                     (let ((__obj148024
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
                          __obj148024
                          'void::t
                          '1
                          '#f
                          '#f))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-set!
                          __obj148024
                          '(mut)
                          '2
                          '#f
                          '#f))
                       (let ((__tmp148100
                              (cons _%id146687%_ (cons 't::t '()))))
                         (declare (not safe))
                         (##unchecked-structure-set!
                          __obj148024
                          __tmp148100
                          '3
                          '#f
                          '#f))
                       __obj148024)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146692%_
                 __tmp148099
                 '2
                 '#f
                 '#f)))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%_146529%_
               _%signature146526146531%_
               _%self146533%_
               _%arity146534%_
               _%dispatch146535%_)
        (let ((_%signature146537%_
               (if (eq? _%signature146526146531%_ absent-value)
                   '#f
                   _%signature146526146531%_)))
          (let ((_%self146540%_ _%self146533%_))
            (let ()
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146540%_
                 'procedure
                 '1
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146540%_
                 _%arity146534%_
                 '3
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146540%_
                 _%dispatch146535%_
                 '4
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146540%_
                 _%signature146537%_
                 '2
                 '#f
                 '#f)))))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords146554%_ . _%args146555%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords146554%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords146554%_
                  'signature:
                  absent-value))
               _%args146555%_)))
    (define gxc#!lambda:::init!
      (lambda _%args146527146561%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args146527146561%_)))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!
      (lambda (_%self146389%_ _%clauses146390%_)
        (let ()
          (let ((_%self146393%_ _%self146389%_))
            (let ()
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146393%_
                 'procedure
                 '1
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146393%_
                 _%clauses146390%_
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
      (lambda (_%self146252%_ _%tab146253%_ _%dispatch146254%_)
        (let ()
          (let ((_%self146257%_ _%self146252%_))
            (let ()
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146257%_
                 'procedure
                 '1
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146257%_
                 _%tab146253%_
                 '3
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146257%_
                 _%dispatch146254%_
                 '4
                 '#f
                 '#f)))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self146115%_ _%keys146116%_ _%main146117%_)
        (let ()
          (let ((_%self146120%_ _%self146115%_))
            (let ()
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146120%_
                 'procedure
                 '1
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146120%_
                 _%keys146116%_
                 '3
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146120%_
                 _%main146117%_
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
      (lambda (_%self145735%_ _%id145736%_)
        (let ()
          (let ((_%self145739%_ _%self145735%_))
            (let ()
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self145739%_
                 _%id145736%_
                 '1
                 '#f
                 '#f))
              (let ((__tmp148101
                     (let ((__obj148025
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
                          __obj148025
                          'boolean::t
                          '1
                          '#f
                          '#f))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-set!
                          __obj148025
                          '(pure)
                          '2
                          '#f
                          '#f))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-set!
                          __obj148025
                          '(t::t)
                          '3
                          '#f
                          '#f))
                       __obj148025)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self145739%_
                 __tmp148101
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
      (lambda (_%klass145604%_)
        (let ((_%$e145606%_
               (##structure-ref _%klass145604%_ '11 gxc#!class::t '#f)))
          (if _%$e145606%_
              _%$e145606%_
              (let ()
                (let ((_%tab145610%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (##structure-set!
                   _%klass145604%_
                   _%tab145610%_
                   '11
                   gxc#!class::t
                   '#f)
                  _%tab145610%_))))))
    (define gxc#!class-lookup-method
      (lambda (_%klass145595%_ _%method145596%_)
        (let ((_%tab145597145599%_
               (##structure-ref _%klass145595%_ '11 gxc#!class::t '#f)))
          (if _%tab145597145599%_
              (let ((_%tab145602%_ _%tab145597145599%_))
                (declare (not safe))
                (hash-get _%tab145602%_ _%method145596%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a145583%_ _%type-b145584%_)
        (if _%type-a145583%_
            (if _%type-b145584%_
                (let ((_%$e145586%_ (eq? _%type-a145583%_ _%type-b145584%_)))
                  (if _%$e145586%_
                      _%$e145586%_
                      (let ((_%$e145589%_
                             (eq? (##structure-ref
                                   _%type-b145584%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e145589%_
                            _%$e145589%_
                            (let ((_%$e145592%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a145583%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b145584%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e145592%_
                                  _%$e145592%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a145583%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b145584%_
                                             'gxc#!class::t))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#!class-subclass?
                                             _%type-a145583%_
                                             _%type-b145584%_))
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a145534%_ _%klass-b145535%_)
        (let ((_%$e145537%_
               (eq? (##structure-ref _%klass-a145534%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b145535%_ '1 gxc#!type::t '#f))))
          (if _%$e145537%_
              _%$e145537%_
              (let ((_%klass-id-b145540%_
                     (##structure-ref _%klass-b145535%_ '1 gxc#!type::t '#f))
                    (_%precedence-list145541%_
                     (##structure-ref _%klass-a145534%_ '3 gxc#!class::t '#f)))
                (let _%loop145543%_ ((_%rest145545%_
                                      _%precedence-list145541%_))
                  (let* ((_%rest145546145554%_ _%rest145545%_)
                         (_%else145548145562%_ (lambda () '#f))
                         (_%K145550145571%_
                          (lambda (_%rest145565%_ _%klass-name145566%_)
                            (let ((_%$e145568%_
                                   (eq? (let ((__tmp148102
                                               (let ((__tmp148103
                                                      (cons 'subclass?
                                                            (cons _%klass-a145534%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%klass-b145535%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp148103
                                                  _%klass-name145566%_))))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp148102
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b145540%_)))
                              (if _%$e145568%_
                                  _%$e145568%_
                                  (let ()
                                    (declare (not safe))
                                    (_%loop145543%_ _%rest145565%_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest145546145554%_))
                        (let ((_%hd145551145574%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest145546145554%_)))
                              (_%tl145552145576%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest145546145554%_))))
                          (let* ((_%klass-name145579%_ _%hd145551145574%_)
                                 (_%rest145581%_ _%tl145552145576%_))
                            (declare (not safe))
                            (_%K145550145571%_
                             _%rest145581%_
                             _%klass-name145579%_)))
                        (let ()
                          (declare (not safe))
                          (_%else145548145562%_))))))))))
    (define gxc#!interface-instance?
      (lambda (_%type145532%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145532%_ 'gxc#!class::t))
            (memq 'gerbil#interface-instance::t
                  (##structure-ref _%type145532%_ '3 gxc#!class::t '#f))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym145514%_ _%type145515%_ _%local?145516%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145515%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym145514%_
                     _%type145515%_)))
        (let ((__tmp148104
               (let () (declare (not safe)) (struct->list _%type145515%_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym145514%_ '" " __tmp148104))
        (let ((_%table145518%_
               (if _%local?145516%_
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
          (hash-put! _%table145518%_ _%sym145514%_ _%type145515%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym145523%_ _%type145524%_)
        (let ((_%local?145526%_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _%sym145523%_
           _%type145524%_
           _%local?145526%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g148106_
        (let ((_g148105_ (let () (declare (not safe)) (##length _g148106_))))
          (cond ((let () (declare (not safe)) (##fx= _g148105_ 2))
                 (apply (lambda (_%sym145523%_ _%type145524%_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _%sym145523%_
                             _%type145524%_)))
                        _g148106_))
                ((let () (declare (not safe)) (##fx= _g148105_ 3))
                 (apply (lambda (_%sym145528%_ _%type145529%_ _%local?145530%_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _%sym145528%_
                             _%type145529%_
                             _%local?145530%_)))
                        _g148106_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g148106_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym145508%_ _%type145509%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145509%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym145508%_
                     _%type145509%_)))
        (let ((_%table145511%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp148107
                 (let () (declare (not safe)) (struct->list _%type145509%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym145508%_ '" " __tmp148107))
          (let ()
            (declare (not safe))
            (hash-put! _%table145511%_ _%sym145508%_ _%type145509%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table145511%_ _%type145509%_ _%sym145508%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym145503%_ _%type145504%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145504%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym145503%_
                     _%type145504%_)))
        (let ((_%table145506%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table145506%_ _%sym145503%_))
              '#!void
              (begin
                (let ((__tmp148108
                       (let ()
                         (declare (not safe))
                         (struct->list _%type145504%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym145503%_
                   '" "
                   __tmp148108))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table145506%_ _%sym145503%_ _%type145504%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table145506%_
                   _%type145504%_
                   _%sym145503%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym145501%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym145501%_))
        (let ((__tmp148109
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp148109 _%sym145501%_))
        (let ((__tmp148110
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp148110 _%sym145501%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t145469%_
               _%method145470%_
               _%sym145471%_
               _%rebind?145472%_)
        (let ((_%klass145474%_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-class _%type-t145469%_))))
          (if _%klass145474%_
              (let* ((_%vtab145476%_
                      (let ()
                        (declare (not safe))
                        (gxc#!class-method-table _%klass145474%_)))
                     (_%$e145478%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab145476%_ _%method145470%_))))
                (if _%$e145478%_
                    ((lambda (_%existing145481%_)
                       (if _%rebind?145472%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t145469%_
                                '" "
                                _%method145470%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab145476%_
                                _%method145470%_
                                _%sym145471%_)))
                           (if (eq? _%existing145481%_ _%sym145471%_)
                               (let () '#!void)
                               (let ()
                                 (let ((__tmp148111
                                        (cons 'bind-method!
                                              (cons _%type-t145469%_
                                                    (cons _%method145470%_
                                                          (cons _%sym145471%_
                                                                '()))))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"declare-method: duplicate method declaration"
                                    __tmp148111
                                    _%method145470%_))))))
                     _%$e145478%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t145469%_
                         '" "
                         _%method145470%_
                         '" => "
                         _%sym145471%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab145476%_
                         _%method145470%_
                         _%sym145471%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t145469%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t145490%_ _%method145491%_ _%sym145492%_)
        (let ((_%rebind?145494%_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _%type-t145490%_
           _%method145491%_
           _%sym145492%_
           _%rebind?145494%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g148113_
        (let ((_g148112_ (let () (declare (not safe)) (##length _g148113_))))
          (cond ((let () (declare (not safe)) (##fx= _g148112_ 3))
                 (apply (lambda (_%type-t145490%_
                                 _%method145491%_
                                 _%sym145492%_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _%type-t145490%_
                             _%method145491%_
                             _%sym145492%_)))
                        _g148113_))
                ((let () (declare (not safe)) (##fx= _g148112_ 4))
                 (apply (lambda (_%type-t145496%_
                                 _%method145497%_
                                 _%sym145498%_
                                 _%rebind?145499%_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _%type-t145496%_
                             _%method145497%_
                             _%sym145498%_
                             _%rebind?145499%_)))
                        _g148113_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g148113_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym145457%_)
        (let ((_%$e145465%_
               (let ((_%ht145458145460%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-local-type))))
                 (if _%ht145458145460%_
                     (let ((_%ht145463%_ _%ht145458145460%_))
                       (declare (not safe))
                       (hash-get _%ht145463%_ _%sym145457%_))
                     '#f))))
          (if _%$e145465%_
              _%$e145465%_
              (let ((__tmp148114
                     (##structure-ref
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-optimizer-info))
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp148114 _%sym145457%_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym145449%_)
        (let ((_%type145450145452%_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _%sym145449%_))))
          (if _%type145450145452%_
              (let ((_%type145455%_ _%type145450145452%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type145455%_ 'gxc#!alias::t))
                    (let ((__tmp148115
                           (##structure-ref
                            _%type145455%_
                            '1
                            gxc#!type::t
                            '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp148115))
                    _%type145455%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym145445%_)
        (let ((_%table145447%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table145447%_ _%sym145445%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where145429%_ _%sym145430%_)
        (let ()
          (let ((_%$e145442%_
                 (let ((_%klass145432145434%_
                        (let ()
                          (declare (not safe))
                          (gxc#optimizer-lookup-class _%sym145430%_))))
                   (if _%klass145432145434%_
                       (let* ((_%klass145437%_ _%klass145432145434%_)
                              (_%val145439%_ _%klass145437%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%val145439%_
                                'gxc#!class::t))
                             _%val145439%_
                             (let ()
                               (declare (not safe))
                               (error '"bad cast"
                                      gxc#!class::t
                                      _%val145439%_))))
                       '#f))))
            (if _%$e145442%_
                _%$e145442%_
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where145429%_
                   _%sym145430%_)))))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass145427%_)
        (let ((__tmp148116
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp148116 _%klass145427%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t145424%_ _%method145425%_)
        (let ((__tmp148117
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-class
                  'lookup-method
                  _%type-t145424%_))))
          (declare (not safe))
          (gxc#!class-lookup-method __tmp148117 _%method145425%_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_%sym145422%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _%sym145422%_))
        (let ((__tmp148118
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp148118 _%sym145422%_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym145420%_)
        (let ((__tmp148119
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp148119 _%sym145420%_))))))
