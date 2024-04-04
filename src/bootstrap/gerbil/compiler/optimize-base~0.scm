(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1712269047)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp148757 (list)) (__tmp148756 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp148757
         '(type classes ssxi methods)
         __tmp148756
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args148728%_
        (apply make-instance gxc#optimizer-info::t _%$args148728%_)))
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
      (lambda (_%self148715%_)
        (let ((_%self148718%_ _%self148715%_))
          (if (let ((__tmp148758
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self148718%_))))
                (declare (not safe))
                (##fx< '4 __tmp148758))
              (begin
                (let ((__tmp148759
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self148718%_
                   __tmp148759
                   '1
                   '#f
                   '#f))
                (let ((__tmp148760
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self148718%_
                   __tmp148760
                   '2
                   '#f
                   '#f))
                (let ((__tmp148761
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self148718%_
                   __tmp148761
                   '3
                   '#f
                   '#f))
                (let ((__tmp148762
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self148718%_
                   __tmp148762
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp148763
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self148718%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self148718%_
                       '4
                       __tmp148763))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp148765 (list))
            (__tmp148764
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp148765
         '(id)
         __tmp148764
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args148590%_
        (apply make-instance gxc#!type::t _%$args148590%_)))
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
      (let ((__tmp148767 (list gxc#!type::t))
            (__tmp148766 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp148767
         '()
         __tmp148766
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args148587%_
        (apply make-instance gxc#!abort::t _%$args148587%_)))
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
      (let ((__tmp148769 (list gxc#!type::t))
            (__tmp148768 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp148769
         '()
         __tmp148768
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args148584%_
        (apply make-instance gxc#!alias::t _%$args148584%_)))
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
      (let ((__tmp148771 (list gxc#!type::t))
            (__tmp148770
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp148771
         '(signature)
         __tmp148770
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (__make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _%$args148581%_
        (apply make-instance gxc#!procedure::t _%$args148581%_)))
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
      (let ((__tmp148773 (list))
            (__tmp148772
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked)
                     (print: return effect arguments unchecked)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp148773
         '(return effect arguments unchecked)
         __tmp148772
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args148578%_
        (apply make-instance gxc#!signature::t _%$args148578%_)))
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
      (let ((__tmp148775 (list gxc#!procedure::t))
            (__tmp148774 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp148775
         '()
         __tmp148774
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args148575%_
        (apply make-instance gxc#!primitive-predicate::t _%$args148575%_)))
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
      (let ((__tmp148777 (list gxc#!type::t))
            (__tmp148776 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp148777
         '(class)
         __tmp148776
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args148572%_
        (apply make-instance gxc#!class-meta::t _%$args148572%_)))
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
      (let ((__tmp148779 (list gxc#!type::t))
            (__tmp148778
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
         __tmp148779
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp148778
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args148569%_
        (apply make-instance gxc#!class::t _%$args148569%_)))
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
      (let ((__tmp148781 (list gxc#!procedure::t))
            (__tmp148780 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp148781
         '()
         __tmp148780
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args148566%_
        (apply make-instance gxc#!predicate::t _%$args148566%_)))
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
      (let ((__tmp148783 (list gxc#!procedure::t))
            (__tmp148782 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp148783
         '()
         __tmp148782
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args148563%_
        (apply make-instance gxc#!constructor::t _%$args148563%_)))
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
      (let ((__tmp148785 (list gxc#!procedure::t))
            (__tmp148784 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp148785
         '(slot checked?)
         __tmp148784
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args148560%_
        (apply make-instance gxc#!accessor::t _%$args148560%_)))
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
      (let ((__tmp148787 (list gxc#!procedure::t))
            (__tmp148786 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp148787
         '(slot checked?)
         __tmp148786
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args148557%_
        (apply make-instance gxc#!mutator::t _%$args148557%_)))
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
      (let ((__tmp148789 (list gxc#!type::t))
            (__tmp148788 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp148789
         '(methods)
         __tmp148788
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args148554%_
        (apply make-instance gxc#!interface::t _%$args148554%_)))
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
      (let ((__tmp148791 (list gxc#!procedure::t))
            (__tmp148790
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp148791
         '(arity dispatch inline inline-typedecl)
         __tmp148790
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args148551%_
        (apply make-instance gxc#!lambda::t _%$args148551%_)))
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
      (let ((__tmp148793 (list gxc#!procedure::t))
            (__tmp148792 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp148793
         '(clauses)
         __tmp148792
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args148548%_
        (apply make-instance gxc#!case-lambda::t _%$args148548%_)))
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
      (let ((__tmp148795 (list gxc#!procedure::t))
            (__tmp148794 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp148795
         '(table dispatch)
         __tmp148794
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args148545%_
        (apply make-instance gxc#!kw-lambda::t _%$args148545%_)))
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
      (let ((__tmp148797 (list gxc#!procedure::t))
            (__tmp148796 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp148797
         '(keys main)
         __tmp148796
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args148542%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args148542%_)))
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
      (let ((__tmp148798 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp148798
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args148539%_
        (apply make-instance gxc#!primitive::t _%$args148539%_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp148799 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp148799
         '()
         '((equal:))
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args148536%_
        (apply make-instance gxc#!primitive-lambda::t _%$args148536%_)))
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
      (let ((__tmp148800 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp148800
         '()
         '((equal:))
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args148533%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args148533%_)))
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
      (lambda (_%self148520%_)
        (let ((_%self148523%_ _%self148520%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self148523%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self148384%_ _%klass148385%_)
        (let ((_%self148388%_ _%self148384%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self148388%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148388%_
             _%klass148385%_
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class-meta::t ':init! gxc#!class-meta:::init! '#f))
    (define gxc#!class:::init!__0
      (lambda (_%self148076%_
               _%id148077%_
               _%super148078%_
               _%slots148079%_
               _%ctor-method148080%_
               _%struct?148081%_
               _%final?148082%_
               _%system?148083%_
               _%metaclass148084%_)
        (let ((_%self148087%_ _%self148076%_))
          (let _%lp148097%_ ((_%rest148099%_ _%super148078%_))
            (let* ((_%rest148100148108%_ _%rest148099%_)
                   (_%else148102148116%_ (lambda () '#!void))
                   (_%K148104148122%_
                    (lambda (_%rest148119%_ _%super-id148120%_)
                      (if (let ((__tmp148801
                                 (let ((__tmp148802
                                        (cons '!class
                                              (cons _%id148077%_ '()))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp148802
                                    _%super-id148120%_))))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp148801 '8 '#f '#f))
                          (let ((__tmp148803
                                 (cons '!class (cons _%id148077%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp148803
                             _%super-id148120%_))
                          '#!void)
                      (let ()
                        (declare (not safe))
                        (_%lp148097%_ _%rest148119%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest148100148108%_))
                  (let ((_%hd148105148125%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest148100148108%_)))
                        (_%tl148106148127%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest148100148108%_))))
                    (let* ((_%super-id148130%_ _%hd148105148125%_)
                           (_%rest148132%_ _%tl148106148127%_))
                      (declare (not safe))
                      (_%K148104148122%_ _%rest148132%_ _%super-id148130%_)))
                  '#!void)))
          (let* ((_%ctor-method148183%_
                  (let ((_%$e148134%_ _%ctor-method148080%_))
                    (if _%$e148134%_
                        _%$e148134%_
                        (let _%lp148137%_ ((_%rest148139%_ _%super148078%_)
                                           (_%method148140%_ '#f))
                          (let* ((_%rest148141148149%_ _%rest148139%_)
                                 (_%else148143148157%_
                                  (lambda () _%method148140%_))
                                 (_%K148145148171%_
                                  (lambda (_%rest148160%_ _%super-id148161%_)
                                    (let* ((_%klass148163%_
                                            (let ((__tmp148804
                                                   (cons '!class
                                                         (cons _%id148077%_
                                                               '()))))
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               __tmp148804
                                               _%super-id148161%_)))
                                           (_%$e148165%_
                                            (##structure-ref
                                             _%klass148163%_
                                             '6
                                             gxc#!class::t
                                             '#f)))
                                      (if _%$e148165%_
                                          ((lambda (_%ctor-method148168%_)
                                             (if _%method148140%_
                                                 (if (eq? _%ctor-method148168%_
                                                          _%method148140%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%lp148137%_
                                                        _%rest148160%_
                                                        _%ctor-method148168%_))
                                                     (let ((__tmp148805
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id148077%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp148805
                _%method148140%_
                _%ctor-method148168%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%lp148137%_
                                                    _%rest148160%_
                                                    _%ctor-method148168%_))))
                                           _%$e148165%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%lp148137%_
                                             _%rest148160%_
                                             _%method148140%_)))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest148141148149%_))
                                (let ((_%hd148146148174%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest148141148149%_)))
                                      (_%tl148147148176%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest148141148149%_))))
                                  (let* ((_%super-id148179%_
                                          _%hd148146148174%_)
                                         (_%rest148181%_ _%tl148147148176%_))
                                    (declare (not safe))
                                    (_%K148145148171%_
                                     _%rest148181%_
                                     _%super-id148179%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else148143148157%_))))))))
                 (_g148806_
                  (let ((__tmp148811
                         (lambda (_%klass-id148185%_)
                           (cons _%klass-id148185%_
                                 (let ((__tmp148812
                                        (let ((__tmp148813
                                               (cons '!class
                                                     (cons _%id148077%_ '()))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           __tmp148813
                                           _%klass-id148185%_))))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp148812
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp148808
                         (lambda (_%klass-id148187%_)
                           (let ((__tmp148809
                                  (let ((__tmp148810
                                         (cons '!class
                                               (cons _%id148077%_ '()))))
                                    (declare (not safe))
                                    (gxc#optimizer-resolve-class
                                     __tmp148810
                                     _%klass-id148187%_))))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp148809
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp148811
                     __tmp148808
                     eq?
                     identity
                     '()
                     _%super148078%_))))
            (begin
              (let ((_g148807_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g148806_)
                           (##vector-length _g148806_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g148807_ 2)))
                    (error "Context expects 2 values" _g148807_)))
              (let ((_%precedence-list148189%_
                     (let () (declare (not safe)) (##vector-ref _g148806_ 0)))
                    (_%base-struct148190%_
                     (let () (declare (not safe)) (##vector-ref _g148806_ 1))))
                (let* ((_%precedence-list148234%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id148077%_ '(t object class)))
                            (let () _%precedence-list148189%_)
                            (if (memq 'object::t _%precedence-list148189%_)
                                (let () _%precedence-list148189%_)
                                (if _%system?148083%_
                                    (let ()
                                      (if (memq 't::t
                                                _%precedence-list148189%_)
                                          _%precedence-list148189%_
                                          (let ()
                                            (declare (not safe))
                                            (##append
                                             _%precedence-list148189%_
                                             '(t::t)))))
                                    (let _%loop148196%_ ((_%tail148198%_
                                                          _%precedence-list148189%_)
                                                         (_%head148199%_ '()))
                                      (let* ((_%tail148200148208%_
                                              _%tail148198%_)
                                             (_%else148202148216%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head148199%_))))
                                             (_%K148204148222%_
                                              (lambda (_%rest148219%_
                                                       _%hd148220%_)
                                                (if (eq? _%hd148220%_ 't::t)
                                                    (let ((__tmp148814
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail148198%_)))
              (declare (not safe))
              (__foldl1 cons __tmp148814 _%head148199%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp148815
                                                           (cons _%hd148220%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%head148199%_)))
              (declare (not safe))
              (_%loop148196%_ _%rest148219%_ __tmp148815))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tail148200148208%_))
                                            (let ((_%hd148205148225%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail148200148208%_)))
                                                  (_%tl148206148227%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail148200148208%_))))
                                              (let* ((_%hd148230%_
                                                      _%hd148205148225%_)
                                                     (_%rest148232%_
                                                      _%tl148206148227%_))
                                                (declare (not safe))
                                                (_%K148204148222%_
                                                 _%rest148232%_
                                                 _%hd148230%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%else148202148216%_)))))))))
                       (_%fields148236%_
                        (let ((__tmp148816
                               (cons '!class (cons _%id148077%_ '()))))
                          (declare (not safe))
                          (gxc#compute-class-fields
                           __tmp148816
                           _%base-struct148190%_
                           _%precedence-list148234%_
                           _%slots148079%_))))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148087%_
                     _%id148077%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148087%_
                     _%super148078%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148087%_
                     _%precedence-list148234%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148087%_
                     _%slots148079%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148087%_
                     _%fields148236%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148087%_
                     _%ctor-method148183%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148087%_
                     _%struct?148081%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148087%_
                     _%final?148082%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148087%_
                     _%metaclass148084%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self148239%_
               _%id148240%_
               _%super148241%_
               _%precedence-list148242%_
               _%slots148243%_
               _%fields148244%_
               _%constructor148245%_
               _%struct?148246%_
               _%final?148247%_
               _%system?148248%_
               _%metaclass148249%_
               _%methods148250%_)
        (let ((_%self148253%_ _%self148239%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148253%_
             _%id148240%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148253%_
             _%super148241%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148253%_
             _%precedence-list148242%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148253%_
             _%slots148243%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148253%_
             _%fields148244%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148253%_
             _%constructor148245%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148253%_
             _%struct?148246%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148253%_
             _%final?148247%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148253%_
             _%metaclass148249%_
             '10
             '#f
             '#f))
          (if _%methods148250%_
              (let ((__tmp148817
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods148250%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self148253%_
                 __tmp148817
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g148819_
        (let ((_g148818_ (let () (declare (not safe)) (##length _g148819_))))
          (cond ((let () (declare (not safe)) (##fx= _g148818_ 9))
                 (apply (lambda (_%self148076%_
                                 _%id148077%_
                                 _%super148078%_
                                 _%slots148079%_
                                 _%ctor-method148080%_
                                 _%struct?148081%_
                                 _%final?148082%_
                                 _%system?148083%_
                                 _%metaclass148084%_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _%self148076%_
                             _%id148077%_
                             _%super148078%_
                             _%slots148079%_
                             _%ctor-method148080%_
                             _%struct?148081%_
                             _%final?148082%_
                             _%system?148083%_
                             _%metaclass148084%_)))
                        _g148819_))
                ((let () (declare (not safe)) (##fx= _g148818_ 12))
                 (apply (lambda (_%self148239%_
                                 _%id148240%_
                                 _%super148241%_
                                 _%precedence-list148242%_
                                 _%slots148243%_
                                 _%fields148244%_
                                 _%constructor148245%_
                                 _%struct?148246%_
                                 _%final?148247%_
                                 _%system?148248%_
                                 _%metaclass148249%_
                                 _%methods148250%_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _%self148239%_
                             _%id148240%_
                             _%super148241%_
                             _%precedence-list148242%_
                             _%slots148243%_
                             _%fields148244%_
                             _%constructor148245%_
                             _%struct?148246%_
                             _%final?148247%_
                             _%system?148248%_
                             _%metaclass148249%_
                             _%methods148250%_)))
                        _g148819_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g148819_))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where147928%_
               _%base-struct147929%_
               _%precedence-list147930%_
               _%direct-slots147931%_)
        (let* ((_%base-fields147933%_
                (if _%base-struct147929%_
                    (let ((__tmp148820
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%where147928%_
                              _%base-struct147929%_))))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp148820 '5 '#f '#f))
                    '()))
               (_%r-fields147935%_ (reverse _%base-fields147933%_))
               (_%seen-slots147943%_
                (let ((_%tab147937%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g147938147940%_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _%tab147937%_ _%g147938147940%_ '#t)))
                   _%base-fields147933%_)
                  _%tab147937%_))
               (_%process-slot147947%_
                (lambda (_%slot147945%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%seen-slots147943%_ _%slot147945%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _%seen-slots147943%_ _%slot147945%_ '#t))
                        (set! _%r-fields147935%_
                              (cons _%slot147945%_ _%r-fields147935%_)))))))
          (for-each
           (lambda (_%mixin147950%_)
             (let ((_%klass147952%_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _%where147928%_
                       _%mixin147950%_))))
               (if (##structure-ref _%klass147952%_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _%process-slot147947%_
                    (##structure-ref _%klass147952%_ '5 gxc#!class::t '#f)))))
           _%precedence-list147930%_)
          (for-each _%process-slot147947%_ _%direct-slots147931%_)
          (let () (declare (not safe)) (##reverse _%r-fields147935%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass147887%_ _%slot147888%_)
        (let _%lp147890%_ ((_%rest147892%_
                            (##structure-ref
                             _%klass147887%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset147893%_ '1))
          (let* ((_%rest147894147902%_ _%rest147892%_)
                 (_%else147896147910%_
                  (lambda ()
                    (let ((__tmp148822
                           (##structure-ref
                            _%klass147887%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp148821
                           (##structure-ref
                            _%klass147887%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp148822
                       __tmp148821
                       _%slot147888%_))))
                 (_%K147898147916%_
                  (lambda (_%rest147913%_ _%s147914%_)
                    (if (eq? _%s147914%_ _%slot147888%_)
                        _%offset147893%_
                        (let ((__tmp148823
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%offset147893%_ '1))))
                          (declare (not safe))
                          (_%lp147890%_ _%rest147913%_ __tmp148823))))))
            (if (let () (declare (not safe)) (##pair? _%rest147894147902%_))
                (let ((_%hd147899147919%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest147894147902%_)))
                      (_%tl147900147921%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest147894147902%_))))
                  (let* ((_%s147924%_ _%hd147899147919%_)
                         (_%rest147926%_ _%tl147900147921%_))
                    (declare (not safe))
                    (_%K147898147916%_ _%rest147926%_ _%s147924%_)))
                (let () (declare (not safe)) (_%else147896147910%_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass147845%_ _%slot147846%_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _%klass147845%_ _%slot147846%_))
            _%klass147845%_
            (let _%lp147848%_ ((_%rest147850%_
                                (##structure-ref
                                 _%klass147845%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest147851147859%_ _%rest147850%_)
                     (_%else147853147867%_ (lambda () '#f))
                     (_%K147855147875%_
                      (lambda (_%rest147870%_ _%super147871%_)
                        (let ((_%super-class147873%_
                               (let ((__tmp148824
                                      (cons '!class-slot-find-struct
                                            (cons (##structure-ref
                                                   _%klass147845%_
                                                   '1
                                                   gxc#!type::t
                                                   '#f)
                                                  (cons _%slot147846%_ '())))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp148824
                                  _%super147871%_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _%super-class147873%_
                                 _%slot147846%_))
                              _%super-class147873%_
                              (let ()
                                (declare (not safe))
                                (_%lp147848%_ _%rest147870%_)))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest147851147859%_))
                    (let ((_%hd147856147878%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest147851147859%_)))
                          (_%tl147857147880%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest147851147859%_))))
                      (let* ((_%super147883%_ _%hd147856147878%_)
                             (_%rest147885%_ _%tl147857147880%_))
                        (declare (not safe))
                        (_%K147855147875%_ _%rest147885%_ _%super147883%_)))
                    (let () (declare (not safe)) (_%else147853147867%_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass147842%_ _%slot147843%_)
        (if (##structure-ref _%klass147842%_ '7 gxc#!class::t '#f)
            (memq _%slot147843%_
                  (##structure-ref _%klass147842%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self147828%_ _%id147829%_)
        (let ((_%self147832%_ _%self147828%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147832%_
             _%id147829%_
             '1
             '#f
             '#f))
          (let ((__tmp148825
                 (let ((__obj148751
                        (let ()
                          (declare (not safe))
                          (##structure gxc#!signature::t '#f '#f '#f '#f))))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148751
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148751
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148751
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj148751)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147832%_
             __tmp148825
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self147692%_ _%id147693%_)
        (let ((_%self147696%_ _%self147692%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147696%_
             _%id147693%_
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
                      _%id147693%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148752
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj148752)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147696%_
             __tmp148826
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
      (lambda (_%self147554%_ _%id147555%_ _%slot147556%_ _%checked?147557%_)
        (let ((_%self147560%_ _%self147554%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147560%_
             _%id147555%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147560%_
             _%slot147556%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147560%_
             _%checked?147557%_
             '4
             '#f
             '#f))
          (let ((__tmp148827
                 (let ((__obj148753
                        (let ()
                          (declare (not safe))
                          (##structure gxc#!signature::t '#f '#f '#f '#f))))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set! __obj148753 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148753
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp148828 (cons _%id147555%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148753
                      __tmp148828
                      '3
                      '#f
                      '#f))
                   __obj148753)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147560%_
             __tmp148827
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self147416%_ _%id147417%_ _%slot147418%_ _%checked?147419%_)
        (let ((_%self147422%_ _%self147416%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147422%_
             _%id147417%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147422%_
             _%slot147418%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147422%_
             _%checked?147419%_
             '4
             '#f
             '#f))
          (let ((__tmp148829
                 (let ((__obj148754
                        (let ()
                          (declare (not safe))
                          (##structure gxc#!signature::t '#f '#f '#f '#f))))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148754
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148754
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp148830 (cons _%id147417%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148754
                      __tmp148830
                      '3
                      '#f
                      '#f))
                   __obj148754)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147422%_
             __tmp148829
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords147260%_
               _%signature147257147261%_
               _%self147263%_
               _%arity147264%_
               _%dispatch147265%_)
        (let* ((_%signature147267%_
                (if (eq? _%signature147257147261%_ absent-value)
                    '#f
                    _%signature147257147261%_))
               (_%self147270%_ _%self147263%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self147270%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147270%_
             _%arity147264%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147270%_
             _%dispatch147265%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147270%_
             _%signature147267%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords147284%_ . _%args147285%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords147284%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords147284%_
                  'signature:
                  absent-value))
               _%args147285%_)))
    (define gxc#!lambda:::init!
      (lambda _%args147258147291%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args147258147291%_)))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords147101%_
               _%signature147098147102%_
               _%self147104%_
               _%clauses147105%_)
        (let* ((_%signature147107%_
                (if (eq? _%signature147098147102%_ absent-value)
                    '#f
                    _%signature147098147102%_))
               (_%self147110%_ _%self147104%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self147110%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147110%_
             _%signature147107%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147110%_
             _%clauses147105%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords147124%_ . _%args147125%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords147124%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords147124%_
                  'signature:
                  absent-value))
               _%args147125%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args147099147131%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args147099147131%_)))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self146960%_ _%tab146961%_ _%dispatch146962%_)
        (let ((_%self146965%_ _%self146960%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self146965%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146965%_
             _%tab146961%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146965%_
             _%dispatch146962%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self146823%_ _%keys146824%_ _%main146825%_)
        (let ((_%self146828%_ _%self146823%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self146828%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146828%_
             _%keys146824%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146828%_
             _%main146825%_
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
      (lambda (_%self146443%_ _%id146444%_)
        (let ((_%self146447%_ _%self146443%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146447%_
             _%id146444%_
             '1
             '#f
             '#f))
          (let ((__tmp148831
                 (let ((__obj148755
                        (let ()
                          (declare (not safe))
                          (##structure gxc#!signature::t '#f '#f '#f '#f))))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148755
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148755
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148755
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj148755)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146447%_
             __tmp148831
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
      (lambda (_%klass146312%_)
        (let ((_%$e146314%_
               (##structure-ref _%klass146312%_ '11 gxc#!class::t '#f)))
          (if _%$e146314%_
              _%$e146314%_
              (let ((_%tab146318%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass146312%_
                 _%tab146318%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab146318%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass146303%_ _%method146304%_)
        (let ((_%tab146305146307%_
               (##structure-ref _%klass146303%_ '11 gxc#!class::t '#f)))
          (if _%tab146305146307%_
              (let ((_%tab146310%_ _%tab146305146307%_))
                (declare (not safe))
                (hash-get _%tab146310%_ _%method146304%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a146291%_ _%type-b146292%_)
        (if _%type-a146291%_
            (if _%type-b146292%_
                (let ((_%$e146294%_ (eq? _%type-a146291%_ _%type-b146292%_)))
                  (if _%$e146294%_
                      _%$e146294%_
                      (let ((_%$e146297%_
                             (eq? (##structure-ref
                                   _%type-b146292%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e146297%_
                            _%$e146297%_
                            (let ((_%$e146300%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a146291%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b146292%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e146300%_
                                  _%$e146300%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a146291%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b146292%_
                                             'gxc#!class::t))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#!class-subclass?
                                             _%type-a146291%_
                                             _%type-b146292%_))
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a146242%_ _%klass-b146243%_)
        (let ((_%$e146245%_
               (eq? (##structure-ref _%klass-a146242%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b146243%_ '1 gxc#!type::t '#f))))
          (if _%$e146245%_
              _%$e146245%_
              (let ((_%klass-id-b146248%_
                     (##structure-ref _%klass-b146243%_ '1 gxc#!type::t '#f))
                    (_%precedence-list146249%_
                     (##structure-ref _%klass-a146242%_ '3 gxc#!class::t '#f)))
                (let _%loop146251%_ ((_%rest146253%_
                                      _%precedence-list146249%_))
                  (let* ((_%rest146254146262%_ _%rest146253%_)
                         (_%else146256146270%_ (lambda () '#f))
                         (_%K146258146279%_
                          (lambda (_%rest146273%_ _%klass-name146274%_)
                            (let ((_%$e146276%_
                                   (eq? (let ((__tmp148832
                                               (let ((__tmp148833
                                                      (cons 'subclass?
                                                            (cons _%klass-a146242%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%klass-b146243%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp148833
                                                  _%klass-name146274%_))))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp148832
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b146248%_)))
                              (if _%$e146276%_
                                  _%$e146276%_
                                  (let ()
                                    (declare (not safe))
                                    (_%loop146251%_ _%rest146273%_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest146254146262%_))
                        (let ((_%hd146259146282%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest146254146262%_)))
                              (_%tl146260146284%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest146254146262%_))))
                          (let* ((_%klass-name146287%_ _%hd146259146282%_)
                                 (_%rest146289%_ _%tl146260146284%_))
                            (declare (not safe))
                            (_%K146258146279%_
                             _%rest146289%_
                             _%klass-name146287%_)))
                        (let ()
                          (declare (not safe))
                          (_%else146256146270%_))))))))))
    (define gxc#!interface-instance?
      (lambda (_%type146240%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type146240%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (##structure-ref _%type146240%_ '3 gxc#!class::t '#f))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym146222%_ _%type146223%_ _%local?146224%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type146223%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym146222%_
                     _%type146223%_)))
        (let ((__tmp148834
               (let () (declare (not safe)) (struct->list _%type146223%_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym146222%_ '" " __tmp148834))
        (let ((_%table146226%_
               (if _%local?146224%_
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
          (hash-put! _%table146226%_ _%sym146222%_ _%type146223%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym146231%_ _%type146232%_)
        (let ((_%local?146234%_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _%sym146231%_
           _%type146232%_
           _%local?146234%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g148836_
        (let ((_g148835_ (let () (declare (not safe)) (##length _g148836_))))
          (cond ((let () (declare (not safe)) (##fx= _g148835_ 2))
                 (apply (lambda (_%sym146231%_ _%type146232%_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _%sym146231%_
                             _%type146232%_)))
                        _g148836_))
                ((let () (declare (not safe)) (##fx= _g148835_ 3))
                 (apply (lambda (_%sym146236%_ _%type146237%_ _%local?146238%_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _%sym146236%_
                             _%type146237%_
                             _%local?146238%_)))
                        _g148836_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g148836_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym146216%_ _%type146217%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type146217%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym146216%_
                     _%type146217%_)))
        (let ((_%table146219%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp148837
                 (let () (declare (not safe)) (struct->list _%type146217%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym146216%_ '" " __tmp148837))
          (let ()
            (declare (not safe))
            (hash-put! _%table146219%_ _%sym146216%_ _%type146217%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table146219%_ _%type146217%_ _%sym146216%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym146211%_ _%type146212%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type146212%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym146211%_
                     _%type146212%_)))
        (let ((_%table146214%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table146214%_ _%sym146211%_))
              '#!void
              (begin
                (let ((__tmp148838
                       (let ()
                         (declare (not safe))
                         (struct->list _%type146212%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym146211%_
                   '" "
                   __tmp148838))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table146214%_ _%sym146211%_ _%type146212%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table146214%_
                   _%type146212%_
                   _%sym146211%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym146209%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym146209%_))
        (let ((__tmp148839
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp148839 _%sym146209%_))
        (let ((__tmp148840
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp148840 _%sym146209%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t146177%_
               _%method146178%_
               _%sym146179%_
               _%rebind?146180%_)
        (let ((_%klass146182%_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-class _%type-t146177%_))))
          (if _%klass146182%_
              (let* ((_%vtab146184%_
                      (let ()
                        (declare (not safe))
                        (gxc#!class-method-table _%klass146182%_)))
                     (_%$e146186%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab146184%_ _%method146178%_))))
                (if _%$e146186%_
                    ((lambda (_%existing146189%_)
                       (if _%rebind?146180%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t146177%_
                                '" "
                                _%method146178%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab146184%_
                                _%method146178%_
                                _%sym146179%_)))
                           (if (eq? _%existing146189%_ _%sym146179%_)
                               (let () '#!void)
                               (let ((__tmp148841
                                      (cons 'bind-method!
                                            (cons _%type-t146177%_
                                                  (cons _%method146178%_
                                                        (cons _%sym146179%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp148841
                                  _%method146178%_)))))
                     _%$e146186%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t146177%_
                         '" "
                         _%method146178%_
                         '" => "
                         _%sym146179%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab146184%_
                         _%method146178%_
                         _%sym146179%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t146177%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t146198%_ _%method146199%_ _%sym146200%_)
        (let ((_%rebind?146202%_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _%type-t146198%_
           _%method146199%_
           _%sym146200%_
           _%rebind?146202%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g148843_
        (let ((_g148842_ (let () (declare (not safe)) (##length _g148843_))))
          (cond ((let () (declare (not safe)) (##fx= _g148842_ 3))
                 (apply (lambda (_%type-t146198%_
                                 _%method146199%_
                                 _%sym146200%_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _%type-t146198%_
                             _%method146199%_
                             _%sym146200%_)))
                        _g148843_))
                ((let () (declare (not safe)) (##fx= _g148842_ 4))
                 (apply (lambda (_%type-t146204%_
                                 _%method146205%_
                                 _%sym146206%_
                                 _%rebind?146207%_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _%type-t146204%_
                             _%method146205%_
                             _%sym146206%_
                             _%rebind?146207%_)))
                        _g148843_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g148843_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym146165%_)
        (let ((_%$e146173%_
               (let ((_%ht146166146168%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-local-type))))
                 (if _%ht146166146168%_
                     (let ((_%ht146171%_ _%ht146166146168%_))
                       (declare (not safe))
                       (hash-get _%ht146171%_ _%sym146165%_))
                     '#f))))
          (if _%$e146173%_
              _%$e146173%_
              (let ((__tmp148844
                     (##structure-ref
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-optimizer-info))
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp148844 _%sym146165%_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym146157%_)
        (let ((_%type146158146160%_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _%sym146157%_))))
          (if _%type146158146160%_
              (let ((_%type146163%_ _%type146158146160%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type146163%_ 'gxc#!alias::t))
                    (let ((__tmp148845
                           (##structure-ref
                            _%type146163%_
                            '1
                            gxc#!type::t
                            '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp148845))
                    _%type146163%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym146153%_)
        (let ((_%table146155%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table146155%_ _%sym146153%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where146138%_ _%sym146139%_)
        (let ((_%$e146142%_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-class _%sym146139%_))))
          (if _%$e146142%_
              ((lambda (_%g146144146146%_)
                 (let ((_%val146149%_ _%g146144146146%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val146149%_
                          'gxc#!class::t))
                       _%val146149%_
                       (let ()
                         (declare (not safe))
                         (error '"bad cast" gxc#!class::t _%val146149%_)))))
               _%$e146142%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where146138%_
                   _%sym146139%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass146136%_)
        (let ((__tmp148846
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp148846 _%klass146136%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t146133%_ _%method146134%_)
        (let ((__tmp148847
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-class
                  'lookup-method
                  _%type-t146133%_))))
          (declare (not safe))
          (gxc#!class-lookup-method __tmp148847 _%method146134%_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_%sym146131%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _%sym146131%_))
        (let ((__tmp148848
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp148848 _%sym146131%_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym146129%_)
        (let ((__tmp148849
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp148849 _%sym146129%_))))))
