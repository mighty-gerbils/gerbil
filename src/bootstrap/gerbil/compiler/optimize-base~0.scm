(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1770341479)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp176144 (list)) (__tmp176143 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp176144
         '(type classes ssxi methods)
         __tmp176143
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args176115%_
        (apply make-instance gxc#optimizer-info::t _%$args176115%_)))
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
      (lambda (_%self176102%_)
        (let ((_%self176105%_ _%self176102%_))
          (if (let ((__tmp176145
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self176105%_))))
                (declare (not safe))
                (##fx< '4 __tmp176145))
              (begin
                (let ((__tmp176146
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self176105%_
                   __tmp176146
                   '1
                   '#f
                   '#f))
                (let ((__tmp176147
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self176105%_
                   __tmp176147
                   '2
                   '#f
                   '#f))
                (let ((__tmp176148
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self176105%_
                   __tmp176148
                   '3
                   '#f
                   '#f))
                (let ((__tmp176149
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self176105%_
                   __tmp176149
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp176150
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self176105%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self176105%_
                       '4
                       __tmp176150))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp176152 (list)) (__tmp176151 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp176152
         '(id)
         __tmp176151
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args175977%_
        (apply make-instance gxc#!type::t _%$args175977%_)))
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
      (let ((__tmp176154 (list gxc#!type::t))
            (__tmp176153 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp176154
         '()
         __tmp176153
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args175974%_
        (apply make-instance gxc#!abort::t _%$args175974%_)))
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
      (let ((__tmp176156 (list gxc#!type::t))
            (__tmp176155 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp176156
         '()
         __tmp176155
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args175971%_
        (apply make-instance gxc#!alias::t _%$args175971%_)))
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
      (let ((__tmp176158 (list)) (__tmp176157 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp176158
         '(return effect arguments unchecked origin)
         __tmp176157
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args175968%_
        (apply make-instance gxc#!signature::t _%$args175968%_)))
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
      (let ((__tmp176160 (list gxc#!type::t))
            (__tmp176159 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp176160
         '(signature)
         __tmp176159
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
      (lambda (_%id175947%_ _%signature175948%_)
        (if ((lambda (_%$obj175951%_)
               (or (not _%$obj175951%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj175951%_
                      'gxc#!signature::t))))
             _%signature175948%_)
            (let ((_%signature175958%_ _%signature175948%_))
              (gxc#__make-!procedure _%id175947%_ _%signature175958%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature175948%_)
              '#!void))))
    (define gxc#__make-!procedure
      (lambda (_%id175933%_ _%signature175935%_)
        (let ((_%signature175938%_ _%signature175935%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id175933%_ _%signature175938%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj175902%_ _%signature175903%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj175902%_ 'gxc#!procedure::t))
            (let ((_%$obj175907%_ _%$obj175902%_))
              (if ((lambda (_%$obj175916%_)
                     (or (not _%$obj175916%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj175916%_
                            'gxc#!signature::t))))
                   _%signature175903%_)
                  (let ((_%signature175923%_ _%signature175903%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj175907%_
                     _%signature175923%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature175903%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj175902%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj175879%_ _%signature175881%_)
        (let* ((_%$obj175885%_ _%$obj175879%_)
               (_%signature175893%_ _%signature175881%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj175885%_
           _%signature175893%_
           '2
           '#f
           '#f))))
    (define gxc#!class-meta::t
      (let ((__tmp176162 (list gxc#!type::t))
            (__tmp176161 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp176162
         '(class)
         __tmp176161
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args175876%_
        (apply make-instance gxc#!class-meta::t _%$args175876%_)))
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
      (let ((__tmp176164 (list gxc#!type::t))
            (__tmp176163 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class::t
         '!class
         __tmp176164
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp176163
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args175873%_
        (apply make-instance gxc#!class::t _%$args175873%_)))
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
      (let ((__tmp176166 (list gxc#!procedure::t))
            (__tmp176165 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp176166
         '()
         __tmp176165
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args175870%_
        (apply make-instance gxc#!predicate::t _%$args175870%_)))
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
      (let ((__tmp176168 (list gxc#!procedure::t))
            (__tmp176167 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp176168
         '()
         __tmp176167
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args175867%_
        (apply make-instance gxc#!constructor::t _%$args175867%_)))
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
      (let ((__tmp176170 (list gxc#!procedure::t))
            (__tmp176169 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp176170
         '(slot checked?)
         __tmp176169
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args175864%_
        (apply make-instance gxc#!accessor::t _%$args175864%_)))
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
      (let ((__tmp176172 (list gxc#!procedure::t))
            (__tmp176171 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp176172
         '(slot checked?)
         __tmp176171
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args175861%_
        (apply make-instance gxc#!mutator::t _%$args175861%_)))
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
      (let ((__tmp176174 (list gxc#!type::t))
            (__tmp176173 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp176174
         '(methods)
         __tmp176173
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args175858%_
        (apply make-instance gxc#!interface::t _%$args175858%_)))
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
      (let ((__tmp176176 (list gxc#!procedure::t))
            (__tmp176175 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp176176
         '(arity dispatch inline inline-typedecl)
         __tmp176175
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args175855%_
        (apply make-instance gxc#!lambda::t _%$args175855%_)))
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
      (let ((__tmp176178 (list gxc#!procedure::t))
            (__tmp176177 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp176178
         '(clauses)
         __tmp176177
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args175852%_
        (apply make-instance gxc#!case-lambda::t _%$args175852%_)))
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
      (let ((__tmp176180 (list gxc#!procedure::t))
            (__tmp176179 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp176180
         '(table dispatch)
         __tmp176179
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args175849%_
        (apply make-instance gxc#!kw-lambda::t _%$args175849%_)))
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
      (let ((__tmp176182 (list gxc#!procedure::t))
            (__tmp176181 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp176182
         '(keys main)
         __tmp176181
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args175846%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args175846%_)))
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
      (let ((__tmp176183 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp176183
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args175843%_
        (apply make-instance gxc#!primitive::t _%$args175843%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp176185 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp176184 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp176185
         '()
         __tmp176184
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args175840%_
        (apply make-instance gxc#!primitive-predicate::t _%$args175840%_)))
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
      (let ((__tmp176187 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp176186 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp176187
         '()
         __tmp176186
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args175837%_
        (apply make-instance gxc#!primitive-lambda::t _%$args175837%_)))
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
      (let ((__tmp176189 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp176188 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp176189
         '()
         __tmp176188
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args175834%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args175834%_)))
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
      (lambda (_%self175821%_)
        (let ((_%self175824%_ _%self175821%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self175824%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self175684%_ _%klass175685%_)
        (let ((_%self175688%_ _%self175684%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self175688%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175688%_
             _%klass175685%_
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
      (lambda (_%self175374%_
               _%id175375%_
               _%super175376%_
               _%slots175377%_
               _%ctor-method175378%_
               _%struct?175379%_
               _%final?175380%_
               _%system?175381%_
               _%metaclass175382%_)
        (let ((_%self175385%_ _%self175374%_))
          (let _%lp175396%_ ((_%rest175398%_ _%super175376%_))
            (let* ((_%rest175399175407%_ _%rest175398%_)
                   (_%else175401175415%_ (lambda () '#!void))
                   (_%K175403175421%_
                    (lambda (_%rest175418%_ _%super-id175419%_)
                      (if (let ((__tmp176190
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id175375%_ '()))
                                  _%super-id175419%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp176190 '8 '#f '#f))
                          (let ((__tmp176191
                                 (cons '!class (cons _%id175375%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp176191
                             _%super-id175419%_))
                          '#!void)
                      (_%lp175396%_ _%rest175418%_))))
              (if (pair? _%rest175399175407%_)
                  (let ((_%hd175404175424%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest175399175407%_)))
                        (_%tl175405175426%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest175399175407%_))))
                    (let* ((_%super-id175429%_ _%hd175404175424%_)
                           (_%rest175431%_ _%tl175405175426%_))
                      (_%K175403175421%_ _%rest175431%_ _%super-id175429%_)))
                  '#!void)))
          (let* ((_%ctor-method175482%_
                  (let ((_%$e175433%_ _%ctor-method175378%_))
                    (if _%$e175433%_
                        _%$e175433%_
                        (let _%lp175436%_ ((_%rest175438%_ _%super175376%_)
                                           (_%method175439%_ '#f))
                          (let* ((_%rest175440175448%_ _%rest175438%_)
                                 (_%else175442175456%_
                                  (lambda () _%method175439%_))
                                 (_%K175444175470%_
                                  (lambda (_%rest175459%_ _%super-id175460%_)
                                    (let* ((_%klass175462%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id175375%_ '()))
                                             _%super-id175460%_))
                                           (_%$e175464%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass175462%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e175464%_
                                          ((lambda (_%ctor-method175467%_)
                                             (if _%method175439%_
                                                 (if (eq? _%ctor-method175467%_
                                                          _%method175439%_)
                                                     (_%lp175436%_
                                                      _%rest175459%_
                                                      _%ctor-method175467%_)
                                                     (let ((__tmp176192
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id175375%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp176192
                _%method175439%_
                _%ctor-method175467%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp175436%_
                                                  _%rest175459%_
                                                  _%ctor-method175467%_)))
                                           _%$e175464%_)
                                          (_%lp175436%_
                                           _%rest175459%_
                                           _%method175439%_))))))
                            (if (pair? _%rest175440175448%_)
                                (let ((_%hd175445175473%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest175440175448%_)))
                                      (_%tl175446175475%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest175440175448%_))))
                                  (let* ((_%super-id175478%_
                                          _%hd175445175473%_)
                                         (_%rest175480%_ _%tl175446175475%_))
                                    (_%K175444175470%_
                                     _%rest175480%_
                                     _%super-id175478%_)))
                                (_%else175442175456%_)))))))
                 (_g176193_
                  (let ((__tmp176197
                         (lambda (_%klass-id175484%_)
                           (cons _%klass-id175484%_
                                 (let ((__tmp176198
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id175375%_ '()))
                                         _%klass-id175484%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp176198
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp176195
                         (lambda (_%klass-id175486%_)
                           (let ((__tmp176196
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id175375%_ '()))
                                   _%klass-id175486%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp176196
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp176197
                     __tmp176195
                     eq?
                     identity
                     '()
                     _%super175376%_))))
            (begin
              (let ((_g176194_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g176193_)
                           (##values-length _g176193_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g176194_ 2)))
                    (error "Context expects 2 values" _g176194_)))
              (let ((_%precedence-list175488%_
                     (let () (declare (not safe)) (##values-ref _g176193_ 0)))
                    (_%base-struct175489%_
                     (let () (declare (not safe)) (##values-ref _g176193_ 1))))
                (let* ((_%precedence-list175533%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id175375%_ '(t object class)))
                            _%precedence-list175488%_
                            (if (memq 'object::t _%precedence-list175488%_)
                                _%precedence-list175488%_
                                (if _%system?175381%_
                                    (if (memq 't::t _%precedence-list175488%_)
                                        _%precedence-list175488%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list175488%_
                                           '(t::t))))
                                    (let _%loop175495%_ ((_%tail175497%_
                                                          _%precedence-list175488%_)
                                                         (_%head175498%_ '()))
                                      (let* ((_%tail175499175507%_
                                              _%tail175497%_)
                                             (_%else175501175515%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head175498%_))))
                                             (_%K175503175521%_
                                              (lambda (_%rest175518%_
                                                       _%hd175519%_)
                                                (if (eq? _%hd175519%_ 't::t)
                                                    (let ((__tmp176199
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail175497%_)))
              (declare (not safe))
              (__foldl1 cons __tmp176199 _%head175498%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop175495%_
                                                     _%rest175518%_
                                                     (cons _%hd175519%_
                                                           _%head175498%_))))))
                                        (if (pair? _%tail175499175507%_)
                                            (let ((_%hd175504175524%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail175499175507%_)))
                                                  (_%tl175505175526%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail175499175507%_))))
                                              (let* ((_%hd175529%_
                                                      _%hd175504175524%_)
                                                     (_%rest175531%_
                                                      _%tl175505175526%_))
                                                (_%K175503175521%_
                                                 _%rest175531%_
                                                 _%hd175529%_)))
                                            (_%else175501175515%_))))))))
                       (_%fields175535%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id175375%_ '()))
                         _%base-struct175489%_
                         _%precedence-list175533%_
                         _%slots175377%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175385%_
                     _%id175375%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175385%_
                     _%super175376%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175385%_
                     _%precedence-list175533%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175385%_
                     _%slots175377%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175385%_
                     _%fields175535%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175385%_
                     _%ctor-method175482%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175385%_
                     _%struct?175379%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175385%_
                     _%final?175380%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175385%_
                     _%metaclass175382%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self175538%_
               _%id175539%_
               _%super175540%_
               _%precedence-list175541%_
               _%slots175542%_
               _%fields175543%_
               _%constructor175544%_
               _%struct?175545%_
               _%final?175546%_
               _%system?175547%_
               _%metaclass175548%_
               _%methods175549%_)
        (let ((_%self175552%_ _%self175538%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175552%_
             _%id175539%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175552%_
             _%super175540%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175552%_
             _%precedence-list175541%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175552%_
             _%slots175542%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175552%_
             _%fields175543%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175552%_
             _%constructor175544%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175552%_
             _%struct?175545%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175552%_
             _%final?175546%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175552%_
             _%metaclass175548%_
             '10
             '#f
             '#f))
          (if _%methods175549%_
              (let ((__tmp176200
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods175549%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self175552%_
                 __tmp176200
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g176201_
        (let ((_g176202_ (let () (declare (not safe)) (##length _g176201_))))
          (cond ((let () (declare (not safe)) (##fx= _g176202_ 9))
                 (apply gxc#!class:::init!__0 _g176201_))
                ((let () (declare (not safe)) (##fx= _g176202_ 12))
                 (apply gxc#!class:::init!__1 _g176201_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g176201_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where175226%_
               _%base-struct175227%_
               _%precedence-list175228%_
               _%direct-slots175229%_)
        (let* ((_%base-fields175231%_
                (if _%base-struct175227%_
                    (let ((__tmp176203
                           (gxc#optimizer-resolve-class
                            _%where175226%_
                            _%base-struct175227%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp176203 '5 '#f '#f))
                    '()))
               (_%r-fields175233%_ (reverse _%base-fields175231%_))
               (_%seen-slots175241%_
                (let ((_%tab175235%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g175236175238%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab175235%_ _%g175236175238%_ '#t)))
                   _%base-fields175231%_)
                  _%tab175235%_))
               (_%process-slot175245%_
                (lambda (_%slot175243%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots175241%_ _%slot175243%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots175241%_
                           _%slot175243%_
                           '#t))
                        (set! _%r-fields175233%_
                              (cons _%slot175243%_ _%r-fields175233%_)))))))
          (for-each
           (lambda (_%mixin175248%_)
             (let ((_%klass175250%_
                    (gxc#optimizer-resolve-class
                     _%where175226%_
                     _%mixin175248%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass175250%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot175245%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass175250%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list175228%_)
          (for-each _%process-slot175245%_ _%direct-slots175229%_)
          (let () (declare (not safe)) (##reverse _%r-fields175233%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass175185%_ _%slot175186%_)
        (let _%lp175188%_ ((_%rest175190%_
                            (##structure-ref
                             _%klass175185%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset175191%_ '1))
          (let* ((_%rest175192175200%_ _%rest175190%_)
                 (_%else175194175208%_
                  (lambda ()
                    (let ((__tmp176205
                           (##structure-ref
                            _%klass175185%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp176204
                           (##structure-ref
                            _%klass175185%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp176205
                       __tmp176204
                       _%slot175186%_))))
                 (_%K175196175214%_
                  (lambda (_%rest175211%_ _%s175212%_)
                    (if (eq? _%s175212%_ _%slot175186%_)
                        _%offset175191%_
                        (_%lp175188%_
                         _%rest175211%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset175191%_ '1)))))))
            (if (pair? _%rest175192175200%_)
                (let ((_%hd175197175217%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest175192175200%_)))
                      (_%tl175198175219%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest175192175200%_))))
                  (let* ((_%s175222%_ _%hd175197175217%_)
                         (_%rest175224%_ _%tl175198175219%_))
                    (_%K175196175214%_ _%rest175224%_ _%s175222%_)))
                (_%else175194175208%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass175143%_ _%slot175144%_)
        (if (gxc#!class-struct-slot? _%klass175143%_ _%slot175144%_)
            _%klass175143%_
            (let _%lp175146%_ ((_%rest175148%_
                                (##structure-ref
                                 _%klass175143%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest175149175157%_ _%rest175148%_)
                     (_%else175151175165%_ (lambda () '#f))
                     (_%K175153175173%_
                      (lambda (_%rest175168%_ _%super175169%_)
                        (let ((_%super-class175171%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass175143%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot175144%_ '())))
                                _%super175169%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class175171%_
                               _%slot175144%_)
                              _%super-class175171%_
                              (_%lp175146%_ _%rest175168%_))))))
                (if (pair? _%rest175149175157%_)
                    (let ((_%hd175154175176%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest175149175157%_)))
                          (_%tl175155175178%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest175149175157%_))))
                      (let* ((_%super175181%_ _%hd175154175176%_)
                             (_%rest175183%_ _%tl175155175178%_))
                        (_%K175153175173%_ _%rest175183%_ _%super175181%_)))
                    (_%else175151175165%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass175140%_ _%slot175141%_)
        (if (##structure-ref _%klass175140%_ '7 gxc#!class::t '#f)
            (memq _%slot175141%_
                  (##structure-ref _%klass175140%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self175125%_ _%id175126%_)
        (let ((_%self175129%_ _%self175125%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175129%_
             _%id175126%_
             '1
             '#f
             '#f))
          (let ((__tmp176206
                 (let ((__obj176138
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
                      __obj176138
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176138
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176138
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj176138)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175129%_
             __tmp176206
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self174988%_ _%id174989%_)
        (let ((_%self174992%_ _%self174988%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174992%_
             _%id174989%_
             '1
             '#f
             '#f))
          (let ((__tmp176207
                 (let ((__obj176139
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
                      __obj176139
                      _%id174989%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176139
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj176139)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174992%_
             __tmp176207
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
      (lambda (_%self174849%_ _%id174850%_ _%slot174851%_ _%checked?174852%_)
        (let ((_%self174855%_ _%self174849%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174855%_
             _%id174850%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174855%_
             _%slot174851%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174855%_
             _%checked?174852%_
             '4
             '#f
             '#f))
          (let ((__tmp176208
                 (let ((__obj176140
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
                     (##unchecked-structure-set! __obj176140 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176140
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp176209 (cons _%id174850%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176140
                      __tmp176209
                      '3
                      '#f
                      '#f))
                   __obj176140)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174855%_
             __tmp176208
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self174710%_ _%id174711%_ _%slot174712%_ _%checked?174713%_)
        (let ((_%self174716%_ _%self174710%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174716%_
             _%id174711%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174716%_
             _%slot174712%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174716%_
             _%checked?174713%_
             '4
             '#f
             '#f))
          (let ((__tmp176210
                 (let ((__obj176141
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
                      __obj176141
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176141
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp176211 (cons _%id174711%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176141
                      __tmp176211
                      '3
                      '#f
                      '#f))
                   __obj176141)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174716%_
             __tmp176210
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords174554%_
               _%signature174551174555%_
               _%self174556%_
               _%arity174557%_
               _%dispatch174558%_)
        (let* ((_%signature174560%_
                (if (eq? _%signature174551174555%_ absent-value)
                    '#f
                    _%signature174551174555%_))
               (_%self174563%_ _%self174556%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self174563%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174563%_
             _%arity174557%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174563%_
             _%dispatch174558%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174563%_
             _%signature174560%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords174578%_ . _%args174579%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords174578%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords174578%_
                  'signature:
                  absent-value))
               _%args174579%_)))
    (define gxc#!lambda:::init!
      (lambda _%args174552174585%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args174552174585%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords174395%_
               _%signature174392174396%_
               _%self174397%_
               _%clauses174398%_)
        (let* ((_%signature174400%_
                (if (eq? _%signature174392174396%_ absent-value)
                    '#f
                    _%signature174392174396%_))
               (_%self174403%_ _%self174397%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self174403%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174403%_
             _%signature174400%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174403%_
             _%clauses174398%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords174418%_ . _%args174419%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords174418%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords174418%_
                  'signature:
                  absent-value))
               _%args174419%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args174393174425%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args174393174425%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self174253%_ _%tab174254%_ _%dispatch174255%_)
        (let ((_%self174258%_ _%self174253%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self174258%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174258%_
             _%tab174254%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174258%_
             _%dispatch174255%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self174115%_ _%keys174116%_ _%main174117%_)
        (let ((_%self174120%_ _%self174115%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self174120%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174120%_
             _%keys174116%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174120%_
             _%main174117%_
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
      (lambda (_%self173734%_ _%id173735%_)
        (let ((_%self173738%_ _%self173734%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self173738%_
             _%id173735%_
             '1
             '#f
             '#f))
          (let ((__tmp176212
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
                      '(pure)
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
             _%self173738%_
             __tmp176212
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
      (lambda (_%klass173603%_)
        (let ((_%$e173605%_
               (##structure-ref _%klass173603%_ '11 gxc#!class::t '#f)))
          (if _%$e173605%_
              _%$e173605%_
              (let ((_%tab173609%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass173603%_
                 _%tab173609%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab173609%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass173595%_ _%method173596%_)
        (let ((_%tab173597173599%_
               (##structure-ref _%klass173595%_ '11 gxc#!class::t '#f)))
          (if _%tab173597173599%_
              (let ((_%tab173601%_ _%tab173597173599%_))
                (declare (not safe))
                (hash-get _%tab173601%_ _%method173596%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a173583%_ _%type-b173584%_)
        (if _%type-a173583%_
            (if _%type-b173584%_
                (let ((_%$e173586%_ (eq? _%type-a173583%_ _%type-b173584%_)))
                  (if _%$e173586%_
                      _%$e173586%_
                      (let ((_%$e173589%_
                             (eq? (##structure-ref
                                   _%type-b173584%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e173589%_
                            _%$e173589%_
                            (let ((_%$e173592%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a173583%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b173584%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e173592%_
                                  _%$e173592%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a173583%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b173584%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a173583%_
                                           _%type-b173584%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a173534%_ _%klass-b173535%_)
        (let ((_%$e173537%_
               (eq? (##structure-ref _%klass-a173534%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b173535%_ '1 gxc#!type::t '#f))))
          (if _%$e173537%_
              _%$e173537%_
              (let ((_%klass-id-b173540%_
                     (##structure-ref _%klass-b173535%_ '1 gxc#!type::t '#f))
                    (_%precedence-list173541%_
                     (##structure-ref _%klass-a173534%_ '3 gxc#!class::t '#f)))
                (let _%loop173543%_ ((_%rest173545%_
                                      _%precedence-list173541%_))
                  (let* ((_%rest173546173554%_ _%rest173545%_)
                         (_%else173548173562%_ (lambda () '#f))
                         (_%K173550173571%_
                          (lambda (_%rest173565%_ _%klass-name173566%_)
                            (let ((_%$e173568%_
                                   (eq? (let ((__tmp176213
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a173534%_
                                                            (cons _%klass-b173535%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name173566%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp176213
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b173540%_)))
                              (if _%$e173568%_
                                  _%$e173568%_
                                  (_%loop173543%_ _%rest173565%_))))))
                    (if (pair? _%rest173546173554%_)
                        (let ((_%hd173551173574%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest173546173554%_)))
                              (_%tl173552173576%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest173546173554%_))))
                          (let* ((_%klass-name173579%_ _%hd173551173574%_)
                                 (_%rest173581%_ _%tl173552173576%_))
                            (_%K173550173571%_
                             _%rest173581%_
                             _%klass-name173579%_)))
                        (_%else173548173562%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type173532%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type173532%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type173532%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc173521%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc173521%_ 'gxc#!procedure::t))
            (let ((_%proc173524%_ _%proc173521%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc173524%_ '2 '#f '#f))
                  (let ((__tmp176214
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc173524%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp176214 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@378.11-378.15"
               'contract:
               '!procedure?
               'value:
               _%proc173521%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym173503%_ _%type173504%_ _%local?173505%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type173504%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym173503%_
                     _%type173504%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym173503%_ '" " _%type173504%_))
        (let ((_%table173507%_
               (if _%local?173505%_
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
          (hash-put! _%table173507%_ _%sym173503%_ _%type173504%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym173512%_ _%type173513%_)
        (let ((_%local?173515%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym173512%_
           _%type173513%_
           _%local?173515%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g176215_
        (let ((_g176216_ (let () (declare (not safe)) (##length _g176215_))))
          (cond ((let () (declare (not safe)) (##fx= _g176216_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g176215_))
                ((let () (declare (not safe)) (##fx= _g176216_ 3))
                 (apply gxc#optimizer-declare-type!__% _g176215_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g176215_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym173497%_ _%type173498%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type173498%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym173497%_
                     _%type173498%_)))
        (let ((_%table173500%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp176217
                 (let () (declare (not safe)) (struct->list _%type173498%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym173497%_ '" " __tmp176217))
          (let ()
            (declare (not safe))
            (hash-put! _%table173500%_ _%sym173497%_ _%type173498%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table173500%_ _%type173498%_ _%sym173497%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym173492%_ _%type173493%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type173493%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym173492%_
                     _%type173493%_)))
        (let ((_%table173495%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table173495%_ _%sym173492%_))
              '#!void
              (begin
                (let ((__tmp176218
                       (let ()
                         (declare (not safe))
                         (struct->list _%type173493%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym173492%_
                   '" "
                   __tmp176218))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table173495%_ _%sym173492%_ _%type173493%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table173495%_
                   _%type173493%_
                   _%sym173492%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym173490%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym173490%_))
        (let ((__tmp176219
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp176219 _%sym173490%_))
        (let ((__tmp176220
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp176220 _%sym173490%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t173458%_
               _%method173459%_
               _%sym173460%_
               _%rebind?173461%_)
        (let ((__tmp176221
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp176221 _%sym173460%_ '#t))
        (let ((_%klass173463%_ (gxc#optimizer-lookup-class _%type-t173458%_)))
          (if _%klass173463%_
              (let* ((_%vtab173465%_ (gxc#!class-method-table _%klass173463%_))
                     (_%$e173467%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab173465%_ _%method173459%_))))
                (if _%$e173467%_
                    ((lambda (_%existing173470%_)
                       (if _%rebind?173461%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t173458%_
                                '" "
                                _%method173459%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab173465%_
                                _%method173459%_
                                _%sym173460%_)))
                           (if (eq? _%existing173470%_ _%sym173460%_)
                               '#!void
                               (let ((__tmp176222
                                      (cons 'bind-method!
                                            (cons _%type-t173458%_
                                                  (cons _%method173459%_
                                                        (cons _%sym173460%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp176222
                                  _%method173459%_)))))
                     _%$e173467%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t173458%_
                         '" "
                         _%method173459%_
                         '" => "
                         _%sym173460%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab173465%_
                         _%method173459%_
                         _%sym173460%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t173458%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t173479%_ _%method173480%_ _%sym173481%_)
        (let ((_%rebind?173483%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t173479%_
           _%method173480%_
           _%sym173481%_
           _%rebind?173483%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g176223_
        (let ((_g176224_ (let () (declare (not safe)) (##length _g176223_))))
          (cond ((let () (declare (not safe)) (##fx= _g176224_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g176223_))
                ((let () (declare (not safe)) (##fx= _g176224_ 4))
                 (apply gxc#optimizer-declare-method!__% _g176223_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g176223_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym173444%_)
        (let ((_%$e173446%_
               (let ((__tmp176225
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym173444%_ __tmp176225))))
          (if _%$e173446%_
              _%$e173446%_
              (let ((_%$e173454%_
                     (let ((_%ht173448173450%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht173448173450%_
                           (let ((_%ht173452%_ _%ht173448173450%_))
                             (declare (not safe))
                             (hash-get _%ht173452%_ _%sym173444%_))
                           '#f))))
                (if _%$e173454%_
                    _%$e173454%_
                    (let ((__tmp176226
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp176226 _%sym173444%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym173437%_)
        (let ((_%type173438173440%_ (gxc#optimizer-lookup-type _%sym173437%_)))
          (if _%type173438173440%_
              (let ((_%type173442%_ _%type173438173440%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type173442%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type173442%_ '1 '#f '#f)))
                    _%type173442%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym173433%_)
        (let ((_%table173435%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table173435%_ _%sym173433%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where173418%_ _%sym173419%_)
        (let ((_%$e173422%_ (gxc#optimizer-lookup-class _%sym173419%_)))
          (if _%$e173422%_
              ((lambda (_%g173424173426%_)
                 (let ((_%val173429%_ _%g173424173426%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val173429%_
                          'gxc#!class::t))
                       _%val173429%_
                       (begin
                         (raise-contract-violation-error
                          '"contract violation"
                          'context:
                          'gerbil/compiler/optimize-base
                          'contract:
                          '(!class? val)
                          'value:
                          _%val173429%_)
                         '#!void))))
               _%$e173422%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where173418%_
                   _%sym173419%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass173416%_)
        (let ((__tmp176227
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp176227 _%klass173416%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t173413%_ _%method173414%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t173413%_)
         _%method173414%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym173411%_)
        (let ((__tmp176228
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp176228 _%sym173411%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e173293%_
                  (lambda (_%t173394%_)
                    (if (symbol? _%t173394%_)
                        (_%type-e173293%_
                         (gxc#optimizer-lookup-type _%t173394%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t173394%_
                               'gxc#!lambda::t))
                            (_%__lambda-type173295%_ _%t173394%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t173394%_
                                   'gxc#!kw-lambda::t))
                                (_%__kw-lambda-type173297%_ _%t173394%_)
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t173394%_
                                       'gxc#!kw-lambda-primary::t))
                                    (_%__kw-lambda-primary-type173299%_
                                     _%t173394%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t173394%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t173401%_ _%t173394%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t173401%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp176229
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t173401%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp176229
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t173394%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t173394%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%lambda-type173294%_
                  (lambda (_%t173382%_)
                    (let ((_%t173385%_ _%t173382%_))
                      (_%__lambda-type173295%_ _%t173385%_))))
                 (_%__lambda-type173295%_
                  (lambda (_%t173370%_)
                    (let ((_%t173373%_ _%t173370%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t173373%_ '4 '#f '#f))
                          (_%type-e173293%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t173373%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t173373%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp176230
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t173373%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp176230
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%kw-lambda-type173296%_
                  (lambda (_%t173358%_)
                    (let ((_%t173361%_ _%t173358%_))
                      (_%__kw-lambda-type173297%_ _%t173361%_))))
                 (_%__kw-lambda-type173297%_
                  (lambda (_%t173346%_)
                    (let ((_%t173349%_ _%t173346%_))
                      (_%type-e173293%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t173349%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type173298%_
                  (lambda (_%t173334%_)
                    (let ((_%t173337%_ _%t173334%_))
                      (_%__kw-lambda-primary-type173299%_ _%t173337%_))))
                 (_%__kw-lambda-primary-type173299%_
                  (lambda (_%t173320%_)
                    (let ((_%t173323%_ _%t173320%_))
                      (_%type-e173293%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t173323%_
                          '4
                          '#f
                          '#f)))))))
          (let* ((_%ht1173301%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2173303%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result173305%_
                  (if _%ht1173301%_
                      (let () (declare (not safe)) (hash->list _%ht1173301%_))
                      '()))
                 (_%result173307%_
                  (if _%ht2173303%_
                      (let ((__tmp176231
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2173303%_))))
                        (declare (not safe))
                        (__foldl1 cons _%result173305%_ __tmp176231))
                      _%result173305%_)))
            (for-each
             (lambda (_%p173310%_)
               (let* ((_%t173312%_ (cdr _%p173310%_))
                      (_%tr173314%_ (_%type-e173293%_ _%t173312%_)))
                 (set-cdr! _%p173310%_ _%tr173314%_)))
             _%result173307%_)
            (list-sort
             (lambda (_%a173317%_ _%b173318%_)
               (let ((__tmp176233 (symbol->string (car _%a173317%_)))
                     (__tmp176232 (symbol->string (car _%b173318%_))))
                 (declare (not safe))
                 (##string<? __tmp176233 __tmp176232)))
             _%result173307%_)))))))
