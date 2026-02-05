(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1770333057)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp176148 (list)) (__tmp176147 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp176148
         '(type classes ssxi methods)
         __tmp176147
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args176119%_
        (apply make-instance gxc#optimizer-info::t _%$args176119%_)))
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
      (lambda (_%self176106%_)
        (let ((_%self176109%_ _%self176106%_))
          (if (let ((__tmp176149
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self176109%_))))
                (declare (not safe))
                (##fx< '4 __tmp176149))
              (begin
                (let ((__tmp176150
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self176109%_
                   __tmp176150
                   '1
                   '#f
                   '#f))
                (let ((__tmp176151
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self176109%_
                   __tmp176151
                   '2
                   '#f
                   '#f))
                (let ((__tmp176152
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self176109%_
                   __tmp176152
                   '3
                   '#f
                   '#f))
                (let ((__tmp176153
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self176109%_
                   __tmp176153
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp176154
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self176109%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self176109%_
                       '4
                       __tmp176154))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp176156 (list)) (__tmp176155 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp176156
         '(id)
         __tmp176155
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args175981%_
        (apply make-instance gxc#!type::t _%$args175981%_)))
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
      (let ((__tmp176158 (list gxc#!type::t))
            (__tmp176157 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp176158
         '()
         __tmp176157
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args175978%_
        (apply make-instance gxc#!abort::t _%$args175978%_)))
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
      (let ((__tmp176160 (list gxc#!type::t))
            (__tmp176159 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp176160
         '()
         __tmp176159
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args175975%_
        (apply make-instance gxc#!alias::t _%$args175975%_)))
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
      (let ((__tmp176162 (list)) (__tmp176161 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp176162
         '(return effect arguments unchecked origin)
         __tmp176161
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args175972%_
        (apply make-instance gxc#!signature::t _%$args175972%_)))
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
      (let ((__tmp176164 (list gxc#!type::t))
            (__tmp176163 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp176164
         '(signature)
         __tmp176163
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
      (lambda (_%id175951%_ _%signature175952%_)
        (if ((lambda (_%$obj175955%_)
               (or (not _%$obj175955%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj175955%_
                      'gxc#!signature::t))))
             _%signature175952%_)
            (let ((_%signature175962%_ _%signature175952%_))
              (gxc#__make-!procedure _%id175951%_ _%signature175962%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature175952%_)
              '#!void))))
    (define gxc#__make-!procedure
      (lambda (_%id175937%_ _%signature175939%_)
        (let ((_%signature175942%_ _%signature175939%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id175937%_ _%signature175942%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj175906%_ _%signature175907%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj175906%_ 'gxc#!procedure::t))
            (let ((_%$obj175911%_ _%$obj175906%_))
              (if ((lambda (_%$obj175920%_)
                     (or (not _%$obj175920%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj175920%_
                            'gxc#!signature::t))))
                   _%signature175907%_)
                  (let ((_%signature175927%_ _%signature175907%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj175911%_
                     _%signature175927%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature175907%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj175906%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj175883%_ _%signature175885%_)
        (let* ((_%$obj175889%_ _%$obj175883%_)
               (_%signature175897%_ _%signature175885%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj175889%_
           _%signature175897%_
           '2
           '#f
           '#f))))
    (define gxc#!class-meta::t
      (let ((__tmp176166 (list gxc#!type::t))
            (__tmp176165 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp176166
         '(class)
         __tmp176165
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args175880%_
        (apply make-instance gxc#!class-meta::t _%$args175880%_)))
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
      (let ((__tmp176168 (list gxc#!type::t))
            (__tmp176167 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class::t
         '!class
         __tmp176168
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp176167
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args175877%_
        (apply make-instance gxc#!class::t _%$args175877%_)))
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
      (let ((__tmp176170 (list gxc#!procedure::t))
            (__tmp176169 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp176170
         '()
         __tmp176169
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args175874%_
        (apply make-instance gxc#!predicate::t _%$args175874%_)))
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
      (let ((__tmp176172 (list gxc#!procedure::t))
            (__tmp176171 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp176172
         '()
         __tmp176171
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args175871%_
        (apply make-instance gxc#!constructor::t _%$args175871%_)))
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
      (let ((__tmp176174 (list gxc#!procedure::t))
            (__tmp176173 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp176174
         '(slot checked?)
         __tmp176173
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args175868%_
        (apply make-instance gxc#!accessor::t _%$args175868%_)))
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
      (let ((__tmp176176 (list gxc#!procedure::t))
            (__tmp176175 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp176176
         '(slot checked?)
         __tmp176175
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args175865%_
        (apply make-instance gxc#!mutator::t _%$args175865%_)))
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
      (let ((__tmp176178 (list gxc#!type::t))
            (__tmp176177 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp176178
         '(methods)
         __tmp176177
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args175862%_
        (apply make-instance gxc#!interface::t _%$args175862%_)))
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
      (let ((__tmp176180 (list gxc#!procedure::t))
            (__tmp176179 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp176180
         '(arity dispatch inline inline-typedecl)
         __tmp176179
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args175859%_
        (apply make-instance gxc#!lambda::t _%$args175859%_)))
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
      (let ((__tmp176182 (list gxc#!procedure::t))
            (__tmp176181 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp176182
         '(clauses)
         __tmp176181
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args175856%_
        (apply make-instance gxc#!case-lambda::t _%$args175856%_)))
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
      (let ((__tmp176184 (list gxc#!procedure::t))
            (__tmp176183 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp176184
         '(table dispatch)
         __tmp176183
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args175853%_
        (apply make-instance gxc#!kw-lambda::t _%$args175853%_)))
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
      (let ((__tmp176186 (list gxc#!procedure::t))
            (__tmp176185 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp176186
         '(keys main)
         __tmp176185
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args175850%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args175850%_)))
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
      (let ((__tmp176187 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp176187
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args175847%_
        (apply make-instance gxc#!primitive::t _%$args175847%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp176189 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp176188 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp176189
         '()
         __tmp176188
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args175844%_
        (apply make-instance gxc#!primitive-predicate::t _%$args175844%_)))
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
      (let ((__tmp176191 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp176190 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp176191
         '()
         __tmp176190
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args175841%_
        (apply make-instance gxc#!primitive-lambda::t _%$args175841%_)))
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
      (let ((__tmp176193 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp176192 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp176193
         '()
         __tmp176192
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args175838%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args175838%_)))
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
      (lambda (_%self175825%_)
        (let ((_%self175828%_ _%self175825%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self175828%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self175688%_ _%klass175689%_)
        (let ((_%self175692%_ _%self175688%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self175692%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175692%_
             _%klass175689%_
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
      (lambda (_%self175378%_
               _%id175379%_
               _%super175380%_
               _%slots175381%_
               _%ctor-method175382%_
               _%struct?175383%_
               _%final?175384%_
               _%system?175385%_
               _%metaclass175386%_)
        (let ((_%self175389%_ _%self175378%_))
          (let _%lp175400%_ ((_%rest175402%_ _%super175380%_))
            (let* ((_%rest175403175411%_ _%rest175402%_)
                   (_%else175405175419%_ (lambda () '#!void))
                   (_%K175407175425%_
                    (lambda (_%rest175422%_ _%super-id175423%_)
                      (if (let ((__tmp176194
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id175379%_ '()))
                                  _%super-id175423%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp176194 '8 '#f '#f))
                          (let ((__tmp176195
                                 (cons '!class (cons _%id175379%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp176195
                             _%super-id175423%_))
                          '#!void)
                      (_%lp175400%_ _%rest175422%_))))
              (if (pair? _%rest175403175411%_)
                  (let ((_%hd175408175428%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest175403175411%_)))
                        (_%tl175409175430%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest175403175411%_))))
                    (let* ((_%super-id175433%_ _%hd175408175428%_)
                           (_%rest175435%_ _%tl175409175430%_))
                      (_%K175407175425%_ _%rest175435%_ _%super-id175433%_)))
                  '#!void)))
          (let* ((_%ctor-method175486%_
                  (let ((_%$e175437%_ _%ctor-method175382%_))
                    (if _%$e175437%_
                        _%$e175437%_
                        (let _%lp175440%_ ((_%rest175442%_ _%super175380%_)
                                           (_%method175443%_ '#f))
                          (let* ((_%rest175444175452%_ _%rest175442%_)
                                 (_%else175446175460%_
                                  (lambda () _%method175443%_))
                                 (_%K175448175474%_
                                  (lambda (_%rest175463%_ _%super-id175464%_)
                                    (let* ((_%klass175466%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id175379%_ '()))
                                             _%super-id175464%_))
                                           (_%$e175468%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass175466%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e175468%_
                                          ((lambda (_%ctor-method175471%_)
                                             (if _%method175443%_
                                                 (if (eq? _%ctor-method175471%_
                                                          _%method175443%_)
                                                     (_%lp175440%_
                                                      _%rest175463%_
                                                      _%ctor-method175471%_)
                                                     (let ((__tmp176196
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id175379%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp176196
                _%method175443%_
                _%ctor-method175471%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp175440%_
                                                  _%rest175463%_
                                                  _%ctor-method175471%_)))
                                           _%$e175468%_)
                                          (_%lp175440%_
                                           _%rest175463%_
                                           _%method175443%_))))))
                            (if (pair? _%rest175444175452%_)
                                (let ((_%hd175449175477%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest175444175452%_)))
                                      (_%tl175450175479%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest175444175452%_))))
                                  (let* ((_%super-id175482%_
                                          _%hd175449175477%_)
                                         (_%rest175484%_ _%tl175450175479%_))
                                    (_%K175448175474%_
                                     _%rest175484%_
                                     _%super-id175482%_)))
                                (_%else175446175460%_)))))))
                 (_g176197_
                  (let ((__tmp176201
                         (lambda (_%klass-id175488%_)
                           (cons _%klass-id175488%_
                                 (let ((__tmp176202
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id175379%_ '()))
                                         _%klass-id175488%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp176202
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp176199
                         (lambda (_%klass-id175490%_)
                           (let ((__tmp176200
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id175379%_ '()))
                                   _%klass-id175490%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp176200
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp176201
                     __tmp176199
                     eq?
                     identity
                     '()
                     _%super175380%_))))
            (begin
              (let ((_g176198_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g176197_)
                           (##values-length _g176197_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g176198_ 2)))
                    (error "Context expects 2 values" _g176198_)))
              (let ((_%precedence-list175492%_
                     (let () (declare (not safe)) (##values-ref _g176197_ 0)))
                    (_%base-struct175493%_
                     (let () (declare (not safe)) (##values-ref _g176197_ 1))))
                (let* ((_%precedence-list175537%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id175379%_ '(t object class)))
                            _%precedence-list175492%_
                            (if (memq 'object::t _%precedence-list175492%_)
                                _%precedence-list175492%_
                                (if _%system?175385%_
                                    (if (memq 't::t _%precedence-list175492%_)
                                        _%precedence-list175492%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list175492%_
                                           '(t::t))))
                                    (let _%loop175499%_ ((_%tail175501%_
                                                          _%precedence-list175492%_)
                                                         (_%head175502%_ '()))
                                      (let* ((_%tail175503175511%_
                                              _%tail175501%_)
                                             (_%else175505175519%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head175502%_))))
                                             (_%K175507175525%_
                                              (lambda (_%rest175522%_
                                                       _%hd175523%_)
                                                (if (eq? _%hd175523%_ 't::t)
                                                    (let ((__tmp176203
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail175501%_)))
              (declare (not safe))
              (__foldl1 cons __tmp176203 _%head175502%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop175499%_
                                                     _%rest175522%_
                                                     (cons _%hd175523%_
                                                           _%head175502%_))))))
                                        (if (pair? _%tail175503175511%_)
                                            (let ((_%hd175508175528%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail175503175511%_)))
                                                  (_%tl175509175530%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail175503175511%_))))
                                              (let* ((_%hd175533%_
                                                      _%hd175508175528%_)
                                                     (_%rest175535%_
                                                      _%tl175509175530%_))
                                                (_%K175507175525%_
                                                 _%rest175535%_
                                                 _%hd175533%_)))
                                            (_%else175505175519%_))))))))
                       (_%fields175539%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id175379%_ '()))
                         _%base-struct175493%_
                         _%precedence-list175537%_
                         _%slots175381%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175389%_
                     _%id175379%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175389%_
                     _%super175380%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175389%_
                     _%precedence-list175537%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175389%_
                     _%slots175381%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175389%_
                     _%fields175539%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175389%_
                     _%ctor-method175486%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175389%_
                     _%struct?175383%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175389%_
                     _%final?175384%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175389%_
                     _%metaclass175386%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self175542%_
               _%id175543%_
               _%super175544%_
               _%precedence-list175545%_
               _%slots175546%_
               _%fields175547%_
               _%constructor175548%_
               _%struct?175549%_
               _%final?175550%_
               _%system?175551%_
               _%metaclass175552%_
               _%methods175553%_)
        (let ((_%self175556%_ _%self175542%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175556%_
             _%id175543%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175556%_
             _%super175544%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175556%_
             _%precedence-list175545%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175556%_
             _%slots175546%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175556%_
             _%fields175547%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175556%_
             _%constructor175548%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175556%_
             _%struct?175549%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175556%_
             _%final?175550%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175556%_
             _%metaclass175552%_
             '10
             '#f
             '#f))
          (if _%methods175553%_
              (let ((__tmp176204
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods175553%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self175556%_
                 __tmp176204
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g176205_
        (let ((_g176206_ (let () (declare (not safe)) (##length _g176205_))))
          (cond ((let () (declare (not safe)) (##fx= _g176206_ 9))
                 (apply gxc#!class:::init!__0 _g176205_))
                ((let () (declare (not safe)) (##fx= _g176206_ 12))
                 (apply gxc#!class:::init!__1 _g176205_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g176205_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where175230%_
               _%base-struct175231%_
               _%precedence-list175232%_
               _%direct-slots175233%_)
        (let* ((_%base-fields175235%_
                (if _%base-struct175231%_
                    (let ((__tmp176207
                           (gxc#optimizer-resolve-class
                            _%where175230%_
                            _%base-struct175231%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp176207 '5 '#f '#f))
                    '()))
               (_%r-fields175237%_ (reverse _%base-fields175235%_))
               (_%seen-slots175245%_
                (let ((_%tab175239%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g175240175242%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab175239%_ _%g175240175242%_ '#t)))
                   _%base-fields175235%_)
                  _%tab175239%_))
               (_%process-slot175249%_
                (lambda (_%slot175247%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots175245%_ _%slot175247%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots175245%_
                           _%slot175247%_
                           '#t))
                        (set! _%r-fields175237%_
                              (cons _%slot175247%_ _%r-fields175237%_)))))))
          (for-each
           (lambda (_%mixin175252%_)
             (let ((_%klass175254%_
                    (gxc#optimizer-resolve-class
                     _%where175230%_
                     _%mixin175252%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass175254%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot175249%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass175254%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list175232%_)
          (for-each _%process-slot175249%_ _%direct-slots175233%_)
          (let () (declare (not safe)) (##reverse _%r-fields175237%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass175189%_ _%slot175190%_)
        (let _%lp175192%_ ((_%rest175194%_
                            (##structure-ref
                             _%klass175189%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset175195%_ '1))
          (let* ((_%rest175196175204%_ _%rest175194%_)
                 (_%else175198175212%_
                  (lambda ()
                    (let ((__tmp176209
                           (##structure-ref
                            _%klass175189%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp176208
                           (##structure-ref
                            _%klass175189%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp176209
                       __tmp176208
                       _%slot175190%_))))
                 (_%K175200175218%_
                  (lambda (_%rest175215%_ _%s175216%_)
                    (if (eq? _%s175216%_ _%slot175190%_)
                        _%offset175195%_
                        (_%lp175192%_
                         _%rest175215%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset175195%_ '1)))))))
            (if (pair? _%rest175196175204%_)
                (let ((_%hd175201175221%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest175196175204%_)))
                      (_%tl175202175223%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest175196175204%_))))
                  (let* ((_%s175226%_ _%hd175201175221%_)
                         (_%rest175228%_ _%tl175202175223%_))
                    (_%K175200175218%_ _%rest175228%_ _%s175226%_)))
                (_%else175198175212%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass175147%_ _%slot175148%_)
        (if (gxc#!class-struct-slot? _%klass175147%_ _%slot175148%_)
            _%klass175147%_
            (let _%lp175150%_ ((_%rest175152%_
                                (##structure-ref
                                 _%klass175147%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest175153175161%_ _%rest175152%_)
                     (_%else175155175169%_ (lambda () '#f))
                     (_%K175157175177%_
                      (lambda (_%rest175172%_ _%super175173%_)
                        (let ((_%super-class175175%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass175147%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot175148%_ '())))
                                _%super175173%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class175175%_
                               _%slot175148%_)
                              _%super-class175175%_
                              (_%lp175150%_ _%rest175172%_))))))
                (if (pair? _%rest175153175161%_)
                    (let ((_%hd175158175180%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest175153175161%_)))
                          (_%tl175159175182%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest175153175161%_))))
                      (let* ((_%super175185%_ _%hd175158175180%_)
                             (_%rest175187%_ _%tl175159175182%_))
                        (_%K175157175177%_ _%rest175187%_ _%super175185%_)))
                    (_%else175155175169%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass175144%_ _%slot175145%_)
        (if (##structure-ref _%klass175144%_ '7 gxc#!class::t '#f)
            (memq _%slot175145%_
                  (##structure-ref _%klass175144%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self175129%_ _%id175130%_)
        (let ((_%self175133%_ _%self175129%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175133%_
             _%id175130%_
             '1
             '#f
             '#f))
          (let ((__tmp176210
                 (let ((__obj176142
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
                      __obj176142
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176142
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176142
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj176142)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175133%_
             __tmp176210
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self174992%_ _%id174993%_)
        (let ((_%self174996%_ _%self174992%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174996%_
             _%id174993%_
             '1
             '#f
             '#f))
          (let ((__tmp176211
                 (let ((__obj176143
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
                      __obj176143
                      _%id174993%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176143
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj176143)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174996%_
             __tmp176211
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
      (lambda (_%self174853%_ _%id174854%_ _%slot174855%_ _%checked?174856%_)
        (let ((_%self174859%_ _%self174853%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174859%_
             _%id174854%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174859%_
             _%slot174855%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174859%_
             _%checked?174856%_
             '4
             '#f
             '#f))
          (let ((__tmp176212
                 (let ((__obj176144
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
                     (##unchecked-structure-set! __obj176144 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176144
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp176213 (cons _%id174854%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176144
                      __tmp176213
                      '3
                      '#f
                      '#f))
                   __obj176144)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174859%_
             __tmp176212
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self174714%_ _%id174715%_ _%slot174716%_ _%checked?174717%_)
        (let ((_%self174720%_ _%self174714%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174720%_
             _%id174715%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174720%_
             _%slot174716%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174720%_
             _%checked?174717%_
             '4
             '#f
             '#f))
          (let ((__tmp176214
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
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176145
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp176215 (cons _%id174715%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176145
                      __tmp176215
                      '3
                      '#f
                      '#f))
                   __obj176145)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174720%_
             __tmp176214
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords174558%_
               _%signature174555174559%_
               _%self174560%_
               _%arity174561%_
               _%dispatch174562%_)
        (let* ((_%signature174564%_
                (if (eq? _%signature174555174559%_ absent-value)
                    '#f
                    _%signature174555174559%_))
               (_%self174567%_ _%self174560%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self174567%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174567%_
             _%arity174561%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174567%_
             _%dispatch174562%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174567%_
             _%signature174564%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords174582%_ . _%args174583%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords174582%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords174582%_
                  'signature:
                  absent-value))
               _%args174583%_)))
    (define gxc#!lambda:::init!
      (lambda _%args174556174589%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args174556174589%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords174399%_
               _%signature174396174400%_
               _%self174401%_
               _%clauses174402%_)
        (let* ((_%signature174404%_
                (if (eq? _%signature174396174400%_ absent-value)
                    '#f
                    _%signature174396174400%_))
               (_%self174407%_ _%self174401%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self174407%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174407%_
             _%signature174404%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174407%_
             _%clauses174402%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords174422%_ . _%args174423%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords174422%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords174422%_
                  'signature:
                  absent-value))
               _%args174423%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args174397174429%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args174397174429%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self174257%_ _%tab174258%_ _%dispatch174259%_)
        (let ((_%self174262%_ _%self174257%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self174262%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174262%_
             _%tab174258%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174262%_
             _%dispatch174259%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self174119%_ _%keys174120%_ _%main174121%_)
        (let ((_%self174124%_ _%self174119%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self174124%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174124%_
             _%keys174120%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174124%_
             _%main174121%_
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
      (lambda (_%self173738%_ _%id173739%_)
        (let ((_%self173742%_ _%self173738%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self173742%_
             _%id173739%_
             '1
             '#f
             '#f))
          (let ((__tmp176216
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
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176146
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176146
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj176146)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self173742%_
             __tmp176216
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
      (lambda (_%klass173607%_)
        (let ((_%$e173609%_
               (##structure-ref _%klass173607%_ '11 gxc#!class::t '#f)))
          (if _%$e173609%_
              _%$e173609%_
              (let ((_%tab173613%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass173607%_
                 _%tab173613%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab173613%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass173599%_ _%method173600%_)
        (let ((_%tab173601173603%_
               (##structure-ref _%klass173599%_ '11 gxc#!class::t '#f)))
          (if _%tab173601173603%_
              (let ((_%tab173605%_ _%tab173601173603%_))
                (declare (not safe))
                (hash-get _%tab173605%_ _%method173600%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a173587%_ _%type-b173588%_)
        (if _%type-a173587%_
            (if _%type-b173588%_
                (let ((_%$e173590%_ (eq? _%type-a173587%_ _%type-b173588%_)))
                  (if _%$e173590%_
                      _%$e173590%_
                      (let ((_%$e173593%_
                             (eq? (##structure-ref
                                   _%type-b173588%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e173593%_
                            _%$e173593%_
                            (let ((_%$e173596%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a173587%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b173588%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e173596%_
                                  _%$e173596%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a173587%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b173588%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a173587%_
                                           _%type-b173588%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a173538%_ _%klass-b173539%_)
        (let ((_%$e173541%_
               (eq? (##structure-ref _%klass-a173538%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b173539%_ '1 gxc#!type::t '#f))))
          (if _%$e173541%_
              _%$e173541%_
              (let ((_%klass-id-b173544%_
                     (##structure-ref _%klass-b173539%_ '1 gxc#!type::t '#f))
                    (_%precedence-list173545%_
                     (##structure-ref _%klass-a173538%_ '3 gxc#!class::t '#f)))
                (let _%loop173547%_ ((_%rest173549%_
                                      _%precedence-list173545%_))
                  (let* ((_%rest173550173558%_ _%rest173549%_)
                         (_%else173552173566%_ (lambda () '#f))
                         (_%K173554173575%_
                          (lambda (_%rest173569%_ _%klass-name173570%_)
                            (let ((_%$e173572%_
                                   (eq? (let ((__tmp176217
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a173538%_
                                                            (cons _%klass-b173539%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name173570%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp176217
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b173544%_)))
                              (if _%$e173572%_
                                  _%$e173572%_
                                  (_%loop173547%_ _%rest173569%_))))))
                    (if (pair? _%rest173550173558%_)
                        (let ((_%hd173555173578%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest173550173558%_)))
                              (_%tl173556173580%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest173550173558%_))))
                          (let* ((_%klass-name173583%_ _%hd173555173578%_)
                                 (_%rest173585%_ _%tl173556173580%_))
                            (_%K173554173575%_
                             _%rest173585%_
                             _%klass-name173583%_)))
                        (_%else173552173566%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type173536%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type173536%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type173536%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc173525%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc173525%_ 'gxc#!procedure::t))
            (let ((_%proc173528%_ _%proc173525%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc173528%_ '2 '#f '#f))
                  (let ((__tmp176218
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc173528%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp176218 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@378.11-378.15"
               'contract:
               '!procedure?
               'value:
               _%proc173525%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym173507%_ _%type173508%_ _%local?173509%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type173508%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym173507%_
                     _%type173508%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym173507%_ '" " _%type173508%_))
        (let ((_%table173511%_
               (if _%local?173509%_
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
          (hash-put! _%table173511%_ _%sym173507%_ _%type173508%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym173516%_ _%type173517%_)
        (let ((_%local?173519%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym173516%_
           _%type173517%_
           _%local?173519%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g176219_
        (let ((_g176220_ (let () (declare (not safe)) (##length _g176219_))))
          (cond ((let () (declare (not safe)) (##fx= _g176220_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g176219_))
                ((let () (declare (not safe)) (##fx= _g176220_ 3))
                 (apply gxc#optimizer-declare-type!__% _g176219_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g176219_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym173501%_ _%type173502%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type173502%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym173501%_
                     _%type173502%_)))
        (let ((_%table173504%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp176221
                 (let () (declare (not safe)) (struct->list _%type173502%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym173501%_ '" " __tmp176221))
          (let ()
            (declare (not safe))
            (hash-put! _%table173504%_ _%sym173501%_ _%type173502%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table173504%_ _%type173502%_ _%sym173501%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym173496%_ _%type173497%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type173497%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym173496%_
                     _%type173497%_)))
        (let ((_%table173499%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table173499%_ _%sym173496%_))
              '#!void
              (begin
                (let ((__tmp176222
                       (let ()
                         (declare (not safe))
                         (struct->list _%type173497%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym173496%_
                   '" "
                   __tmp176222))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table173499%_ _%sym173496%_ _%type173497%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table173499%_
                   _%type173497%_
                   _%sym173496%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym173494%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym173494%_))
        (let ((__tmp176223
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp176223 _%sym173494%_))
        (let ((__tmp176224
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp176224 _%sym173494%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t173462%_
               _%method173463%_
               _%sym173464%_
               _%rebind?173465%_)
        (let ((__tmp176225
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp176225 _%sym173464%_ '#t))
        (let ((_%klass173467%_ (gxc#optimizer-lookup-class _%type-t173462%_)))
          (if _%klass173467%_
              (let* ((_%vtab173469%_ (gxc#!class-method-table _%klass173467%_))
                     (_%$e173471%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab173469%_ _%method173463%_))))
                (if _%$e173471%_
                    ((lambda (_%existing173474%_)
                       (if _%rebind?173465%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t173462%_
                                '" "
                                _%method173463%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab173469%_
                                _%method173463%_
                                _%sym173464%_)))
                           (if (eq? _%existing173474%_ _%sym173464%_)
                               '#!void
                               (let ((__tmp176226
                                      (cons 'bind-method!
                                            (cons _%type-t173462%_
                                                  (cons _%method173463%_
                                                        (cons _%sym173464%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp176226
                                  _%method173463%_)))))
                     _%$e173471%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t173462%_
                         '" "
                         _%method173463%_
                         '" => "
                         _%sym173464%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab173469%_
                         _%method173463%_
                         _%sym173464%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t173462%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t173483%_ _%method173484%_ _%sym173485%_)
        (let ((_%rebind?173487%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t173483%_
           _%method173484%_
           _%sym173485%_
           _%rebind?173487%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g176227_
        (let ((_g176228_ (let () (declare (not safe)) (##length _g176227_))))
          (cond ((let () (declare (not safe)) (##fx= _g176228_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g176227_))
                ((let () (declare (not safe)) (##fx= _g176228_ 4))
                 (apply gxc#optimizer-declare-method!__% _g176227_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g176227_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym173448%_)
        (let ((_%$e173450%_
               (let ((__tmp176229
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym173448%_ __tmp176229))))
          (if _%$e173450%_
              _%$e173450%_
              (let ((_%$e173458%_
                     (let ((_%ht173452173454%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht173452173454%_
                           (let ((_%ht173456%_ _%ht173452173454%_))
                             (declare (not safe))
                             (hash-get _%ht173456%_ _%sym173448%_))
                           '#f))))
                (if _%$e173458%_
                    _%$e173458%_
                    (let ((__tmp176230
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp176230 _%sym173448%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym173441%_)
        (let ((_%type173442173444%_ (gxc#optimizer-lookup-type _%sym173441%_)))
          (if _%type173442173444%_
              (let ((_%type173446%_ _%type173442173444%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type173446%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type173446%_ '1 '#f '#f)))
                    _%type173446%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym173437%_)
        (let ((_%table173439%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table173439%_ _%sym173437%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where173422%_ _%sym173423%_)
        (let ((_%$e173426%_ (gxc#optimizer-lookup-class _%sym173423%_)))
          (if _%$e173426%_
              ((lambda (_%g173428173430%_)
                 (let ((_%val173433%_ _%g173428173430%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val173433%_
                          'gxc#!class::t))
                       _%val173433%_
                       (begin
                         (raise-contract-violation-error
                          '"contract violation"
                          'context:
                          'gerbil/compiler/optimize-base
                          'contract:
                          '(!class? val)
                          'value:
                          _%val173433%_)
                         '#!void))))
               _%$e173426%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where173422%_
                   _%sym173423%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass173420%_)
        (let ((__tmp176231
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp176231 _%klass173420%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t173417%_ _%method173418%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t173417%_)
         _%method173418%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym173415%_)
        (let ((__tmp176232
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp176232 _%sym173415%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e173297%_
                  (lambda (_%t173398%_)
                    (if (symbol? _%t173398%_)
                        (_%type-e173297%_
                         (gxc#optimizer-lookup-type _%t173398%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t173398%_
                               'gxc#!lambda::t))
                            (_%__lambda-type173299%_ _%t173398%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t173398%_
                                   'gxc#!kw-lambda::t))
                                (_%__kw-lambda-type173301%_ _%t173398%_)
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t173398%_
                                       'gxc#!kw-lambda-primary::t))
                                    (_%__kw-lambda-primary-type173303%_
                                     _%t173398%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t173398%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t173405%_ _%t173398%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t173405%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp176233
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t173405%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp176233
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t173398%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t173398%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%lambda-type173298%_
                  (lambda (_%t173386%_)
                    (let ((_%t173389%_ _%t173386%_))
                      (_%__lambda-type173299%_ _%t173389%_))))
                 (_%__lambda-type173299%_
                  (lambda (_%t173374%_)
                    (let ((_%t173377%_ _%t173374%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t173377%_ '4 '#f '#f))
                          (_%type-e173297%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t173377%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t173377%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp176234
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t173377%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp176234
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%kw-lambda-type173300%_
                  (lambda (_%t173362%_)
                    (let ((_%t173365%_ _%t173362%_))
                      (_%__kw-lambda-type173301%_ _%t173365%_))))
                 (_%__kw-lambda-type173301%_
                  (lambda (_%t173350%_)
                    (let ((_%t173353%_ _%t173350%_))
                      (_%type-e173297%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t173353%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type173302%_
                  (lambda (_%t173338%_)
                    (let ((_%t173341%_ _%t173338%_))
                      (_%__kw-lambda-primary-type173303%_ _%t173341%_))))
                 (_%__kw-lambda-primary-type173303%_
                  (lambda (_%t173324%_)
                    (let ((_%t173327%_ _%t173324%_))
                      (_%type-e173297%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t173327%_
                          '4
                          '#f
                          '#f)))))))
          (let* ((_%ht1173305%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2173307%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result173309%_
                  (if _%ht1173305%_
                      (let () (declare (not safe)) (hash->list _%ht1173305%_))
                      '()))
                 (_%result173311%_
                  (if _%ht2173307%_
                      (let ((__tmp176235
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2173307%_))))
                        (declare (not safe))
                        (__foldl1 cons _%result173309%_ __tmp176235))
                      _%result173309%_)))
            (for-each
             (lambda (_%p173314%_)
               (let* ((_%t173316%_ (cdr _%p173314%_))
                      (_%tr173318%_ (_%type-e173297%_ _%t173316%_)))
                 (set-cdr! _%p173314%_ _%tr173318%_)))
             _%result173311%_)
            (list-sort
             (lambda (_%a173321%_ _%b173322%_)
               (let ((__tmp176237 (symbol->string (car _%a173321%_)))
                     (__tmp176236 (symbol->string (car _%b173322%_))))
                 (declare (not safe))
                 (##string<? __tmp176237 __tmp176236)))
             _%result173311%_)))))))
