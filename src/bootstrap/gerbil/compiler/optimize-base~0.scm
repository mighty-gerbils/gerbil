(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1712262515)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp148831 (list)) (__tmp148830 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp148831
         '(type classes ssxi methods)
         __tmp148830
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args148802%_
        (apply make-instance gxc#optimizer-info::t _%$args148802%_)))
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
      (lambda (_%self148789%_)
        (let ((_%self148792%_ _%self148789%_))
          (if (let ((__tmp148832
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self148792%_))))
                (declare (not safe))
                (##fx< '4 __tmp148832))
              (begin
                (let ((__tmp148833
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self148792%_
                   __tmp148833
                   '1
                   '#f
                   '#f))
                (let ((__tmp148834
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self148792%_
                   __tmp148834
                   '2
                   '#f
                   '#f))
                (let ((__tmp148835
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self148792%_
                   __tmp148835
                   '3
                   '#f
                   '#f))
                (let ((__tmp148836
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self148792%_
                   __tmp148836
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp148837
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self148792%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self148792%_
                       '4
                       __tmp148837))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp148839 (list))
            (__tmp148838
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp148839
         '(id)
         __tmp148838
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args148664%_
        (apply make-instance gxc#!type::t _%$args148664%_)))
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
      (let ((__tmp148841 (list gxc#!type::t))
            (__tmp148840 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp148841
         '()
         __tmp148840
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args148661%_
        (apply make-instance gxc#!abort::t _%$args148661%_)))
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
      (let ((__tmp148843 (list gxc#!type::t))
            (__tmp148842 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp148843
         '()
         __tmp148842
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args148658%_
        (apply make-instance gxc#!alias::t _%$args148658%_)))
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
      (let ((__tmp148845 (list gxc#!type::t))
            (__tmp148844
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp148845
         '(signature)
         __tmp148844
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (__make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _%$args148655%_
        (apply make-instance gxc#!procedure::t _%$args148655%_)))
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
      (let ((__tmp148847 (list))
            (__tmp148846
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked)
                     (print: return effect arguments unchecked)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp148847
         '(return effect arguments unchecked)
         __tmp148846
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args148652%_
        (apply make-instance gxc#!signature::t _%$args148652%_)))
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
      (let ((__tmp148849 (list gxc#!procedure::t))
            (__tmp148848 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp148849
         '()
         __tmp148848
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args148649%_
        (apply make-instance gxc#!primitive-predicate::t _%$args148649%_)))
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
      (let ((__tmp148851 (list gxc#!type::t))
            (__tmp148850 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp148851
         '(class)
         __tmp148850
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args148646%_
        (apply make-instance gxc#!class-meta::t _%$args148646%_)))
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
      (let ((__tmp148853 (list gxc#!type::t))
            (__tmp148852
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
         __tmp148853
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp148852
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args148643%_
        (apply make-instance gxc#!class::t _%$args148643%_)))
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
      (let ((__tmp148855 (list gxc#!procedure::t))
            (__tmp148854 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp148855
         '()
         __tmp148854
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args148640%_
        (apply make-instance gxc#!predicate::t _%$args148640%_)))
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
      (let ((__tmp148857 (list gxc#!procedure::t))
            (__tmp148856 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp148857
         '()
         __tmp148856
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args148637%_
        (apply make-instance gxc#!constructor::t _%$args148637%_)))
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
      (let ((__tmp148859 (list gxc#!procedure::t))
            (__tmp148858 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp148859
         '(slot checked?)
         __tmp148858
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args148634%_
        (apply make-instance gxc#!accessor::t _%$args148634%_)))
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
      (let ((__tmp148861 (list gxc#!procedure::t))
            (__tmp148860 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp148861
         '(slot checked?)
         __tmp148860
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args148631%_
        (apply make-instance gxc#!mutator::t _%$args148631%_)))
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
      (let ((__tmp148863 (list gxc#!type::t))
            (__tmp148862 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp148863
         '(methods)
         __tmp148862
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args148628%_
        (apply make-instance gxc#!interface::t _%$args148628%_)))
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
      (let ((__tmp148865 (list gxc#!procedure::t))
            (__tmp148864
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp148865
         '(arity dispatch inline inline-typedecl)
         __tmp148864
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args148625%_
        (apply make-instance gxc#!lambda::t _%$args148625%_)))
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
      (let ((__tmp148867 (list gxc#!procedure::t))
            (__tmp148866 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp148867
         '(clauses)
         __tmp148866
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args148622%_
        (apply make-instance gxc#!case-lambda::t _%$args148622%_)))
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
      (let ((__tmp148869 (list gxc#!procedure::t))
            (__tmp148868 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp148869
         '(table dispatch)
         __tmp148868
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args148619%_
        (apply make-instance gxc#!kw-lambda::t _%$args148619%_)))
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
      (let ((__tmp148871 (list gxc#!procedure::t))
            (__tmp148870 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp148871
         '(keys main)
         __tmp148870
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args148616%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args148616%_)))
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
      (let ((__tmp148872 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp148872
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args148613%_
        (apply make-instance gxc#!primitive::t _%$args148613%_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp148873 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp148873
         '()
         '((equal:))
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args148610%_
        (apply make-instance gxc#!primitive-lambda::t _%$args148610%_)))
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
      (let ((__tmp148874 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp148874
         '()
         '((equal:))
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args148607%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args148607%_)))
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
      (lambda (_%self148594%_)
        (let ((_%self148597%_ _%self148594%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self148597%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self148458%_ _%klass148459%_)
        (let ((_%self148462%_ _%self148458%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self148462%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148462%_
             _%klass148459%_
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class-meta::t ':init! gxc#!class-meta:::init! '#f))
    (define gxc#!class:::init!__0
      (lambda (_%self148150%_
               _%id148151%_
               _%super148152%_
               _%slots148153%_
               _%ctor-method148154%_
               _%struct?148155%_
               _%final?148156%_
               _%system?148157%_
               _%metaclass148158%_)
        (let ((_%self148161%_ _%self148150%_))
          (let _%lp148171%_ ((_%rest148173%_ _%super148152%_))
            (let* ((_%rest148174148182%_ _%rest148173%_)
                   (_%else148176148190%_ (lambda () '#!void))
                   (_%K148178148196%_
                    (lambda (_%rest148193%_ _%super-id148194%_)
                      (if (let ((__tmp148875
                                 (let ((__tmp148876
                                        (cons '!class
                                              (cons _%id148151%_ '()))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp148876
                                    _%super-id148194%_))))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp148875 '8 '#f '#f))
                          (let ((__tmp148877
                                 (cons '!class (cons _%id148151%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp148877
                             _%super-id148194%_))
                          '#!void)
                      (let ()
                        (declare (not safe))
                        (_%lp148171%_ _%rest148193%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest148174148182%_))
                  (let ((_%hd148179148199%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest148174148182%_)))
                        (_%tl148180148201%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest148174148182%_))))
                    (let* ((_%super-id148204%_ _%hd148179148199%_)
                           (_%rest148206%_ _%tl148180148201%_))
                      (declare (not safe))
                      (_%K148178148196%_ _%rest148206%_ _%super-id148204%_)))
                  '#!void)))
          (let* ((_%ctor-method148257%_
                  (let ((_%$e148208%_ _%ctor-method148154%_))
                    (if _%$e148208%_
                        _%$e148208%_
                        (let _%lp148211%_ ((_%rest148213%_ _%super148152%_)
                                           (_%method148214%_ '#f))
                          (let* ((_%rest148215148223%_ _%rest148213%_)
                                 (_%else148217148231%_
                                  (lambda () _%method148214%_))
                                 (_%K148219148245%_
                                  (lambda (_%rest148234%_ _%super-id148235%_)
                                    (let* ((_%klass148237%_
                                            (let ((__tmp148878
                                                   (cons '!class
                                                         (cons _%id148151%_
                                                               '()))))
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               __tmp148878
                                               _%super-id148235%_)))
                                           (_%$e148239%_
                                            (##structure-ref
                                             _%klass148237%_
                                             '6
                                             gxc#!class::t
                                             '#f)))
                                      (if _%$e148239%_
                                          ((lambda (_%ctor-method148242%_)
                                             (if _%method148214%_
                                                 (if (eq? _%ctor-method148242%_
                                                          _%method148214%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%lp148211%_
                                                        _%rest148234%_
                                                        _%ctor-method148242%_))
                                                     (let ((__tmp148879
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id148151%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp148879
                _%method148214%_
                _%ctor-method148242%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%lp148211%_
                                                    _%rest148234%_
                                                    _%ctor-method148242%_))))
                                           _%$e148239%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%lp148211%_
                                             _%rest148234%_
                                             _%method148214%_)))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest148215148223%_))
                                (let ((_%hd148220148248%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest148215148223%_)))
                                      (_%tl148221148250%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest148215148223%_))))
                                  (let* ((_%super-id148253%_
                                          _%hd148220148248%_)
                                         (_%rest148255%_ _%tl148221148250%_))
                                    (declare (not safe))
                                    (_%K148219148245%_
                                     _%rest148255%_
                                     _%super-id148253%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else148217148231%_))))))))
                 (_g148880_
                  (let ((__tmp148885
                         (lambda (_%klass-id148259%_)
                           (cons _%klass-id148259%_
                                 (let ((__tmp148886
                                        (let ((__tmp148887
                                               (cons '!class
                                                     (cons _%id148151%_ '()))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           __tmp148887
                                           _%klass-id148259%_))))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp148886
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp148882
                         (lambda (_%klass-id148261%_)
                           (let ((__tmp148883
                                  (let ((__tmp148884
                                         (cons '!class
                                               (cons _%id148151%_ '()))))
                                    (declare (not safe))
                                    (gxc#optimizer-resolve-class
                                     __tmp148884
                                     _%klass-id148261%_))))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp148883
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp148885
                     __tmp148882
                     eq?
                     identity
                     '()
                     _%super148152%_))))
            (begin
              (let ((_g148881_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g148880_)
                           (##vector-length _g148880_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g148881_ 2)))
                    (error "Context expects 2 values" _g148881_)))
              (let ((_%precedence-list148263%_
                     (let () (declare (not safe)) (##vector-ref _g148880_ 0)))
                    (_%base-struct148264%_
                     (let () (declare (not safe)) (##vector-ref _g148880_ 1))))
                (let* ((_%precedence-list148308%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id148151%_ '(t object class)))
                            (let () _%precedence-list148263%_)
                            (if (memq 'object::t _%precedence-list148263%_)
                                (let () _%precedence-list148263%_)
                                (if _%system?148157%_
                                    (let ()
                                      (if (memq 't::t
                                                _%precedence-list148263%_)
                                          _%precedence-list148263%_
                                          (let ()
                                            (declare (not safe))
                                            (##append
                                             _%precedence-list148263%_
                                             '(t::t)))))
                                    (let _%loop148270%_ ((_%tail148272%_
                                                          _%precedence-list148263%_)
                                                         (_%head148273%_ '()))
                                      (let* ((_%tail148274148282%_
                                              _%tail148272%_)
                                             (_%else148276148290%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head148273%_))))
                                             (_%K148278148296%_
                                              (lambda (_%rest148293%_
                                                       _%hd148294%_)
                                                (if (eq? _%hd148294%_ 't::t)
                                                    (let ((__tmp148888
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail148272%_)))
              (declare (not safe))
              (__foldl1 cons __tmp148888 _%head148273%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp148889
                                                           (cons _%hd148294%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%head148273%_)))
              (declare (not safe))
              (_%loop148270%_ _%rest148293%_ __tmp148889))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tail148274148282%_))
                                            (let ((_%hd148279148299%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail148274148282%_)))
                                                  (_%tl148280148301%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail148274148282%_))))
                                              (let* ((_%hd148304%_
                                                      _%hd148279148299%_)
                                                     (_%rest148306%_
                                                      _%tl148280148301%_))
                                                (declare (not safe))
                                                (_%K148278148296%_
                                                 _%rest148306%_
                                                 _%hd148304%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%else148276148290%_)))))))))
                       (_%fields148310%_
                        (let ((__tmp148890
                               (cons '!class (cons _%id148151%_ '()))))
                          (declare (not safe))
                          (gxc#compute-class-fields
                           __tmp148890
                           _%base-struct148264%_
                           _%precedence-list148308%_
                           _%slots148153%_))))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148161%_
                     _%id148151%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148161%_
                     _%super148152%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148161%_
                     _%precedence-list148308%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148161%_
                     _%slots148153%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148161%_
                     _%fields148310%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148161%_
                     _%ctor-method148257%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148161%_
                     _%struct?148155%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148161%_
                     _%final?148156%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148161%_
                     _%metaclass148158%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self148313%_
               _%id148314%_
               _%super148315%_
               _%precedence-list148316%_
               _%slots148317%_
               _%fields148318%_
               _%constructor148319%_
               _%struct?148320%_
               _%final?148321%_
               _%system?148322%_
               _%metaclass148323%_
               _%methods148324%_)
        (let ((_%self148327%_ _%self148313%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148327%_
             _%id148314%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148327%_
             _%super148315%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148327%_
             _%precedence-list148316%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148327%_
             _%slots148317%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148327%_
             _%fields148318%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148327%_
             _%constructor148319%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148327%_
             _%struct?148320%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148327%_
             _%final?148321%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148327%_
             _%metaclass148323%_
             '10
             '#f
             '#f))
          (if _%methods148324%_
              (let ((__tmp148891
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods148324%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self148327%_
                 __tmp148891
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g148893_
        (let ((_g148892_ (let () (declare (not safe)) (##length _g148893_))))
          (cond ((let () (declare (not safe)) (##fx= _g148892_ 9))
                 (apply (lambda (_%self148150%_
                                 _%id148151%_
                                 _%super148152%_
                                 _%slots148153%_
                                 _%ctor-method148154%_
                                 _%struct?148155%_
                                 _%final?148156%_
                                 _%system?148157%_
                                 _%metaclass148158%_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _%self148150%_
                             _%id148151%_
                             _%super148152%_
                             _%slots148153%_
                             _%ctor-method148154%_
                             _%struct?148155%_
                             _%final?148156%_
                             _%system?148157%_
                             _%metaclass148158%_)))
                        _g148893_))
                ((let () (declare (not safe)) (##fx= _g148892_ 12))
                 (apply (lambda (_%self148313%_
                                 _%id148314%_
                                 _%super148315%_
                                 _%precedence-list148316%_
                                 _%slots148317%_
                                 _%fields148318%_
                                 _%constructor148319%_
                                 _%struct?148320%_
                                 _%final?148321%_
                                 _%system?148322%_
                                 _%metaclass148323%_
                                 _%methods148324%_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _%self148313%_
                             _%id148314%_
                             _%super148315%_
                             _%precedence-list148316%_
                             _%slots148317%_
                             _%fields148318%_
                             _%constructor148319%_
                             _%struct?148320%_
                             _%final?148321%_
                             _%system?148322%_
                             _%metaclass148323%_
                             _%methods148324%_)))
                        _g148893_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g148893_))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where148002%_
               _%base-struct148003%_
               _%precedence-list148004%_
               _%direct-slots148005%_)
        (let* ((_%base-fields148007%_
                (if _%base-struct148003%_
                    (let ((__tmp148894
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%where148002%_
                              _%base-struct148003%_))))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp148894 '5 '#f '#f))
                    '()))
               (_%r-fields148009%_ (reverse _%base-fields148007%_))
               (_%seen-slots148017%_
                (let ((_%tab148011%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g148012148014%_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _%tab148011%_ _%g148012148014%_ '#t)))
                   _%base-fields148007%_)
                  _%tab148011%_))
               (_%process-slot148021%_
                (lambda (_%slot148019%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%seen-slots148017%_ _%slot148019%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _%seen-slots148017%_ _%slot148019%_ '#t))
                        (set! _%r-fields148009%_
                              (cons _%slot148019%_ _%r-fields148009%_)))))))
          (for-each
           (lambda (_%mixin148024%_)
             (let ((_%klass148026%_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _%where148002%_
                       _%mixin148024%_))))
               (if (##structure-ref _%klass148026%_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _%process-slot148021%_
                    (##structure-ref _%klass148026%_ '5 gxc#!class::t '#f)))))
           _%precedence-list148004%_)
          (for-each _%process-slot148021%_ _%direct-slots148005%_)
          (let () (declare (not safe)) (##reverse _%r-fields148009%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass147961%_ _%slot147962%_)
        (let _%lp147964%_ ((_%rest147966%_
                            (##structure-ref
                             _%klass147961%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset147967%_ '1))
          (let* ((_%rest147968147976%_ _%rest147966%_)
                 (_%else147970147984%_
                  (lambda ()
                    (let ((__tmp148896
                           (##structure-ref
                            _%klass147961%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp148895
                           (##structure-ref
                            _%klass147961%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp148896
                       __tmp148895
                       _%slot147962%_))))
                 (_%K147972147990%_
                  (lambda (_%rest147987%_ _%s147988%_)
                    (if (eq? _%s147988%_ _%slot147962%_)
                        _%offset147967%_
                        (let ((__tmp148897
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%offset147967%_ '1))))
                          (declare (not safe))
                          (_%lp147964%_ _%rest147987%_ __tmp148897))))))
            (if (let () (declare (not safe)) (##pair? _%rest147968147976%_))
                (let ((_%hd147973147993%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest147968147976%_)))
                      (_%tl147974147995%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest147968147976%_))))
                  (let* ((_%s147998%_ _%hd147973147993%_)
                         (_%rest148000%_ _%tl147974147995%_))
                    (declare (not safe))
                    (_%K147972147990%_ _%rest148000%_ _%s147998%_)))
                (let () (declare (not safe)) (_%else147970147984%_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass147919%_ _%slot147920%_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _%klass147919%_ _%slot147920%_))
            _%klass147919%_
            (let _%lp147922%_ ((_%rest147924%_
                                (##structure-ref
                                 _%klass147919%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest147925147933%_ _%rest147924%_)
                     (_%else147927147941%_ (lambda () '#f))
                     (_%K147929147949%_
                      (lambda (_%rest147944%_ _%super147945%_)
                        (let ((_%super-class147947%_
                               (let ((__tmp148898
                                      (cons '!class-slot-find-struct
                                            (cons (##structure-ref
                                                   _%klass147919%_
                                                   '1
                                                   gxc#!type::t
                                                   '#f)
                                                  (cons _%slot147920%_ '())))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp148898
                                  _%super147945%_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _%super-class147947%_
                                 _%slot147920%_))
                              _%super-class147947%_
                              (let ()
                                (declare (not safe))
                                (_%lp147922%_ _%rest147944%_)))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest147925147933%_))
                    (let ((_%hd147930147952%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest147925147933%_)))
                          (_%tl147931147954%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest147925147933%_))))
                      (let* ((_%super147957%_ _%hd147930147952%_)
                             (_%rest147959%_ _%tl147931147954%_))
                        (declare (not safe))
                        (_%K147929147949%_ _%rest147959%_ _%super147957%_)))
                    (let () (declare (not safe)) (_%else147927147941%_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass147916%_ _%slot147917%_)
        (if (##structure-ref _%klass147916%_ '7 gxc#!class::t '#f)
            (memq _%slot147917%_
                  (##structure-ref _%klass147916%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self147902%_ _%id147903%_)
        (let ((_%self147906%_ _%self147902%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147906%_
             _%id147903%_
             '1
             '#f
             '#f))
          (let ((__tmp148899
                 (let ((__obj148825
                        (let ()
                          (declare (not safe))
                          (##structure gxc#!signature::t '#f '#f '#f '#f))))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148825
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148825
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148825
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj148825)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147906%_
             __tmp148899
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self147766%_ _%id147767%_)
        (let ((_%self147770%_ _%self147766%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147770%_
             _%id147767%_
             '1
             '#f
             '#f))
          (let ((__tmp148900
                 (let ((__obj148826
                        (let ()
                          (declare (not safe))
                          (##structure gxc#!signature::t '#f '#f '#f '#f))))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148826
                      _%id147767%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148826
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj148826)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147770%_
             __tmp148900
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
      (lambda (_%self147628%_ _%id147629%_ _%slot147630%_ _%checked?147631%_)
        (let ((_%self147634%_ _%self147628%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147634%_
             _%id147629%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147634%_
             _%slot147630%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147634%_
             _%checked?147631%_
             '4
             '#f
             '#f))
          (let ((__tmp148901
                 (let ((__obj148827
                        (let ()
                          (declare (not safe))
                          (##structure gxc#!signature::t '#f '#f '#f '#f))))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set! __obj148827 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148827
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp148902 (cons _%id147629%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148827
                      __tmp148902
                      '3
                      '#f
                      '#f))
                   __obj148827)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147634%_
             __tmp148901
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self147490%_ _%id147491%_ _%slot147492%_ _%checked?147493%_)
        (let ((_%self147496%_ _%self147490%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147496%_
             _%id147491%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147496%_
             _%slot147492%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147496%_
             _%checked?147493%_
             '4
             '#f
             '#f))
          (let ((__tmp148903
                 (let ((__obj148828
                        (let ()
                          (declare (not safe))
                          (##structure gxc#!signature::t '#f '#f '#f '#f))))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148828
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148828
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp148904 (cons _%id147491%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148828
                      __tmp148904
                      '3
                      '#f
                      '#f))
                   __obj148828)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147496%_
             __tmp148903
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords147334%_
               _%signature147331147335%_
               _%self147337%_
               _%arity147338%_
               _%dispatch147339%_)
        (let* ((_%signature147341%_
                (if (eq? _%signature147331147335%_ absent-value)
                    '#f
                    _%signature147331147335%_))
               (_%self147344%_ _%self147337%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self147344%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147344%_
             _%arity147338%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147344%_
             _%dispatch147339%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147344%_
             _%signature147341%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords147358%_ . _%args147359%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords147358%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords147358%_
                  'signature:
                  absent-value))
               _%args147359%_)))
    (define gxc#!lambda:::init!
      (lambda _%args147332147365%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args147332147365%_)))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords147175%_
               _%signature147172147176%_
               _%self147178%_
               _%clauses147179%_)
        (let* ((_%signature147181%_
                (if (eq? _%signature147172147176%_ absent-value)
                    '#f
                    _%signature147172147176%_))
               (_%self147184%_ _%self147178%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self147184%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147184%_
             _%signature147181%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147184%_
             _%clauses147179%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords147198%_ . _%args147199%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords147198%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords147198%_
                  'signature:
                  absent-value))
               _%args147199%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args147173147205%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args147173147205%_)))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self147034%_ _%tab147035%_ _%dispatch147036%_)
        (let ((_%self147039%_ _%self147034%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self147039%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147039%_
             _%tab147035%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147039%_
             _%dispatch147036%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self146897%_ _%keys146898%_ _%main146899%_)
        (let ((_%self146902%_ _%self146897%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self146902%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146902%_
             _%keys146898%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146902%_
             _%main146899%_
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
      (lambda (_%self146517%_ _%id146518%_)
        (let ((_%self146521%_ _%self146517%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146521%_
             _%id146518%_
             '1
             '#f
             '#f))
          (let ((__tmp148905
                 (let ((__obj148829
                        (let ()
                          (declare (not safe))
                          (##structure gxc#!signature::t '#f '#f '#f '#f))))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148829
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148829
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148829
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj148829)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146521%_
             __tmp148905
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
      (lambda (_%klass146386%_)
        (let ((_%$e146388%_
               (##structure-ref _%klass146386%_ '11 gxc#!class::t '#f)))
          (if _%$e146388%_
              _%$e146388%_
              (let ((_%tab146392%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass146386%_
                 _%tab146392%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab146392%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass146377%_ _%method146378%_)
        (let ((_%tab146379146381%_
               (##structure-ref _%klass146377%_ '11 gxc#!class::t '#f)))
          (if _%tab146379146381%_
              (let ((_%tab146384%_ _%tab146379146381%_))
                (declare (not safe))
                (hash-get _%tab146384%_ _%method146378%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a146365%_ _%type-b146366%_)
        (if _%type-a146365%_
            (if _%type-b146366%_
                (let ((_%$e146368%_ (eq? _%type-a146365%_ _%type-b146366%_)))
                  (if _%$e146368%_
                      _%$e146368%_
                      (let ((_%$e146371%_
                             (eq? (##structure-ref
                                   _%type-b146366%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e146371%_
                            _%$e146371%_
                            (let ((_%$e146374%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a146365%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b146366%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e146374%_
                                  _%$e146374%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a146365%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b146366%_
                                             'gxc#!class::t))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#!class-subclass?
                                             _%type-a146365%_
                                             _%type-b146366%_))
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a146316%_ _%klass-b146317%_)
        (let ((_%$e146319%_
               (eq? (##structure-ref _%klass-a146316%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b146317%_ '1 gxc#!type::t '#f))))
          (if _%$e146319%_
              _%$e146319%_
              (let ((_%klass-id-b146322%_
                     (##structure-ref _%klass-b146317%_ '1 gxc#!type::t '#f))
                    (_%precedence-list146323%_
                     (##structure-ref _%klass-a146316%_ '3 gxc#!class::t '#f)))
                (let _%loop146325%_ ((_%rest146327%_
                                      _%precedence-list146323%_))
                  (let* ((_%rest146328146336%_ _%rest146327%_)
                         (_%else146330146344%_ (lambda () '#f))
                         (_%K146332146353%_
                          (lambda (_%rest146347%_ _%klass-name146348%_)
                            (let ((_%$e146350%_
                                   (eq? (let ((__tmp148906
                                               (let ((__tmp148907
                                                      (cons 'subclass?
                                                            (cons _%klass-a146316%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%klass-b146317%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp148907
                                                  _%klass-name146348%_))))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp148906
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b146322%_)))
                              (if _%$e146350%_
                                  _%$e146350%_
                                  (let ()
                                    (declare (not safe))
                                    (_%loop146325%_ _%rest146347%_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest146328146336%_))
                        (let ((_%hd146333146356%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest146328146336%_)))
                              (_%tl146334146358%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest146328146336%_))))
                          (let* ((_%klass-name146361%_ _%hd146333146356%_)
                                 (_%rest146363%_ _%tl146334146358%_))
                            (declare (not safe))
                            (_%K146332146353%_
                             _%rest146363%_
                             _%klass-name146361%_)))
                        (let ()
                          (declare (not safe))
                          (_%else146330146344%_))))))))))
    (define gxc#!interface-instance?
      (lambda (_%type146314%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type146314%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (##structure-ref _%type146314%_ '3 gxc#!class::t '#f))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym146296%_ _%type146297%_ _%local?146298%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type146297%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym146296%_
                     _%type146297%_)))
        (let ((__tmp148908
               (let () (declare (not safe)) (struct->list _%type146297%_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym146296%_ '" " __tmp148908))
        (let ((_%table146300%_
               (if _%local?146298%_
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
          (hash-put! _%table146300%_ _%sym146296%_ _%type146297%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym146305%_ _%type146306%_)
        (let ((_%local?146308%_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _%sym146305%_
           _%type146306%_
           _%local?146308%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g148910_
        (let ((_g148909_ (let () (declare (not safe)) (##length _g148910_))))
          (cond ((let () (declare (not safe)) (##fx= _g148909_ 2))
                 (apply (lambda (_%sym146305%_ _%type146306%_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _%sym146305%_
                             _%type146306%_)))
                        _g148910_))
                ((let () (declare (not safe)) (##fx= _g148909_ 3))
                 (apply (lambda (_%sym146310%_ _%type146311%_ _%local?146312%_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _%sym146310%_
                             _%type146311%_
                             _%local?146312%_)))
                        _g148910_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g148910_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym146290%_ _%type146291%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type146291%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym146290%_
                     _%type146291%_)))
        (let ((_%table146293%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp148911
                 (let () (declare (not safe)) (struct->list _%type146291%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym146290%_ '" " __tmp148911))
          (let ()
            (declare (not safe))
            (hash-put! _%table146293%_ _%sym146290%_ _%type146291%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table146293%_ _%type146291%_ _%sym146290%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym146285%_ _%type146286%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type146286%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym146285%_
                     _%type146286%_)))
        (let ((_%table146288%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table146288%_ _%sym146285%_))
              '#!void
              (begin
                (let ((__tmp148912
                       (let ()
                         (declare (not safe))
                         (struct->list _%type146286%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym146285%_
                   '" "
                   __tmp148912))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table146288%_ _%sym146285%_ _%type146286%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table146288%_
                   _%type146286%_
                   _%sym146285%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym146283%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym146283%_))
        (let ((__tmp148913
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp148913 _%sym146283%_))
        (let ((__tmp148914
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp148914 _%sym146283%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t146251%_
               _%method146252%_
               _%sym146253%_
               _%rebind?146254%_)
        (let ((_%klass146256%_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-class _%type-t146251%_))))
          (if _%klass146256%_
              (let* ((_%vtab146258%_
                      (let ()
                        (declare (not safe))
                        (gxc#!class-method-table _%klass146256%_)))
                     (_%$e146260%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab146258%_ _%method146252%_))))
                (if _%$e146260%_
                    ((lambda (_%existing146263%_)
                       (if _%rebind?146254%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t146251%_
                                '" "
                                _%method146252%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab146258%_
                                _%method146252%_
                                _%sym146253%_)))
                           (if (eq? _%existing146263%_ _%sym146253%_)
                               (let () '#!void)
                               (let ((__tmp148915
                                      (cons 'bind-method!
                                            (cons _%type-t146251%_
                                                  (cons _%method146252%_
                                                        (cons _%sym146253%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp148915
                                  _%method146252%_)))))
                     _%$e146260%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t146251%_
                         '" "
                         _%method146252%_
                         '" => "
                         _%sym146253%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab146258%_
                         _%method146252%_
                         _%sym146253%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t146251%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t146272%_ _%method146273%_ _%sym146274%_)
        (let ((_%rebind?146276%_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _%type-t146272%_
           _%method146273%_
           _%sym146274%_
           _%rebind?146276%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g148917_
        (let ((_g148916_ (let () (declare (not safe)) (##length _g148917_))))
          (cond ((let () (declare (not safe)) (##fx= _g148916_ 3))
                 (apply (lambda (_%type-t146272%_
                                 _%method146273%_
                                 _%sym146274%_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _%type-t146272%_
                             _%method146273%_
                             _%sym146274%_)))
                        _g148917_))
                ((let () (declare (not safe)) (##fx= _g148916_ 4))
                 (apply (lambda (_%type-t146278%_
                                 _%method146279%_
                                 _%sym146280%_
                                 _%rebind?146281%_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _%type-t146278%_
                             _%method146279%_
                             _%sym146280%_
                             _%rebind?146281%_)))
                        _g148917_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g148917_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym146239%_)
        (let ((_%$e146247%_
               (let ((_%ht146240146242%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-local-type))))
                 (if _%ht146240146242%_
                     (let ((_%ht146245%_ _%ht146240146242%_))
                       (declare (not safe))
                       (hash-get _%ht146245%_ _%sym146239%_))
                     '#f))))
          (if _%$e146247%_
              _%$e146247%_
              (let ((__tmp148918
                     (##structure-ref
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-optimizer-info))
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp148918 _%sym146239%_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym146231%_)
        (let ((_%type146232146234%_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _%sym146231%_))))
          (if _%type146232146234%_
              (let ((_%type146237%_ _%type146232146234%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type146237%_ 'gxc#!alias::t))
                    (let ((__tmp148919
                           (##structure-ref
                            _%type146237%_
                            '1
                            gxc#!type::t
                            '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp148919))
                    _%type146237%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym146227%_)
        (let ((_%table146229%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table146229%_ _%sym146227%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where146212%_ _%sym146213%_)
        (let ((_%$e146216%_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-class _%sym146213%_))))
          (if _%$e146216%_
              ((lambda (_%g146218146220%_)
                 (let ((_%val146223%_ _%g146218146220%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val146223%_
                          'gxc#!class::t))
                       _%val146223%_
                       (let ()
                         (declare (not safe))
                         (error '"bad cast" gxc#!class::t _%val146223%_)))))
               _%$e146216%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where146212%_
                   _%sym146213%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass146210%_)
        (let ((__tmp148920
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp148920 _%klass146210%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t146207%_ _%method146208%_)
        (let ((__tmp148921
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-class
                  'lookup-method
                  _%type-t146207%_))))
          (declare (not safe))
          (gxc#!class-lookup-method __tmp148921 _%method146208%_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_%sym146205%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _%sym146205%_))
        (let ((__tmp148922
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp148922 _%sym146205%_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym146203%_)
        (let ((__tmp148923
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp148923 _%sym146203%_))))))
