(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1781138359)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp212163 (list)) (__tmp212162 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp212163
         '(type classes ssxi methods)
         __tmp212162
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args212082%_
        (apply make-instance gxc#optimizer-info::t _%$args212082%_)))
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
      (lambda (_%self212069%_)
        (let ((_%self212072%_ _%self212069%_))
          (if (let ((__tmp212164
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self212072%_))))
                (declare (not safe))
                (##fx< '4 __tmp212164))
              (begin
                (let ((__tmp212165
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self212072%_
                   __tmp212165
                   '1
                   '#f
                   '#f))
                (let ((__tmp212166
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self212072%_
                   __tmp212166
                   '2
                   '#f
                   '#f))
                (let ((__tmp212167
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self212072%_
                   __tmp212167
                   '3
                   '#f
                   '#f))
                (let ((__tmp212168
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self212072%_
                   __tmp212168
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp212169
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self212072%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self212072%_
                       '4
                       __tmp212169))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp212171 (list))
            (__tmp212170
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp212171
         '(id)
         __tmp212170
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args211944%_
        (apply make-instance gxc#!type::t _%$args211944%_)))
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
      (let ((__tmp212173 (list gxc#!type::t))
            (__tmp212172 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp212173
         '()
         __tmp212172
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args211941%_
        (apply make-instance gxc#!abort::t _%$args211941%_)))
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
      (let ((__tmp212175 (list gxc#!type::t))
            (__tmp212174 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp212175
         '()
         __tmp212174
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args211938%_
        (apply make-instance gxc#!alias::t _%$args211938%_)))
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
    (define gxc#!signature::t
      (let ((__tmp212177 (list))
            (__tmp212176
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp212177
         '(return effect arguments unchecked origin)
         __tmp212176
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args211935%_
        (apply make-instance gxc#!signature::t _%$args211935%_)))
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
    (define gxc#!signature-origin
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!signature::t 'origin)))
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
    (define gxc#!signature-origin-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!signature::t 'origin)))
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
    (define gxc#&!signature-origin
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!signature::t 'origin)))
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
    (define gxc#&!signature-origin-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!signature::t 'origin)))
    (define gxc#!procedure::t
      (let ((__tmp212179 (list gxc#!type::t))
            (__tmp212178
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp212179
         '(signature)
         __tmp212178
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (__make-class-predicate gxc#!procedure::t)))
    (define gxc#!procedure-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!procedure::t 'signature)))
    (define gxc#!procedure-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!procedure::t 'id)))
    (define gxc#!procedure-unchecked-signature-set!
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
    (define gxc#&!procedure-unchecked-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!procedure::t 'signature)))
    (define gxc#&!procedure-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!procedure::t 'id)))
    (define gxc#__make-!procedure
      (lambda (_%id211922%_ _%signature211923%_)
        (let ((_%signature211926%_ _%signature211923%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id211922%_ _%signature211926%_))))
    (define gxc#make-!procedure
      (lambda (_%id211900%_ _%signature211902%_)
        (if (or (not _%signature211902%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%signature211902%_
                   'gxc#!signature::t)))
            (let ((_%signature211912%_ _%signature211902%_))
              (gxc#__make-!procedure _%id211900%_ _%signature211912%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature211902%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj211879%_ _%signature211880%_)
        (let* ((_%$obj211883%_ _%$obj211879%_)
               (_%signature211891%_ _%signature211880%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj211883%_
           _%signature211891%_
           '2
           '#f
           '#f))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj211846%_ _%signature211848%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj211846%_ 'gxc#!procedure::t))
            (let ((_%$obj211853%_ _%$obj211846%_))
              (if (or (not _%signature211848%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature211848%_
                         'gxc#!signature::t)))
                  (let ((_%signature211869%_ _%signature211848%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj211853%_
                     _%signature211869%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature211848%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj211846%_)
              '#!void))))
    (define gxc#!class-meta::t
      (let ((__tmp212181 (list gxc#!type::t))
            (__tmp212180 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp212181
         '(class)
         __tmp212180
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args211843%_
        (apply make-instance gxc#!class-meta::t _%$args211843%_)))
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
      (let ((__tmp212183 (list gxc#!type::t))
            (__tmp212182
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
         __tmp212183
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp212182
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args211840%_
        (apply make-instance gxc#!class::t _%$args211840%_)))
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
      (let ((__tmp212185 (list gxc#!procedure::t))
            (__tmp212184 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp212185
         '()
         __tmp212184
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args211837%_
        (apply make-instance gxc#!predicate::t _%$args211837%_)))
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
      (let ((__tmp212187 (list gxc#!procedure::t))
            (__tmp212186 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp212187
         '()
         __tmp212186
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args211834%_
        (apply make-instance gxc#!constructor::t _%$args211834%_)))
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
      (let ((__tmp212189 (list gxc#!procedure::t))
            (__tmp212188 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp212189
         '(slot checked?)
         __tmp212188
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args211831%_
        (apply make-instance gxc#!accessor::t _%$args211831%_)))
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
      (let ((__tmp212191 (list gxc#!procedure::t))
            (__tmp212190 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp212191
         '(slot checked?)
         __tmp212190
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args211828%_
        (apply make-instance gxc#!mutator::t _%$args211828%_)))
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
      (let ((__tmp212193 (list gxc#!type::t))
            (__tmp212192 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp212193
         '(methods)
         __tmp212192
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args211825%_
        (apply make-instance gxc#!interface::t _%$args211825%_)))
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
      (let ((__tmp212195 (list gxc#!procedure::t))
            (__tmp212194
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp212195
         '(arity dispatch inline inline-typedecl)
         __tmp212194
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args211822%_
        (apply make-instance gxc#!lambda::t _%$args211822%_)))
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
      (let ((__tmp212197 (list gxc#!procedure::t))
            (__tmp212196 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp212197
         '(clauses)
         __tmp212196
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args211819%_
        (apply make-instance gxc#!case-lambda::t _%$args211819%_)))
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
      (let ((__tmp212199 (list gxc#!procedure::t))
            (__tmp212198
             (cons (cons 'struct: '#t) '((equal: table dispatch)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp212199
         '(table dispatch)
         __tmp212198
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args211816%_
        (apply make-instance gxc#!kw-lambda::t _%$args211816%_)))
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
      (let ((__tmp212201 (list gxc#!procedure::t))
            (__tmp212200 (cons (cons 'struct: '#t) '((equal: keys main)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp212201
         '(keys main)
         __tmp212200
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args211813%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args211813%_)))
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
      (let ((__tmp212202 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp212202
         '()
         '((equal:))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args211810%_
        (apply make-instance gxc#!primitive::t _%$args211810%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp212204 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp212203 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp212204
         '()
         __tmp212203
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args211807%_
        (apply make-instance gxc#!primitive-predicate::t _%$args211807%_)))
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
    (define gxc#!primitive-lambda::t
      (let ((__tmp212206 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp212205 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp212206
         '()
         __tmp212205
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args211804%_
        (apply make-instance gxc#!primitive-lambda::t _%$args211804%_)))
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
      (let ((__tmp212208 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp212207 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp212208
         '()
         __tmp212207
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args211801%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args211801%_)))
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
      (lambda (_%self211788%_)
        (let ((_%self211791%_ _%self211788%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self211791%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self211651%_ _%klass211652%_)
        (let ((_%self211655%_ _%self211651%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self211655%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self211655%_
             _%klass211652%_
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!class-meta::t
       ':init!
       gxc#!class-meta:::init!
       '#f))
    (define gxc#!class:::init!__0
      (lambda (_%self211341%_
               _%id211342%_
               _%super211343%_
               _%slots211344%_
               _%ctor-method211345%_
               _%struct?211346%_
               _%final?211347%_
               _%system?211348%_
               _%metaclass211349%_)
        (let ((_%self211352%_ _%self211341%_))
          (let _%lp211363%_ ((_%rest211365%_ _%super211343%_))
            (let* ((_%$%rest211366211374%_ _%rest211365%_)
                   (_%$%else211368211382%_ (lambda () '#!void))
                   (_%$%K211370211388%_
                    (lambda (_%rest211385%_ _%super-id211386%_)
                      (if (let ((__tmp212209
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id211342%_ '()))
                                  _%super-id211386%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp212209 '8 '#f '#f))
                          (let ((__tmp212210
                                 (cons '!class (cons _%id211342%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp212210
                             _%super-id211386%_))
                          '#!void)
                      (_%lp211363%_ _%rest211385%_))))
              (if (pair? _%$%rest211366211374%_)
                  (let ((_%$%hd211371211391%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest211366211374%_)))
                        (_%$%tl211372211393%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest211366211374%_))))
                    (let* ((_%super-id211396%_ _%$%hd211371211391%_)
                           (_%rest211398%_ _%$%tl211372211393%_))
                      (_%$%K211370211388%_ _%rest211398%_ _%super-id211396%_)))
                  '#!void)))
          (let* ((_%ctor-method211449%_
                  (let ((_%$e211400%_ _%ctor-method211345%_))
                    (if _%$e211400%_
                        _%$e211400%_
                        (let _%lp211403%_ ((_%rest211405%_ _%super211343%_)
                                           (_%method211406%_ '#f))
                          (let* ((_%$%rest211407211415%_ _%rest211405%_)
                                 (_%$%else211409211423%_
                                  (lambda () _%method211406%_))
                                 (_%$%K211411211437%_
                                  (lambda (_%rest211426%_ _%super-id211427%_)
                                    (let* ((_%klass211429%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id211342%_ '()))
                                             _%super-id211427%_))
                                           (_%$e211431%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass211429%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e211431%_
                                          (if _%method211406%_
                                              (if (eq? _%$e211431%_
                                                       _%method211406%_)
                                                  (_%lp211403%_
                                                   _%rest211426%_
                                                   _%$e211431%_)
                                                  (let ((__tmp212211
                                                         (cons '!class
                                                               (cons _%id211342%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#raise-compile-error
                                                     '"conflicting implicit constructor methods"
                                                     __tmp212211
                                                     _%method211406%_
                                                     _%$e211431%_)))
                                              (_%lp211403%_
                                               _%rest211426%_
                                               _%$e211431%_))
                                          (_%lp211403%_
                                           _%rest211426%_
                                           _%method211406%_))))))
                            (if (pair? _%$%rest211407211415%_)
                                (let ((_%$%hd211412211440%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%rest211407211415%_)))
                                      (_%$%tl211413211442%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%rest211407211415%_))))
                                  (let* ((_%super-id211445%_
                                          _%$%hd211412211440%_)
                                         (_%rest211447%_ _%$%tl211413211442%_))
                                    (_%$%K211411211437%_
                                     _%rest211447%_
                                     _%super-id211445%_)))
                                (_%$%else211409211423%_)))))))
                 (_g212212_
                  (let ((__tmp212216
                         (lambda (_%klass-id211451%_)
                           (cons _%klass-id211451%_
                                 (let ((__tmp212217
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id211342%_ '()))
                                         _%klass-id211451%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp212217
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp212214
                         (lambda (_%klass-id211453%_)
                           (let ((__tmp212215
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id211342%_ '()))
                                   _%klass-id211453%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp212215
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp212216
                     __tmp212214
                     eq?
                     identity
                     '()
                     _%super211343%_))))
            (begin
              (let ((_g212213_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g212212_)
                           (##values-length _g212212_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g212213_ 2)))
                    (error "Context expects 2 values" _g212213_)))
              (let ((_%precedence-list211455%_
                     (let () (declare (not safe)) (##values-ref _g212212_ 0)))
                    (_%base-struct211456%_
                     (let () (declare (not safe)) (##values-ref _g212212_ 1))))
                (let* ((_%precedence-list211500%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id211342%_ '(t object class)))
                            _%precedence-list211455%_
                            (if (memq 'object::t _%precedence-list211455%_)
                                _%precedence-list211455%_
                                (if _%system?211348%_
                                    (if (memq 't::t _%precedence-list211455%_)
                                        _%precedence-list211455%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list211455%_
                                           '(t::t))))
                                    (let _%loop211462%_ ((_%tail211464%_
                                                          _%precedence-list211455%_)
                                                         (_%head211465%_ '()))
                                      (let* ((_%$%tail211466211474%_
                                              _%tail211464%_)
                                             (_%$%else211468211482%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (foldl__0
                                                   cons
                                                   '(object::t t::t)
                                                   _%head211465%_))))
                                             (_%$%K211470211488%_
                                              (lambda (_%rest211485%_
                                                       _%hd211486%_)
                                                (if (eq? _%hd211486%_ 't::t)
                                                    (let ((__tmp212218
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail211464%_)))
              (declare (not safe))
              (foldl__0 cons __tmp212218 _%head211465%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop211462%_
                                                     _%rest211485%_
                                                     (cons _%hd211486%_
                                                           _%head211465%_))))))
                                        (if (pair? _%$%tail211466211474%_)
                                            (let ((_%$%hd211471211491%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%tail211466211474%_)))
                                                  (_%$%tl211472211493%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%tail211466211474%_))))
                                              (let* ((_%hd211496%_
                                                      _%$%hd211471211491%_)
                                                     (_%rest211498%_
                                                      _%$%tl211472211493%_))
                                                (_%$%K211470211488%_
                                                 _%rest211498%_
                                                 _%hd211496%_)))
                                            (_%$%else211468211482%_))))))))
                       (_%fields211502%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id211342%_ '()))
                         _%precedence-list211500%_
                         _%slots211344%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self211352%_
                     _%id211342%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self211352%_
                     _%super211343%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self211352%_
                     _%precedence-list211500%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self211352%_
                     _%slots211344%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self211352%_
                     _%fields211502%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self211352%_
                     _%ctor-method211449%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self211352%_
                     _%struct?211346%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self211352%_
                     _%final?211347%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self211352%_
                     _%metaclass211349%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self211505%_
               _%id211506%_
               _%super211507%_
               _%precedence-list211508%_
               _%slots211509%_
               _%fields211510%_
               _%constructor211511%_
               _%struct?211512%_
               _%final?211513%_
               _%system?211514%_
               _%metaclass211515%_
               _%methods211516%_)
        (let ((_%self211519%_ _%self211505%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self211519%_
             _%id211506%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self211519%_
             _%super211507%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self211519%_
             _%precedence-list211508%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self211519%_
             _%slots211509%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self211519%_
             _%fields211510%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self211519%_
             _%constructor211511%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self211519%_
             _%struct?211512%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self211519%_
             _%final?211513%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self211519%_
             _%metaclass211515%_
             '10
             '#f
             '#f))
          (if _%methods211516%_
              (let ((__tmp212219
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods211516%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self211519%_
                 __tmp212219
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g212220_
        (let ((_g212221_ (let () (declare (not safe)) (##length _g212220_))))
          (cond ((let () (declare (not safe)) (##fx= _g212221_ 9))
                 (apply gxc#!class:::init!__0 _g212220_))
                ((let () (declare (not safe)) (##fx= _g212221_ 12))
                 (apply gxc#!class:::init!__1 _g212220_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g212220_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where211210%_
               _%precedence-list211211%_
               _%direct-slots211212%_)
        (let ((__tmp212223
               (lambda (_%mixin211214%_)
                 (let ((__tmp212224
                        (gxc#optimizer-resolve-class
                         _%where211210%_
                         _%mixin211214%_)))
                   (declare (not safe))
                   (##unchecked-structure-ref __tmp212224 '5 '#f '#f))))
              (__tmp212222
               (lambda (_%slot-list211216%_ _%slot-table211217%_)
                 (cdr _%slot-list211216%_))))
          (declare (not safe))
          (c4-compute-class-slots
           _%precedence-list211211%_
           _%direct-slots211212%_
           __tmp212223
           __tmp212222))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass211169%_ _%slot211170%_)
        (let _%lp211172%_ ((_%rest211174%_
                            (##structure-ref
                             _%klass211169%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset211175%_ '1))
          (let* ((_%$%rest211176211184%_ _%rest211174%_)
                 (_%$%else211178211192%_
                  (lambda ()
                    (let ((__tmp212226
                           (##structure-ref
                            _%klass211169%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp212225
                           (##structure-ref
                            _%klass211169%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp212226
                       __tmp212225
                       _%slot211170%_))))
                 (_%$%K211180211198%_
                  (lambda (_%rest211195%_ _%s211196%_)
                    (if (eq? _%s211196%_ _%slot211170%_)
                        _%offset211175%_
                        (_%lp211172%_
                         _%rest211195%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset211175%_ '1)))))))
            (if (pair? _%$%rest211176211184%_)
                (let ((_%$%hd211181211201%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest211176211184%_)))
                      (_%$%tl211182211203%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest211176211184%_))))
                  (let* ((_%s211206%_ _%$%hd211181211201%_)
                         (_%rest211208%_ _%$%tl211182211203%_))
                    (_%$%K211180211198%_ _%rest211208%_ _%s211206%_)))
                (_%$%else211178211192%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass211127%_ _%slot211128%_)
        (if (gxc#!class-struct-slot? _%klass211127%_ _%slot211128%_)
            _%klass211127%_
            (let _%lp211130%_ ((_%rest211132%_
                                (##structure-ref
                                 _%klass211127%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%$%rest211133211141%_ _%rest211132%_)
                     (_%$%else211135211149%_ (lambda () '#f))
                     (_%$%K211137211157%_
                      (lambda (_%rest211152%_ _%super211153%_)
                        (let ((_%super-class211155%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass211127%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot211128%_ '())))
                                _%super211153%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class211155%_
                               _%slot211128%_)
                              _%super-class211155%_
                              (_%lp211130%_ _%rest211152%_))))))
                (if (pair? _%$%rest211133211141%_)
                    (let ((_%$%hd211138211160%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest211133211141%_)))
                          (_%$%tl211139211162%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest211133211141%_))))
                      (let* ((_%super211165%_ _%$%hd211138211160%_)
                             (_%rest211167%_ _%$%tl211139211162%_))
                        (_%$%K211137211157%_ _%rest211167%_ _%super211165%_)))
                    (_%$%else211135211149%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass211124%_ _%slot211125%_)
        (if (##structure-ref _%klass211124%_ '7 gxc#!class::t '#f)
            (memq _%slot211125%_
                  (##structure-ref _%klass211124%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self211109%_ _%id211110%_)
        (let ((_%self211113%_ _%self211109%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self211113%_
             _%id211110%_
             '1
             '#f
             '#f))
          (let ((__tmp212227
                 (let ((__obj212157
                        (let ()
                          (declare (not safe))
                          (##structure
                           gxc#!signature::t
                           '#f
                           '#f
                           '#f
                           '#f
                           '#f))))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj212157
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj212157
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj212157
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj212157)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self211113%_
             __tmp212227
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self210972%_ _%id210973%_)
        (let ((_%self210976%_ _%self210972%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210976%_
             _%id210973%_
             '1
             '#f
             '#f))
          (let ((__tmp212228
                 (let ((__obj212158
                        (let ()
                          (declare (not safe))
                          (##structure
                           gxc#!signature::t
                           '#f
                           '#f
                           '#f
                           '#f
                           '#f))))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj212158
                      _%id210973%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj212158
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj212158)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210976%_
             __tmp212228
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       ':init!
       gxc#!constructor:::init!
       '#f))
    (define gxc#!accessor:::init!
      (lambda (_%self210833%_ _%id210834%_ _%slot210835%_ _%checked?210836%_)
        (let ((_%self210839%_ _%self210833%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210839%_
             _%id210834%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210839%_
             _%slot210835%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210839%_
             _%checked?210836%_
             '4
             '#f
             '#f))
          (let ((__tmp212229
                 (let ((__obj212159
                        (let ()
                          (declare (not safe))
                          (##structure
                           gxc#!signature::t
                           '#f
                           '#f
                           '#f
                           '#f
                           '#f))))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set! __obj212159 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj212159
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp212230 (cons _%id210834%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj212159
                      __tmp212230
                      '3
                      '#f
                      '#f))
                   __obj212159)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210839%_
             __tmp212229
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self210694%_ _%id210695%_ _%slot210696%_ _%checked?210697%_)
        (let ((_%self210700%_ _%self210694%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210700%_
             _%id210695%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210700%_
             _%slot210696%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210700%_
             _%checked?210697%_
             '4
             '#f
             '#f))
          (let ((__tmp212231
                 (let ((__obj212160
                        (let ()
                          (declare (not safe))
                          (##structure
                           gxc#!signature::t
                           '#f
                           '#f
                           '#f
                           '#f
                           '#f))))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj212160
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj212160
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp212232 (cons _%id210695%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj212160
                      __tmp212232
                      '3
                      '#f
                      '#f))
                   __obj212160)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210700%_
             __tmp212231
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords210538%_
               _%$%signature210535210539%_
               _%self210540%_
               _%arity210541%_
               _%dispatch210542%_)
        (let* ((_%signature210544%_
                (if (eq? _%$%signature210535210539%_ absent-value)
                    '#f
                    _%$%signature210535210539%_))
               (_%self210547%_ _%self210540%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self210547%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210547%_
             _%arity210541%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210547%_
             _%dispatch210542%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210547%_
             _%signature210544%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords210562%_ . _%args210563%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords210562%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords210562%_
                  'signature:
                  absent-value))
               _%args210563%_)))
    (define gxc#!lambda:::init!
      (lambda _%$%args210536210569%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%$%args210536210569%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords210379%_
               _%$%signature210376210380%_
               _%self210381%_
               _%clauses210382%_)
        (let* ((_%signature210384%_
                (if (eq? _%$%signature210376210380%_ absent-value)
                    '#f
                    _%$%signature210376210380%_))
               (_%self210387%_ _%self210381%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self210387%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210387%_
             _%signature210384%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210387%_
             _%clauses210382%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords210402%_ . _%args210403%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords210402%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords210402%_
                  'signature:
                  absent-value))
               _%args210403%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%$%args210377210409%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%$%args210377210409%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self210237%_ _%tab210238%_ _%dispatch210239%_)
        (let ((_%self210242%_ _%self210237%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self210242%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210242%_
             _%tab210238%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210242%_
             _%dispatch210239%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self210099%_ _%keys210100%_ _%main210101%_)
        (let ((_%self210104%_ _%self210099%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self210104%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210104%_
             _%keys210100%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210104%_
             _%main210101%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       ':init!
       gxc#!kw-lambda-primary:::init!
       '#f))
    (define gxc#!primitive-lambda:::init! gxc#!lambda:::init!)
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-lambda::t
       ':init!
       gxc#!primitive-lambda:::init!
       '#f))
    (define gxc#!primitive-case-lambda:::init! gxc#!case-lambda:::init!)
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!primitive-predicate:::init!
      (lambda (_%self209718%_ _%id209719%_)
        (let ((_%self209722%_ _%self209718%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209722%_
             _%id209719%_
             '1
             '#f
             '#f))
          (let ((__tmp212233
                 (let ((__obj212161
                        (let ()
                          (declare (not safe))
                          (##structure
                           gxc#!signature::t
                           '#f
                           '#f
                           '#f
                           '#f
                           '#f))))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj212161
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj212161
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj212161
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj212161)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209722%_
             __tmp212233
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       ':init!
       gxc#!primitive-predicate:::init!
       '#f))
    (define gxc#!class-method-table
      (lambda (_%klass209588%_)
        (let ((_%$e209590%_
               (##structure-ref _%klass209588%_ '11 gxc#!class::t '#f)))
          (if _%$e209590%_
              _%$e209590%_
              (let ((_%tab209594%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass209588%_
                 _%tab209594%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab209594%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass209580%_ _%method209581%_)
        (let ((_%$%tab209582209584%_
               (##structure-ref _%klass209580%_ '11 gxc#!class::t '#f)))
          (if _%$%tab209582209584%_
              (let ((_%tab209586%_ _%$%tab209582209584%_))
                (declare (not safe))
                (hash-get _%tab209586%_ _%method209581%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a209565%_ _%type-b209566%_)
        (if _%type-a209565%_
            (if _%type-b209566%_
                (let ((_%$e209568%_ (eq? _%type-a209565%_ _%type-b209566%_)))
                  (if _%$e209568%_
                      _%$e209568%_
                      (let ((_%$e209571%_
                             (eq? (##structure-ref
                                   _%type-b209566%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e209571%_
                            _%$e209571%_
                            (let ((_%$e209574%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a209565%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b209566%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e209574%_
                                  _%$e209574%_
                                  (let ((_%$e209577%_
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-instance-of?
                                                _%type-a209565%_
                                                'gxc#!class::t))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-instance-of?
                                                    _%type-b209566%_
                                                    'gxc#!class::t))
                                                 (gxc#!class-subclass?
                                                  _%type-a209565%_
                                                  _%type-b209566%_)
                                                 '#f)
                                             '#f)))
                                    (if _%$e209577%_
                                        _%$e209577%_
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%type-a209565%_
                                               'gxc#!interface::t))
                                            (eq? (##structure-ref
                                                  _%type-b209566%_
                                                  '1
                                                  gxc#!type::t
                                                  '#f)
                                                 'interface-descriptor::t)
                                            '#f)))))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a209516%_ _%klass-b209517%_)
        (let ((_%$e209519%_
               (eq? (##structure-ref _%klass-a209516%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b209517%_ '1 gxc#!type::t '#f))))
          (if _%$e209519%_
              _%$e209519%_
              (let ((_%klass-id-b209522%_
                     (##structure-ref _%klass-b209517%_ '1 gxc#!type::t '#f))
                    (_%precedence-list209523%_
                     (##structure-ref _%klass-a209516%_ '3 gxc#!class::t '#f)))
                (let _%loop209525%_ ((_%rest209527%_
                                      _%precedence-list209523%_))
                  (let* ((_%$%rest209528209536%_ _%rest209527%_)
                         (_%$%else209530209544%_ (lambda () '#f))
                         (_%$%K209532209553%_
                          (lambda (_%rest209547%_ _%klass-name209548%_)
                            (let ((_%$e209550%_
                                   (eq? (let ((__tmp212234
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a209516%_
                                                            (cons _%klass-b209517%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name209548%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp212234
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b209522%_)))
                              (if _%$e209550%_
                                  _%$e209550%_
                                  (_%loop209525%_ _%rest209547%_))))))
                    (if (pair? _%$%rest209528209536%_)
                        (let ((_%$%hd209533209556%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest209528209536%_)))
                              (_%$%tl209534209558%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest209528209536%_))))
                          (let* ((_%klass-name209561%_ _%$%hd209533209556%_)
                                 (_%rest209563%_ _%$%tl209534209558%_))
                            (_%$%K209532209553%_
                             _%rest209563%_
                             _%klass-name209561%_)))
                        (_%$%else209530209544%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type209514%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type209514%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type209514%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc209503%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc209503%_ 'gxc#!procedure::t))
            (let ((_%proc209506%_ _%proc209503%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc209506%_ '2 '#f '#f))
                  (let ((__tmp212235
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc209506%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp212235 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@365.11-365.15"
               'contract:
               '!procedure?
               'value:
               _%proc209503%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym209485%_ _%type209486%_ _%local?209487%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type209486%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym209485%_
                     _%type209486%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym209485%_ '" " _%type209486%_))
        (let ((_%table209489%_
               (if _%local?209487%_
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
          (hash-put! _%table209489%_ _%sym209485%_ _%type209486%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym209494%_ _%type209495%_)
        (let ((_%local?209497%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym209494%_
           _%type209495%_
           _%local?209497%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g212236_
        (let ((_g212237_ (let () (declare (not safe)) (##length _g212236_))))
          (cond ((let () (declare (not safe)) (##fx= _g212237_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g212236_))
                ((let () (declare (not safe)) (##fx= _g212237_ 3))
                 (apply gxc#optimizer-declare-type!__% _g212236_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g212236_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym209479%_ _%type209480%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type209480%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym209479%_
                     _%type209480%_)))
        (let ((_%table209482%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp212238
                 (let () (declare (not safe)) (struct->list _%type209480%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym209479%_ '" " __tmp212238))
          (let ()
            (declare (not safe))
            (hash-put! _%table209482%_ _%sym209479%_ _%type209480%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table209482%_ _%type209480%_ _%sym209479%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym209474%_ _%type209475%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type209475%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym209474%_
                     _%type209475%_)))
        (let ((_%table209477%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table209477%_ _%sym209474%_))
              '#!void
              (begin
                (let ((__tmp212239
                       (let ()
                         (declare (not safe))
                         (struct->list _%type209475%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym209474%_
                   '" "
                   __tmp212239))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table209477%_ _%sym209474%_ _%type209475%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table209477%_
                   _%type209475%_
                   _%sym209474%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym209472%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym209472%_))
        (let ((__tmp212240
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp212240 _%sym209472%_))
        (let ((__tmp212241
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp212241 _%sym209472%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t209440%_
               _%method209441%_
               _%sym209442%_
               _%rebind?209443%_)
        (let ((__tmp212242
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp212242 _%sym209442%_ '#t))
        (let ((_%klass209445%_ (gxc#optimizer-lookup-class _%type-t209440%_)))
          (if _%klass209445%_
              (let* ((_%vtab209447%_ (gxc#!class-method-table _%klass209445%_))
                     (_%$e209449%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab209447%_ _%method209441%_))))
                (if _%$e209449%_
                    (if _%rebind?209443%_
                        (let ()
                          (let ()
                            (declare (not safe))
                            (gxc#verbose
                             '"declare-method: rebind existing method"
                             _%type-t209440%_
                             '" "
                             _%method209441%_))
                          (let ()
                            (declare (not safe))
                            (hash-put!
                             _%vtab209447%_
                             _%method209441%_
                             _%sym209442%_)))
                        (if (eq? _%$e209449%_ _%sym209442%_)
                            '#!void
                            (let ((__tmp212243
                                   (cons 'bind-method!
                                         (cons _%type-t209440%_
                                               (cons _%method209441%_
                                                     (cons _%sym209442%_
                                                           '()))))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"declare-method: duplicate method declaration"
                               __tmp212243
                               _%method209441%_))))
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t209440%_
                         '" "
                         _%method209441%_
                         '" => "
                         _%sym209442%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab209447%_
                         _%method209441%_
                         _%sym209442%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t209440%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t209461%_ _%method209462%_ _%sym209463%_)
        (let ((_%rebind?209465%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t209461%_
           _%method209462%_
           _%sym209463%_
           _%rebind?209465%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g212244_
        (let ((_g212245_ (let () (declare (not safe)) (##length _g212244_))))
          (cond ((let () (declare (not safe)) (##fx= _g212245_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g212244_))
                ((let () (declare (not safe)) (##fx= _g212245_ 4))
                 (apply gxc#optimizer-declare-method!__% _g212244_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g212244_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym209426%_)
        (let ((_%$e209428%_
               (let ((__tmp212246
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym209426%_ __tmp212246))))
          (if _%$e209428%_
              _%$e209428%_
              (let ((_%$e209436%_
                     (let ((_%$%ht209430209432%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%$%ht209430209432%_
                           (let ((_%ht209434%_ _%$%ht209430209432%_))
                             (declare (not safe))
                             (hash-get _%ht209434%_ _%sym209426%_))
                           '#f))))
                (if _%$e209436%_
                    _%$e209436%_
                    (let ((__tmp212247
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp212247 _%sym209426%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym209419%_)
        (let ((_%$%type209420209422%_
               (gxc#optimizer-lookup-type _%sym209419%_)))
          (if _%$%type209420209422%_
              (let ((_%type209424%_ _%$%type209420209422%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type209424%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type209424%_ '1 '#f '#f)))
                    _%type209424%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym209415%_)
        (let ((_%table209417%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table209417%_ _%sym209415%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where209400%_ _%sym209401%_)
        (let ((_%$e209404%_ (gxc#optimizer-lookup-class _%sym209401%_)))
          (if _%$e209404%_
              (let ((_%val209411%_ _%$e209404%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%val209411%_ 'gxc#!class::t))
                    _%val209411%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/compiler/optimize-base
                       'contract:
                       '(!class? val)
                       'value:
                       _%val209411%_)
                      '#!void)))
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where209400%_
                   _%sym209401%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass209398%_)
        (let ((__tmp212248
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp212248 _%klass209398%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t209395%_ _%method209396%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t209395%_)
         _%method209396%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym209393%_)
        (let ((__tmp212249
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp212249 _%sym209393%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e208868%_
                  (lambda (_%t209334%_)
                    (if (symbol? _%t209334%_)
                        (_%type-e208868%_
                         (gxc#optimizer-lookup-type _%t209334%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t209334%_
                               'gxc#!lambda::t))
                            (let* ((_%t209338%_ _%t209334%_)
                                   (_%t209342%_ _%t209338%_))
                              (_%__lambda-type208994%_ _%t209342%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t209334%_
                                   'gxc#!kw-lambda::t))
                                (let* ((_%t209354%_ _%t209334%_)
                                       (_%t209358%_ _%t209354%_))
                                  (_%__kw-lambda-type209117%_ _%t209358%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t209334%_
                                       'gxc#!kw-lambda-primary::t))
                                    (let* ((_%t209369%_ _%t209334%_)
                                           (_%t209373%_ _%t209369%_))
                                      (_%__kw-lambda-primary-type209240%_
                                       _%t209373%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t209334%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t209384%_ _%t209334%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t209384%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp212250
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t209384%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp212250
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t209334%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t209334%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%__lambda-type208994%_
                  (lambda (_%t209322%_)
                    (let ((_%t209325%_ _%t209322%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t209325%_ '4 '#f '#f))
                          (_%type-e208868%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t209325%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t209325%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp212251
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t209325%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp212251
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%lambda-type208995%_
                  (lambda (_%t209310%_)
                    (let ((_%t209313%_ _%t209310%_))
                      (_%__lambda-type208994%_ _%t209313%_))))
                 (_%__kw-lambda-type209117%_
                  (lambda (_%t209298%_)
                    (let ((_%t209301%_ _%t209298%_))
                      (_%type-e208868%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t209301%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-type209118%_
                  (lambda (_%t209286%_)
                    (let ((_%t209289%_ _%t209286%_))
                      (_%__kw-lambda-type209117%_ _%t209289%_))))
                 (_%__kw-lambda-primary-type209240%_
                  (lambda (_%t209274%_)
                    (let ((_%t209277%_ _%t209274%_))
                      (_%type-e208868%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t209277%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type209241%_
                  (lambda (_%t209262%_)
                    (let ((_%t209265%_ _%t209262%_))
                      (_%__kw-lambda-primary-type209240%_ _%t209265%_)))))
          (let* ((_%ht1209243%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2209245%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result209247%_
                  (if _%ht1209243%_
                      (let () (declare (not safe)) (hash->list _%ht1209243%_))
                      '()))
                 (_%result209249%_
                  (if _%ht2209245%_
                      (let ((__tmp212252
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2209245%_))))
                        (declare (not safe))
                        (foldl__0 cons _%result209247%_ __tmp212252))
                      _%result209247%_)))
            (for-each
             (lambda (_%p209252%_)
               (let* ((_%t209254%_ (cdr _%p209252%_))
                      (_%tr209256%_ (_%type-e208868%_ _%t209254%_)))
                 (set-cdr! _%p209252%_ _%tr209256%_)))
             _%result209249%_)
            (list-sort
             (lambda (_%a209259%_ _%b209260%_)
               (let ((__tmp212254 (symbol->string (car _%a209259%_)))
                     (__tmp212253 (symbol->string (car _%b209260%_))))
                 (declare (not safe))
                 (##string<? __tmp212254 __tmp212253)))
             _%result209249%_)))))))
