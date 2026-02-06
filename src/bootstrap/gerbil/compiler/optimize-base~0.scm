(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1770336544)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp176151 (list)) (__tmp176150 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp176151
         '(type classes ssxi methods)
         __tmp176150
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args176122%_
        (apply make-instance gxc#optimizer-info::t _%$args176122%_)))
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
      (lambda (_%self176109%_)
        (let ((_%self176112%_ _%self176109%_))
          (if (let ((__tmp176152
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self176112%_))))
                (declare (not safe))
                (##fx< '4 __tmp176152))
              (begin
                (let ((__tmp176153
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self176112%_
                   __tmp176153
                   '1
                   '#f
                   '#f))
                (let ((__tmp176154
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self176112%_
                   __tmp176154
                   '2
                   '#f
                   '#f))
                (let ((__tmp176155
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self176112%_
                   __tmp176155
                   '3
                   '#f
                   '#f))
                (let ((__tmp176156
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self176112%_
                   __tmp176156
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp176157
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self176112%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self176112%_
                       '4
                       __tmp176157))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp176159 (list)) (__tmp176158 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp176159
         '(id)
         __tmp176158
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args175984%_
        (apply make-instance gxc#!type::t _%$args175984%_)))
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
      (let ((__tmp176161 (list gxc#!type::t))
            (__tmp176160 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp176161
         '()
         __tmp176160
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args175981%_
        (apply make-instance gxc#!abort::t _%$args175981%_)))
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
      (let ((__tmp176163 (list gxc#!type::t))
            (__tmp176162 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp176163
         '()
         __tmp176162
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args175978%_
        (apply make-instance gxc#!alias::t _%$args175978%_)))
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
      (let ((__tmp176165 (list)) (__tmp176164 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp176165
         '(return effect arguments unchecked origin)
         __tmp176164
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args175975%_
        (apply make-instance gxc#!signature::t _%$args175975%_)))
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
      (let ((__tmp176167 (list gxc#!type::t))
            (__tmp176166 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp176167
         '(signature)
         __tmp176166
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
    (define gxc#make-!procedure
      (lambda (_%id175954%_ _%signature175955%_)
        (if ((lambda (_%$obj175958%_)
               (or (not _%$obj175958%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj175958%_
                      'gxc#!signature::t))))
             _%signature175955%_)
            (let ((_%signature175965%_ _%signature175955%_))
              (gxc#__make-!procedure _%id175954%_ _%signature175965%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature175955%_)
              '#!void))))
    (define gxc#__make-!procedure
      (lambda (_%id175940%_ _%signature175942%_)
        (let ((_%signature175945%_ _%signature175942%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id175940%_ _%signature175945%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj175909%_ _%signature175910%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj175909%_ 'gxc#!procedure::t))
            (let ((_%$obj175914%_ _%$obj175909%_))
              (if ((lambda (_%$obj175923%_)
                     (or (not _%$obj175923%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj175923%_
                            'gxc#!signature::t))))
                   _%signature175910%_)
                  (let ((_%signature175930%_ _%signature175910%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj175914%_
                     _%signature175930%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature175910%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj175909%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj175886%_ _%signature175888%_)
        (let* ((_%$obj175892%_ _%$obj175886%_)
               (_%signature175900%_ _%signature175888%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj175892%_
           _%signature175900%_
           '2
           '#f
           '#f))))
    (define gxc#!class-meta::t
      (let ((__tmp176169 (list gxc#!type::t))
            (__tmp176168 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp176169
         '(class)
         __tmp176168
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args175883%_
        (apply make-instance gxc#!class-meta::t _%$args175883%_)))
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
      (let ((__tmp176171 (list gxc#!type::t))
            (__tmp176170 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class::t
         '!class
         __tmp176171
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp176170
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args175880%_
        (apply make-instance gxc#!class::t _%$args175880%_)))
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
      (let ((__tmp176173 (list gxc#!procedure::t))
            (__tmp176172 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp176173
         '()
         __tmp176172
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args175877%_
        (apply make-instance gxc#!predicate::t _%$args175877%_)))
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
      (let ((__tmp176175 (list gxc#!procedure::t))
            (__tmp176174 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp176175
         '()
         __tmp176174
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args175874%_
        (apply make-instance gxc#!constructor::t _%$args175874%_)))
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
      (let ((__tmp176177 (list gxc#!procedure::t))
            (__tmp176176 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp176177
         '(slot checked?)
         __tmp176176
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args175871%_
        (apply make-instance gxc#!accessor::t _%$args175871%_)))
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
      (let ((__tmp176179 (list gxc#!procedure::t))
            (__tmp176178 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp176179
         '(slot checked?)
         __tmp176178
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args175868%_
        (apply make-instance gxc#!mutator::t _%$args175868%_)))
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
      (let ((__tmp176181 (list gxc#!type::t))
            (__tmp176180 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp176181
         '(methods)
         __tmp176180
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args175865%_
        (apply make-instance gxc#!interface::t _%$args175865%_)))
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
      (let ((__tmp176183 (list gxc#!procedure::t))
            (__tmp176182 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp176183
         '(arity dispatch inline inline-typedecl)
         __tmp176182
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args175862%_
        (apply make-instance gxc#!lambda::t _%$args175862%_)))
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
      (let ((__tmp176185 (list gxc#!procedure::t))
            (__tmp176184 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp176185
         '(clauses)
         __tmp176184
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args175859%_
        (apply make-instance gxc#!case-lambda::t _%$args175859%_)))
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
      (let ((__tmp176187 (list gxc#!procedure::t))
            (__tmp176186 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp176187
         '(table dispatch)
         __tmp176186
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args175856%_
        (apply make-instance gxc#!kw-lambda::t _%$args175856%_)))
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
      (let ((__tmp176189 (list gxc#!procedure::t))
            (__tmp176188 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp176189
         '(keys main)
         __tmp176188
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args175853%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args175853%_)))
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
      (let ((__tmp176190 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp176190
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args175850%_
        (apply make-instance gxc#!primitive::t _%$args175850%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp176192 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp176191 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp176192
         '()
         __tmp176191
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args175847%_
        (apply make-instance gxc#!primitive-predicate::t _%$args175847%_)))
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
      (let ((__tmp176194 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp176193 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp176194
         '()
         __tmp176193
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args175844%_
        (apply make-instance gxc#!primitive-lambda::t _%$args175844%_)))
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
      (let ((__tmp176196 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp176195 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp176196
         '()
         __tmp176195
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args175841%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args175841%_)))
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
      (lambda (_%self175828%_)
        (let ((_%self175831%_ _%self175828%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self175831%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self175691%_ _%klass175692%_)
        (let ((_%self175695%_ _%self175691%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self175695%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175695%_
             _%klass175692%_
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
      (lambda (_%self175381%_
               _%id175382%_
               _%super175383%_
               _%slots175384%_
               _%ctor-method175385%_
               _%struct?175386%_
               _%final?175387%_
               _%system?175388%_
               _%metaclass175389%_)
        (let ((_%self175392%_ _%self175381%_))
          (let _%lp175403%_ ((_%rest175405%_ _%super175383%_))
            (let* ((_%rest175406175414%_ _%rest175405%_)
                   (_%else175408175422%_ (lambda () '#!void))
                   (_%K175410175428%_
                    (lambda (_%rest175425%_ _%super-id175426%_)
                      (if (let ((__tmp176197
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id175382%_ '()))
                                  _%super-id175426%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp176197 '8 '#f '#f))
                          (let ((__tmp176198
                                 (cons '!class (cons _%id175382%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp176198
                             _%super-id175426%_))
                          '#!void)
                      (_%lp175403%_ _%rest175425%_))))
              (if (pair? _%rest175406175414%_)
                  (let ((_%hd175411175431%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest175406175414%_)))
                        (_%tl175412175433%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest175406175414%_))))
                    (let* ((_%super-id175436%_ _%hd175411175431%_)
                           (_%rest175438%_ _%tl175412175433%_))
                      (_%K175410175428%_ _%rest175438%_ _%super-id175436%_)))
                  '#!void)))
          (let* ((_%ctor-method175489%_
                  (let ((_%$e175440%_ _%ctor-method175385%_))
                    (if _%$e175440%_
                        _%$e175440%_
                        (let _%lp175443%_ ((_%rest175445%_ _%super175383%_)
                                           (_%method175446%_ '#f))
                          (let* ((_%rest175447175455%_ _%rest175445%_)
                                 (_%else175449175463%_
                                  (lambda () _%method175446%_))
                                 (_%K175451175477%_
                                  (lambda (_%rest175466%_ _%super-id175467%_)
                                    (let* ((_%klass175469%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id175382%_ '()))
                                             _%super-id175467%_))
                                           (_%$e175471%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass175469%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e175471%_
                                          ((lambda (_%ctor-method175474%_)
                                             (if _%method175446%_
                                                 (if (eq? _%ctor-method175474%_
                                                          _%method175446%_)
                                                     (_%lp175443%_
                                                      _%rest175466%_
                                                      _%ctor-method175474%_)
                                                     (let ((__tmp176199
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id175382%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp176199
                _%method175446%_
                _%ctor-method175474%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp175443%_
                                                  _%rest175466%_
                                                  _%ctor-method175474%_)))
                                           _%$e175471%_)
                                          (_%lp175443%_
                                           _%rest175466%_
                                           _%method175446%_))))))
                            (if (pair? _%rest175447175455%_)
                                (let ((_%hd175452175480%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest175447175455%_)))
                                      (_%tl175453175482%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest175447175455%_))))
                                  (let* ((_%super-id175485%_
                                          _%hd175452175480%_)
                                         (_%rest175487%_ _%tl175453175482%_))
                                    (_%K175451175477%_
                                     _%rest175487%_
                                     _%super-id175485%_)))
                                (_%else175449175463%_)))))))
                 (_g176200_
                  (let ((__tmp176204
                         (lambda (_%klass-id175491%_)
                           (cons _%klass-id175491%_
                                 (let ((__tmp176205
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id175382%_ '()))
                                         _%klass-id175491%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp176205
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp176202
                         (lambda (_%klass-id175493%_)
                           (let ((__tmp176203
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id175382%_ '()))
                                   _%klass-id175493%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp176203
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp176204
                     __tmp176202
                     eq?
                     identity
                     '()
                     _%super175383%_))))
            (begin
              (let ((_g176201_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g176200_)
                           (##values-length _g176200_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g176201_ 2)))
                    (error "Context expects 2 values" _g176201_)))
              (let ((_%precedence-list175495%_
                     (let () (declare (not safe)) (##values-ref _g176200_ 0)))
                    (_%base-struct175496%_
                     (let () (declare (not safe)) (##values-ref _g176200_ 1))))
                (let* ((_%precedence-list175540%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id175382%_ '(t object class)))
                            _%precedence-list175495%_
                            (if (memq 'object::t _%precedence-list175495%_)
                                _%precedence-list175495%_
                                (if _%system?175388%_
                                    (if (memq 't::t _%precedence-list175495%_)
                                        _%precedence-list175495%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list175495%_
                                           '(t::t))))
                                    (let _%loop175502%_ ((_%tail175504%_
                                                          _%precedence-list175495%_)
                                                         (_%head175505%_ '()))
                                      (let* ((_%tail175506175514%_
                                              _%tail175504%_)
                                             (_%else175508175522%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head175505%_))))
                                             (_%K175510175528%_
                                              (lambda (_%rest175525%_
                                                       _%hd175526%_)
                                                (if (eq? _%hd175526%_ 't::t)
                                                    (let ((__tmp176206
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail175504%_)))
              (declare (not safe))
              (__foldl1 cons __tmp176206 _%head175505%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop175502%_
                                                     _%rest175525%_
                                                     (cons _%hd175526%_
                                                           _%head175505%_))))))
                                        (if (pair? _%tail175506175514%_)
                                            (let ((_%hd175511175531%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail175506175514%_)))
                                                  (_%tl175512175533%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail175506175514%_))))
                                              (let* ((_%hd175536%_
                                                      _%hd175511175531%_)
                                                     (_%rest175538%_
                                                      _%tl175512175533%_))
                                                (_%K175510175528%_
                                                 _%rest175538%_
                                                 _%hd175536%_)))
                                            (_%else175508175522%_))))))))
                       (_%fields175542%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id175382%_ '()))
                         _%base-struct175496%_
                         _%precedence-list175540%_
                         _%slots175384%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175392%_
                     _%id175382%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175392%_
                     _%super175383%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175392%_
                     _%precedence-list175540%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175392%_
                     _%slots175384%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175392%_
                     _%fields175542%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175392%_
                     _%ctor-method175489%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175392%_
                     _%struct?175386%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175392%_
                     _%final?175387%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175392%_
                     _%metaclass175389%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self175545%_
               _%id175546%_
               _%super175547%_
               _%precedence-list175548%_
               _%slots175549%_
               _%fields175550%_
               _%constructor175551%_
               _%struct?175552%_
               _%final?175553%_
               _%system?175554%_
               _%metaclass175555%_
               _%methods175556%_)
        (let ((_%self175559%_ _%self175545%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175559%_
             _%id175546%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175559%_
             _%super175547%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175559%_
             _%precedence-list175548%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175559%_
             _%slots175549%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175559%_
             _%fields175550%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175559%_
             _%constructor175551%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175559%_
             _%struct?175552%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175559%_
             _%final?175553%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175559%_
             _%metaclass175555%_
             '10
             '#f
             '#f))
          (if _%methods175556%_
              (let ((__tmp176207
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods175556%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self175559%_
                 __tmp176207
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g176208_
        (let ((_g176209_ (let () (declare (not safe)) (##length _g176208_))))
          (cond ((let () (declare (not safe)) (##fx= _g176209_ 9))
                 (apply gxc#!class:::init!__0 _g176208_))
                ((let () (declare (not safe)) (##fx= _g176209_ 12))
                 (apply gxc#!class:::init!__1 _g176208_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g176208_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where175233%_
               _%base-struct175234%_
               _%precedence-list175235%_
               _%direct-slots175236%_)
        (let* ((_%base-fields175238%_
                (if _%base-struct175234%_
                    (let ((__tmp176210
                           (gxc#optimizer-resolve-class
                            _%where175233%_
                            _%base-struct175234%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp176210 '5 '#f '#f))
                    '()))
               (_%r-fields175240%_ (reverse _%base-fields175238%_))
               (_%seen-slots175248%_
                (let ((_%tab175242%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g175243175245%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab175242%_ _%g175243175245%_ '#t)))
                   _%base-fields175238%_)
                  _%tab175242%_))
               (_%process-slot175252%_
                (lambda (_%slot175250%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots175248%_ _%slot175250%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots175248%_
                           _%slot175250%_
                           '#t))
                        (set! _%r-fields175240%_
                              (cons _%slot175250%_ _%r-fields175240%_)))))))
          (for-each
           (lambda (_%mixin175255%_)
             (let ((_%klass175257%_
                    (gxc#optimizer-resolve-class
                     _%where175233%_
                     _%mixin175255%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass175257%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot175252%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass175257%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list175235%_)
          (for-each _%process-slot175252%_ _%direct-slots175236%_)
          (let () (declare (not safe)) (##reverse _%r-fields175240%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass175192%_ _%slot175193%_)
        (let _%lp175195%_ ((_%rest175197%_
                            (##structure-ref
                             _%klass175192%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset175198%_ '1))
          (let* ((_%rest175199175207%_ _%rest175197%_)
                 (_%else175201175215%_
                  (lambda ()
                    (let ((__tmp176212
                           (##structure-ref
                            _%klass175192%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp176211
                           (##structure-ref
                            _%klass175192%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp176212
                       __tmp176211
                       _%slot175193%_))))
                 (_%K175203175221%_
                  (lambda (_%rest175218%_ _%s175219%_)
                    (if (eq? _%s175219%_ _%slot175193%_)
                        _%offset175198%_
                        (_%lp175195%_
                         _%rest175218%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset175198%_ '1)))))))
            (if (pair? _%rest175199175207%_)
                (let ((_%hd175204175224%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest175199175207%_)))
                      (_%tl175205175226%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest175199175207%_))))
                  (let* ((_%s175229%_ _%hd175204175224%_)
                         (_%rest175231%_ _%tl175205175226%_))
                    (_%K175203175221%_ _%rest175231%_ _%s175229%_)))
                (_%else175201175215%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass175150%_ _%slot175151%_)
        (if (gxc#!class-struct-slot? _%klass175150%_ _%slot175151%_)
            _%klass175150%_
            (let _%lp175153%_ ((_%rest175155%_
                                (##structure-ref
                                 _%klass175150%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest175156175164%_ _%rest175155%_)
                     (_%else175158175172%_ (lambda () '#f))
                     (_%K175160175180%_
                      (lambda (_%rest175175%_ _%super175176%_)
                        (let ((_%super-class175178%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass175150%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot175151%_ '())))
                                _%super175176%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class175178%_
                               _%slot175151%_)
                              _%super-class175178%_
                              (_%lp175153%_ _%rest175175%_))))))
                (if (pair? _%rest175156175164%_)
                    (let ((_%hd175161175183%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest175156175164%_)))
                          (_%tl175162175185%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest175156175164%_))))
                      (let* ((_%super175188%_ _%hd175161175183%_)
                             (_%rest175190%_ _%tl175162175185%_))
                        (_%K175160175180%_ _%rest175190%_ _%super175188%_)))
                    (_%else175158175172%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass175147%_ _%slot175148%_)
        (if (##structure-ref _%klass175147%_ '7 gxc#!class::t '#f)
            (memq _%slot175148%_
                  (##structure-ref _%klass175147%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self175132%_ _%id175133%_)
        (let ((_%self175136%_ _%self175132%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175136%_
             _%id175133%_
             '1
             '#f
             '#f))
          (let ((__tmp176213
                 (let ((__obj176145
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
                      __obj176145
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176145
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176145
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj176145)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175136%_
             __tmp176213
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self174995%_ _%id174996%_)
        (let ((_%self174999%_ _%self174995%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174999%_
             _%id174996%_
             '1
             '#f
             '#f))
          (let ((__tmp176214
                 (let ((__obj176146
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
                      __obj176146
                      _%id174996%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176146
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj176146)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174999%_
             __tmp176214
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
      (lambda (_%self174856%_ _%id174857%_ _%slot174858%_ _%checked?174859%_)
        (let ((_%self174862%_ _%self174856%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174862%_
             _%id174857%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174862%_
             _%slot174858%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174862%_
             _%checked?174859%_
             '4
             '#f
             '#f))
          (let ((__tmp176215
                 (let ((__obj176147
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
                     (##unchecked-structure-set! __obj176147 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176147
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp176216 (cons _%id174857%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176147
                      __tmp176216
                      '3
                      '#f
                      '#f))
                   __obj176147)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174862%_
             __tmp176215
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self174717%_ _%id174718%_ _%slot174719%_ _%checked?174720%_)
        (let ((_%self174723%_ _%self174717%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174723%_
             _%id174718%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174723%_
             _%slot174719%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174723%_
             _%checked?174720%_
             '4
             '#f
             '#f))
          (let ((__tmp176217
                 (let ((__obj176148
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
                      __obj176148
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176148
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp176218 (cons _%id174718%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176148
                      __tmp176218
                      '3
                      '#f
                      '#f))
                   __obj176148)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174723%_
             __tmp176217
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords174561%_
               _%signature174558174562%_
               _%self174563%_
               _%arity174564%_
               _%dispatch174565%_)
        (let* ((_%signature174567%_
                (if (eq? _%signature174558174562%_ absent-value)
                    '#f
                    _%signature174558174562%_))
               (_%self174570%_ _%self174563%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self174570%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174570%_
             _%arity174564%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174570%_
             _%dispatch174565%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174570%_
             _%signature174567%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords174585%_ . _%args174586%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords174585%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords174585%_
                  'signature:
                  absent-value))
               _%args174586%_)))
    (define gxc#!lambda:::init!
      (lambda _%args174559174592%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args174559174592%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords174402%_
               _%signature174399174403%_
               _%self174404%_
               _%clauses174405%_)
        (let* ((_%signature174407%_
                (if (eq? _%signature174399174403%_ absent-value)
                    '#f
                    _%signature174399174403%_))
               (_%self174410%_ _%self174404%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self174410%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174410%_
             _%signature174407%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174410%_
             _%clauses174405%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords174425%_ . _%args174426%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords174425%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords174425%_
                  'signature:
                  absent-value))
               _%args174426%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args174400174432%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args174400174432%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self174260%_ _%tab174261%_ _%dispatch174262%_)
        (let ((_%self174265%_ _%self174260%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self174265%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174265%_
             _%tab174261%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174265%_
             _%dispatch174262%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self174122%_ _%keys174123%_ _%main174124%_)
        (let ((_%self174127%_ _%self174122%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self174127%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174127%_
             _%keys174123%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174127%_
             _%main174124%_
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
      (lambda (_%self173741%_ _%id173742%_)
        (let ((_%self173745%_ _%self173741%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self173745%_
             _%id173742%_
             '1
             '#f
             '#f))
          (let ((__tmp176219
                 (let ((__obj176149
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
                      __obj176149
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176149
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176149
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj176149)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self173745%_
             __tmp176219
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
      (lambda (_%klass173610%_)
        (let ((_%$e173612%_
               (##structure-ref _%klass173610%_ '11 gxc#!class::t '#f)))
          (if _%$e173612%_
              _%$e173612%_
              (let ((_%tab173616%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass173610%_
                 _%tab173616%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab173616%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass173602%_ _%method173603%_)
        (let ((_%tab173604173606%_
               (##structure-ref _%klass173602%_ '11 gxc#!class::t '#f)))
          (if _%tab173604173606%_
              (let ((_%tab173608%_ _%tab173604173606%_))
                (declare (not safe))
                (hash-get _%tab173608%_ _%method173603%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a173590%_ _%type-b173591%_)
        (if _%type-a173590%_
            (if _%type-b173591%_
                (let ((_%$e173593%_ (eq? _%type-a173590%_ _%type-b173591%_)))
                  (if _%$e173593%_
                      _%$e173593%_
                      (let ((_%$e173596%_
                             (eq? (##structure-ref
                                   _%type-b173591%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e173596%_
                            _%$e173596%_
                            (let ((_%$e173599%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a173590%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b173591%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e173599%_
                                  _%$e173599%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a173590%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b173591%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a173590%_
                                           _%type-b173591%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a173541%_ _%klass-b173542%_)
        (let ((_%$e173544%_
               (eq? (##structure-ref _%klass-a173541%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b173542%_ '1 gxc#!type::t '#f))))
          (if _%$e173544%_
              _%$e173544%_
              (let ((_%klass-id-b173547%_
                     (##structure-ref _%klass-b173542%_ '1 gxc#!type::t '#f))
                    (_%precedence-list173548%_
                     (##structure-ref _%klass-a173541%_ '3 gxc#!class::t '#f)))
                (let _%loop173550%_ ((_%rest173552%_
                                      _%precedence-list173548%_))
                  (let* ((_%rest173553173561%_ _%rest173552%_)
                         (_%else173555173569%_ (lambda () '#f))
                         (_%K173557173578%_
                          (lambda (_%rest173572%_ _%klass-name173573%_)
                            (let ((_%$e173575%_
                                   (eq? (let ((__tmp176220
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a173541%_
                                                            (cons _%klass-b173542%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name173573%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp176220
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b173547%_)))
                              (if _%$e173575%_
                                  _%$e173575%_
                                  (_%loop173550%_ _%rest173572%_))))))
                    (if (pair? _%rest173553173561%_)
                        (let ((_%hd173558173581%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest173553173561%_)))
                              (_%tl173559173583%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest173553173561%_))))
                          (let* ((_%klass-name173586%_ _%hd173558173581%_)
                                 (_%rest173588%_ _%tl173559173583%_))
                            (_%K173557173578%_
                             _%rest173588%_
                             _%klass-name173586%_)))
                        (_%else173555173569%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type173539%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type173539%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type173539%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc173528%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc173528%_ 'gxc#!procedure::t))
            (let ((_%proc173531%_ _%proc173528%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc173531%_ '2 '#f '#f))
                  (let ((__tmp176221
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc173531%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp176221 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@378.11-378.15"
               'contract:
               '!procedure?
               'value:
               _%proc173528%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym173510%_ _%type173511%_ _%local?173512%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type173511%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym173510%_
                     _%type173511%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym173510%_ '" " _%type173511%_))
        (let ((_%table173514%_
               (if _%local?173512%_
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
          (hash-put! _%table173514%_ _%sym173510%_ _%type173511%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym173519%_ _%type173520%_)
        (let ((_%local?173522%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym173519%_
           _%type173520%_
           _%local?173522%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g176222_
        (let ((_g176223_ (let () (declare (not safe)) (##length _g176222_))))
          (cond ((let () (declare (not safe)) (##fx= _g176223_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g176222_))
                ((let () (declare (not safe)) (##fx= _g176223_ 3))
                 (apply gxc#optimizer-declare-type!__% _g176222_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g176222_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym173504%_ _%type173505%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type173505%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym173504%_
                     _%type173505%_)))
        (let ((_%table173507%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp176224
                 (let () (declare (not safe)) (struct->list _%type173505%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym173504%_ '" " __tmp176224))
          (let ()
            (declare (not safe))
            (hash-put! _%table173507%_ _%sym173504%_ _%type173505%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table173507%_ _%type173505%_ _%sym173504%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym173499%_ _%type173500%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type173500%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym173499%_
                     _%type173500%_)))
        (let ((_%table173502%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table173502%_ _%sym173499%_))
              '#!void
              (begin
                (let ((__tmp176225
                       (let ()
                         (declare (not safe))
                         (struct->list _%type173500%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym173499%_
                   '" "
                   __tmp176225))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table173502%_ _%sym173499%_ _%type173500%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table173502%_
                   _%type173500%_
                   _%sym173499%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym173497%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym173497%_))
        (let ((__tmp176226
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp176226 _%sym173497%_))
        (let ((__tmp176227
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp176227 _%sym173497%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t173465%_
               _%method173466%_
               _%sym173467%_
               _%rebind?173468%_)
        (let ((__tmp176228
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp176228 _%sym173467%_ '#t))
        (let ((_%klass173470%_ (gxc#optimizer-lookup-class _%type-t173465%_)))
          (if _%klass173470%_
              (let* ((_%vtab173472%_ (gxc#!class-method-table _%klass173470%_))
                     (_%$e173474%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab173472%_ _%method173466%_))))
                (if _%$e173474%_
                    ((lambda (_%existing173477%_)
                       (if _%rebind?173468%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t173465%_
                                '" "
                                _%method173466%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab173472%_
                                _%method173466%_
                                _%sym173467%_)))
                           (if (eq? _%existing173477%_ _%sym173467%_)
                               '#!void
                               (let ((__tmp176229
                                      (cons 'bind-method!
                                            (cons _%type-t173465%_
                                                  (cons _%method173466%_
                                                        (cons _%sym173467%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp176229
                                  _%method173466%_)))))
                     _%$e173474%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t173465%_
                         '" "
                         _%method173466%_
                         '" => "
                         _%sym173467%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab173472%_
                         _%method173466%_
                         _%sym173467%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t173465%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t173486%_ _%method173487%_ _%sym173488%_)
        (let ((_%rebind?173490%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t173486%_
           _%method173487%_
           _%sym173488%_
           _%rebind?173490%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g176230_
        (let ((_g176231_ (let () (declare (not safe)) (##length _g176230_))))
          (cond ((let () (declare (not safe)) (##fx= _g176231_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g176230_))
                ((let () (declare (not safe)) (##fx= _g176231_ 4))
                 (apply gxc#optimizer-declare-method!__% _g176230_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g176230_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym173451%_)
        (let ((_%$e173453%_
               (let ((__tmp176232
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym173451%_ __tmp176232))))
          (if _%$e173453%_
              _%$e173453%_
              (let ((_%$e173461%_
                     (let ((_%ht173455173457%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht173455173457%_
                           (let ((_%ht173459%_ _%ht173455173457%_))
                             (declare (not safe))
                             (hash-get _%ht173459%_ _%sym173451%_))
                           '#f))))
                (if _%$e173461%_
                    _%$e173461%_
                    (let ((__tmp176233
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp176233 _%sym173451%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym173444%_)
        (let ((_%type173445173447%_ (gxc#optimizer-lookup-type _%sym173444%_)))
          (if _%type173445173447%_
              (let ((_%type173449%_ _%type173445173447%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type173449%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type173449%_ '1 '#f '#f)))
                    _%type173449%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym173440%_)
        (let ((_%table173442%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table173442%_ _%sym173440%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where173425%_ _%sym173426%_)
        (let ((_%$e173429%_ (gxc#optimizer-lookup-class _%sym173426%_)))
          (if _%$e173429%_
              ((lambda (_%g173431173433%_)
                 (let ((_%val173436%_ _%g173431173433%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val173436%_
                          'gxc#!class::t))
                       _%val173436%_
                       (begin
                         (raise-contract-violation-error
                          '"contract violation"
                          'context:
                          'gerbil/compiler/optimize-base
                          'contract:
                          '(!class? val)
                          'value:
                          _%val173436%_)
                         '#!void))))
               _%$e173429%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where173425%_
                   _%sym173426%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass173423%_)
        (let ((__tmp176234
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp176234 _%klass173423%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t173420%_ _%method173421%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t173420%_)
         _%method173421%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym173418%_)
        (let ((__tmp176235
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp176235 _%sym173418%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e173300%_
                  (lambda (_%t173401%_)
                    (if (symbol? _%t173401%_)
                        (_%type-e173300%_
                         (gxc#optimizer-lookup-type _%t173401%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t173401%_
                               'gxc#!lambda::t))
                            (_%__lambda-type173302%_ _%t173401%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t173401%_
                                   'gxc#!kw-lambda::t))
                                (_%__kw-lambda-type173304%_ _%t173401%_)
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t173401%_
                                       'gxc#!kw-lambda-primary::t))
                                    (_%__kw-lambda-primary-type173306%_
                                     _%t173401%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t173401%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t173408%_ _%t173401%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t173408%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp176236
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t173408%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp176236
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t173401%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t173401%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%lambda-type173301%_
                  (lambda (_%t173389%_)
                    (let ((_%t173392%_ _%t173389%_))
                      (_%__lambda-type173302%_ _%t173392%_))))
                 (_%__lambda-type173302%_
                  (lambda (_%t173377%_)
                    (let ((_%t173380%_ _%t173377%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t173380%_ '4 '#f '#f))
                          (_%type-e173300%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t173380%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t173380%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp176237
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t173380%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp176237
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%kw-lambda-type173303%_
                  (lambda (_%t173365%_)
                    (let ((_%t173368%_ _%t173365%_))
                      (_%__kw-lambda-type173304%_ _%t173368%_))))
                 (_%__kw-lambda-type173304%_
                  (lambda (_%t173353%_)
                    (let ((_%t173356%_ _%t173353%_))
                      (_%type-e173300%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t173356%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type173305%_
                  (lambda (_%t173341%_)
                    (let ((_%t173344%_ _%t173341%_))
                      (_%__kw-lambda-primary-type173306%_ _%t173344%_))))
                 (_%__kw-lambda-primary-type173306%_
                  (lambda (_%t173327%_)
                    (let ((_%t173330%_ _%t173327%_))
                      (_%type-e173300%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t173330%_
                          '4
                          '#f
                          '#f)))))))
          (let* ((_%ht1173308%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2173310%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result173312%_
                  (if _%ht1173308%_
                      (let () (declare (not safe)) (hash->list _%ht1173308%_))
                      '()))
                 (_%result173314%_
                  (if _%ht2173310%_
                      (let ((__tmp176238
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2173310%_))))
                        (declare (not safe))
                        (__foldl1 cons _%result173312%_ __tmp176238))
                      _%result173312%_)))
            (for-each
             (lambda (_%p173317%_)
               (let* ((_%t173319%_ (cdr _%p173317%_))
                      (_%tr173321%_ (_%type-e173300%_ _%t173319%_)))
                 (set-cdr! _%p173317%_ _%tr173321%_)))
             _%result173314%_)
            (list-sort
             (lambda (_%a173324%_ _%b173325%_)
               (let ((__tmp176240 (symbol->string (car _%a173324%_)))
                     (__tmp176239 (symbol->string (car _%b173325%_))))
                 (declare (not safe))
                 (##string<? __tmp176240 __tmp176239)))
             _%result173314%_)))))))
