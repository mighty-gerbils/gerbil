(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1712251113)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp148823 (list)) (__tmp148822 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp148823
         '(type classes ssxi methods)
         __tmp148822
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args148794%_
        (apply make-instance gxc#optimizer-info::t _%$args148794%_)))
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
      (lambda (_%self148781%_)
        (let ((_%self148784%_ _%self148781%_))
          (if (let ((__tmp148824
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self148784%_))))
                (declare (not safe))
                (##fx< '4 __tmp148824))
              (begin
                (let ((__tmp148825
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self148784%_
                   __tmp148825
                   '1
                   '#f
                   '#f))
                (let ((__tmp148826
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self148784%_
                   __tmp148826
                   '2
                   '#f
                   '#f))
                (let ((__tmp148827
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self148784%_
                   __tmp148827
                   '3
                   '#f
                   '#f))
                (let ((__tmp148828
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self148784%_
                   __tmp148828
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp148829
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self148784%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self148784%_
                       '4
                       __tmp148829))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp148831 (list))
            (__tmp148830
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp148831
         '(id)
         __tmp148830
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args148656%_
        (apply make-instance gxc#!type::t _%$args148656%_)))
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
      (let ((__tmp148833 (list gxc#!type::t))
            (__tmp148832 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp148833
         '()
         __tmp148832
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args148653%_
        (apply make-instance gxc#!abort::t _%$args148653%_)))
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
      (let ((__tmp148835 (list gxc#!type::t))
            (__tmp148834 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp148835
         '()
         __tmp148834
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args148650%_
        (apply make-instance gxc#!alias::t _%$args148650%_)))
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
      (let ((__tmp148837 (list gxc#!type::t))
            (__tmp148836
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp148837
         '(signature)
         __tmp148836
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (__make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _%$args148647%_
        (apply make-instance gxc#!procedure::t _%$args148647%_)))
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
      (let ((__tmp148839 (list))
            (__tmp148838
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked)
                     (print: return effect arguments unchecked)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp148839
         '(return effect arguments unchecked)
         __tmp148838
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args148644%_
        (apply make-instance gxc#!signature::t _%$args148644%_)))
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
      (let ((__tmp148841 (list gxc#!procedure::t))
            (__tmp148840 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp148841
         '()
         __tmp148840
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args148641%_
        (apply make-instance gxc#!primitive-predicate::t _%$args148641%_)))
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
      (let ((__tmp148843 (list gxc#!type::t))
            (__tmp148842 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp148843
         '(class)
         __tmp148842
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args148638%_
        (apply make-instance gxc#!class-meta::t _%$args148638%_)))
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
      (let ((__tmp148845 (list gxc#!type::t))
            (__tmp148844
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
         __tmp148845
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp148844
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args148635%_
        (apply make-instance gxc#!class::t _%$args148635%_)))
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
      (let ((__tmp148847 (list gxc#!procedure::t))
            (__tmp148846 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp148847
         '()
         __tmp148846
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args148632%_
        (apply make-instance gxc#!predicate::t _%$args148632%_)))
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
      (let ((__tmp148849 (list gxc#!procedure::t))
            (__tmp148848 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp148849
         '()
         __tmp148848
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args148629%_
        (apply make-instance gxc#!constructor::t _%$args148629%_)))
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
      (let ((__tmp148851 (list gxc#!procedure::t))
            (__tmp148850 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp148851
         '(slot checked?)
         __tmp148850
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args148626%_
        (apply make-instance gxc#!accessor::t _%$args148626%_)))
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
      (let ((__tmp148853 (list gxc#!procedure::t))
            (__tmp148852 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp148853
         '(slot checked?)
         __tmp148852
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args148623%_
        (apply make-instance gxc#!mutator::t _%$args148623%_)))
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
      (let ((__tmp148855 (list gxc#!type::t))
            (__tmp148854 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp148855
         '(methods)
         __tmp148854
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args148620%_
        (apply make-instance gxc#!interface::t _%$args148620%_)))
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
      (let ((__tmp148857 (list gxc#!procedure::t))
            (__tmp148856
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp148857
         '(arity dispatch inline inline-typedecl)
         __tmp148856
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args148617%_
        (apply make-instance gxc#!lambda::t _%$args148617%_)))
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
      (let ((__tmp148859 (list gxc#!procedure::t))
            (__tmp148858 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp148859
         '(clauses)
         __tmp148858
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args148614%_
        (apply make-instance gxc#!case-lambda::t _%$args148614%_)))
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
      (let ((__tmp148861 (list gxc#!procedure::t))
            (__tmp148860 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp148861
         '(table dispatch)
         __tmp148860
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args148611%_
        (apply make-instance gxc#!kw-lambda::t _%$args148611%_)))
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
      (let ((__tmp148863 (list gxc#!procedure::t))
            (__tmp148862 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp148863
         '(keys main)
         __tmp148862
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args148608%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args148608%_)))
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
      (let ((__tmp148864 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp148864
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args148605%_
        (apply make-instance gxc#!primitive::t _%$args148605%_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp148865 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp148865
         '()
         '((equal:))
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args148602%_
        (apply make-instance gxc#!primitive-lambda::t _%$args148602%_)))
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
      (let ((__tmp148866 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp148866
         '()
         '((equal:))
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args148599%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args148599%_)))
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
      (lambda (_%self148586%_)
        (let ((_%self148589%_ _%self148586%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self148589%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self148450%_ _%klass148451%_)
        (let ((_%self148454%_ _%self148450%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self148454%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148454%_
             _%klass148451%_
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class-meta::t ':init! gxc#!class-meta:::init! '#f))
    (define gxc#!class:::init!__0
      (lambda (_%self148142%_
               _%id148143%_
               _%super148144%_
               _%slots148145%_
               _%ctor-method148146%_
               _%struct?148147%_
               _%final?148148%_
               _%system?148149%_
               _%metaclass148150%_)
        (let ((_%self148153%_ _%self148142%_))
          (let _%lp148163%_ ((_%rest148165%_ _%super148144%_))
            (let* ((_%rest148166148174%_ _%rest148165%_)
                   (_%else148168148182%_ (lambda () '#!void))
                   (_%K148170148188%_
                    (lambda (_%rest148185%_ _%super-id148186%_)
                      (if (let ((__tmp148867
                                 (let ((__tmp148868
                                        (cons '!class
                                              (cons _%id148143%_ '()))))
                                   (declare (not safe))
                                   (gxc#optimizer-resolve-class
                                    __tmp148868
                                    _%super-id148186%_))))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp148867 '8 '#f '#f))
                          (let ((__tmp148869
                                 (cons '!class (cons _%id148143%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp148869
                             _%super-id148186%_))
                          '#!void)
                      (let ()
                        (declare (not safe))
                        (_%lp148163%_ _%rest148185%_)))))
              (if (let () (declare (not safe)) (##pair? _%rest148166148174%_))
                  (let ((_%hd148171148191%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest148166148174%_)))
                        (_%tl148172148193%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest148166148174%_))))
                    (let* ((_%super-id148196%_ _%hd148171148191%_)
                           (_%rest148198%_ _%tl148172148193%_))
                      (declare (not safe))
                      (_%K148170148188%_ _%rest148198%_ _%super-id148196%_)))
                  '#!void)))
          (let* ((_%ctor-method148249%_
                  (let ((_%$e148200%_ _%ctor-method148146%_))
                    (if _%$e148200%_
                        _%$e148200%_
                        (let _%lp148203%_ ((_%rest148205%_ _%super148144%_)
                                           (_%method148206%_ '#f))
                          (let* ((_%rest148207148215%_ _%rest148205%_)
                                 (_%else148209148223%_
                                  (lambda () _%method148206%_))
                                 (_%K148211148237%_
                                  (lambda (_%rest148226%_ _%super-id148227%_)
                                    (let* ((_%klass148229%_
                                            (let ((__tmp148870
                                                   (cons '!class
                                                         (cons _%id148143%_
                                                               '()))))
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               __tmp148870
                                               _%super-id148227%_)))
                                           (_%$e148231%_
                                            (##structure-ref
                                             _%klass148229%_
                                             '6
                                             gxc#!class::t
                                             '#f)))
                                      (if _%$e148231%_
                                          ((lambda (_%ctor-method148234%_)
                                             (if _%method148206%_
                                                 (if (eq? _%ctor-method148234%_
                                                          _%method148206%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%lp148203%_
                                                        _%rest148226%_
                                                        _%ctor-method148234%_))
                                                     (let ((__tmp148871
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id148143%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp148871
                _%method148206%_
                _%ctor-method148234%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (declare (not safe))
                                                   (_%lp148203%_
                                                    _%rest148226%_
                                                    _%ctor-method148234%_))))
                                           _%$e148231%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%lp148203%_
                                             _%rest148226%_
                                             _%method148206%_)))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest148207148215%_))
                                (let ((_%hd148212148240%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest148207148215%_)))
                                      (_%tl148213148242%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest148207148215%_))))
                                  (let* ((_%super-id148245%_
                                          _%hd148212148240%_)
                                         (_%rest148247%_ _%tl148213148242%_))
                                    (declare (not safe))
                                    (_%K148211148237%_
                                     _%rest148247%_
                                     _%super-id148245%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else148209148223%_))))))))
                 (_g148872_
                  (let ((__tmp148877
                         (lambda (_%klass-id148251%_)
                           (cons _%klass-id148251%_
                                 (let ((__tmp148878
                                        (let ((__tmp148879
                                               (cons '!class
                                                     (cons _%id148143%_ '()))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-class
                                           __tmp148879
                                           _%klass-id148251%_))))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp148878
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp148874
                         (lambda (_%klass-id148253%_)
                           (let ((__tmp148875
                                  (let ((__tmp148876
                                         (cons '!class
                                               (cons _%id148143%_ '()))))
                                    (declare (not safe))
                                    (gxc#optimizer-resolve-class
                                     __tmp148876
                                     _%klass-id148253%_))))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp148875
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp148877
                     __tmp148874
                     eq?
                     identity
                     '()
                     _%super148144%_))))
            (begin
              (let ((_g148873_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g148872_)
                           (##vector-length _g148872_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g148873_ 2)))
                    (error "Context expects 2 values" _g148873_)))
              (let ((_%precedence-list148255%_
                     (let () (declare (not safe)) (##vector-ref _g148872_ 0)))
                    (_%base-struct148256%_
                     (let () (declare (not safe)) (##vector-ref _g148872_ 1))))
                (let* ((_%precedence-list148300%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id148143%_ '(t object class)))
                            (let () _%precedence-list148255%_)
                            (if (memq 'object::t _%precedence-list148255%_)
                                (let () _%precedence-list148255%_)
                                (if _%system?148149%_
                                    (let ()
                                      (if (memq 't::t
                                                _%precedence-list148255%_)
                                          _%precedence-list148255%_
                                          (let ()
                                            (declare (not safe))
                                            (##append
                                             _%precedence-list148255%_
                                             '(t::t)))))
                                    (let _%loop148262%_ ((_%tail148264%_
                                                          _%precedence-list148255%_)
                                                         (_%head148265%_ '()))
                                      (let* ((_%tail148266148274%_
                                              _%tail148264%_)
                                             (_%else148268148282%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head148265%_))))
                                             (_%K148270148288%_
                                              (lambda (_%rest148285%_
                                                       _%hd148286%_)
                                                (if (eq? _%hd148286%_ 't::t)
                                                    (let ((__tmp148880
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail148264%_)))
              (declare (not safe))
              (__foldl1 cons __tmp148880 _%head148265%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp148881
                                                           (cons _%hd148286%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%head148265%_)))
              (declare (not safe))
              (_%loop148262%_ _%rest148285%_ __tmp148881))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tail148266148274%_))
                                            (let ((_%hd148271148291%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail148266148274%_)))
                                                  (_%tl148272148293%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail148266148274%_))))
                                              (let* ((_%hd148296%_
                                                      _%hd148271148291%_)
                                                     (_%rest148298%_
                                                      _%tl148272148293%_))
                                                (declare (not safe))
                                                (_%K148270148288%_
                                                 _%rest148298%_
                                                 _%hd148296%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%else148268148282%_)))))))))
                       (_%fields148302%_
                        (let ((__tmp148882
                               (cons '!class (cons _%id148143%_ '()))))
                          (declare (not safe))
                          (gxc#compute-class-fields
                           __tmp148882
                           _%base-struct148256%_
                           _%precedence-list148300%_
                           _%slots148145%_))))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148153%_
                     _%id148143%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148153%_
                     _%super148144%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148153%_
                     _%precedence-list148300%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148153%_
                     _%slots148145%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148153%_
                     _%fields148302%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148153%_
                     _%ctor-method148249%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148153%_
                     _%struct?148147%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148153%_
                     _%final?148148%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148153%_
                     _%metaclass148150%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self148305%_
               _%id148306%_
               _%super148307%_
               _%precedence-list148308%_
               _%slots148309%_
               _%fields148310%_
               _%constructor148311%_
               _%struct?148312%_
               _%final?148313%_
               _%system?148314%_
               _%metaclass148315%_
               _%methods148316%_)
        (let ((_%self148319%_ _%self148305%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148319%_
             _%id148306%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148319%_
             _%super148307%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148319%_
             _%precedence-list148308%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148319%_
             _%slots148309%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148319%_
             _%fields148310%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148319%_
             _%constructor148311%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148319%_
             _%struct?148312%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148319%_
             _%final?148313%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148319%_
             _%metaclass148315%_
             '10
             '#f
             '#f))
          (if _%methods148316%_
              (let ((__tmp148883
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods148316%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self148319%_
                 __tmp148883
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g148885_
        (let ((_g148884_ (let () (declare (not safe)) (##length _g148885_))))
          (cond ((let () (declare (not safe)) (##fx= _g148884_ 9))
                 (apply (lambda (_%self148142%_
                                 _%id148143%_
                                 _%super148144%_
                                 _%slots148145%_
                                 _%ctor-method148146%_
                                 _%struct?148147%_
                                 _%final?148148%_
                                 _%system?148149%_
                                 _%metaclass148150%_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _%self148142%_
                             _%id148143%_
                             _%super148144%_
                             _%slots148145%_
                             _%ctor-method148146%_
                             _%struct?148147%_
                             _%final?148148%_
                             _%system?148149%_
                             _%metaclass148150%_)))
                        _g148885_))
                ((let () (declare (not safe)) (##fx= _g148884_ 12))
                 (apply (lambda (_%self148305%_
                                 _%id148306%_
                                 _%super148307%_
                                 _%precedence-list148308%_
                                 _%slots148309%_
                                 _%fields148310%_
                                 _%constructor148311%_
                                 _%struct?148312%_
                                 _%final?148313%_
                                 _%system?148314%_
                                 _%metaclass148315%_
                                 _%methods148316%_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _%self148305%_
                             _%id148306%_
                             _%super148307%_
                             _%precedence-list148308%_
                             _%slots148309%_
                             _%fields148310%_
                             _%constructor148311%_
                             _%struct?148312%_
                             _%final?148313%_
                             _%system?148314%_
                             _%metaclass148315%_
                             _%methods148316%_)))
                        _g148885_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g148885_))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where147994%_
               _%base-struct147995%_
               _%precedence-list147996%_
               _%direct-slots147997%_)
        (let* ((_%base-fields147999%_
                (if _%base-struct147995%_
                    (let ((__tmp148886
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%where147994%_
                              _%base-struct147995%_))))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp148886 '5 '#f '#f))
                    '()))
               (_%r-fields148001%_ (reverse _%base-fields147999%_))
               (_%seen-slots148009%_
                (let ((_%tab148003%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g148004148006%_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _%tab148003%_ _%g148004148006%_ '#t)))
                   _%base-fields147999%_)
                  _%tab148003%_))
               (_%process-slot148013%_
                (lambda (_%slot148011%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%seen-slots148009%_ _%slot148011%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _%seen-slots148009%_ _%slot148011%_ '#t))
                        (set! _%r-fields148001%_
                              (cons _%slot148011%_ _%r-fields148001%_)))))))
          (for-each
           (lambda (_%mixin148016%_)
             (let ((_%klass148018%_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _%where147994%_
                       _%mixin148016%_))))
               (if (##structure-ref _%klass148018%_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _%process-slot148013%_
                    (##structure-ref _%klass148018%_ '5 gxc#!class::t '#f)))))
           _%precedence-list147996%_)
          (for-each _%process-slot148013%_ _%direct-slots147997%_)
          (let () (declare (not safe)) (##reverse _%r-fields148001%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass147953%_ _%slot147954%_)
        (let _%lp147956%_ ((_%rest147958%_
                            (##structure-ref
                             _%klass147953%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset147959%_ '1))
          (let* ((_%rest147960147968%_ _%rest147958%_)
                 (_%else147962147976%_
                  (lambda ()
                    (let ((__tmp148888
                           (##structure-ref
                            _%klass147953%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp148887
                           (##structure-ref
                            _%klass147953%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp148888
                       __tmp148887
                       _%slot147954%_))))
                 (_%K147964147982%_
                  (lambda (_%rest147979%_ _%s147980%_)
                    (if (eq? _%s147980%_ _%slot147954%_)
                        _%offset147959%_
                        (let ((__tmp148889
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%offset147959%_ '1))))
                          (declare (not safe))
                          (_%lp147956%_ _%rest147979%_ __tmp148889))))))
            (if (let () (declare (not safe)) (##pair? _%rest147960147968%_))
                (let ((_%hd147965147985%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest147960147968%_)))
                      (_%tl147966147987%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest147960147968%_))))
                  (let* ((_%s147990%_ _%hd147965147985%_)
                         (_%rest147992%_ _%tl147966147987%_))
                    (declare (not safe))
                    (_%K147964147982%_ _%rest147992%_ _%s147990%_)))
                (let () (declare (not safe)) (_%else147962147976%_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass147911%_ _%slot147912%_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _%klass147911%_ _%slot147912%_))
            _%klass147911%_
            (let _%lp147914%_ ((_%rest147916%_
                                (##structure-ref
                                 _%klass147911%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest147917147925%_ _%rest147916%_)
                     (_%else147919147933%_ (lambda () '#f))
                     (_%K147921147941%_
                      (lambda (_%rest147936%_ _%super147937%_)
                        (let ((_%super-class147939%_
                               (let ((__tmp148890
                                      (cons '!class-slot-find-struct
                                            (cons (##structure-ref
                                                   _%klass147911%_
                                                   '1
                                                   gxc#!type::t
                                                   '#f)
                                                  (cons _%slot147912%_ '())))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp148890
                                  _%super147937%_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _%super-class147939%_
                                 _%slot147912%_))
                              _%super-class147939%_
                              (let ()
                                (declare (not safe))
                                (_%lp147914%_ _%rest147936%_)))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest147917147925%_))
                    (let ((_%hd147922147944%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest147917147925%_)))
                          (_%tl147923147946%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest147917147925%_))))
                      (let* ((_%super147949%_ _%hd147922147944%_)
                             (_%rest147951%_ _%tl147923147946%_))
                        (declare (not safe))
                        (_%K147921147941%_ _%rest147951%_ _%super147949%_)))
                    (let () (declare (not safe)) (_%else147919147933%_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass147908%_ _%slot147909%_)
        (if (##structure-ref _%klass147908%_ '7 gxc#!class::t '#f)
            (memq _%slot147909%_
                  (##structure-ref _%klass147908%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self147894%_ _%id147895%_)
        (let ((_%self147898%_ _%self147894%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147898%_
             _%id147895%_
             '1
             '#f
             '#f))
          (let ((__tmp148891
                 (let ((__obj148817
                        (let ()
                          (declare (not safe))
                          (##structure gxc#!signature::t '#f '#f '#f '#f))))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148817
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148817
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148817
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj148817)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147898%_
             __tmp148891
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self147758%_ _%id147759%_)
        (let ((_%self147762%_ _%self147758%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147762%_
             _%id147759%_
             '1
             '#f
             '#f))
          (let ((__tmp148892
                 (let ((__obj148818
                        (let ()
                          (declare (not safe))
                          (##structure gxc#!signature::t '#f '#f '#f '#f))))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148818
                      _%id147759%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148818
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj148818)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147762%_
             __tmp148892
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
      (lambda (_%self147620%_ _%id147621%_ _%slot147622%_ _%checked?147623%_)
        (let ((_%self147626%_ _%self147620%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147626%_
             _%id147621%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147626%_
             _%slot147622%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147626%_
             _%checked?147623%_
             '4
             '#f
             '#f))
          (let ((__tmp148893
                 (let ((__obj148819
                        (let ()
                          (declare (not safe))
                          (##structure gxc#!signature::t '#f '#f '#f '#f))))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set! __obj148819 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148819
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp148894 (cons _%id147621%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148819
                      __tmp148894
                      '3
                      '#f
                      '#f))
                   __obj148819)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147626%_
             __tmp148893
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self147482%_ _%id147483%_ _%slot147484%_ _%checked?147485%_)
        (let ((_%self147488%_ _%self147482%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147488%_
             _%id147483%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147488%_
             _%slot147484%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147488%_
             _%checked?147485%_
             '4
             '#f
             '#f))
          (let ((__tmp148895
                 (let ((__obj148820
                        (let ()
                          (declare (not safe))
                          (##structure gxc#!signature::t '#f '#f '#f '#f))))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148820
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148820
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp148896 (cons _%id147483%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148820
                      __tmp148896
                      '3
                      '#f
                      '#f))
                   __obj148820)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147488%_
             __tmp148895
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords147326%_
               _%signature147323147327%_
               _%self147329%_
               _%arity147330%_
               _%dispatch147331%_)
        (let* ((_%signature147333%_
                (if (eq? _%signature147323147327%_ absent-value)
                    '#f
                    _%signature147323147327%_))
               (_%self147336%_ _%self147329%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self147336%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147336%_
             _%arity147330%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147336%_
             _%dispatch147331%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147336%_
             _%signature147333%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords147350%_ . _%args147351%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords147350%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords147350%_
                  'signature:
                  absent-value))
               _%args147351%_)))
    (define gxc#!lambda:::init!
      (lambda _%args147324147357%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args147324147357%_)))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords147167%_
               _%signature147164147168%_
               _%self147170%_
               _%clauses147171%_)
        (let* ((_%signature147173%_
                (if (eq? _%signature147164147168%_ absent-value)
                    '#f
                    _%signature147164147168%_))
               (_%self147176%_ _%self147170%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self147176%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147176%_
             _%signature147173%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147176%_
             _%clauses147171%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords147190%_ . _%args147191%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords147190%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords147190%_
                  'signature:
                  absent-value))
               _%args147191%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args147165147197%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args147165147197%_)))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self147026%_ _%tab147027%_ _%dispatch147028%_)
        (let ((_%self147031%_ _%self147026%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self147031%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147031%_
             _%tab147027%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147031%_
             _%dispatch147028%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self146889%_ _%keys146890%_ _%main146891%_)
        (let ((_%self146894%_ _%self146889%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self146894%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146894%_
             _%keys146890%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146894%_
             _%main146891%_
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
      (lambda (_%self146509%_ _%id146510%_)
        (let ((_%self146513%_ _%self146509%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146513%_
             _%id146510%_
             '1
             '#f
             '#f))
          (let ((__tmp148897
                 (let ((__obj148821
                        (let ()
                          (declare (not safe))
                          (##structure gxc#!signature::t '#f '#f '#f '#f))))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148821
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148821
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj148821
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj148821)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146513%_
             __tmp148897
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
      (lambda (_%klass146378%_)
        (let ((_%$e146380%_
               (##structure-ref _%klass146378%_ '11 gxc#!class::t '#f)))
          (if _%$e146380%_
              _%$e146380%_
              (let ((_%tab146384%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass146378%_
                 _%tab146384%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab146384%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass146369%_ _%method146370%_)
        (let ((_%tab146371146373%_
               (##structure-ref _%klass146369%_ '11 gxc#!class::t '#f)))
          (if _%tab146371146373%_
              (let ((_%tab146376%_ _%tab146371146373%_))
                (declare (not safe))
                (hash-get _%tab146376%_ _%method146370%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a146357%_ _%type-b146358%_)
        (if _%type-a146357%_
            (if _%type-b146358%_
                (let ((_%$e146360%_ (eq? _%type-a146357%_ _%type-b146358%_)))
                  (if _%$e146360%_
                      _%$e146360%_
                      (let ((_%$e146363%_
                             (eq? (##structure-ref
                                   _%type-b146358%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e146363%_
                            _%$e146363%_
                            (let ((_%$e146366%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a146357%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b146358%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e146366%_
                                  _%$e146366%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a146357%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b146358%_
                                             'gxc#!class::t))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#!class-subclass?
                                             _%type-a146357%_
                                             _%type-b146358%_))
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a146308%_ _%klass-b146309%_)
        (let ((_%$e146311%_
               (eq? (##structure-ref _%klass-a146308%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b146309%_ '1 gxc#!type::t '#f))))
          (if _%$e146311%_
              _%$e146311%_
              (let ((_%klass-id-b146314%_
                     (##structure-ref _%klass-b146309%_ '1 gxc#!type::t '#f))
                    (_%precedence-list146315%_
                     (##structure-ref _%klass-a146308%_ '3 gxc#!class::t '#f)))
                (let _%loop146317%_ ((_%rest146319%_
                                      _%precedence-list146315%_))
                  (let* ((_%rest146320146328%_ _%rest146319%_)
                         (_%else146322146336%_ (lambda () '#f))
                         (_%K146324146345%_
                          (lambda (_%rest146339%_ _%klass-name146340%_)
                            (let ((_%$e146342%_
                                   (eq? (let ((__tmp148898
                                               (let ((__tmp148899
                                                      (cons 'subclass?
                                                            (cons _%klass-a146308%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%klass-b146309%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp148899
                                                  _%klass-name146340%_))))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp148898
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b146314%_)))
                              (if _%$e146342%_
                                  _%$e146342%_
                                  (let ()
                                    (declare (not safe))
                                    (_%loop146317%_ _%rest146339%_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest146320146328%_))
                        (let ((_%hd146325146348%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest146320146328%_)))
                              (_%tl146326146350%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest146320146328%_))))
                          (let* ((_%klass-name146353%_ _%hd146325146348%_)
                                 (_%rest146355%_ _%tl146326146350%_))
                            (declare (not safe))
                            (_%K146324146345%_
                             _%rest146355%_
                             _%klass-name146353%_)))
                        (let ()
                          (declare (not safe))
                          (_%else146322146336%_))))))))))
    (define gxc#!interface-instance?
      (lambda (_%type146306%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type146306%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (##structure-ref _%type146306%_ '3 gxc#!class::t '#f))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym146288%_ _%type146289%_ _%local?146290%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type146289%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym146288%_
                     _%type146289%_)))
        (let ((__tmp148900
               (let () (declare (not safe)) (struct->list _%type146289%_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym146288%_ '" " __tmp148900))
        (let ((_%table146292%_
               (if _%local?146290%_
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
          (hash-put! _%table146292%_ _%sym146288%_ _%type146289%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym146297%_ _%type146298%_)
        (let ((_%local?146300%_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _%sym146297%_
           _%type146298%_
           _%local?146300%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g148902_
        (let ((_g148901_ (let () (declare (not safe)) (##length _g148902_))))
          (cond ((let () (declare (not safe)) (##fx= _g148901_ 2))
                 (apply (lambda (_%sym146297%_ _%type146298%_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _%sym146297%_
                             _%type146298%_)))
                        _g148902_))
                ((let () (declare (not safe)) (##fx= _g148901_ 3))
                 (apply (lambda (_%sym146302%_ _%type146303%_ _%local?146304%_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _%sym146302%_
                             _%type146303%_
                             _%local?146304%_)))
                        _g148902_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g148902_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym146282%_ _%type146283%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type146283%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym146282%_
                     _%type146283%_)))
        (let ((_%table146285%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp148903
                 (let () (declare (not safe)) (struct->list _%type146283%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym146282%_ '" " __tmp148903))
          (let ()
            (declare (not safe))
            (hash-put! _%table146285%_ _%sym146282%_ _%type146283%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table146285%_ _%type146283%_ _%sym146282%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym146277%_ _%type146278%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type146278%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym146277%_
                     _%type146278%_)))
        (let ((_%table146280%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table146280%_ _%sym146277%_))
              '#!void
              (begin
                (let ((__tmp148904
                       (let ()
                         (declare (not safe))
                         (struct->list _%type146278%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym146277%_
                   '" "
                   __tmp148904))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table146280%_ _%sym146277%_ _%type146278%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table146280%_
                   _%type146278%_
                   _%sym146277%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym146275%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym146275%_))
        (let ((__tmp148905
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp148905 _%sym146275%_))
        (let ((__tmp148906
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp148906 _%sym146275%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t146243%_
               _%method146244%_
               _%sym146245%_
               _%rebind?146246%_)
        (let ((_%klass146248%_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-class _%type-t146243%_))))
          (if _%klass146248%_
              (let* ((_%vtab146250%_
                      (let ()
                        (declare (not safe))
                        (gxc#!class-method-table _%klass146248%_)))
                     (_%$e146252%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab146250%_ _%method146244%_))))
                (if _%$e146252%_
                    ((lambda (_%existing146255%_)
                       (if _%rebind?146246%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t146243%_
                                '" "
                                _%method146244%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab146250%_
                                _%method146244%_
                                _%sym146245%_)))
                           (if (eq? _%existing146255%_ _%sym146245%_)
                               (let () '#!void)
                               (let ((__tmp148907
                                      (cons 'bind-method!
                                            (cons _%type-t146243%_
                                                  (cons _%method146244%_
                                                        (cons _%sym146245%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp148907
                                  _%method146244%_)))))
                     _%$e146252%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t146243%_
                         '" "
                         _%method146244%_
                         '" => "
                         _%sym146245%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab146250%_
                         _%method146244%_
                         _%sym146245%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t146243%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t146264%_ _%method146265%_ _%sym146266%_)
        (let ((_%rebind?146268%_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _%type-t146264%_
           _%method146265%_
           _%sym146266%_
           _%rebind?146268%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g148909_
        (let ((_g148908_ (let () (declare (not safe)) (##length _g148909_))))
          (cond ((let () (declare (not safe)) (##fx= _g148908_ 3))
                 (apply (lambda (_%type-t146264%_
                                 _%method146265%_
                                 _%sym146266%_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _%type-t146264%_
                             _%method146265%_
                             _%sym146266%_)))
                        _g148909_))
                ((let () (declare (not safe)) (##fx= _g148908_ 4))
                 (apply (lambda (_%type-t146270%_
                                 _%method146271%_
                                 _%sym146272%_
                                 _%rebind?146273%_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _%type-t146270%_
                             _%method146271%_
                             _%sym146272%_
                             _%rebind?146273%_)))
                        _g148909_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g148909_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym146231%_)
        (let ((_%$e146239%_
               (let ((_%ht146232146234%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-local-type))))
                 (if _%ht146232146234%_
                     (let ((_%ht146237%_ _%ht146232146234%_))
                       (declare (not safe))
                       (hash-get _%ht146237%_ _%sym146231%_))
                     '#f))))
          (if _%$e146239%_
              _%$e146239%_
              (let ((__tmp148910
                     (##structure-ref
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-optimizer-info))
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp148910 _%sym146231%_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym146223%_)
        (let ((_%type146224146226%_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _%sym146223%_))))
          (if _%type146224146226%_
              (let ((_%type146229%_ _%type146224146226%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type146229%_ 'gxc#!alias::t))
                    (let ((__tmp148911
                           (##structure-ref
                            _%type146229%_
                            '1
                            gxc#!type::t
                            '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp148911))
                    _%type146229%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym146219%_)
        (let ((_%table146221%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table146221%_ _%sym146219%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where146204%_ _%sym146205%_)
        (let ((_%$e146208%_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-class _%sym146205%_))))
          (if _%$e146208%_
              ((lambda (_%g146210146212%_)
                 (let ((_%val146215%_ _%g146210146212%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val146215%_
                          'gxc#!class::t))
                       _%val146215%_
                       (let ()
                         (declare (not safe))
                         (error '"bad cast" gxc#!class::t _%val146215%_)))))
               _%$e146208%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where146204%_
                   _%sym146205%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass146202%_)
        (let ((__tmp148912
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp148912 _%klass146202%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t146199%_ _%method146200%_)
        (let ((__tmp148913
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-class
                  'lookup-method
                  _%type-t146199%_))))
          (declare (not safe))
          (gxc#!class-lookup-method __tmp148913 _%method146200%_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_%sym146197%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _%sym146197%_))
        (let ((__tmp148914
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp148914 _%sym146197%_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym146195%_)
        (let ((__tmp148915
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp148915 _%sym146195%_))))))
