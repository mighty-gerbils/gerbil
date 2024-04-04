(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1712246557)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp148848 (list)) (__tmp148847 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp148848
         '(type classes ssxi methods)
         __tmp148847
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args148819%_
        (apply make-instance gxc#optimizer-info::t _%$args148819%_)))
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
      (lambda (_%self148806%_)
        (let ((_%self148809%_ _%self148806%_))
          (if (let ((__tmp148849
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self148809%_))))
                (declare (not safe))
                (##fx< '4 __tmp148849))
              (begin
                (let ((__tmp148850
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self148809%_
                   __tmp148850
                   '1
                   '#f
                   '#f))
                (let ((__tmp148851
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self148809%_
                   __tmp148851
                   '2
                   '#f
                   '#f))
                (let ((__tmp148852
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self148809%_
                   __tmp148852
                   '3
                   '#f
                   '#f))
                (let ((__tmp148853
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self148809%_
                   __tmp148853
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp148854
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self148809%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self148809%_
                       '4
                       __tmp148854))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp148856 (list))
            (__tmp148855
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp148856
         '(id)
         __tmp148855
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args148681%_
        (apply make-instance gxc#!type::t _%$args148681%_)))
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
      (let ((__tmp148858 (list gxc#!type::t))
            (__tmp148857 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp148858
         '()
         __tmp148857
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args148678%_
        (apply make-instance gxc#!abort::t _%$args148678%_)))
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
      (let ((__tmp148860 (list gxc#!type::t))
            (__tmp148859 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp148860
         '()
         __tmp148859
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args148675%_
        (apply make-instance gxc#!alias::t _%$args148675%_)))
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
      (let ((__tmp148862 (list gxc#!type::t))
            (__tmp148861
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp148862
         '(signature)
         __tmp148861
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (__make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _%$args148672%_
        (apply make-instance gxc#!procedure::t _%$args148672%_)))
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
      (let ((__tmp148864 (list))
            (__tmp148863
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked)
                     (print: return effect arguments unchecked)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp148864
         '(return effect arguments unchecked)
         __tmp148863
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args148669%_
        (apply make-instance gxc#!signature::t _%$args148669%_)))
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
      (let ((__tmp148866 (list gxc#!procedure::t))
            (__tmp148865 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp148866
         '()
         __tmp148865
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args148666%_
        (apply make-instance gxc#!primitive-predicate::t _%$args148666%_)))
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
      (let ((__tmp148868 (list gxc#!type::t))
            (__tmp148867 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp148868
         '(class)
         __tmp148867
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args148663%_
        (apply make-instance gxc#!class-meta::t _%$args148663%_)))
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
      (let ((__tmp148870 (list gxc#!type::t))
            (__tmp148869
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
         __tmp148870
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp148869
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args148660%_
        (apply make-instance gxc#!class::t _%$args148660%_)))
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
      (let ((__tmp148872 (list gxc#!procedure::t))
            (__tmp148871 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp148872
         '()
         __tmp148871
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args148657%_
        (apply make-instance gxc#!predicate::t _%$args148657%_)))
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
      (let ((__tmp148874 (list gxc#!procedure::t))
            (__tmp148873 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp148874
         '()
         __tmp148873
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args148654%_
        (apply make-instance gxc#!constructor::t _%$args148654%_)))
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
      (let ((__tmp148876 (list gxc#!procedure::t))
            (__tmp148875 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp148876
         '(slot checked?)
         __tmp148875
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args148651%_
        (apply make-instance gxc#!accessor::t _%$args148651%_)))
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
      (let ((__tmp148878 (list gxc#!procedure::t))
            (__tmp148877 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp148878
         '(slot checked?)
         __tmp148877
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args148648%_
        (apply make-instance gxc#!mutator::t _%$args148648%_)))
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
      (let ((__tmp148880 (list gxc#!type::t))
            (__tmp148879 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp148880
         '(methods)
         __tmp148879
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args148645%_
        (apply make-instance gxc#!interface::t _%$args148645%_)))
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
      (let ((__tmp148882 (list gxc#!procedure::t))
            (__tmp148881
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp148882
         '(arity dispatch inline inline-typedecl)
         __tmp148881
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args148642%_
        (apply make-instance gxc#!lambda::t _%$args148642%_)))
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
      (let ((__tmp148884 (list gxc#!procedure::t))
            (__tmp148883 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp148884
         '(clauses)
         __tmp148883
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args148639%_
        (apply make-instance gxc#!case-lambda::t _%$args148639%_)))
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
      (let ((__tmp148886 (list gxc#!procedure::t))
            (__tmp148885 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp148886
         '(table dispatch)
         __tmp148885
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args148636%_
        (apply make-instance gxc#!kw-lambda::t _%$args148636%_)))
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
      (let ((__tmp148888 (list gxc#!procedure::t))
            (__tmp148887 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp148888
         '(keys main)
         __tmp148887
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args148633%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args148633%_)))
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
      (let ((__tmp148889 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp148889
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args148630%_
        (apply make-instance gxc#!primitive::t _%$args148630%_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp148890 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp148890
         '()
         '((equal:))
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args148627%_
        (apply make-instance gxc#!primitive-lambda::t _%$args148627%_)))
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
      (let ((__tmp148891 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp148891
         '()
         '((equal:))
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args148624%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args148624%_)))
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
      (lambda (_%self148611%_)
        (let ((_%self148614%_ _%self148611%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self148614%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self148475%_ _%klass148476%_)
        (let ((_%self148479%_ _%self148475%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self148479%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148479%_
             _%klass148476%_
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class-meta::t ':init! gxc#!class-meta:::init! '#f))
    (define gxc#!class:::init!__0
      (lambda (_%self148167%_
               _%id148168%_
               _%super148169%_
               _%slots148170%_
               _%ctor-method148171%_
               _%struct?148172%_
               _%final?148173%_
               _%system?148174%_
               _%metaclass148175%_)
        (let ((_%self148178%_ _%self148167%_))
          (let _%lp148188%_ ((_%rest148190%_ _%super148169%_))
            (let* ((_%rest148191148199%_ _%rest148190%_)
                   (_%else148193148207%_ (lambda () '#!void))
                   (_%K148195148213%_
                    (lambda (_%rest148210%_ _%super-id148211%_)
                      (if (let ((__tmp148892
                                 (let ((__tmp148893
                                        (cons '!class
                                              (cons _%id148168%_ '()))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp148893
                                    _%super-id148211%_))))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp148892 '8 '#f '#f))
                          (let ((__tmp148894
                                 (cons '!class (cons _%id148168%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp148894
                             _%super-id148211%_))
                          '#!void)
                      (let ()
                        (declare (not safe))
                        (_%lp148188%_ _%rest148210%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest148191148199%_))
                  (let ((_%hd148196148216%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest148191148199%_)))
                        (_%tl148197148218%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest148191148199%_))))
                    (let* ((_%super-id148221%_ _%hd148196148216%_)
                           (_%rest148223%_ _%tl148197148218%_))
                      (declare (not safe))
                      (_%K148195148213%_ _%rest148223%_ _%super-id148221%_)))
                  '#!void)))
          (let* ((_%ctor-method148274%_
                  (let ((_%$e148225%_ _%ctor-method148171%_))
                    (if _%$e148225%_
                        _%$e148225%_
                        (let _%lp148228%_ ((_%rest148230%_ _%super148169%_)
                                           (_%method148231%_ '#f))
                          (let* ((_%rest148232148240%_ _%rest148230%_)
                                 (_%else148234148248%_
                                  (lambda () _%method148231%_))
                                 (_%K148236148262%_
                                  (lambda (_%rest148251%_ _%super-id148252%_)
                                    (let* ((_%klass148254%_
                                            (let ((__tmp148895
                                                   (cons '!class
                                                         (cons _%id148168%_
                                                               '()))))
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               __tmp148895
                                               _%super-id148252%_)))
                                           (_%$e148256%_
                                            (##structure-ref
                                             _%klass148254%_
                                             '6
                                             gxc#!class::t
                                             '#f)))
                                      (if _%$e148256%_
                                          ((lambda (_%ctor-method148259%_)
                                             (if _%method148231%_
                                                 (if (eq? _%ctor-method148259%_
                                                          _%method148231%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%lp148228%_
                                                        _%rest148251%_
                                                        _%ctor-method148259%_))
                                                     (let ((__tmp148896
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id148168%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp148896
                _%method148231%_
                _%ctor-method148259%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%lp148228%_
                                                    _%rest148251%_
                                                    _%ctor-method148259%_))))
                                           _%$e148256%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%lp148228%_
                                             _%rest148251%_
                                             _%method148231%_)))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest148232148240%_))
                                (let ((_%hd148237148265%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest148232148240%_)))
                                      (_%tl148238148267%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest148232148240%_))))
                                  (let* ((_%super-id148270%_
                                          _%hd148237148265%_)
                                         (_%rest148272%_ _%tl148238148267%_))
                                    (declare (not safe))
                                    (_%K148236148262%_
                                     _%rest148272%_
                                     _%super-id148270%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else148234148248%_))))))))
                 (_g148897_
                  (let ((__tmp148902
                         (lambda (_%klass-id148276%_)
                           (cons _%klass-id148276%_
                                 (let ((__tmp148903
                                        (let ((__tmp148904
                                               (cons '!class
                                                     (cons _%id148168%_ '()))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           __tmp148904
                                           _%klass-id148276%_))))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp148903
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp148899
                         (lambda (_%klass-id148278%_)
                           (let ((__tmp148900
                                  (let ((__tmp148901
                                         (cons '!class
                                               (cons _%id148168%_ '()))))
                                    (declare (not safe))
                                    (gxc#optimizer-resolve-class
                                     __tmp148901
                                     _%klass-id148278%_))))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp148900
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp148902
                     __tmp148899
                     eq?
                     identity
                     '()
                     _%super148169%_))))
            (begin
              (let ((_g148898_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g148897_)
                           (##vector-length _g148897_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g148898_ 2)))
                    (error "Context expects 2 values" _g148898_)))
              (let ((_%precedence-list148280%_
                     (let () (declare (not safe)) (##vector-ref _g148897_ 0)))
                    (_%base-struct148281%_
                     (let () (declare (not safe)) (##vector-ref _g148897_ 1))))
                (let* ((_%precedence-list148325%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id148168%_ '(t object class)))
                            (let () _%precedence-list148280%_)
                            (if (memq 'object::t _%precedence-list148280%_)
                                (let () _%precedence-list148280%_)
                                (if _%system?148174%_
                                    (let ()
                                      (if (memq 't::t
                                                _%precedence-list148280%_)
                                          _%precedence-list148280%_
                                          (let ()
                                            (declare (not safe))
                                            (##append
                                             _%precedence-list148280%_
                                             '(t::t)))))
                                    (let _%loop148287%_ ((_%tail148289%_
                                                          _%precedence-list148280%_)
                                                         (_%head148290%_ '()))
                                      (let* ((_%tail148291148299%_
                                              _%tail148289%_)
                                             (_%else148293148307%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head148290%_))))
                                             (_%K148295148313%_
                                              (lambda (_%rest148310%_
                                                       _%hd148311%_)
                                                (if (eq? _%hd148311%_ 't::t)
                                                    (let ((__tmp148905
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail148289%_)))
              (declare (not safe))
              (__foldl1 cons __tmp148905 _%head148290%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp148906
                                                           (cons _%hd148311%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%head148290%_)))
              (declare (not safe))
              (_%loop148287%_ _%rest148310%_ __tmp148906))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tail148291148299%_))
                                            (let ((_%hd148296148316%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail148291148299%_)))
                                                  (_%tl148297148318%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail148291148299%_))))
                                              (let* ((_%hd148321%_
                                                      _%hd148296148316%_)
                                                     (_%rest148323%_
                                                      _%tl148297148318%_))
                                                (declare (not safe))
                                                (_%K148295148313%_
                                                 _%rest148323%_
                                                 _%hd148321%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%else148293148307%_)))))))))
                       (_%fields148327%_
                        (let ((__tmp148907
                               (cons '!class (cons _%id148168%_ '()))))
                          (declare (not safe))
                          (gxc#compute-class-fields
                           __tmp148907
                           _%base-struct148281%_
                           _%precedence-list148325%_
                           _%slots148170%_))))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148178%_
                     _%id148168%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148178%_
                     _%super148169%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148178%_
                     _%precedence-list148325%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148178%_
                     _%slots148170%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148178%_
                     _%fields148327%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148178%_
                     _%ctor-method148274%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148178%_
                     _%struct?148172%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148178%_
                     _%final?148173%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148178%_
                     _%metaclass148175%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self148330%_
               _%id148331%_
               _%super148332%_
               _%precedence-list148333%_
               _%slots148334%_
               _%fields148335%_
               _%constructor148336%_
               _%struct?148337%_
               _%final?148338%_
               _%system?148339%_
               _%metaclass148340%_
               _%methods148341%_)
        (let ((_%self148344%_ _%self148330%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148344%_
             _%id148331%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148344%_
             _%super148332%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148344%_
             _%precedence-list148333%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148344%_
             _%slots148334%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148344%_
             _%fields148335%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148344%_
             _%constructor148336%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148344%_
             _%struct?148337%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148344%_
             _%final?148338%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148344%_
             _%metaclass148340%_
             '10
             '#f
             '#f))
          (if _%methods148341%_
              (let ((__tmp148908
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods148341%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self148344%_
                 __tmp148908
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g148910_
        (let ((_g148909_ (let () (declare (not safe)) (##length _g148910_))))
          (cond ((let () (declare (not safe)) (##fx= _g148909_ 9))
                 (apply (lambda (_%self148167%_
                                 _%id148168%_
                                 _%super148169%_
                                 _%slots148170%_
                                 _%ctor-method148171%_
                                 _%struct?148172%_
                                 _%final?148173%_
                                 _%system?148174%_
                                 _%metaclass148175%_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _%self148167%_
                             _%id148168%_
                             _%super148169%_
                             _%slots148170%_
                             _%ctor-method148171%_
                             _%struct?148172%_
                             _%final?148173%_
                             _%system?148174%_
                             _%metaclass148175%_)))
                        _g148910_))
                ((let () (declare (not safe)) (##fx= _g148909_ 12))
                 (apply (lambda (_%self148330%_
                                 _%id148331%_
                                 _%super148332%_
                                 _%precedence-list148333%_
                                 _%slots148334%_
                                 _%fields148335%_
                                 _%constructor148336%_
                                 _%struct?148337%_
                                 _%final?148338%_
                                 _%system?148339%_
                                 _%metaclass148340%_
                                 _%methods148341%_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _%self148330%_
                             _%id148331%_
                             _%super148332%_
                             _%precedence-list148333%_
                             _%slots148334%_
                             _%fields148335%_
                             _%constructor148336%_
                             _%struct?148337%_
                             _%final?148338%_
                             _%system?148339%_
                             _%metaclass148340%_
                             _%methods148341%_)))
                        _g148910_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g148910_))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where148019%_
               _%base-struct148020%_
               _%precedence-list148021%_
               _%direct-slots148022%_)
        (let* ((_%base-fields148024%_
                (if _%base-struct148020%_
                    (let ((__tmp148911
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%where148019%_
                              _%base-struct148020%_))))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp148911 '5 '#f '#f))
                    '()))
               (_%r-fields148026%_ (reverse _%base-fields148024%_))
               (_%seen-slots148034%_
                (let ((_%tab148028%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g148029148031%_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _%tab148028%_ _%g148029148031%_ '#t)))
                   _%base-fields148024%_)
                  _%tab148028%_))
               (_%process-slot148038%_
                (lambda (_%slot148036%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%seen-slots148034%_ _%slot148036%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _%seen-slots148034%_ _%slot148036%_ '#t))
                        (set! _%r-fields148026%_
                              (cons _%slot148036%_ _%r-fields148026%_)))))))
          (for-each
           (lambda (_%mixin148041%_)
             (let ((_%klass148043%_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _%where148019%_
                       _%mixin148041%_))))
               (if (##structure-ref _%klass148043%_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _%process-slot148038%_
                    (##structure-ref _%klass148043%_ '5 gxc#!class::t '#f)))))
           _%precedence-list148021%_)
          (for-each _%process-slot148038%_ _%direct-slots148022%_)
          (let () (declare (not safe)) (##reverse _%r-fields148026%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass147978%_ _%slot147979%_)
        (let _%lp147981%_ ((_%rest147983%_
                            (##structure-ref
                             _%klass147978%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset147984%_ '1))
          (let* ((_%rest147985147993%_ _%rest147983%_)
                 (_%else147987148001%_
                  (lambda ()
                    (let ((__tmp148913
                           (##structure-ref
                            _%klass147978%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp148912
                           (##structure-ref
                            _%klass147978%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp148913
                       __tmp148912
                       _%slot147979%_))))
                 (_%K147989148007%_
                  (lambda (_%rest148004%_ _%s148005%_)
                    (if (eq? _%s148005%_ _%slot147979%_)
                        _%offset147984%_
                        (let ((__tmp148914
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%offset147984%_ '1))))
                          (declare (not safe))
                          (_%lp147981%_ _%rest148004%_ __tmp148914))))))
            (if (let () (declare (not safe)) (##pair? _%rest147985147993%_))
                (let ((_%hd147990148010%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest147985147993%_)))
                      (_%tl147991148012%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest147985147993%_))))
                  (let* ((_%s148015%_ _%hd147990148010%_)
                         (_%rest148017%_ _%tl147991148012%_))
                    (declare (not safe))
                    (_%K147989148007%_ _%rest148017%_ _%s148015%_)))
                (let () (declare (not safe)) (_%else147987148001%_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass147936%_ _%slot147937%_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _%klass147936%_ _%slot147937%_))
            _%klass147936%_
            (let _%lp147939%_ ((_%rest147941%_
                                (##structure-ref
                                 _%klass147936%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest147942147950%_ _%rest147941%_)
                     (_%else147944147958%_ (lambda () '#f))
                     (_%K147946147966%_
                      (lambda (_%rest147961%_ _%super147962%_)
                        (let ((_%super-class147964%_
                               (let ((__tmp148915
                                      (cons '!class-slot-find-struct
                                            (cons (##structure-ref
                                                   _%klass147936%_
                                                   '1
                                                   gxc#!type::t
                                                   '#f)
                                                  (cons _%slot147937%_ '())))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp148915
                                  _%super147962%_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _%super-class147964%_
                                 _%slot147937%_))
                              _%super-class147964%_
                              (let ()
                                (declare (not safe))
                                (_%lp147939%_ _%rest147961%_)))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest147942147950%_))
                    (let ((_%hd147947147969%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest147942147950%_)))
                          (_%tl147948147971%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest147942147950%_))))
                      (let* ((_%super147974%_ _%hd147947147969%_)
                             (_%rest147976%_ _%tl147948147971%_))
                        (declare (not safe))
                        (_%K147946147966%_ _%rest147976%_ _%super147974%_)))
                    (let () (declare (not safe)) (_%else147944147958%_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass147933%_ _%slot147934%_)
        (if (##structure-ref _%klass147933%_ '7 gxc#!class::t '#f)
            (memq _%slot147934%_
                  (##structure-ref _%klass147933%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self147919%_ _%id147920%_)
        (let ((_%self147923%_ _%self147919%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147923%_
             _%id147920%_
             '1
             '#f
             '#f))
          (let ((__tmp148916
                 (let ((__obj148842
                        (let ()
                          (declare (not safe))
                          (##structure gxc#!signature::t '#f '#f '#f '#f))))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148842
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148842
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148842
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj148842)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147923%_
             __tmp148916
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self147783%_ _%id147784%_)
        (let ((_%self147787%_ _%self147783%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147787%_
             _%id147784%_
             '1
             '#f
             '#f))
          (let ((__tmp148917
                 (let ((__obj148843
                        (let ()
                          (declare (not safe))
                          (##structure gxc#!signature::t '#f '#f '#f '#f))))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148843
                      _%id147784%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148843
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj148843)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147787%_
             __tmp148917
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
      (lambda (_%self147645%_ _%id147646%_ _%slot147647%_ _%checked?147648%_)
        (let ((_%self147651%_ _%self147645%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147651%_
             _%id147646%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147651%_
             _%slot147647%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147651%_
             _%checked?147648%_
             '4
             '#f
             '#f))
          (let ((__tmp148918
                 (let ((__obj148844
                        (let ()
                          (declare (not safe))
                          (##structure gxc#!signature::t '#f '#f '#f '#f))))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set! __obj148844 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148844
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp148919 (cons _%id147646%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148844
                      __tmp148919
                      '3
                      '#f
                      '#f))
                   __obj148844)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147651%_
             __tmp148918
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self147507%_ _%id147508%_ _%slot147509%_ _%checked?147510%_)
        (let ((_%self147513%_ _%self147507%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147513%_
             _%id147508%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147513%_
             _%slot147509%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147513%_
             _%checked?147510%_
             '4
             '#f
             '#f))
          (let ((__tmp148920
                 (let ((__obj148845
                        (let ()
                          (declare (not safe))
                          (##structure gxc#!signature::t '#f '#f '#f '#f))))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148845
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148845
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp148921 (cons _%id147508%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148845
                      __tmp148921
                      '3
                      '#f
                      '#f))
                   __obj148845)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147513%_
             __tmp148920
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords147351%_
               _%signature147348147352%_
               _%self147354%_
               _%arity147355%_
               _%dispatch147356%_)
        (let* ((_%signature147358%_
                (if (eq? _%signature147348147352%_ absent-value)
                    '#f
                    _%signature147348147352%_))
               (_%self147361%_ _%self147354%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self147361%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147361%_
             _%arity147355%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147361%_
             _%dispatch147356%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147361%_
             _%signature147358%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords147375%_ . _%args147376%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords147375%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords147375%_
                  'signature:
                  absent-value))
               _%args147376%_)))
    (define gxc#!lambda:::init!
      (lambda _%args147349147382%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args147349147382%_)))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords147192%_
               _%signature147189147193%_
               _%self147195%_
               _%clauses147196%_)
        (let* ((_%signature147198%_
                (if (eq? _%signature147189147193%_ absent-value)
                    '#f
                    _%signature147189147193%_))
               (_%self147201%_ _%self147195%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self147201%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147201%_
             _%signature147198%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147201%_
             _%clauses147196%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords147215%_ . _%args147216%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords147215%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords147215%_
                  'signature:
                  absent-value))
               _%args147216%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args147190147222%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args147190147222%_)))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self147051%_ _%tab147052%_ _%dispatch147053%_)
        (let ((_%self147056%_ _%self147051%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self147056%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147056%_
             _%tab147052%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147056%_
             _%dispatch147053%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self146914%_ _%keys146915%_ _%main146916%_)
        (let ((_%self146919%_ _%self146914%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self146919%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146919%_
             _%keys146915%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146919%_
             _%main146916%_
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
      (lambda (_%self146534%_ _%id146535%_)
        (let ((_%self146538%_ _%self146534%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146538%_
             _%id146535%_
             '1
             '#f
             '#f))
          (let ((__tmp148922
                 (let ((__obj148846
                        (let ()
                          (declare (not safe))
                          (##structure gxc#!signature::t '#f '#f '#f '#f))))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148846
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148846
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148846
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj148846)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146538%_
             __tmp148922
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
      (lambda (_%klass146403%_)
        (let ((_%$e146405%_
               (##structure-ref _%klass146403%_ '11 gxc#!class::t '#f)))
          (if _%$e146405%_
              _%$e146405%_
              (let ((_%tab146409%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass146403%_
                 _%tab146409%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab146409%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass146394%_ _%method146395%_)
        (let ((_%tab146396146398%_
               (##structure-ref _%klass146394%_ '11 gxc#!class::t '#f)))
          (if _%tab146396146398%_
              (let ((_%tab146401%_ _%tab146396146398%_))
                (declare (not safe))
                (hash-get _%tab146401%_ _%method146395%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a146382%_ _%type-b146383%_)
        (if _%type-a146382%_
            (if _%type-b146383%_
                (let ((_%$e146385%_ (eq? _%type-a146382%_ _%type-b146383%_)))
                  (if _%$e146385%_
                      _%$e146385%_
                      (let ((_%$e146388%_
                             (eq? (##structure-ref
                                   _%type-b146383%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e146388%_
                            _%$e146388%_
                            (let ((_%$e146391%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a146382%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b146383%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e146391%_
                                  _%$e146391%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a146382%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b146383%_
                                             'gxc#!class::t))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#!class-subclass?
                                             _%type-a146382%_
                                             _%type-b146383%_))
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a146333%_ _%klass-b146334%_)
        (let ((_%$e146336%_
               (eq? (##structure-ref _%klass-a146333%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b146334%_ '1 gxc#!type::t '#f))))
          (if _%$e146336%_
              _%$e146336%_
              (let ((_%klass-id-b146339%_
                     (##structure-ref _%klass-b146334%_ '1 gxc#!type::t '#f))
                    (_%precedence-list146340%_
                     (##structure-ref _%klass-a146333%_ '3 gxc#!class::t '#f)))
                (let _%loop146342%_ ((_%rest146344%_
                                      _%precedence-list146340%_))
                  (let* ((_%rest146345146353%_ _%rest146344%_)
                         (_%else146347146361%_ (lambda () '#f))
                         (_%K146349146370%_
                          (lambda (_%rest146364%_ _%klass-name146365%_)
                            (let ((_%$e146367%_
                                   (eq? (let ((__tmp148923
                                               (let ((__tmp148924
                                                      (cons 'subclass?
                                                            (cons _%klass-a146333%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%klass-b146334%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp148924
                                                  _%klass-name146365%_))))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp148923
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b146339%_)))
                              (if _%$e146367%_
                                  _%$e146367%_
                                  (let ()
                                    (declare (not safe))
                                    (_%loop146342%_ _%rest146364%_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest146345146353%_))
                        (let ((_%hd146350146373%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest146345146353%_)))
                              (_%tl146351146375%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest146345146353%_))))
                          (let* ((_%klass-name146378%_ _%hd146350146373%_)
                                 (_%rest146380%_ _%tl146351146375%_))
                            (declare (not safe))
                            (_%K146349146370%_
                             _%rest146380%_
                             _%klass-name146378%_)))
                        (let ()
                          (declare (not safe))
                          (_%else146347146361%_))))))))))
    (define gxc#!interface-instance?
      (lambda (_%type146331%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type146331%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (##structure-ref _%type146331%_ '3 gxc#!class::t '#f))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym146313%_ _%type146314%_ _%local?146315%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type146314%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym146313%_
                     _%type146314%_)))
        (let ((__tmp148925
               (let () (declare (not safe)) (struct->list _%type146314%_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym146313%_ '" " __tmp148925))
        (let ((_%table146317%_
               (if _%local?146315%_
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
          (hash-put! _%table146317%_ _%sym146313%_ _%type146314%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym146322%_ _%type146323%_)
        (let ((_%local?146325%_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _%sym146322%_
           _%type146323%_
           _%local?146325%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g148927_
        (let ((_g148926_ (let () (declare (not safe)) (##length _g148927_))))
          (cond ((let () (declare (not safe)) (##fx= _g148926_ 2))
                 (apply (lambda (_%sym146322%_ _%type146323%_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _%sym146322%_
                             _%type146323%_)))
                        _g148927_))
                ((let () (declare (not safe)) (##fx= _g148926_ 3))
                 (apply (lambda (_%sym146327%_ _%type146328%_ _%local?146329%_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _%sym146327%_
                             _%type146328%_
                             _%local?146329%_)))
                        _g148927_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g148927_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym146307%_ _%type146308%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type146308%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym146307%_
                     _%type146308%_)))
        (let ((_%table146310%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp148928
                 (let () (declare (not safe)) (struct->list _%type146308%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym146307%_ '" " __tmp148928))
          (let ()
            (declare (not safe))
            (hash-put! _%table146310%_ _%sym146307%_ _%type146308%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table146310%_ _%type146308%_ _%sym146307%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym146302%_ _%type146303%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type146303%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym146302%_
                     _%type146303%_)))
        (let ((_%table146305%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table146305%_ _%sym146302%_))
              '#!void
              (begin
                (let ((__tmp148929
                       (let ()
                         (declare (not safe))
                         (struct->list _%type146303%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym146302%_
                   '" "
                   __tmp148929))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table146305%_ _%sym146302%_ _%type146303%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table146305%_
                   _%type146303%_
                   _%sym146302%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym146300%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym146300%_))
        (let ((__tmp148930
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp148930 _%sym146300%_))
        (let ((__tmp148931
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp148931 _%sym146300%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t146268%_
               _%method146269%_
               _%sym146270%_
               _%rebind?146271%_)
        (let ((_%klass146273%_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-class _%type-t146268%_))))
          (if _%klass146273%_
              (let* ((_%vtab146275%_
                      (let ()
                        (declare (not safe))
                        (gxc#!class-method-table _%klass146273%_)))
                     (_%$e146277%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab146275%_ _%method146269%_))))
                (if _%$e146277%_
                    ((lambda (_%existing146280%_)
                       (if _%rebind?146271%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t146268%_
                                '" "
                                _%method146269%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab146275%_
                                _%method146269%_
                                _%sym146270%_)))
                           (if (eq? _%existing146280%_ _%sym146270%_)
                               (let () '#!void)
                               (let ((__tmp148932
                                      (cons 'bind-method!
                                            (cons _%type-t146268%_
                                                  (cons _%method146269%_
                                                        (cons _%sym146270%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp148932
                                  _%method146269%_)))))
                     _%$e146277%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t146268%_
                         '" "
                         _%method146269%_
                         '" => "
                         _%sym146270%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab146275%_
                         _%method146269%_
                         _%sym146270%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t146268%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t146289%_ _%method146290%_ _%sym146291%_)
        (let ((_%rebind?146293%_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _%type-t146289%_
           _%method146290%_
           _%sym146291%_
           _%rebind?146293%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g148934_
        (let ((_g148933_ (let () (declare (not safe)) (##length _g148934_))))
          (cond ((let () (declare (not safe)) (##fx= _g148933_ 3))
                 (apply (lambda (_%type-t146289%_
                                 _%method146290%_
                                 _%sym146291%_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _%type-t146289%_
                             _%method146290%_
                             _%sym146291%_)))
                        _g148934_))
                ((let () (declare (not safe)) (##fx= _g148933_ 4))
                 (apply (lambda (_%type-t146295%_
                                 _%method146296%_
                                 _%sym146297%_
                                 _%rebind?146298%_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _%type-t146295%_
                             _%method146296%_
                             _%sym146297%_
                             _%rebind?146298%_)))
                        _g148934_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g148934_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym146256%_)
        (let ((_%$e146264%_
               (let ((_%ht146257146259%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-local-type))))
                 (if _%ht146257146259%_
                     (let ((_%ht146262%_ _%ht146257146259%_))
                       (declare (not safe))
                       (hash-get _%ht146262%_ _%sym146256%_))
                     '#f))))
          (if _%$e146264%_
              _%$e146264%_
              (let ((__tmp148935
                     (##structure-ref
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-optimizer-info))
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp148935 _%sym146256%_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym146248%_)
        (let ((_%type146249146251%_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _%sym146248%_))))
          (if _%type146249146251%_
              (let ((_%type146254%_ _%type146249146251%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type146254%_ 'gxc#!alias::t))
                    (let ((__tmp148936
                           (##structure-ref
                            _%type146254%_
                            '1
                            gxc#!type::t
                            '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp148936))
                    _%type146254%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym146244%_)
        (let ((_%table146246%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table146246%_ _%sym146244%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where146229%_ _%sym146230%_)
        (let ((_%$e146233%_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-class _%sym146230%_))))
          (if _%$e146233%_
              ((lambda (_%g146235146237%_)
                 (let ((_%val146240%_ _%g146235146237%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val146240%_
                          'gxc#!class::t))
                       _%val146240%_
                       (let ()
                         (declare (not safe))
                         (error '"bad cast" gxc#!class::t _%val146240%_)))))
               _%$e146233%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where146229%_
                   _%sym146230%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass146227%_)
        (let ((__tmp148937
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp148937 _%klass146227%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t146224%_ _%method146225%_)
        (let ((__tmp148938
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-class
                  'lookup-method
                  _%type-t146224%_))))
          (declare (not safe))
          (gxc#!class-lookup-method __tmp148938 _%method146225%_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_%sym146222%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _%sym146222%_))
        (let ((__tmp148939
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp148939 _%sym146222%_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym146220%_)
        (let ((__tmp148940
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp148940 _%sym146220%_))))))
