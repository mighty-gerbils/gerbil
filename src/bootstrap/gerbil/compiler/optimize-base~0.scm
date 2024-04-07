(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1712526091)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp148758 (list)) (__tmp148757 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp148758
         '(type classes ssxi methods)
         __tmp148757
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args148729%_
        (apply make-instance gxc#optimizer-info::t _%$args148729%_)))
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
      (lambda (_%self148716%_)
        (let ((_%self148719%_ _%self148716%_))
          (if (let ((__tmp148759
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self148719%_))))
                (declare (not safe))
                (##fx< '4 __tmp148759))
              (begin
                (let ((__tmp148760
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self148719%_
                   __tmp148760
                   '1
                   '#f
                   '#f))
                (let ((__tmp148761
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self148719%_
                   __tmp148761
                   '2
                   '#f
                   '#f))
                (let ((__tmp148762
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self148719%_
                   __tmp148762
                   '3
                   '#f
                   '#f))
                (let ((__tmp148763
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self148719%_
                   __tmp148763
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp148764
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self148719%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self148719%_
                       '4
                       __tmp148764))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp148766 (list))
            (__tmp148765
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp148766
         '(id)
         __tmp148765
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args148591%_
        (apply make-instance gxc#!type::t _%$args148591%_)))
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
      (let ((__tmp148768 (list gxc#!type::t))
            (__tmp148767 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp148768
         '()
         __tmp148767
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args148588%_
        (apply make-instance gxc#!abort::t _%$args148588%_)))
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
      (let ((__tmp148770 (list gxc#!type::t))
            (__tmp148769 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp148770
         '()
         __tmp148769
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args148585%_
        (apply make-instance gxc#!alias::t _%$args148585%_)))
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
      (let ((__tmp148772 (list gxc#!type::t))
            (__tmp148771
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp148772
         '(signature)
         __tmp148771
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (__make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _%$args148582%_
        (apply make-instance gxc#!procedure::t _%$args148582%_)))
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
      (let ((__tmp148774 (list))
            (__tmp148773
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked)
                     (print: return effect arguments unchecked)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp148774
         '(return effect arguments unchecked)
         __tmp148773
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args148579%_
        (apply make-instance gxc#!signature::t _%$args148579%_)))
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
      (let ((__tmp148776 (list gxc#!procedure::t))
            (__tmp148775 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp148776
         '()
         __tmp148775
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args148576%_
        (apply make-instance gxc#!primitive-predicate::t _%$args148576%_)))
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
      (let ((__tmp148778 (list gxc#!type::t))
            (__tmp148777 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp148778
         '(class)
         __tmp148777
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args148573%_
        (apply make-instance gxc#!class-meta::t _%$args148573%_)))
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
      (let ((__tmp148780 (list gxc#!type::t))
            (__tmp148779
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
         __tmp148780
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp148779
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args148570%_
        (apply make-instance gxc#!class::t _%$args148570%_)))
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
      (let ((__tmp148782 (list gxc#!procedure::t))
            (__tmp148781 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp148782
         '()
         __tmp148781
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args148567%_
        (apply make-instance gxc#!predicate::t _%$args148567%_)))
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
      (let ((__tmp148784 (list gxc#!procedure::t))
            (__tmp148783 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp148784
         '()
         __tmp148783
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args148564%_
        (apply make-instance gxc#!constructor::t _%$args148564%_)))
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
      (let ((__tmp148786 (list gxc#!procedure::t))
            (__tmp148785 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp148786
         '(slot checked?)
         __tmp148785
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args148561%_
        (apply make-instance gxc#!accessor::t _%$args148561%_)))
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
      (let ((__tmp148788 (list gxc#!procedure::t))
            (__tmp148787 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp148788
         '(slot checked?)
         __tmp148787
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args148558%_
        (apply make-instance gxc#!mutator::t _%$args148558%_)))
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
      (let ((__tmp148790 (list gxc#!type::t))
            (__tmp148789 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp148790
         '(methods)
         __tmp148789
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args148555%_
        (apply make-instance gxc#!interface::t _%$args148555%_)))
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
      (let ((__tmp148792 (list gxc#!procedure::t))
            (__tmp148791
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp148792
         '(arity dispatch inline inline-typedecl)
         __tmp148791
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args148552%_
        (apply make-instance gxc#!lambda::t _%$args148552%_)))
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
      (let ((__tmp148794 (list gxc#!procedure::t))
            (__tmp148793 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp148794
         '(clauses)
         __tmp148793
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args148549%_
        (apply make-instance gxc#!case-lambda::t _%$args148549%_)))
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
      (let ((__tmp148796 (list gxc#!procedure::t))
            (__tmp148795 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp148796
         '(table dispatch)
         __tmp148795
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args148546%_
        (apply make-instance gxc#!kw-lambda::t _%$args148546%_)))
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
      (let ((__tmp148798 (list gxc#!procedure::t))
            (__tmp148797 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp148798
         '(keys main)
         __tmp148797
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args148543%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args148543%_)))
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
      (let ((__tmp148799 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp148799
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args148540%_
        (apply make-instance gxc#!primitive::t _%$args148540%_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp148800 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp148800
         '()
         '((equal:))
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args148537%_
        (apply make-instance gxc#!primitive-lambda::t _%$args148537%_)))
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
      (let ((__tmp148801 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp148801
         '()
         '((equal:))
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args148534%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args148534%_)))
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
      (lambda (_%self148521%_)
        (let ((_%self148524%_ _%self148521%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self148524%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self148385%_ _%klass148386%_)
        (let ((_%self148389%_ _%self148385%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self148389%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148389%_
             _%klass148386%_
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class-meta::t ':init! gxc#!class-meta:::init! '#f))
    (define gxc#!class:::init!__0
      (lambda (_%self148077%_
               _%id148078%_
               _%super148079%_
               _%slots148080%_
               _%ctor-method148081%_
               _%struct?148082%_
               _%final?148083%_
               _%system?148084%_
               _%metaclass148085%_)
        (let ((_%self148088%_ _%self148077%_))
          (let _%lp148098%_ ((_%rest148100%_ _%super148079%_))
            (let* ((_%rest148101148109%_ _%rest148100%_)
                   (_%else148103148117%_ (lambda () '#!void))
                   (_%K148105148123%_
                    (lambda (_%rest148120%_ _%super-id148121%_)
                      (if (let ((__tmp148802
                                 (let ((__tmp148803
                                        (cons '!class
                                              (cons _%id148078%_ '()))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp148803
                                    _%super-id148121%_))))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp148802 '8 '#f '#f))
                          (let ((__tmp148804
                                 (cons '!class (cons _%id148078%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp148804
                             _%super-id148121%_))
                          '#!void)
                      (let ()
                        (declare (not safe))
                        (_%lp148098%_ _%rest148120%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest148101148109%_))
                  (let ((_%hd148106148126%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest148101148109%_)))
                        (_%tl148107148128%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest148101148109%_))))
                    (let* ((_%super-id148131%_ _%hd148106148126%_)
                           (_%rest148133%_ _%tl148107148128%_))
                      (declare (not safe))
                      (_%K148105148123%_ _%rest148133%_ _%super-id148131%_)))
                  '#!void)))
          (let* ((_%ctor-method148184%_
                  (let ((_%$e148135%_ _%ctor-method148081%_))
                    (if _%$e148135%_
                        _%$e148135%_
                        (let _%lp148138%_ ((_%rest148140%_ _%super148079%_)
                                           (_%method148141%_ '#f))
                          (let* ((_%rest148142148150%_ _%rest148140%_)
                                 (_%else148144148158%_
                                  (lambda () _%method148141%_))
                                 (_%K148146148172%_
                                  (lambda (_%rest148161%_ _%super-id148162%_)
                                    (let* ((_%klass148164%_
                                            (let ((__tmp148805
                                                   (cons '!class
                                                         (cons _%id148078%_
                                                               '()))))
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               __tmp148805
                                               _%super-id148162%_)))
                                           (_%$e148166%_
                                            (##structure-ref
                                             _%klass148164%_
                                             '6
                                             gxc#!class::t
                                             '#f)))
                                      (if _%$e148166%_
                                          ((lambda (_%ctor-method148169%_)
                                             (if _%method148141%_
                                                 (if (eq? _%ctor-method148169%_
                                                          _%method148141%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%lp148138%_
                                                        _%rest148161%_
                                                        _%ctor-method148169%_))
                                                     (let ((__tmp148806
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id148078%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp148806
                _%method148141%_
                _%ctor-method148169%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%lp148138%_
                                                    _%rest148161%_
                                                    _%ctor-method148169%_))))
                                           _%$e148166%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%lp148138%_
                                             _%rest148161%_
                                             _%method148141%_)))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest148142148150%_))
                                (let ((_%hd148147148175%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest148142148150%_)))
                                      (_%tl148148148177%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest148142148150%_))))
                                  (let* ((_%super-id148180%_
                                          _%hd148147148175%_)
                                         (_%rest148182%_ _%tl148148148177%_))
                                    (declare (not safe))
                                    (_%K148146148172%_
                                     _%rest148182%_
                                     _%super-id148180%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else148144148158%_))))))))
                 (_g148807_
                  (let ((__tmp148812
                         (lambda (_%klass-id148186%_)
                           (cons _%klass-id148186%_
                                 (let ((__tmp148813
                                        (let ((__tmp148814
                                               (cons '!class
                                                     (cons _%id148078%_ '()))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           __tmp148814
                                           _%klass-id148186%_))))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp148813
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp148809
                         (lambda (_%klass-id148188%_)
                           (let ((__tmp148810
                                  (let ((__tmp148811
                                         (cons '!class
                                               (cons _%id148078%_ '()))))
                                    (declare (not safe))
                                    (gxc#optimizer-resolve-class
                                     __tmp148811
                                     _%klass-id148188%_))))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp148810
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp148812
                     __tmp148809
                     eq?
                     identity
                     '()
                     _%super148079%_))))
            (begin
              (let ((_g148808_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g148807_)
                           (##vector-length _g148807_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g148808_ 2)))
                    (error "Context expects 2 values" _g148808_)))
              (let ((_%precedence-list148190%_
                     (let () (declare (not safe)) (##vector-ref _g148807_ 0)))
                    (_%base-struct148191%_
                     (let () (declare (not safe)) (##vector-ref _g148807_ 1))))
                (let* ((_%precedence-list148235%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id148078%_ '(t object class)))
                            (let () _%precedence-list148190%_)
                            (if (memq 'object::t _%precedence-list148190%_)
                                (let () _%precedence-list148190%_)
                                (if _%system?148084%_
                                    (let ()
                                      (if (memq 't::t
                                                _%precedence-list148190%_)
                                          _%precedence-list148190%_
                                          (let ()
                                            (declare (not safe))
                                            (##append
                                             _%precedence-list148190%_
                                             '(t::t)))))
                                    (let _%loop148197%_ ((_%tail148199%_
                                                          _%precedence-list148190%_)
                                                         (_%head148200%_ '()))
                                      (let* ((_%tail148201148209%_
                                              _%tail148199%_)
                                             (_%else148203148217%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head148200%_))))
                                             (_%K148205148223%_
                                              (lambda (_%rest148220%_
                                                       _%hd148221%_)
                                                (if (eq? _%hd148221%_ 't::t)
                                                    (let ((__tmp148815
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail148199%_)))
              (declare (not safe))
              (__foldl1 cons __tmp148815 _%head148200%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp148816
                                                           (cons _%hd148221%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%head148200%_)))
              (declare (not safe))
              (_%loop148197%_ _%rest148220%_ __tmp148816))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tail148201148209%_))
                                            (let ((_%hd148206148226%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail148201148209%_)))
                                                  (_%tl148207148228%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail148201148209%_))))
                                              (let* ((_%hd148231%_
                                                      _%hd148206148226%_)
                                                     (_%rest148233%_
                                                      _%tl148207148228%_))
                                                (declare (not safe))
                                                (_%K148205148223%_
                                                 _%rest148233%_
                                                 _%hd148231%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%else148203148217%_)))))))))
                       (_%fields148237%_
                        (let ((__tmp148817
                               (cons '!class (cons _%id148078%_ '()))))
                          (declare (not safe))
                          (gxc#compute-class-fields
                           __tmp148817
                           _%base-struct148191%_
                           _%precedence-list148235%_
                           _%slots148080%_))))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148088%_
                     _%id148078%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148088%_
                     _%super148079%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148088%_
                     _%precedence-list148235%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148088%_
                     _%slots148080%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148088%_
                     _%fields148237%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148088%_
                     _%ctor-method148184%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148088%_
                     _%struct?148082%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148088%_
                     _%final?148083%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148088%_
                     _%metaclass148085%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self148240%_
               _%id148241%_
               _%super148242%_
               _%precedence-list148243%_
               _%slots148244%_
               _%fields148245%_
               _%constructor148246%_
               _%struct?148247%_
               _%final?148248%_
               _%system?148249%_
               _%metaclass148250%_
               _%methods148251%_)
        (let ((_%self148254%_ _%self148240%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148254%_
             _%id148241%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148254%_
             _%super148242%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148254%_
             _%precedence-list148243%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148254%_
             _%slots148244%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148254%_
             _%fields148245%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148254%_
             _%constructor148246%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148254%_
             _%struct?148247%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148254%_
             _%final?148248%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148254%_
             _%metaclass148250%_
             '10
             '#f
             '#f))
          (if _%methods148251%_
              (let ((__tmp148818
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods148251%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self148254%_
                 __tmp148818
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g148820_
        (let ((_g148819_ (let () (declare (not safe)) (##length _g148820_))))
          (cond ((let () (declare (not safe)) (##fx= _g148819_ 9))
                 (apply (lambda (_%self148077%_
                                 _%id148078%_
                                 _%super148079%_
                                 _%slots148080%_
                                 _%ctor-method148081%_
                                 _%struct?148082%_
                                 _%final?148083%_
                                 _%system?148084%_
                                 _%metaclass148085%_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _%self148077%_
                             _%id148078%_
                             _%super148079%_
                             _%slots148080%_
                             _%ctor-method148081%_
                             _%struct?148082%_
                             _%final?148083%_
                             _%system?148084%_
                             _%metaclass148085%_)))
                        _g148820_))
                ((let () (declare (not safe)) (##fx= _g148819_ 12))
                 (apply (lambda (_%self148240%_
                                 _%id148241%_
                                 _%super148242%_
                                 _%precedence-list148243%_
                                 _%slots148244%_
                                 _%fields148245%_
                                 _%constructor148246%_
                                 _%struct?148247%_
                                 _%final?148248%_
                                 _%system?148249%_
                                 _%metaclass148250%_
                                 _%methods148251%_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _%self148240%_
                             _%id148241%_
                             _%super148242%_
                             _%precedence-list148243%_
                             _%slots148244%_
                             _%fields148245%_
                             _%constructor148246%_
                             _%struct?148247%_
                             _%final?148248%_
                             _%system?148249%_
                             _%metaclass148250%_
                             _%methods148251%_)))
                        _g148820_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g148820_))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where147929%_
               _%base-struct147930%_
               _%precedence-list147931%_
               _%direct-slots147932%_)
        (let* ((_%base-fields147934%_
                (if _%base-struct147930%_
                    (let ((__tmp148821
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%where147929%_
                              _%base-struct147930%_))))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp148821 '5 '#f '#f))
                    '()))
               (_%r-fields147936%_ (reverse _%base-fields147934%_))
               (_%seen-slots147944%_
                (let ((_%tab147938%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g147939147941%_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _%tab147938%_ _%g147939147941%_ '#t)))
                   _%base-fields147934%_)
                  _%tab147938%_))
               (_%process-slot147948%_
                (lambda (_%slot147946%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%seen-slots147944%_ _%slot147946%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _%seen-slots147944%_ _%slot147946%_ '#t))
                        (set! _%r-fields147936%_
                              (cons _%slot147946%_ _%r-fields147936%_)))))))
          (for-each
           (lambda (_%mixin147951%_)
             (let ((_%klass147953%_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _%where147929%_
                       _%mixin147951%_))))
               (if (##structure-ref _%klass147953%_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _%process-slot147948%_
                    (##structure-ref _%klass147953%_ '5 gxc#!class::t '#f)))))
           _%precedence-list147931%_)
          (for-each _%process-slot147948%_ _%direct-slots147932%_)
          (let () (declare (not safe)) (##reverse _%r-fields147936%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass147888%_ _%slot147889%_)
        (let _%lp147891%_ ((_%rest147893%_
                            (##structure-ref
                             _%klass147888%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset147894%_ '1))
          (let* ((_%rest147895147903%_ _%rest147893%_)
                 (_%else147897147911%_
                  (lambda ()
                    (let ((__tmp148823
                           (##structure-ref
                            _%klass147888%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp148822
                           (##structure-ref
                            _%klass147888%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp148823
                       __tmp148822
                       _%slot147889%_))))
                 (_%K147899147917%_
                  (lambda (_%rest147914%_ _%s147915%_)
                    (if (eq? _%s147915%_ _%slot147889%_)
                        _%offset147894%_
                        (let ((__tmp148824
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%offset147894%_ '1))))
                          (declare (not safe))
                          (_%lp147891%_ _%rest147914%_ __tmp148824))))))
            (if (let () (declare (not safe)) (##pair? _%rest147895147903%_))
                (let ((_%hd147900147920%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest147895147903%_)))
                      (_%tl147901147922%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest147895147903%_))))
                  (let* ((_%s147925%_ _%hd147900147920%_)
                         (_%rest147927%_ _%tl147901147922%_))
                    (declare (not safe))
                    (_%K147899147917%_ _%rest147927%_ _%s147925%_)))
                (let () (declare (not safe)) (_%else147897147911%_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass147846%_ _%slot147847%_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _%klass147846%_ _%slot147847%_))
            _%klass147846%_
            (let _%lp147849%_ ((_%rest147851%_
                                (##structure-ref
                                 _%klass147846%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest147852147860%_ _%rest147851%_)
                     (_%else147854147868%_ (lambda () '#f))
                     (_%K147856147876%_
                      (lambda (_%rest147871%_ _%super147872%_)
                        (let ((_%super-class147874%_
                               (let ((__tmp148825
                                      (cons '!class-slot-find-struct
                                            (cons (##structure-ref
                                                   _%klass147846%_
                                                   '1
                                                   gxc#!type::t
                                                   '#f)
                                                  (cons _%slot147847%_ '())))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp148825
                                  _%super147872%_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _%super-class147874%_
                                 _%slot147847%_))
                              _%super-class147874%_
                              (let ()
                                (declare (not safe))
                                (_%lp147849%_ _%rest147871%_)))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest147852147860%_))
                    (let ((_%hd147857147879%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest147852147860%_)))
                          (_%tl147858147881%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest147852147860%_))))
                      (let* ((_%super147884%_ _%hd147857147879%_)
                             (_%rest147886%_ _%tl147858147881%_))
                        (declare (not safe))
                        (_%K147856147876%_ _%rest147886%_ _%super147884%_)))
                    (let () (declare (not safe)) (_%else147854147868%_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass147843%_ _%slot147844%_)
        (if (##structure-ref _%klass147843%_ '7 gxc#!class::t '#f)
            (memq _%slot147844%_
                  (##structure-ref _%klass147843%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self147829%_ _%id147830%_)
        (let ((_%self147833%_ _%self147829%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147833%_
             _%id147830%_
             '1
             '#f
             '#f))
          (let ((__tmp148826
                 (let ((__obj148752
                        (let ()
                          (declare (not safe))
                          (##structure gxc#!signature::t '#f '#f '#f '#f))))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148752
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148752
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148752
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj148752)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147833%_
             __tmp148826
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self147693%_ _%id147694%_)
        (let ((_%self147697%_ _%self147693%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147697%_
             _%id147694%_
             '1
             '#f
             '#f))
          (let ((__tmp148827
                 (let ((__obj148753
                        (let ()
                          (declare (not safe))
                          (##structure gxc#!signature::t '#f '#f '#f '#f))))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148753
                      _%id147694%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148753
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj148753)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147697%_
             __tmp148827
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
      (lambda (_%self147555%_ _%id147556%_ _%slot147557%_ _%checked?147558%_)
        (let ((_%self147561%_ _%self147555%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147561%_
             _%id147556%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147561%_
             _%slot147557%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147561%_
             _%checked?147558%_
             '4
             '#f
             '#f))
          (let ((__tmp148828
                 (let ((__obj148754
                        (let ()
                          (declare (not safe))
                          (##structure gxc#!signature::t '#f '#f '#f '#f))))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set! __obj148754 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148754
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp148829 (cons _%id147556%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148754
                      __tmp148829
                      '3
                      '#f
                      '#f))
                   __obj148754)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147561%_
             __tmp148828
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self147417%_ _%id147418%_ _%slot147419%_ _%checked?147420%_)
        (let ((_%self147423%_ _%self147417%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147423%_
             _%id147418%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147423%_
             _%slot147419%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147423%_
             _%checked?147420%_
             '4
             '#f
             '#f))
          (let ((__tmp148830
                 (let ((__obj148755
                        (let ()
                          (declare (not safe))
                          (##structure gxc#!signature::t '#f '#f '#f '#f))))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148755
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148755
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp148831 (cons _%id147418%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148755
                      __tmp148831
                      '3
                      '#f
                      '#f))
                   __obj148755)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147423%_
             __tmp148830
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords147261%_
               _%signature147258147262%_
               _%self147264%_
               _%arity147265%_
               _%dispatch147266%_)
        (let* ((_%signature147268%_
                (if (eq? _%signature147258147262%_ absent-value)
                    '#f
                    _%signature147258147262%_))
               (_%self147271%_ _%self147264%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self147271%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147271%_
             _%arity147265%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147271%_
             _%dispatch147266%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147271%_
             _%signature147268%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords147285%_ . _%args147286%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords147285%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords147285%_
                  'signature:
                  absent-value))
               _%args147286%_)))
    (define gxc#!lambda:::init!
      (lambda _%args147259147292%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args147259147292%_)))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords147102%_
               _%signature147099147103%_
               _%self147105%_
               _%clauses147106%_)
        (let* ((_%signature147108%_
                (if (eq? _%signature147099147103%_ absent-value)
                    '#f
                    _%signature147099147103%_))
               (_%self147111%_ _%self147105%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self147111%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147111%_
             _%signature147108%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147111%_
             _%clauses147106%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords147125%_ . _%args147126%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords147125%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords147125%_
                  'signature:
                  absent-value))
               _%args147126%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args147100147132%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args147100147132%_)))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self146961%_ _%tab146962%_ _%dispatch146963%_)
        (let ((_%self146966%_ _%self146961%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self146966%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146966%_
             _%tab146962%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146966%_
             _%dispatch146963%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self146824%_ _%keys146825%_ _%main146826%_)
        (let ((_%self146829%_ _%self146824%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self146829%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146829%_
             _%keys146825%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146829%_
             _%main146826%_
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
      (lambda (_%self146444%_ _%id146445%_)
        (let ((_%self146448%_ _%self146444%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146448%_
             _%id146445%_
             '1
             '#f
             '#f))
          (let ((__tmp148832
                 (let ((__obj148756
                        (let ()
                          (declare (not safe))
                          (##structure gxc#!signature::t '#f '#f '#f '#f))))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148756
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148756
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148756
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj148756)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146448%_
             __tmp148832
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
      (lambda (_%klass146313%_)
        (let ((_%$e146315%_
               (##structure-ref _%klass146313%_ '11 gxc#!class::t '#f)))
          (if _%$e146315%_
              _%$e146315%_
              (let ((_%tab146319%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass146313%_
                 _%tab146319%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab146319%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass146304%_ _%method146305%_)
        (let ((_%tab146306146308%_
               (##structure-ref _%klass146304%_ '11 gxc#!class::t '#f)))
          (if _%tab146306146308%_
              (let ((_%tab146311%_ _%tab146306146308%_))
                (declare (not safe))
                (hash-get _%tab146311%_ _%method146305%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a146292%_ _%type-b146293%_)
        (if _%type-a146292%_
            (if _%type-b146293%_
                (let ((_%$e146295%_ (eq? _%type-a146292%_ _%type-b146293%_)))
                  (if _%$e146295%_
                      _%$e146295%_
                      (let ((_%$e146298%_
                             (eq? (##structure-ref
                                   _%type-b146293%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e146298%_
                            _%$e146298%_
                            (let ((_%$e146301%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a146292%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b146293%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e146301%_
                                  _%$e146301%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a146292%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b146293%_
                                             'gxc#!class::t))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#!class-subclass?
                                             _%type-a146292%_
                                             _%type-b146293%_))
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a146243%_ _%klass-b146244%_)
        (let ((_%$e146246%_
               (eq? (##structure-ref _%klass-a146243%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b146244%_ '1 gxc#!type::t '#f))))
          (if _%$e146246%_
              _%$e146246%_
              (let ((_%klass-id-b146249%_
                     (##structure-ref _%klass-b146244%_ '1 gxc#!type::t '#f))
                    (_%precedence-list146250%_
                     (##structure-ref _%klass-a146243%_ '3 gxc#!class::t '#f)))
                (let _%loop146252%_ ((_%rest146254%_
                                      _%precedence-list146250%_))
                  (let* ((_%rest146255146263%_ _%rest146254%_)
                         (_%else146257146271%_ (lambda () '#f))
                         (_%K146259146280%_
                          (lambda (_%rest146274%_ _%klass-name146275%_)
                            (let ((_%$e146277%_
                                   (eq? (let ((__tmp148833
                                               (let ((__tmp148834
                                                      (cons 'subclass?
                                                            (cons _%klass-a146243%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%klass-b146244%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp148834
                                                  _%klass-name146275%_))))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp148833
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b146249%_)))
                              (if _%$e146277%_
                                  _%$e146277%_
                                  (let ()
                                    (declare (not safe))
                                    (_%loop146252%_ _%rest146274%_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest146255146263%_))
                        (let ((_%hd146260146283%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest146255146263%_)))
                              (_%tl146261146285%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest146255146263%_))))
                          (let* ((_%klass-name146288%_ _%hd146260146283%_)
                                 (_%rest146290%_ _%tl146261146285%_))
                            (declare (not safe))
                            (_%K146259146280%_
                             _%rest146290%_
                             _%klass-name146288%_)))
                        (let ()
                          (declare (not safe))
                          (_%else146257146271%_))))))))))
    (define gxc#!interface-instance?
      (lambda (_%type146241%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type146241%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (##structure-ref _%type146241%_ '3 gxc#!class::t '#f))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym146223%_ _%type146224%_ _%local?146225%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type146224%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym146223%_
                     _%type146224%_)))
        (let ((__tmp148835
               (let () (declare (not safe)) (struct->list _%type146224%_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym146223%_ '" " __tmp148835))
        (let ((_%table146227%_
               (if _%local?146225%_
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
          (hash-put! _%table146227%_ _%sym146223%_ _%type146224%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym146232%_ _%type146233%_)
        (let ((_%local?146235%_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _%sym146232%_
           _%type146233%_
           _%local?146235%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g148837_
        (let ((_g148836_ (let () (declare (not safe)) (##length _g148837_))))
          (cond ((let () (declare (not safe)) (##fx= _g148836_ 2))
                 (apply (lambda (_%sym146232%_ _%type146233%_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _%sym146232%_
                             _%type146233%_)))
                        _g148837_))
                ((let () (declare (not safe)) (##fx= _g148836_ 3))
                 (apply (lambda (_%sym146237%_ _%type146238%_ _%local?146239%_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _%sym146237%_
                             _%type146238%_
                             _%local?146239%_)))
                        _g148837_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g148837_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym146217%_ _%type146218%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type146218%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym146217%_
                     _%type146218%_)))
        (let ((_%table146220%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp148838
                 (let () (declare (not safe)) (struct->list _%type146218%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym146217%_ '" " __tmp148838))
          (let ()
            (declare (not safe))
            (hash-put! _%table146220%_ _%sym146217%_ _%type146218%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table146220%_ _%type146218%_ _%sym146217%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym146212%_ _%type146213%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type146213%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym146212%_
                     _%type146213%_)))
        (let ((_%table146215%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table146215%_ _%sym146212%_))
              '#!void
              (begin
                (let ((__tmp148839
                       (let ()
                         (declare (not safe))
                         (struct->list _%type146213%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym146212%_
                   '" "
                   __tmp148839))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table146215%_ _%sym146212%_ _%type146213%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table146215%_
                   _%type146213%_
                   _%sym146212%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym146210%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym146210%_))
        (let ((__tmp148840
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp148840 _%sym146210%_))
        (let ((__tmp148841
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp148841 _%sym146210%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t146178%_
               _%method146179%_
               _%sym146180%_
               _%rebind?146181%_)
        (let ((_%klass146183%_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-class _%type-t146178%_))))
          (if _%klass146183%_
              (let* ((_%vtab146185%_
                      (let ()
                        (declare (not safe))
                        (gxc#!class-method-table _%klass146183%_)))
                     (_%$e146187%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab146185%_ _%method146179%_))))
                (if _%$e146187%_
                    ((lambda (_%existing146190%_)
                       (if _%rebind?146181%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t146178%_
                                '" "
                                _%method146179%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab146185%_
                                _%method146179%_
                                _%sym146180%_)))
                           (if (eq? _%existing146190%_ _%sym146180%_)
                               (let () '#!void)
                               (let ((__tmp148842
                                      (cons 'bind-method!
                                            (cons _%type-t146178%_
                                                  (cons _%method146179%_
                                                        (cons _%sym146180%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp148842
                                  _%method146179%_)))))
                     _%$e146187%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t146178%_
                         '" "
                         _%method146179%_
                         '" => "
                         _%sym146180%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab146185%_
                         _%method146179%_
                         _%sym146180%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t146178%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t146199%_ _%method146200%_ _%sym146201%_)
        (let ((_%rebind?146203%_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _%type-t146199%_
           _%method146200%_
           _%sym146201%_
           _%rebind?146203%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g148844_
        (let ((_g148843_ (let () (declare (not safe)) (##length _g148844_))))
          (cond ((let () (declare (not safe)) (##fx= _g148843_ 3))
                 (apply (lambda (_%type-t146199%_
                                 _%method146200%_
                                 _%sym146201%_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _%type-t146199%_
                             _%method146200%_
                             _%sym146201%_)))
                        _g148844_))
                ((let () (declare (not safe)) (##fx= _g148843_ 4))
                 (apply (lambda (_%type-t146205%_
                                 _%method146206%_
                                 _%sym146207%_
                                 _%rebind?146208%_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _%type-t146205%_
                             _%method146206%_
                             _%sym146207%_
                             _%rebind?146208%_)))
                        _g148844_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g148844_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym146166%_)
        (let ((_%$e146174%_
               (let ((_%ht146167146169%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-local-type))))
                 (if _%ht146167146169%_
                     (let ((_%ht146172%_ _%ht146167146169%_))
                       (declare (not safe))
                       (hash-get _%ht146172%_ _%sym146166%_))
                     '#f))))
          (if _%$e146174%_
              _%$e146174%_
              (let ((__tmp148845
                     (##structure-ref
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-optimizer-info))
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp148845 _%sym146166%_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym146158%_)
        (let ((_%type146159146161%_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _%sym146158%_))))
          (if _%type146159146161%_
              (let ((_%type146164%_ _%type146159146161%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type146164%_ 'gxc#!alias::t))
                    (let ((__tmp148846
                           (##structure-ref
                            _%type146164%_
                            '1
                            gxc#!type::t
                            '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp148846))
                    _%type146164%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym146154%_)
        (let ((_%table146156%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table146156%_ _%sym146154%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where146139%_ _%sym146140%_)
        (let ((_%$e146143%_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-class _%sym146140%_))))
          (if _%$e146143%_
              ((lambda (_%g146145146147%_)
                 (let ((_%val146150%_ _%g146145146147%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val146150%_
                          'gxc#!class::t))
                       _%val146150%_
                       (let ()
                         (declare (not safe))
                         (error '"bad cast" gxc#!class::t _%val146150%_)))))
               _%$e146143%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where146139%_
                   _%sym146140%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass146137%_)
        (let ((__tmp148847
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp148847 _%klass146137%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t146134%_ _%method146135%_)
        (let ((__tmp148848
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-class
                  'lookup-method
                  _%type-t146134%_))))
          (declare (not safe))
          (gxc#!class-lookup-method __tmp148848 _%method146135%_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_%sym146132%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _%sym146132%_))
        (let ((__tmp148849
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp148849 _%sym146132%_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym146130%_)
        (let ((__tmp148850
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp148850 _%sym146130%_))))))
