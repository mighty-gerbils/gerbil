(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1712124236)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp148168 (list)) (__tmp148167 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp148168
         '(type classes ssxi methods)
         __tmp148167
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args148139%_
        (apply make-instance gxc#optimizer-info::t _%$args148139%_)))
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
      (lambda (_%self148126%_)
        (let ()
          (let ((_%self148129%_ _%self148126%_))
            (let ()
              (if (let ((__tmp148169
                         (let ()
                           (declare (not safe))
                           (##structure-length _%self148129%_))))
                    (declare (not safe))
                    (##fx< '4 __tmp148169))
                  (begin
                    (let ((__tmp148170
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%self148129%_
                       __tmp148170
                       '1
                       '#f
                       '#f))
                    (let ((__tmp148171
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%self148129%_
                       __tmp148171
                       '2
                       '#f
                       '#f))
                    (let ((__tmp148172
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%self148129%_
                       __tmp148172
                       '3
                       '#f
                       '#f))
                    (let ((__tmp148173
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%self148129%_
                       __tmp148173
                       '4
                       '#f
                       '#f))
                    '#!void)
                  (let ((__tmp148174
                         (let ()
                           (declare (not safe))
                           (##vector-length _%self148129%_))))
                    (declare (not safe))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self148129%_
                           '4
                           __tmp148174))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp148176 (list))
            (__tmp148175
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp148176
         '(id)
         __tmp148175
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args148001%_
        (apply make-instance gxc#!type::t _%$args148001%_)))
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
      (let ((__tmp148178 (list gxc#!type::t))
            (__tmp148177 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (make-class-type
         'gxc#!abort::t
         '!abort
         __tmp148178
         '()
         __tmp148177
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args147998%_
        (apply make-instance gxc#!abort::t _%$args147998%_)))
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
      (let ((__tmp148180 (list gxc#!type::t))
            (__tmp148179 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp148180
         '()
         __tmp148179
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args147995%_
        (apply make-instance gxc#!alias::t _%$args147995%_)))
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
      (let ((__tmp148182 (list gxc#!type::t))
            (__tmp148181
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp148182
         '(signature)
         __tmp148181
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (__make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _%$args147992%_
        (apply make-instance gxc#!procedure::t _%$args147992%_)))
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
      (let ((__tmp148184 (list))
            (__tmp148183
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked)
                     (print: return effect arguments unchecked)))))
        (declare (not safe))
        (make-class-type
         'gxc#!signature::t
         '!signature
         __tmp148184
         '(return effect arguments unchecked)
         __tmp148183
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args147989%_
        (apply make-instance gxc#!signature::t _%$args147989%_)))
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
      (let ((__tmp148186 (list gxc#!procedure::t))
            (__tmp148185 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp148186
         '()
         __tmp148185
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args147986%_
        (apply make-instance gxc#!primitive-predicate::t _%$args147986%_)))
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
      (let ((__tmp148188 (list gxc#!type::t))
            (__tmp148187 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp148188
         '(class)
         __tmp148187
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args147983%_
        (apply make-instance gxc#!class-meta::t _%$args147983%_)))
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
      (let ((__tmp148190 (list gxc#!type::t))
            (__tmp148189
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
         __tmp148190
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp148189
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args147980%_
        (apply make-instance gxc#!class::t _%$args147980%_)))
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
      (let ((__tmp148192 (list gxc#!procedure::t))
            (__tmp148191 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp148192
         '()
         __tmp148191
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args147977%_
        (apply make-instance gxc#!predicate::t _%$args147977%_)))
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
      (let ((__tmp148194 (list gxc#!procedure::t))
            (__tmp148193 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp148194
         '()
         __tmp148193
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args147974%_
        (apply make-instance gxc#!constructor::t _%$args147974%_)))
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
      (let ((__tmp148196 (list gxc#!procedure::t))
            (__tmp148195 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp148196
         '(slot checked?)
         __tmp148195
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args147971%_
        (apply make-instance gxc#!accessor::t _%$args147971%_)))
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
      (let ((__tmp148198 (list gxc#!procedure::t))
            (__tmp148197 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp148198
         '(slot checked?)
         __tmp148197
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args147968%_
        (apply make-instance gxc#!mutator::t _%$args147968%_)))
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
      (let ((__tmp148200 (list gxc#!type::t))
            (__tmp148199 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (make-class-type
         'gxc#!interface::t
         '!interface
         __tmp148200
         '(methods)
         __tmp148199
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args147965%_
        (apply make-instance gxc#!interface::t _%$args147965%_)))
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
      (let ((__tmp148202 (list gxc#!procedure::t))
            (__tmp148201
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp148202
         '(arity dispatch inline inline-typedecl)
         __tmp148201
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args147962%_
        (apply make-instance gxc#!lambda::t _%$args147962%_)))
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
      (let ((__tmp148204 (list gxc#!procedure::t))
            (__tmp148203 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp148204
         '(clauses)
         __tmp148203
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args147959%_
        (apply make-instance gxc#!case-lambda::t _%$args147959%_)))
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
      (let ((__tmp148206 (list gxc#!procedure::t))
            (__tmp148205 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp148206
         '(table dispatch)
         __tmp148205
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args147956%_
        (apply make-instance gxc#!kw-lambda::t _%$args147956%_)))
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
      (let ((__tmp148208 (list gxc#!procedure::t))
            (__tmp148207 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp148208
         '(keys main)
         __tmp148207
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args147953%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args147953%_)))
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
      (let ((__tmp148209 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp148209
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args147950%_
        (apply make-instance gxc#!primitive::t _%$args147950%_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp148210 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp148210
         '()
         '((equal:))
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args147947%_
        (apply make-instance gxc#!primitive-lambda::t _%$args147947%_)))
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
      (let ((__tmp148211 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp148211
         '()
         '((equal:))
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args147944%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args147944%_)))
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
      (lambda (_%self147931%_)
        (let ()
          (let ((_%self147934%_ _%self147931%_))
            (let ()
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147934%_
                 'abort
                 '1
                 '#f
                 '#f)))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self147795%_ _%klass147796%_)
        (let ()
          (let ((_%self147799%_ _%self147795%_))
            (let ()
              (let ()
                (declare (not safe))
                (##unchecked-structure-set! _%self147799%_ 'class '1 '#f '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147799%_
                 _%klass147796%_
                 '2
                 '#f
                 '#f)))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class-meta::t ':init! gxc#!class-meta:::init! '#f))
    (define gxc#!class:::init!__0
      (lambda (_%self147487%_
               _%id147488%_
               _%super147489%_
               _%slots147490%_
               _%ctor-method147491%_
               _%struct?147492%_
               _%final?147493%_
               _%system?147494%_
               _%metaclass147495%_)
        (let ()
          (let ((_%self147498%_ _%self147487%_))
            (let ()
              (let _%lp147508%_ ((_%rest147510%_ _%super147489%_))
                (let* ((_%rest147511147519%_ _%rest147510%_)
                       (_%else147513147527%_ (lambda () '#!void))
                       (_%K147515147533%_
                        (lambda (_%rest147530%_ _%super-id147531%_)
                          (if (let ((__tmp148212
                                     (let ((__tmp148213
                                            (cons '!class
                                                  (cons _%id147488%_ '()))))
                                       (declare (not safe))
                                       (gxc#optimizer-resolve-class
                                        __tmp148213
                                        _%super-id147531%_))))
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __tmp148212
                                 '8
                                 '#f
                                 '#f))
                              (let ((__tmp148214
                                     (cons '!class (cons _%id147488%_ '()))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot extend final class"
                                 __tmp148214
                                 _%super-id147531%_))
                              '#!void)
                          (let ()
                            (declare (not safe))
                            (_%lp147508%_ _%rest147530%_)))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest147511147519%_))
                      (let ((_%hd147516147536%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest147511147519%_)))
                            (_%tl147517147538%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest147511147519%_))))
                        (let* ((_%super-id147541%_ _%hd147516147536%_)
                               (_%rest147543%_ _%tl147517147538%_))
                          (declare (not safe))
                          (_%K147515147533%_
                           _%rest147543%_
                           _%super-id147541%_)))
                      '#!void)))
              (let* ((_%ctor-method147594%_
                      (let ((_%$e147545%_ _%ctor-method147491%_))
                        (if _%$e147545%_
                            _%$e147545%_
                            (let _%lp147548%_ ((_%rest147550%_ _%super147489%_)
                                               (_%method147551%_ '#f))
                              (let* ((_%rest147552147560%_ _%rest147550%_)
                                     (_%else147554147568%_
                                      (lambda () _%method147551%_))
                                     (_%K147556147582%_
                                      (lambda (_%rest147571%_
                                               _%super-id147572%_)
                                        (let* ((_%klass147574%_
                                                (let ((__tmp148215
                                                       (cons '!class
                                                             (cons _%id147488%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp148215
                                                   _%super-id147572%_)))
                                               (_%$e147576%_
                                                (##structure-ref
                                                 _%klass147574%_
                                                 '6
                                                 gxc#!class::t
                                                 '#f)))
                                          (if _%$e147576%_
                                              ((lambda (_%ctor-method147579%_)
                                                 (if _%method147551%_
                                                     (if (eq? _%ctor-method147579%_
                                                              _%method147551%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%lp147548%_
                                                            _%rest147571%_
                                                            _%ctor-method147579%_))
                                                         (let ((__tmp148216
                                                                (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%id147488%_ '()))))
                   (declare (not safe))
                   (gxc#raise-compile-error
                    '"conflicting implicit constructor methods"
                    __tmp148216
                    _%method147551%_
                    _%ctor-method147579%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%lp147548%_
                                                        _%rest147571%_
                                                        _%ctor-method147579%_))))
                                               _%$e147576%_)
                                              (let ()
                                                (let ()
                                                  (declare (not safe))
                                                  (_%lp147548%_
                                                   _%rest147571%_
                                                   _%method147551%_))))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%rest147552147560%_))
                                    (let ((_%hd147557147585%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%rest147552147560%_)))
                                          (_%tl147558147587%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%rest147552147560%_))))
                                      (let* ((_%super-id147590%_
                                              _%hd147557147585%_)
                                             (_%rest147592%_
                                              _%tl147558147587%_))
                                        (declare (not safe))
                                        (_%K147556147582%_
                                         _%rest147592%_
                                         _%super-id147590%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%else147554147568%_))))))))
                     (_g148217_
                      (let ((__tmp148222
                             (lambda (_%klass-id147596%_)
                               (cons _%klass-id147596%_
                                     (let ((__tmp148223
                                            (let ((__tmp148224
                                                   (cons '!class
                                                         (cons _%id147488%_
                                                               '()))))
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               __tmp148224
                                               _%klass-id147596%_))))
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        __tmp148223
                                        '3
                                        '#f
                                        '#f)))))
                            (__tmp148219
                             (lambda (_%klass-id147598%_)
                               (let ((__tmp148220
                                      (let ((__tmp148221
                                             (cons '!class
                                                   (cons _%id147488%_ '()))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         __tmp148221
                                         _%klass-id147598%_))))
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  __tmp148220
                                  '7
                                  '#f
                                  '#f)))))
                        (declare (not safe))
                        (c4-linearize
                         '()
                         _%super147489%_
                         'get-precedence-list:
                         __tmp148222
                         'struct:
                         __tmp148219
                         'eq:
                         eq?
                         'get-name:
                         identity))))
                (begin
                  (let ((_g148218_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g148217_)
                               (##vector-length _g148217_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g148218_ 2)))
                        (error "Context expects 2 values" _g148218_)))
                  (let ((_%precedence-list147600%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g148217_ 0)))
                        (_%base-struct147601%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g148217_ 1))))
                    (let* ((_%precedence-list147645%_
                            (if (let ()
                                  (declare (not safe))
                                  (##memq _%id147488%_ '(t object class)))
                                (let () _%precedence-list147600%_)
                                (if (memq 'object::t _%precedence-list147600%_)
                                    (let () _%precedence-list147600%_)
                                    (if _%system?147494%_
                                        (let ()
                                          (if (memq 't::t
                                                    _%precedence-list147600%_)
                                              _%precedence-list147600%_
                                              (let ()
                                                (declare (not safe))
                                                (##append
                                                 _%precedence-list147600%_
                                                 '(t::t)))))
                                        (let ()
                                          (let _%loop147607%_ ((_%tail147609%_
                                                                _%precedence-list147600%_)
                                                               (_%head147610%_
                                                                '()))
                                            (let* ((_%tail147611147619%_
                                                    _%tail147609%_)
                                                   (_%else147613147627%_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (__foldl1
                                                         cons
                                                         '(object::t t::t)
                                                         _%head147610%_))))
                                                   (_%K147615147633%_
                                                    (lambda (_%rest147630%_
                                                             _%hd147631%_)
                                                      (if (eq? _%hd147631%_
                                                               't::t)
                                                          (let ((__tmp148225
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons 'object::t _%tail147609%_)))
                    (declare (not safe))
                    (__foldl1 cons __tmp148225 _%head147610%_))
                  (let ((__tmp148226 (cons _%hd147631%_ _%head147610%_)))
                    (declare (not safe))
                    (_%loop147607%_ _%rest147630%_ __tmp148226))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tail147611147619%_))
                                                  (let ((_%hd147616147636%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tail147611147619%_)))
                                                        (_%tl147617147638%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tail147611147619%_))))
                                                    (let* ((_%hd147641%_
                                                            _%hd147616147636%_)
                                                           (_%rest147643%_
                                                            _%tl147617147638%_))
                                                      (declare (not safe))
                                                      (_%K147615147633%_
                                                       _%rest147643%_
                                                       _%hd147641%_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%else147613147627%_))))))))))
                           (_%fields147647%_
                            (let ((__tmp148227
                                   (cons '!class (cons _%id147488%_ '()))))
                              (declare (not safe))
                              (gxc#compute-class-fields
                               __tmp148227
                               _%base-struct147601%_
                               _%precedence-list147645%_
                               _%slots147490%_))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _%self147498%_
                         _%id147488%_
                         '1
                         '#f
                         '#f))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _%self147498%_
                         _%super147489%_
                         '2
                         '#f
                         '#f))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _%self147498%_
                         _%precedence-list147645%_
                         '3
                         '#f
                         '#f))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _%self147498%_
                         _%slots147490%_
                         '4
                         '#f
                         '#f))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _%self147498%_
                         _%fields147647%_
                         '5
                         '#f
                         '#f))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _%self147498%_
                         _%ctor-method147594%_
                         '6
                         '#f
                         '#f))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _%self147498%_
                         _%struct?147492%_
                         '7
                         '#f
                         '#f))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _%self147498%_
                         _%final?147493%_
                         '8
                         '#f
                         '#f))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _%self147498%_
                         _%metaclass147495%_
                         '10
                         '#f
                         '#f)))))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self147650%_
               _%id147651%_
               _%super147652%_
               _%precedence-list147653%_
               _%slots147654%_
               _%fields147655%_
               _%constructor147656%_
               _%struct?147657%_
               _%final?147658%_
               _%system?147659%_
               _%metaclass147660%_
               _%methods147661%_)
        (let ()
          (let ((_%self147664%_ _%self147650%_))
            (let ()
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147664%_
                 _%id147651%_
                 '1
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147664%_
                 _%super147652%_
                 '2
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147664%_
                 _%precedence-list147653%_
                 '3
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147664%_
                 _%slots147654%_
                 '4
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147664%_
                 _%fields147655%_
                 '5
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147664%_
                 _%constructor147656%_
                 '6
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147664%_
                 _%struct?147657%_
                 '7
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147664%_
                 _%final?147658%_
                 '8
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147664%_
                 _%metaclass147660%_
                 '10
                 '#f
                 '#f))
              (if _%methods147661%_
                  (let ((__tmp148228
                         (let ()
                           (declare (not safe))
                           (list->hash-table-eq _%methods147661%_))))
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147664%_
                     __tmp148228
                     '11
                     '#f
                     '#f))
                  '#!void))))))
    (define gxc#!class:::init!
      (lambda _g148230_
        (let ((_g148229_ (let () (declare (not safe)) (##length _g148230_))))
          (cond ((let () (declare (not safe)) (##fx= _g148229_ 9))
                 (apply (lambda (_%self147487%_
                                 _%id147488%_
                                 _%super147489%_
                                 _%slots147490%_
                                 _%ctor-method147491%_
                                 _%struct?147492%_
                                 _%final?147493%_
                                 _%system?147494%_
                                 _%metaclass147495%_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _%self147487%_
                             _%id147488%_
                             _%super147489%_
                             _%slots147490%_
                             _%ctor-method147491%_
                             _%struct?147492%_
                             _%final?147493%_
                             _%system?147494%_
                             _%metaclass147495%_)))
                        _g148230_))
                ((let () (declare (not safe)) (##fx= _g148229_ 12))
                 (apply (lambda (_%self147650%_
                                 _%id147651%_
                                 _%super147652%_
                                 _%precedence-list147653%_
                                 _%slots147654%_
                                 _%fields147655%_
                                 _%constructor147656%_
                                 _%struct?147657%_
                                 _%final?147658%_
                                 _%system?147659%_
                                 _%metaclass147660%_
                                 _%methods147661%_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _%self147650%_
                             _%id147651%_
                             _%super147652%_
                             _%precedence-list147653%_
                             _%slots147654%_
                             _%fields147655%_
                             _%constructor147656%_
                             _%struct?147657%_
                             _%final?147658%_
                             _%system?147659%_
                             _%metaclass147660%_
                             _%methods147661%_)))
                        _g148230_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g148230_))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where147339%_
               _%base-struct147340%_
               _%precedence-list147341%_
               _%direct-slots147342%_)
        (let* ((_%base-fields147344%_
                (if _%base-struct147340%_
                    (let ((__tmp148231
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%where147339%_
                              _%base-struct147340%_))))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp148231 '5 '#f '#f))
                    '()))
               (_%r-fields147346%_ (reverse _%base-fields147344%_))
               (_%seen-slots147354%_
                (let ((_%tab147348%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g147349147351%_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _%tab147348%_ _%g147349147351%_ '#t)))
                   _%base-fields147344%_)
                  _%tab147348%_))
               (_%process-slot147358%_
                (lambda (_%slot147356%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%seen-slots147354%_ _%slot147356%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _%seen-slots147354%_ _%slot147356%_ '#t))
                        (set! _%r-fields147346%_
                              (cons _%slot147356%_ _%r-fields147346%_)))))))
          (for-each
           (lambda (_%mixin147361%_)
             (let ((_%klass147363%_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _%where147339%_
                       _%mixin147361%_))))
               (if (##structure-ref _%klass147363%_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _%process-slot147358%_
                    (##structure-ref _%klass147363%_ '5 gxc#!class::t '#f)))))
           _%precedence-list147341%_)
          (for-each _%process-slot147358%_ _%direct-slots147342%_)
          (let () (declare (not safe)) (##reverse _%r-fields147346%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass147298%_ _%slot147299%_)
        (let _%lp147301%_ ((_%rest147303%_
                            (##structure-ref
                             _%klass147298%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset147304%_ '1))
          (let* ((_%rest147305147313%_ _%rest147303%_)
                 (_%else147307147321%_
                  (lambda ()
                    (let ((__tmp148233
                           (##structure-ref
                            _%klass147298%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp148232
                           (##structure-ref
                            _%klass147298%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp148233
                       __tmp148232
                       _%slot147299%_))))
                 (_%K147309147327%_
                  (lambda (_%rest147324%_ _%s147325%_)
                    (if (eq? _%s147325%_ _%slot147299%_)
                        _%offset147304%_
                        (let ((__tmp148234
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%offset147304%_ '1))))
                          (declare (not safe))
                          (_%lp147301%_ _%rest147324%_ __tmp148234))))))
            (if (let () (declare (not safe)) (##pair? _%rest147305147313%_))
                (let ((_%hd147310147330%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest147305147313%_)))
                      (_%tl147311147332%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest147305147313%_))))
                  (let* ((_%s147335%_ _%hd147310147330%_)
                         (_%rest147337%_ _%tl147311147332%_))
                    (declare (not safe))
                    (_%K147309147327%_ _%rest147337%_ _%s147335%_)))
                (let () (declare (not safe)) (_%else147307147321%_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass147256%_ _%slot147257%_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _%klass147256%_ _%slot147257%_))
            _%klass147256%_
            (let _%lp147259%_ ((_%rest147261%_
                                (##structure-ref
                                 _%klass147256%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest147262147270%_ _%rest147261%_)
                     (_%else147264147278%_ (lambda () '#f))
                     (_%K147266147286%_
                      (lambda (_%rest147281%_ _%super147282%_)
                        (let ((_%super-class147284%_
                               (let ((__tmp148235
                                      (cons '!class-slot-find-struct
                                            (cons (##structure-ref
                                                   _%klass147256%_
                                                   '1
                                                   gxc#!type::t
                                                   '#f)
                                                  (cons _%slot147257%_ '())))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp148235
                                  _%super147282%_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _%super-class147284%_
                                 _%slot147257%_))
                              _%super-class147284%_
                              (let ()
                                (declare (not safe))
                                (_%lp147259%_ _%rest147281%_)))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest147262147270%_))
                    (let ((_%hd147267147289%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest147262147270%_)))
                          (_%tl147268147291%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest147262147270%_))))
                      (let* ((_%super147294%_ _%hd147267147289%_)
                             (_%rest147296%_ _%tl147268147291%_))
                        (declare (not safe))
                        (_%K147266147286%_ _%rest147296%_ _%super147294%_)))
                    (let () (declare (not safe)) (_%else147264147278%_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass147253%_ _%slot147254%_)
        (if (##structure-ref _%klass147253%_ '7 gxc#!class::t '#f)
            (memq _%slot147254%_
                  (##structure-ref _%klass147253%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self147239%_ _%id147240%_)
        (let ()
          (let ((_%self147243%_ _%self147239%_))
            (let ()
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147243%_
                 _%id147240%_
                 '1
                 '#f
                 '#f))
              (let ((__tmp148236
                     (let ((__obj148162
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
                          __obj148162
                          'boolean::t
                          '1
                          '#f
                          '#f))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-set!
                          __obj148162
                          '(pure predicate)
                          '2
                          '#f
                          '#f))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-set!
                          __obj148162
                          '(t::t)
                          '3
                          '#f
                          '#f))
                       __obj148162)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147243%_
                 __tmp148236
                 '2
                 '#f
                 '#f)))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self147103%_ _%id147104%_)
        (let ()
          (let ((_%self147107%_ _%self147103%_))
            (let ()
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147107%_
                 _%id147104%_
                 '1
                 '#f
                 '#f))
              (let ((__tmp148237
                     (let ((__obj148163
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
                          __obj148163
                          _%id147104%_
                          '1
                          '#f
                          '#f))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-set!
                          __obj148163
                          '(alloc)
                          '2
                          '#f
                          '#f))
                       __obj148163)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147107%_
                 __tmp148237
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
      (lambda (_%self146965%_ _%id146966%_ _%slot146967%_ _%checked?146968%_)
        (let ()
          (let ((_%self146971%_ _%self146965%_))
            (let ()
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146971%_
                 _%id146966%_
                 '1
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146971%_
                 _%slot146967%_
                 '3
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146971%_
                 _%checked?146968%_
                 '4
                 '#f
                 '#f))
              (let ((__tmp148238
                     (let ((__obj148164
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
                          __obj148164
                          't::t
                          '1
                          '#f
                          '#f))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-set!
                          __obj148164
                          '(pure)
                          '2
                          '#f
                          '#f))
                       (let ((__tmp148239 (cons _%id146966%_ '())))
                         (declare (not safe))
                         (##unchecked-structure-set!
                          __obj148164
                          __tmp148239
                          '3
                          '#f
                          '#f))
                       __obj148164)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146971%_
                 __tmp148238
                 '2
                 '#f
                 '#f)))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self146827%_ _%id146828%_ _%slot146829%_ _%checked?146830%_)
        (let ()
          (let ((_%self146833%_ _%self146827%_))
            (let ()
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146833%_
                 _%id146828%_
                 '1
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146833%_
                 _%slot146829%_
                 '3
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146833%_
                 _%checked?146830%_
                 '4
                 '#f
                 '#f))
              (let ((__tmp148240
                     (let ((__obj148165
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
                          __obj148165
                          'void::t
                          '1
                          '#f
                          '#f))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-set!
                          __obj148165
                          '(mut)
                          '2
                          '#f
                          '#f))
                       (let ((__tmp148241
                              (cons _%id146828%_ (cons 't::t '()))))
                         (declare (not safe))
                         (##unchecked-structure-set!
                          __obj148165
                          __tmp148241
                          '3
                          '#f
                          '#f))
                       __obj148165)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146833%_
                 __tmp148240
                 '2
                 '#f
                 '#f)))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%_146670%_
               _%signature146667146672%_
               _%self146674%_
               _%arity146675%_
               _%dispatch146676%_)
        (let ((_%signature146678%_
               (if (eq? _%signature146667146672%_ absent-value)
                   '#f
                   _%signature146667146672%_)))
          (let ((_%self146681%_ _%self146674%_))
            (let ()
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146681%_
                 'procedure
                 '1
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146681%_
                 _%arity146675%_
                 '3
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146681%_
                 _%dispatch146676%_
                 '4
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146681%_
                 _%signature146678%_
                 '2
                 '#f
                 '#f)))))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords146695%_ . _%args146696%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords146695%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords146695%_
                  'signature:
                  absent-value))
               _%args146696%_)))
    (define gxc#!lambda:::init!
      (lambda _%args146668146702%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args146668146702%_)))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!
      (lambda (_%self146530%_ _%clauses146531%_)
        (let ()
          (let ((_%self146534%_ _%self146530%_))
            (let ()
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146534%_
                 'procedure
                 '1
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146534%_
                 _%clauses146531%_
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
      (lambda (_%self146393%_ _%tab146394%_ _%dispatch146395%_)
        (let ()
          (let ((_%self146398%_ _%self146393%_))
            (let ()
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146398%_
                 'procedure
                 '1
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146398%_
                 _%tab146394%_
                 '3
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146398%_
                 _%dispatch146395%_
                 '4
                 '#f
                 '#f)))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self146256%_ _%keys146257%_ _%main146258%_)
        (let ()
          (let ((_%self146261%_ _%self146256%_))
            (let ()
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146261%_
                 'procedure
                 '1
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146261%_
                 _%keys146257%_
                 '3
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146261%_
                 _%main146258%_
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
      (lambda (_%self145876%_ _%id145877%_)
        (let ()
          (let ((_%self145880%_ _%self145876%_))
            (let ()
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self145880%_
                 _%id145877%_
                 '1
                 '#f
                 '#f))
              (let ((__tmp148242
                     (let ((__obj148166
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
                          __obj148166
                          'boolean::t
                          '1
                          '#f
                          '#f))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-set!
                          __obj148166
                          '(pure)
                          '2
                          '#f
                          '#f))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-set!
                          __obj148166
                          '(t::t)
                          '3
                          '#f
                          '#f))
                       __obj148166)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self145880%_
                 __tmp148242
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
      (lambda (_%klass145745%_)
        (let ((_%$e145747%_
               (##structure-ref _%klass145745%_ '11 gxc#!class::t '#f)))
          (if _%$e145747%_
              _%$e145747%_
              (let ()
                (let ((_%tab145751%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (##structure-set!
                   _%klass145745%_
                   _%tab145751%_
                   '11
                   gxc#!class::t
                   '#f)
                  _%tab145751%_))))))
    (define gxc#!class-lookup-method
      (lambda (_%klass145736%_ _%method145737%_)
        (let ((_%tab145738145740%_
               (##structure-ref _%klass145736%_ '11 gxc#!class::t '#f)))
          (if _%tab145738145740%_
              (let ((_%tab145743%_ _%tab145738145740%_))
                (declare (not safe))
                (hash-get _%tab145743%_ _%method145737%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a145724%_ _%type-b145725%_)
        (if _%type-a145724%_
            (if _%type-b145725%_
                (let ((_%$e145727%_ (eq? _%type-a145724%_ _%type-b145725%_)))
                  (if _%$e145727%_
                      _%$e145727%_
                      (let ((_%$e145730%_
                             (eq? (##structure-ref
                                   _%type-b145725%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e145730%_
                            _%$e145730%_
                            (let ((_%$e145733%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a145724%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b145725%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e145733%_
                                  _%$e145733%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a145724%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b145725%_
                                             'gxc#!class::t))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#!class-subclass?
                                             _%type-a145724%_
                                             _%type-b145725%_))
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a145675%_ _%klass-b145676%_)
        (let ((_%$e145678%_
               (eq? (##structure-ref _%klass-a145675%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b145676%_ '1 gxc#!type::t '#f))))
          (if _%$e145678%_
              _%$e145678%_
              (let ((_%klass-id-b145681%_
                     (##structure-ref _%klass-b145676%_ '1 gxc#!type::t '#f))
                    (_%precedence-list145682%_
                     (##structure-ref _%klass-a145675%_ '3 gxc#!class::t '#f)))
                (let _%loop145684%_ ((_%rest145686%_
                                      _%precedence-list145682%_))
                  (let* ((_%rest145687145695%_ _%rest145686%_)
                         (_%else145689145703%_ (lambda () '#f))
                         (_%K145691145712%_
                          (lambda (_%rest145706%_ _%klass-name145707%_)
                            (let ((_%$e145709%_
                                   (eq? (let ((__tmp148243
                                               (let ((__tmp148244
                                                      (cons 'subclass?
                                                            (cons _%klass-a145675%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%klass-b145676%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp148244
                                                  _%klass-name145707%_))))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp148243
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b145681%_)))
                              (if _%$e145709%_
                                  _%$e145709%_
                                  (let ()
                                    (declare (not safe))
                                    (_%loop145684%_ _%rest145706%_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest145687145695%_))
                        (let ((_%hd145692145715%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest145687145695%_)))
                              (_%tl145693145717%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest145687145695%_))))
                          (let* ((_%klass-name145720%_ _%hd145692145715%_)
                                 (_%rest145722%_ _%tl145693145717%_))
                            (declare (not safe))
                            (_%K145691145712%_
                             _%rest145722%_
                             _%klass-name145720%_)))
                        (let ()
                          (declare (not safe))
                          (_%else145689145703%_))))))))))
    (define gxc#!interface-instance?
      (lambda (_%type145673%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145673%_ 'gxc#!class::t))
            (memq 'gerbil#interface-instance::t
                  (##structure-ref _%type145673%_ '3 gxc#!class::t '#f))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym145655%_ _%type145656%_ _%local?145657%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145656%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym145655%_
                     _%type145656%_)))
        (let ((__tmp148245
               (let () (declare (not safe)) (struct->list _%type145656%_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym145655%_ '" " __tmp148245))
        (let ((_%table145659%_
               (if _%local?145657%_
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
          (hash-put! _%table145659%_ _%sym145655%_ _%type145656%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym145664%_ _%type145665%_)
        (let ((_%local?145667%_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _%sym145664%_
           _%type145665%_
           _%local?145667%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g148247_
        (let ((_g148246_ (let () (declare (not safe)) (##length _g148247_))))
          (cond ((let () (declare (not safe)) (##fx= _g148246_ 2))
                 (apply (lambda (_%sym145664%_ _%type145665%_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _%sym145664%_
                             _%type145665%_)))
                        _g148247_))
                ((let () (declare (not safe)) (##fx= _g148246_ 3))
                 (apply (lambda (_%sym145669%_ _%type145670%_ _%local?145671%_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _%sym145669%_
                             _%type145670%_
                             _%local?145671%_)))
                        _g148247_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g148247_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym145649%_ _%type145650%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145650%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym145649%_
                     _%type145650%_)))
        (let ((_%table145652%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp148248
                 (let () (declare (not safe)) (struct->list _%type145650%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym145649%_ '" " __tmp148248))
          (let ()
            (declare (not safe))
            (hash-put! _%table145652%_ _%sym145649%_ _%type145650%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table145652%_ _%type145650%_ _%sym145649%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym145644%_ _%type145645%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145645%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym145644%_
                     _%type145645%_)))
        (let ((_%table145647%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table145647%_ _%sym145644%_))
              '#!void
              (begin
                (let ((__tmp148249
                       (let ()
                         (declare (not safe))
                         (struct->list _%type145645%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym145644%_
                   '" "
                   __tmp148249))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table145647%_ _%sym145644%_ _%type145645%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table145647%_
                   _%type145645%_
                   _%sym145644%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym145642%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym145642%_))
        (let ((__tmp148250
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp148250 _%sym145642%_))
        (let ((__tmp148251
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp148251 _%sym145642%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t145610%_
               _%method145611%_
               _%sym145612%_
               _%rebind?145613%_)
        (let ((_%klass145615%_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-class _%type-t145610%_))))
          (if _%klass145615%_
              (let* ((_%vtab145617%_
                      (let ()
                        (declare (not safe))
                        (gxc#!class-method-table _%klass145615%_)))
                     (_%$e145619%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab145617%_ _%method145611%_))))
                (if _%$e145619%_
                    ((lambda (_%existing145622%_)
                       (if _%rebind?145613%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t145610%_
                                '" "
                                _%method145611%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab145617%_
                                _%method145611%_
                                _%sym145612%_)))
                           (if (eq? _%existing145622%_ _%sym145612%_)
                               (let () '#!void)
                               (let ()
                                 (let ((__tmp148252
                                        (cons 'bind-method!
                                              (cons _%type-t145610%_
                                                    (cons _%method145611%_
                                                          (cons _%sym145612%_
                                                                '()))))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"declare-method: duplicate method declaration"
                                    __tmp148252
                                    _%method145611%_))))))
                     _%$e145619%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t145610%_
                         '" "
                         _%method145611%_
                         '" => "
                         _%sym145612%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab145617%_
                         _%method145611%_
                         _%sym145612%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t145610%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t145631%_ _%method145632%_ _%sym145633%_)
        (let ((_%rebind?145635%_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _%type-t145631%_
           _%method145632%_
           _%sym145633%_
           _%rebind?145635%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g148254_
        (let ((_g148253_ (let () (declare (not safe)) (##length _g148254_))))
          (cond ((let () (declare (not safe)) (##fx= _g148253_ 3))
                 (apply (lambda (_%type-t145631%_
                                 _%method145632%_
                                 _%sym145633%_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _%type-t145631%_
                             _%method145632%_
                             _%sym145633%_)))
                        _g148254_))
                ((let () (declare (not safe)) (##fx= _g148253_ 4))
                 (apply (lambda (_%type-t145637%_
                                 _%method145638%_
                                 _%sym145639%_
                                 _%rebind?145640%_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _%type-t145637%_
                             _%method145638%_
                             _%sym145639%_
                             _%rebind?145640%_)))
                        _g148254_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g148254_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym145598%_)
        (let ((_%$e145606%_
               (let ((_%ht145599145601%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-local-type))))
                 (if _%ht145599145601%_
                     (let ((_%ht145604%_ _%ht145599145601%_))
                       (declare (not safe))
                       (hash-get _%ht145604%_ _%sym145598%_))
                     '#f))))
          (if _%$e145606%_
              _%$e145606%_
              (let ((__tmp148255
                     (##structure-ref
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-optimizer-info))
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp148255 _%sym145598%_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym145590%_)
        (let ((_%type145591145593%_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _%sym145590%_))))
          (if _%type145591145593%_
              (let ((_%type145596%_ _%type145591145593%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type145596%_ 'gxc#!alias::t))
                    (let ((__tmp148256
                           (##structure-ref
                            _%type145596%_
                            '1
                            gxc#!type::t
                            '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp148256))
                    _%type145596%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym145586%_)
        (let ((_%table145588%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table145588%_ _%sym145586%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where145570%_ _%sym145571%_)
        (let ()
          (let ((_%$e145583%_
                 (let ((_%klass145573145575%_
                        (let ()
                          (declare (not safe))
                          (gxc#optimizer-lookup-class _%sym145571%_))))
                   (if _%klass145573145575%_
                       (let* ((_%klass145578%_ _%klass145573145575%_)
                              (_%val145580%_ _%klass145578%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%val145580%_
                                'gxc#!class::t))
                             _%val145580%_
                             (let ()
                               (declare (not safe))
                               (error '"bad cast"
                                      gxc#!class::t
                                      _%val145580%_))))
                       '#f))))
            (if _%$e145583%_
                _%$e145583%_
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where145570%_
                   _%sym145571%_)))))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass145568%_)
        (let ((__tmp148257
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp148257 _%klass145568%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t145565%_ _%method145566%_)
        (let ((__tmp148258
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-class
                  'lookup-method
                  _%type-t145565%_))))
          (declare (not safe))
          (gxc#!class-lookup-method __tmp148258 _%method145566%_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_%sym145563%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _%sym145563%_))
        (let ((__tmp148259
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp148259 _%sym145563%_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym145561%_)
        (let ((__tmp148260
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp148260 _%sym145561%_))))))
