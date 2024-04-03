(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1712121900)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp148133 (list)) (__tmp148132 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp148133
         '(type classes ssxi methods)
         __tmp148132
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args148104%_
        (apply make-instance gxc#optimizer-info::t _%$args148104%_)))
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
      (lambda (_%self148091%_)
        (let ()
          (let ((_%self148094%_ _%self148091%_))
            (let ()
              (if (let ((__tmp148134
                         (let ()
                           (declare (not safe))
                           (##structure-length _%self148094%_))))
                    (declare (not safe))
                    (##fx< '4 __tmp148134))
                  (begin
                    (let ((__tmp148135
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%self148094%_
                       __tmp148135
                       '1
                       '#f
                       '#f))
                    (let ((__tmp148136
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%self148094%_
                       __tmp148136
                       '2
                       '#f
                       '#f))
                    (let ((__tmp148137
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%self148094%_
                       __tmp148137
                       '3
                       '#f
                       '#f))
                    (let ((__tmp148138
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%self148094%_
                       __tmp148138
                       '4
                       '#f
                       '#f))
                    '#!void)
                  (let ((__tmp148139
                         (let ()
                           (declare (not safe))
                           (##vector-length _%self148094%_))))
                    (declare (not safe))
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self148094%_
                           '4
                           __tmp148139))))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp148141 (list))
            (__tmp148140
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp148141
         '(id)
         __tmp148140
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args147966%_
        (apply make-instance gxc#!type::t _%$args147966%_)))
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
      (let ((__tmp148143 (list gxc#!type::t))
            (__tmp148142 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (make-class-type
         'gxc#!abort::t
         '!abort
         __tmp148143
         '()
         __tmp148142
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args147963%_
        (apply make-instance gxc#!abort::t _%$args147963%_)))
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
      (let ((__tmp148145 (list gxc#!type::t))
            (__tmp148144 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp148145
         '()
         __tmp148144
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args147960%_
        (apply make-instance gxc#!alias::t _%$args147960%_)))
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
      (let ((__tmp148147 (list gxc#!type::t))
            (__tmp148146
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp148147
         '(signature)
         __tmp148146
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (__make-class-predicate gxc#!procedure::t)))
    (define gxc#make-!procedure
      (lambda _%$args147957%_
        (apply make-instance gxc#!procedure::t _%$args147957%_)))
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
      (let ((__tmp148149 (list))
            (__tmp148148
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked)
                     (print: return effect arguments unchecked)))))
        (declare (not safe))
        (make-class-type
         'gxc#!signature::t
         '!signature
         __tmp148149
         '(return effect arguments unchecked)
         __tmp148148
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args147954%_
        (apply make-instance gxc#!signature::t _%$args147954%_)))
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
      (let ((__tmp148151 (list gxc#!procedure::t))
            (__tmp148150 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp148151
         '()
         __tmp148150
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args147951%_
        (apply make-instance gxc#!primitive-predicate::t _%$args147951%_)))
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
      (let ((__tmp148153 (list gxc#!type::t))
            (__tmp148152 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp148153
         '(class)
         __tmp148152
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args147948%_
        (apply make-instance gxc#!class-meta::t _%$args147948%_)))
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
      (let ((__tmp148155 (list gxc#!type::t))
            (__tmp148154
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
         __tmp148155
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp148154
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args147945%_
        (apply make-instance gxc#!class::t _%$args147945%_)))
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
      (let ((__tmp148157 (list gxc#!procedure::t))
            (__tmp148156 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp148157
         '()
         __tmp148156
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args147942%_
        (apply make-instance gxc#!predicate::t _%$args147942%_)))
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
      (let ((__tmp148159 (list gxc#!procedure::t))
            (__tmp148158 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp148159
         '()
         __tmp148158
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args147939%_
        (apply make-instance gxc#!constructor::t _%$args147939%_)))
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
      (let ((__tmp148161 (list gxc#!procedure::t))
            (__tmp148160 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp148161
         '(slot checked?)
         __tmp148160
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args147936%_
        (apply make-instance gxc#!accessor::t _%$args147936%_)))
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
      (let ((__tmp148163 (list gxc#!procedure::t))
            (__tmp148162 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp148163
         '(slot checked?)
         __tmp148162
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args147933%_
        (apply make-instance gxc#!mutator::t _%$args147933%_)))
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
      (let ((__tmp148165 (list gxc#!type::t))
            (__tmp148164 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (make-class-type
         'gxc#!interface::t
         '!interface
         __tmp148165
         '(methods)
         __tmp148164
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args147930%_
        (apply make-instance gxc#!interface::t _%$args147930%_)))
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
      (let ((__tmp148167 (list gxc#!procedure::t))
            (__tmp148166
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp148167
         '(arity dispatch inline inline-typedecl)
         __tmp148166
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args147927%_
        (apply make-instance gxc#!lambda::t _%$args147927%_)))
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
      (let ((__tmp148169 (list gxc#!procedure::t))
            (__tmp148168 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp148169
         '(clauses)
         __tmp148168
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args147924%_
        (apply make-instance gxc#!case-lambda::t _%$args147924%_)))
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
      (let ((__tmp148171 (list gxc#!procedure::t))
            (__tmp148170 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp148171
         '(table dispatch)
         __tmp148170
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args147921%_
        (apply make-instance gxc#!kw-lambda::t _%$args147921%_)))
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
      (let ((__tmp148173 (list gxc#!procedure::t))
            (__tmp148172 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp148173
         '(keys main)
         __tmp148172
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args147918%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args147918%_)))
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
      (let ((__tmp148174 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp148174
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args147915%_
        (apply make-instance gxc#!primitive::t _%$args147915%_)))
    (define gxc#!primitive-lambda::t
      (let ((__tmp148175 (list gxc#!primitive::t gxc#!lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp148175
         '()
         '((equal:))
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args147912%_
        (apply make-instance gxc#!primitive-lambda::t _%$args147912%_)))
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
      (let ((__tmp148176 (list gxc#!primitive::t gxc#!case-lambda::t)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp148176
         '()
         '((equal:))
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args147909%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args147909%_)))
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
      (lambda (_%self147896%_)
        (let ()
          (let ((_%self147899%_ _%self147896%_))
            (let ()
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147899%_
                 'abort
                 '1
                 '#f
                 '#f)))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self147760%_ _%klass147761%_)
        (let ()
          (let ((_%self147764%_ _%self147760%_))
            (let ()
              (let ()
                (declare (not safe))
                (##unchecked-structure-set! _%self147764%_ 'class '1 '#f '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147764%_
                 _%klass147761%_
                 '2
                 '#f
                 '#f)))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class-meta::t ':init! gxc#!class-meta:::init! '#f))
    (define gxc#!class:::init!__0
      (lambda (_%self147452%_
               _%id147453%_
               _%super147454%_
               _%slots147455%_
               _%ctor-method147456%_
               _%struct?147457%_
               _%final?147458%_
               _%system?147459%_
               _%metaclass147460%_)
        (let ()
          (let ((_%self147463%_ _%self147452%_))
            (let ()
              (let _%lp147473%_ ((_%rest147475%_ _%super147454%_))
                (let* ((_%rest147476147484%_ _%rest147475%_)
                       (_%else147478147492%_ (lambda () '#!void))
                       (_%K147480147498%_
                        (lambda (_%rest147495%_ _%super-id147496%_)
                          (if (let ((__tmp148177
                                     (let ((__tmp148178
                                            (cons '!class
                                                  (cons _%id147453%_ '()))))
                                       (declare (not safe))
                                       (gxc#optimizer-resolve-class
                                        __tmp148178
                                        _%super-id147496%_))))
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __tmp148177
                                 '8
                                 '#f
                                 '#f))
                              (let ((__tmp148179
                                     (cons '!class (cons _%id147453%_ '()))))
                                (declare (not safe))
                                (gxc#raise-compile-error
                                 '"cannot extend final class"
                                 __tmp148179
                                 _%super-id147496%_))
                              '#!void)
                          (let ()
                            (declare (not safe))
                            (_%lp147473%_ _%rest147495%_)))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%rest147476147484%_))
                      (let ((_%hd147481147501%_
                             (let ()
                               (declare (not safe))
                               (##car _%rest147476147484%_)))
                            (_%tl147482147503%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%rest147476147484%_))))
                        (let* ((_%super-id147506%_ _%hd147481147501%_)
                               (_%rest147508%_ _%tl147482147503%_))
                          (declare (not safe))
                          (_%K147480147498%_
                           _%rest147508%_
                           _%super-id147506%_)))
                      '#!void)))
              (let* ((_%ctor-method147559%_
                      (let ((_%$e147510%_ _%ctor-method147456%_))
                        (if _%$e147510%_
                            _%$e147510%_
                            (let _%lp147513%_ ((_%rest147515%_ _%super147454%_)
                                               (_%method147516%_ '#f))
                              (let* ((_%rest147517147525%_ _%rest147515%_)
                                     (_%else147519147533%_
                                      (lambda () _%method147516%_))
                                     (_%K147521147547%_
                                      (lambda (_%rest147536%_
                                               _%super-id147537%_)
                                        (let* ((_%klass147539%_
                                                (let ((__tmp148180
                                                       (cons '!class
                                                             (cons _%id147453%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-class
                                                   __tmp148180
                                                   _%super-id147537%_)))
                                               (_%$e147541%_
                                                (##structure-ref
                                                 _%klass147539%_
                                                 '6
                                                 gxc#!class::t
                                                 '#f)))
                                          (if _%$e147541%_
                                              ((lambda (_%ctor-method147544%_)
                                                 (if _%method147516%_
                                                     (if (eq? _%ctor-method147544%_
                                                              _%method147516%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (_%lp147513%_
                                                            _%rest147536%_
                                                            _%ctor-method147544%_))
                                                         (let ((__tmp148181
                                                                (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%id147453%_ '()))))
                   (declare (not safe))
                   (gxc#raise-compile-error
                    '"conflicting implicit constructor methods"
                    __tmp148181
                    _%method147516%_
                    _%ctor-method147544%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%lp147513%_
                                                        _%rest147536%_
                                                        _%ctor-method147544%_))))
                                               _%$e147541%_)
                                              (let ()
                                                (let ()
                                                  (declare (not safe))
                                                  (_%lp147513%_
                                                   _%rest147536%_
                                                   _%method147516%_))))))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%rest147517147525%_))
                                    (let ((_%hd147522147550%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%rest147517147525%_)))
                                          (_%tl147523147552%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%rest147517147525%_))))
                                      (let* ((_%super-id147555%_
                                              _%hd147522147550%_)
                                             (_%rest147557%_
                                              _%tl147523147552%_))
                                        (declare (not safe))
                                        (_%K147521147547%_
                                         _%rest147557%_
                                         _%super-id147555%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%else147519147533%_))))))))
                     (_g148182_
                      (let ((__tmp148187
                             (lambda (_%klass-id147561%_)
                               (cons _%klass-id147561%_
                                     (let ((__tmp148188
                                            (let ((__tmp148189
                                                   (cons '!class
                                                         (cons _%id147453%_
                                                               '()))))
                                              (declare (not safe))
                                              (gxc#optimizer-resolve-class
                                               __tmp148189
                                               _%klass-id147561%_))))
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        __tmp148188
                                        '3
                                        '#f
                                        '#f)))))
                            (__tmp148184
                             (lambda (_%klass-id147563%_)
                               (let ((__tmp148185
                                      (let ((__tmp148186
                                             (cons '!class
                                                   (cons _%id147453%_ '()))))
                                        (declare (not safe))
                                        (gxc#optimizer-resolve-class
                                         __tmp148186
                                         _%klass-id147563%_))))
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  __tmp148185
                                  '7
                                  '#f
                                  '#f)))))
                        (declare (not safe))
                        (c4-linearize
                         '()
                         _%super147454%_
                         'get-precedence-list:
                         __tmp148187
                         'struct:
                         __tmp148184
                         'eq:
                         eq?
                         'get-name:
                         identity))))
                (begin
                  (let ((_g148183_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g148182_)
                               (##vector-length _g148182_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g148183_ 2)))
                        (error "Context expects 2 values" _g148183_)))
                  (let ((_%precedence-list147565%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g148182_ 0)))
                        (_%base-struct147566%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g148182_ 1))))
                    (let* ((_%precedence-list147610%_
                            (if (let ()
                                  (declare (not safe))
                                  (##memq _%id147453%_ '(t object class)))
                                (let () _%precedence-list147565%_)
                                (if (memq 'object::t _%precedence-list147565%_)
                                    (let () _%precedence-list147565%_)
                                    (if _%system?147459%_
                                        (let ()
                                          (if (memq 't::t
                                                    _%precedence-list147565%_)
                                              _%precedence-list147565%_
                                              (let ()
                                                (declare (not safe))
                                                (##append
                                                 _%precedence-list147565%_
                                                 '(t::t)))))
                                        (let ()
                                          (let _%loop147572%_ ((_%tail147574%_
                                                                _%precedence-list147565%_)
                                                               (_%head147575%_
                                                                '()))
                                            (let* ((_%tail147576147584%_
                                                    _%tail147574%_)
                                                   (_%else147578147592%_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (__foldl1
                                                         cons
                                                         '(object::t t::t)
                                                         _%head147575%_))))
                                                   (_%K147580147598%_
                                                    (lambda (_%rest147595%_
                                                             _%hd147596%_)
                                                      (if (eq? _%hd147596%_
                                                               't::t)
                                                          (let ((__tmp148190
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons 'object::t _%tail147574%_)))
                    (declare (not safe))
                    (__foldl1 cons __tmp148190 _%head147575%_))
                  (let ((__tmp148191 (cons _%hd147596%_ _%head147575%_)))
                    (declare (not safe))
                    (_%loop147572%_ _%rest147595%_ __tmp148191))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tail147576147584%_))
                                                  (let ((_%hd147581147601%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tail147576147584%_)))
                                                        (_%tl147582147603%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tail147576147584%_))))
                                                    (let* ((_%hd147606%_
                                                            _%hd147581147601%_)
                                                           (_%rest147608%_
                                                            _%tl147582147603%_))
                                                      (declare (not safe))
                                                      (_%K147580147598%_
                                                       _%rest147608%_
                                                       _%hd147606%_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%else147578147592%_))))))))))
                           (_%fields147612%_
                            (let ((__tmp148192
                                   (cons '!class (cons _%id147453%_ '()))))
                              (declare (not safe))
                              (gxc#compute-class-fields
                               __tmp148192
                               _%base-struct147566%_
                               _%precedence-list147610%_
                               _%slots147455%_))))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _%self147463%_
                         _%id147453%_
                         '1
                         '#f
                         '#f))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _%self147463%_
                         _%super147454%_
                         '2
                         '#f
                         '#f))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _%self147463%_
                         _%precedence-list147610%_
                         '3
                         '#f
                         '#f))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _%self147463%_
                         _%slots147455%_
                         '4
                         '#f
                         '#f))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _%self147463%_
                         _%fields147612%_
                         '5
                         '#f
                         '#f))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _%self147463%_
                         _%ctor-method147559%_
                         '6
                         '#f
                         '#f))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _%self147463%_
                         _%struct?147457%_
                         '7
                         '#f
                         '#f))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _%self147463%_
                         _%final?147458%_
                         '8
                         '#f
                         '#f))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-set!
                         _%self147463%_
                         _%metaclass147460%_
                         '10
                         '#f
                         '#f)))))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self147615%_
               _%id147616%_
               _%super147617%_
               _%precedence-list147618%_
               _%slots147619%_
               _%fields147620%_
               _%constructor147621%_
               _%struct?147622%_
               _%final?147623%_
               _%system?147624%_
               _%metaclass147625%_
               _%methods147626%_)
        (let ()
          (let ((_%self147629%_ _%self147615%_))
            (let ()
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147629%_
                 _%id147616%_
                 '1
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147629%_
                 _%super147617%_
                 '2
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147629%_
                 _%precedence-list147618%_
                 '3
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147629%_
                 _%slots147619%_
                 '4
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147629%_
                 _%fields147620%_
                 '5
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147629%_
                 _%constructor147621%_
                 '6
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147629%_
                 _%struct?147622%_
                 '7
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147629%_
                 _%final?147623%_
                 '8
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147629%_
                 _%metaclass147625%_
                 '10
                 '#f
                 '#f))
              (if _%methods147626%_
                  (let ((__tmp148193
                         (let ()
                           (declare (not safe))
                           (list->hash-table-eq _%methods147626%_))))
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147629%_
                     __tmp148193
                     '11
                     '#f
                     '#f))
                  '#!void))))))
    (define gxc#!class:::init!
      (lambda _g148195_
        (let ((_g148194_ (let () (declare (not safe)) (##length _g148195_))))
          (cond ((let () (declare (not safe)) (##fx= _g148194_ 9))
                 (apply (lambda (_%self147452%_
                                 _%id147453%_
                                 _%super147454%_
                                 _%slots147455%_
                                 _%ctor-method147456%_
                                 _%struct?147457%_
                                 _%final?147458%_
                                 _%system?147459%_
                                 _%metaclass147460%_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__0
                             _%self147452%_
                             _%id147453%_
                             _%super147454%_
                             _%slots147455%_
                             _%ctor-method147456%_
                             _%struct?147457%_
                             _%final?147458%_
                             _%system?147459%_
                             _%metaclass147460%_)))
                        _g148195_))
                ((let () (declare (not safe)) (##fx= _g148194_ 12))
                 (apply (lambda (_%self147615%_
                                 _%id147616%_
                                 _%super147617%_
                                 _%precedence-list147618%_
                                 _%slots147619%_
                                 _%fields147620%_
                                 _%constructor147621%_
                                 _%struct?147622%_
                                 _%final?147623%_
                                 _%system?147624%_
                                 _%metaclass147625%_
                                 _%methods147626%_)
                          (let ()
                            (declare (not safe))
                            (gxc#!class:::init!__1
                             _%self147615%_
                             _%id147616%_
                             _%super147617%_
                             _%precedence-list147618%_
                             _%slots147619%_
                             _%fields147620%_
                             _%constructor147621%_
                             _%struct?147622%_
                             _%final?147623%_
                             _%system?147624%_
                             _%metaclass147625%_
                             _%methods147626%_)))
                        _g148195_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g148195_))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where147304%_
               _%base-struct147305%_
               _%precedence-list147306%_
               _%direct-slots147307%_)
        (let* ((_%base-fields147309%_
                (if _%base-struct147305%_
                    (let ((__tmp148196
                           (let ()
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%where147304%_
                              _%base-struct147305%_))))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp148196 '5 '#f '#f))
                    '()))
               (_%r-fields147311%_ (reverse _%base-fields147309%_))
               (_%seen-slots147319%_
                (let ((_%tab147313%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g147314147316%_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _%tab147313%_ _%g147314147316%_ '#t)))
                   _%base-fields147309%_)
                  _%tab147313%_))
               (_%process-slot147323%_
                (lambda (_%slot147321%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%seen-slots147319%_ _%slot147321%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _%seen-slots147319%_ _%slot147321%_ '#t))
                        (set! _%r-fields147311%_
                              (cons _%slot147321%_ _%r-fields147311%_)))))))
          (for-each
           (lambda (_%mixin147326%_)
             (let ((_%klass147328%_
                    (let ()
                      (declare (not safe))
                      (gxc#optimizer-resolve-class
                       _%where147304%_
                       _%mixin147326%_))))
               (if (##structure-ref _%klass147328%_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _%process-slot147323%_
                    (##structure-ref _%klass147328%_ '5 gxc#!class::t '#f)))))
           _%precedence-list147306%_)
          (for-each _%process-slot147323%_ _%direct-slots147307%_)
          (let () (declare (not safe)) (##reverse _%r-fields147311%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass147263%_ _%slot147264%_)
        (let _%lp147266%_ ((_%rest147268%_
                            (##structure-ref
                             _%klass147263%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset147269%_ '1))
          (let* ((_%rest147270147278%_ _%rest147268%_)
                 (_%else147272147286%_
                  (lambda ()
                    (let ((__tmp148198
                           (##structure-ref
                            _%klass147263%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp148197
                           (##structure-ref
                            _%klass147263%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp148198
                       __tmp148197
                       _%slot147264%_))))
                 (_%K147274147292%_
                  (lambda (_%rest147289%_ _%s147290%_)
                    (if (eq? _%s147290%_ _%slot147264%_)
                        _%offset147269%_
                        (let ((__tmp148199
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%offset147269%_ '1))))
                          (declare (not safe))
                          (_%lp147266%_ _%rest147289%_ __tmp148199))))))
            (if (let () (declare (not safe)) (##pair? _%rest147270147278%_))
                (let ((_%hd147275147295%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest147270147278%_)))
                      (_%tl147276147297%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest147270147278%_))))
                  (let* ((_%s147300%_ _%hd147275147295%_)
                         (_%rest147302%_ _%tl147276147297%_))
                    (declare (not safe))
                    (_%K147274147292%_ _%rest147302%_ _%s147300%_)))
                (let () (declare (not safe)) (_%else147272147286%_)))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass147221%_ _%slot147222%_)
        (if (let ()
              (declare (not safe))
              (gxc#!class-struct-slot? _%klass147221%_ _%slot147222%_))
            _%klass147221%_
            (let _%lp147224%_ ((_%rest147226%_
                                (##structure-ref
                                 _%klass147221%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest147227147235%_ _%rest147226%_)
                     (_%else147229147243%_ (lambda () '#f))
                     (_%K147231147251%_
                      (lambda (_%rest147246%_ _%super147247%_)
                        (let ((_%super-class147249%_
                               (let ((__tmp148200
                                      (cons '!class-slot-find-struct
                                            (cons (##structure-ref
                                                   _%klass147221%_
                                                   '1
                                                   gxc#!type::t
                                                   '#f)
                                                  (cons _%slot147222%_ '())))))
                                 (declare (not safe))
                                 (gxc#optimizer-resolve-class
                                  __tmp148200
                                  _%super147247%_))))
                          (if (let ()
                                (declare (not safe))
                                (gxc#!class-struct-slot?
                                 _%super-class147249%_
                                 _%slot147222%_))
                              _%super-class147249%_
                              (let ()
                                (declare (not safe))
                                (_%lp147224%_ _%rest147246%_)))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest147227147235%_))
                    (let ((_%hd147232147254%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest147227147235%_)))
                          (_%tl147233147256%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest147227147235%_))))
                      (let* ((_%super147259%_ _%hd147232147254%_)
                             (_%rest147261%_ _%tl147233147256%_))
                        (declare (not safe))
                        (_%K147231147251%_ _%rest147261%_ _%super147259%_)))
                    (let () (declare (not safe)) (_%else147229147243%_))))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass147218%_ _%slot147219%_)
        (if (##structure-ref _%klass147218%_ '7 gxc#!class::t '#f)
            (memq _%slot147219%_
                  (##structure-ref _%klass147218%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self147204%_ _%id147205%_)
        (let ()
          (let ((_%self147208%_ _%self147204%_))
            (let ()
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147208%_
                 _%id147205%_
                 '1
                 '#f
                 '#f))
              (let ((__tmp148201
                     (let ((__obj148127
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
                          __obj148127
                          'boolean::t
                          '1
                          '#f
                          '#f))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-set!
                          __obj148127
                          '(pure predicate)
                          '2
                          '#f
                          '#f))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-set!
                          __obj148127
                          '(t::t)
                          '3
                          '#f
                          '#f))
                       __obj148127)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147208%_
                 __tmp148201
                 '2
                 '#f
                 '#f)))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self147068%_ _%id147069%_)
        (let ()
          (let ((_%self147072%_ _%self147068%_))
            (let ()
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147072%_
                 _%id147069%_
                 '1
                 '#f
                 '#f))
              (let ((__tmp148202
                     (let ((__obj148128
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
                          __obj148128
                          _%id147069%_
                          '1
                          '#f
                          '#f))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-set!
                          __obj148128
                          '(alloc)
                          '2
                          '#f
                          '#f))
                       __obj148128)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147072%_
                 __tmp148202
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
      (lambda (_%self146930%_ _%id146931%_ _%slot146932%_ _%checked?146933%_)
        (let ()
          (let ((_%self146936%_ _%self146930%_))
            (let ()
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146936%_
                 _%id146931%_
                 '1
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146936%_
                 _%slot146932%_
                 '3
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146936%_
                 _%checked?146933%_
                 '4
                 '#f
                 '#f))
              (let ((__tmp148203
                     (let ((__obj148129
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
                          __obj148129
                          't::t
                          '1
                          '#f
                          '#f))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-set!
                          __obj148129
                          '(pure)
                          '2
                          '#f
                          '#f))
                       (let ((__tmp148204 (cons _%id146931%_ '())))
                         (declare (not safe))
                         (##unchecked-structure-set!
                          __obj148129
                          __tmp148204
                          '3
                          '#f
                          '#f))
                       __obj148129)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146936%_
                 __tmp148203
                 '2
                 '#f
                 '#f)))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self146792%_ _%id146793%_ _%slot146794%_ _%checked?146795%_)
        (let ()
          (let ((_%self146798%_ _%self146792%_))
            (let ()
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146798%_
                 _%id146793%_
                 '1
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146798%_
                 _%slot146794%_
                 '3
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146798%_
                 _%checked?146795%_
                 '4
                 '#f
                 '#f))
              (let ((__tmp148205
                     (let ((__obj148130
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
                          __obj148130
                          'void::t
                          '1
                          '#f
                          '#f))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-set!
                          __obj148130
                          '(mut)
                          '2
                          '#f
                          '#f))
                       (let ((__tmp148206
                              (cons _%id146793%_ (cons 't::t '()))))
                         (declare (not safe))
                         (##unchecked-structure-set!
                          __obj148130
                          __tmp148206
                          '3
                          '#f
                          '#f))
                       __obj148130)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146798%_
                 __tmp148205
                 '2
                 '#f
                 '#f)))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%_146635%_
               _%signature146632146637%_
               _%self146639%_
               _%arity146640%_
               _%dispatch146641%_)
        (let ((_%signature146643%_
               (if (eq? _%signature146632146637%_ absent-value)
                   '#f
                   _%signature146632146637%_)))
          (let ((_%self146646%_ _%self146639%_))
            (let ()
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146646%_
                 'procedure
                 '1
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146646%_
                 _%arity146640%_
                 '3
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146646%_
                 _%dispatch146641%_
                 '4
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146646%_
                 _%signature146643%_
                 '2
                 '#f
                 '#f)))))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords146660%_ . _%args146661%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords146660%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords146660%_
                  'signature:
                  absent-value))
               _%args146661%_)))
    (define gxc#!lambda:::init!
      (lambda _%args146633146667%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args146633146667%_)))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!
      (lambda (_%self146495%_ _%clauses146496%_)
        (let ()
          (let ((_%self146499%_ _%self146495%_))
            (let ()
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146499%_
                 'procedure
                 '1
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146499%_
                 _%clauses146496%_
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
      (lambda (_%self146358%_ _%tab146359%_ _%dispatch146360%_)
        (let ()
          (let ((_%self146363%_ _%self146358%_))
            (let ()
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146363%_
                 'procedure
                 '1
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146363%_
                 _%tab146359%_
                 '3
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146363%_
                 _%dispatch146360%_
                 '4
                 '#f
                 '#f)))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self146221%_ _%keys146222%_ _%main146223%_)
        (let ()
          (let ((_%self146226%_ _%self146221%_))
            (let ()
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146226%_
                 'procedure
                 '1
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146226%_
                 _%keys146222%_
                 '3
                 '#f
                 '#f))
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self146226%_
                 _%main146223%_
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
      (lambda (_%self145841%_ _%id145842%_)
        (let ()
          (let ((_%self145845%_ _%self145841%_))
            (let ()
              (let ()
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self145845%_
                 _%id145842%_
                 '1
                 '#f
                 '#f))
              (let ((__tmp148207
                     (let ((__obj148131
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
                          __obj148131
                          'boolean::t
                          '1
                          '#f
                          '#f))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-set!
                          __obj148131
                          '(pure)
                          '2
                          '#f
                          '#f))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-set!
                          __obj148131
                          '(t::t)
                          '3
                          '#f
                          '#f))
                       __obj148131)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self145845%_
                 __tmp148207
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
      (lambda (_%klass145710%_)
        (let ((_%$e145712%_
               (##structure-ref _%klass145710%_ '11 gxc#!class::t '#f)))
          (if _%$e145712%_
              _%$e145712%_
              (let ()
                (let ((_%tab145716%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (##structure-set!
                   _%klass145710%_
                   _%tab145716%_
                   '11
                   gxc#!class::t
                   '#f)
                  _%tab145716%_))))))
    (define gxc#!class-lookup-method
      (lambda (_%klass145701%_ _%method145702%_)
        (let ((_%tab145703145705%_
               (##structure-ref _%klass145701%_ '11 gxc#!class::t '#f)))
          (if _%tab145703145705%_
              (let ((_%tab145708%_ _%tab145703145705%_))
                (declare (not safe))
                (hash-get _%tab145708%_ _%method145702%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a145689%_ _%type-b145690%_)
        (if _%type-a145689%_
            (if _%type-b145690%_
                (let ((_%$e145692%_ (eq? _%type-a145689%_ _%type-b145690%_)))
                  (if _%$e145692%_
                      _%$e145692%_
                      (let ((_%$e145695%_
                             (eq? (##structure-ref
                                   _%type-b145690%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e145695%_
                            _%$e145695%_
                            (let ((_%$e145698%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a145689%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b145690%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e145698%_
                                  _%$e145698%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a145689%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b145690%_
                                             'gxc#!class::t))
                                          (let ()
                                            (declare (not safe))
                                            (gxc#!class-subclass?
                                             _%type-a145689%_
                                             _%type-b145690%_))
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a145640%_ _%klass-b145641%_)
        (let ((_%$e145643%_
               (eq? (##structure-ref _%klass-a145640%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b145641%_ '1 gxc#!type::t '#f))))
          (if _%$e145643%_
              _%$e145643%_
              (let ((_%klass-id-b145646%_
                     (##structure-ref _%klass-b145641%_ '1 gxc#!type::t '#f))
                    (_%precedence-list145647%_
                     (##structure-ref _%klass-a145640%_ '3 gxc#!class::t '#f)))
                (let _%loop145649%_ ((_%rest145651%_
                                      _%precedence-list145647%_))
                  (let* ((_%rest145652145660%_ _%rest145651%_)
                         (_%else145654145668%_ (lambda () '#f))
                         (_%K145656145677%_
                          (lambda (_%rest145671%_ _%klass-name145672%_)
                            (let ((_%$e145674%_
                                   (eq? (let ((__tmp148208
                                               (let ((__tmp148209
                                                      (cons 'subclass?
                                                            (cons _%klass-a145640%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%klass-b145641%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#optimizer-resolve-class
                                                  __tmp148209
                                                  _%klass-name145672%_))))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp148208
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b145646%_)))
                              (if _%$e145674%_
                                  _%$e145674%_
                                  (let ()
                                    (declare (not safe))
                                    (_%loop145649%_ _%rest145671%_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest145652145660%_))
                        (let ((_%hd145657145680%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest145652145660%_)))
                              (_%tl145658145682%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest145652145660%_))))
                          (let* ((_%klass-name145685%_ _%hd145657145680%_)
                                 (_%rest145687%_ _%tl145658145682%_))
                            (declare (not safe))
                            (_%K145656145677%_
                             _%rest145687%_
                             _%klass-name145685%_)))
                        (let ()
                          (declare (not safe))
                          (_%else145654145668%_))))))))))
    (define gxc#!interface-instance?
      (lambda (_%type145638%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145638%_ 'gxc#!class::t))
            (memq 'gerbil#interface-instance::t
                  (##structure-ref _%type145638%_ '3 gxc#!class::t '#f))
            '#f)))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym145620%_ _%type145621%_ _%local?145622%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145621%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym145620%_
                     _%type145621%_)))
        (let ((__tmp148210
               (let () (declare (not safe)) (struct->list _%type145621%_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym145620%_ '" " __tmp148210))
        (let ((_%table145624%_
               (if _%local?145622%_
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
          (hash-put! _%table145624%_ _%sym145620%_ _%type145621%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym145629%_ _%type145630%_)
        (let ((_%local?145632%_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-type!__%
           _%sym145629%_
           _%type145630%_
           _%local?145632%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g148212_
        (let ((_g148211_ (let () (declare (not safe)) (##length _g148212_))))
          (cond ((let () (declare (not safe)) (##fx= _g148211_ 2))
                 (apply (lambda (_%sym145629%_ _%type145630%_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__0
                             _%sym145629%_
                             _%type145630%_)))
                        _g148212_))
                ((let () (declare (not safe)) (##fx= _g148211_ 3))
                 (apply (lambda (_%sym145634%_ _%type145635%_ _%local?145636%_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-type!__%
                             _%sym145634%_
                             _%type145635%_
                             _%local?145636%_)))
                        _g148212_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g148212_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym145614%_ _%type145615%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145615%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym145614%_
                     _%type145615%_)))
        (let ((_%table145617%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp148213
                 (let () (declare (not safe)) (struct->list _%type145615%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym145614%_ '" " __tmp148213))
          (let ()
            (declare (not safe))
            (hash-put! _%table145617%_ _%sym145614%_ _%type145615%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table145617%_ _%type145615%_ _%sym145614%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym145609%_ _%type145610%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145610%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym145609%_
                     _%type145610%_)))
        (let ((_%table145612%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table145612%_ _%sym145609%_))
              '#!void
              (begin
                (let ((__tmp148214
                       (let ()
                         (declare (not safe))
                         (struct->list _%type145610%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym145609%_
                   '" "
                   __tmp148214))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table145612%_ _%sym145609%_ _%type145610%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table145612%_
                   _%type145610%_
                   _%sym145609%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym145607%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym145607%_))
        (let ((__tmp148215
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp148215 _%sym145607%_))
        (let ((__tmp148216
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp148216 _%sym145607%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t145575%_
               _%method145576%_
               _%sym145577%_
               _%rebind?145578%_)
        (let ((_%klass145580%_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-class _%type-t145575%_))))
          (if _%klass145580%_
              (let* ((_%vtab145582%_
                      (let ()
                        (declare (not safe))
                        (gxc#!class-method-table _%klass145580%_)))
                     (_%$e145584%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab145582%_ _%method145576%_))))
                (if _%$e145584%_
                    ((lambda (_%existing145587%_)
                       (if _%rebind?145578%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t145575%_
                                '" "
                                _%method145576%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab145582%_
                                _%method145576%_
                                _%sym145577%_)))
                           (if (eq? _%existing145587%_ _%sym145577%_)
                               (let () '#!void)
                               (let ()
                                 (let ((__tmp148217
                                        (cons 'bind-method!
                                              (cons _%type-t145575%_
                                                    (cons _%method145576%_
                                                          (cons _%sym145577%_
                                                                '()))))))
                                   (declare (not safe))
                                   (gxc#raise-compile-error
                                    '"declare-method: duplicate method declaration"
                                    __tmp148217
                                    _%method145576%_))))))
                     _%$e145584%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t145575%_
                         '" "
                         _%method145576%_
                         '" => "
                         _%sym145577%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab145582%_
                         _%method145576%_
                         _%sym145577%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t145575%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t145596%_ _%method145597%_ _%sym145598%_)
        (let ((_%rebind?145600%_ '#f))
          (declare (not safe))
          (gxc#optimizer-declare-method!__%
           _%type-t145596%_
           _%method145597%_
           _%sym145598%_
           _%rebind?145600%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g148219_
        (let ((_g148218_ (let () (declare (not safe)) (##length _g148219_))))
          (cond ((let () (declare (not safe)) (##fx= _g148218_ 3))
                 (apply (lambda (_%type-t145596%_
                                 _%method145597%_
                                 _%sym145598%_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__0
                             _%type-t145596%_
                             _%method145597%_
                             _%sym145598%_)))
                        _g148219_))
                ((let () (declare (not safe)) (##fx= _g148218_ 4))
                 (apply (lambda (_%type-t145602%_
                                 _%method145603%_
                                 _%sym145604%_
                                 _%rebind?145605%_)
                          (let ()
                            (declare (not safe))
                            (gxc#optimizer-declare-method!__%
                             _%type-t145602%_
                             _%method145603%_
                             _%sym145604%_
                             _%rebind?145605%_)))
                        _g148219_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g148219_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym145563%_)
        (let ((_%$e145571%_
               (let ((_%ht145564145566%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-local-type))))
                 (if _%ht145564145566%_
                     (let ((_%ht145569%_ _%ht145564145566%_))
                       (declare (not safe))
                       (hash-get _%ht145569%_ _%sym145563%_))
                     '#f))))
          (if _%$e145571%_
              _%$e145571%_
              (let ((__tmp148220
                     (##structure-ref
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-optimizer-info))
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp148220 _%sym145563%_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym145555%_)
        (let ((_%type145556145558%_
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-lookup-type _%sym145555%_))))
          (if _%type145556145558%_
              (let ((_%type145561%_ _%type145556145558%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type145561%_ 'gxc#!alias::t))
                    (let ((__tmp148221
                           (##structure-ref
                            _%type145561%_
                            '1
                            gxc#!type::t
                            '#f)))
                      (declare (not safe))
                      (gxc#optimizer-resolve-type __tmp148221))
                    _%type145561%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym145551%_)
        (let ((_%table145553%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table145553%_ _%sym145551%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where145535%_ _%sym145536%_)
        (let ()
          (let ((_%$e145548%_
                 (let ((_%klass145538145540%_
                        (let ()
                          (declare (not safe))
                          (gxc#optimizer-lookup-class _%sym145536%_))))
                   (if _%klass145538145540%_
                       (let* ((_%klass145543%_ _%klass145538145540%_)
                              (_%val145545%_ _%klass145543%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%val145545%_
                                'gxc#!class::t))
                             _%val145545%_
                             (let ()
                               (declare (not safe))
                               (error '"bad cast"
                                      gxc#!class::t
                                      _%val145545%_))))
                       '#f))))
            (if _%$e145548%_
                _%$e145548%_
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where145535%_
                   _%sym145536%_)))))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass145533%_)
        (let ((__tmp148222
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp148222 _%klass145533%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t145530%_ _%method145531%_)
        (let ((__tmp148223
               (let ()
                 (declare (not safe))
                 (gxc#optimizer-resolve-class
                  'lookup-method
                  _%type-t145530%_))))
          (declare (not safe))
          (gxc#!class-lookup-method __tmp148223 _%method145531%_))))
    (define gxc#optimizer-top-level-method!
      (lambda (_%sym145528%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _%sym145528%_))
        (let ((__tmp148224
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp148224 _%sym145528%_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym145526%_)
        (let ((__tmp148225
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp148225 _%sym145526%_))))))
