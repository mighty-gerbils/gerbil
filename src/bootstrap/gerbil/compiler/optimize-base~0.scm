(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1770248974)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp175963 (list)) (__tmp175962 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp175963
         '(type classes ssxi methods)
         __tmp175962
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args175934%_
        (apply make-instance gxc#optimizer-info::t _%$args175934%_)))
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
      (lambda (_%self175921%_)
        (let ((_%self175924%_ _%self175921%_))
          (if (let ((__tmp175964
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self175924%_))))
                (declare (not safe))
                (##fx< '4 __tmp175964))
              (begin
                (let ((__tmp175965
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self175924%_
                   __tmp175965
                   '1
                   '#f
                   '#f))
                (let ((__tmp175966
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self175924%_
                   __tmp175966
                   '2
                   '#f
                   '#f))
                (let ((__tmp175967
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self175924%_
                   __tmp175967
                   '3
                   '#f
                   '#f))
                (let ((__tmp175968
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self175924%_
                   __tmp175968
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp175969
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self175924%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self175924%_
                       '4
                       __tmp175969))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp175971 (list)) (__tmp175970 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp175971
         '(id)
         __tmp175970
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args175796%_
        (apply make-instance gxc#!type::t _%$args175796%_)))
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
      (let ((__tmp175973 (list gxc#!type::t))
            (__tmp175972 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp175973
         '()
         __tmp175972
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args175793%_
        (apply make-instance gxc#!abort::t _%$args175793%_)))
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
      (let ((__tmp175975 (list gxc#!type::t))
            (__tmp175974 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp175975
         '()
         __tmp175974
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args175790%_
        (apply make-instance gxc#!alias::t _%$args175790%_)))
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
      (let ((__tmp175977 (list)) (__tmp175976 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp175977
         '(return effect arguments unchecked origin)
         __tmp175976
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args175787%_
        (apply make-instance gxc#!signature::t _%$args175787%_)))
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
      (let ((__tmp175979 (list gxc#!type::t))
            (__tmp175978 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp175979
         '(signature)
         __tmp175978
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
      (lambda (_%id175766%_ _%signature175767%_)
        (if ((lambda (_%$obj175770%_)
               (or (not _%$obj175770%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj175770%_
                      'gxc#!signature::t))))
             _%signature175767%_)
            (let ((_%signature175777%_ _%signature175767%_))
              (gxc#__make-!procedure _%id175766%_ _%signature175777%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature175767%_)
              '#!void))))
    (define gxc#__make-!procedure
      (lambda (_%id175752%_ _%signature175754%_)
        (let ((_%signature175757%_ _%signature175754%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id175752%_ _%signature175757%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj175721%_ _%signature175722%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj175721%_ 'gxc#!procedure::t))
            (let ((_%$obj175726%_ _%$obj175721%_))
              (if ((lambda (_%$obj175735%_)
                     (or (not _%$obj175735%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj175735%_
                            'gxc#!signature::t))))
                   _%signature175722%_)
                  (let ((_%signature175742%_ _%signature175722%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj175726%_
                     _%signature175742%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature175722%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj175721%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj175698%_ _%signature175700%_)
        (let* ((_%$obj175704%_ _%$obj175698%_)
               (_%signature175712%_ _%signature175700%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj175704%_
           _%signature175712%_
           '2
           '#f
           '#f))))
    (define gxc#!class-meta::t
      (let ((__tmp175981 (list gxc#!type::t))
            (__tmp175980 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp175981
         '(class)
         __tmp175980
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args175695%_
        (apply make-instance gxc#!class-meta::t _%$args175695%_)))
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
      (let ((__tmp175983 (list gxc#!type::t))
            (__tmp175982 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class::t
         '!class
         __tmp175983
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp175982
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args175692%_
        (apply make-instance gxc#!class::t _%$args175692%_)))
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
      (let ((__tmp175985 (list gxc#!procedure::t))
            (__tmp175984 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp175985
         '()
         __tmp175984
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args175689%_
        (apply make-instance gxc#!predicate::t _%$args175689%_)))
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
      (let ((__tmp175987 (list gxc#!procedure::t))
            (__tmp175986 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp175987
         '()
         __tmp175986
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args175686%_
        (apply make-instance gxc#!constructor::t _%$args175686%_)))
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
      (let ((__tmp175989 (list gxc#!procedure::t))
            (__tmp175988 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp175989
         '(slot checked?)
         __tmp175988
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args175683%_
        (apply make-instance gxc#!accessor::t _%$args175683%_)))
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
      (let ((__tmp175991 (list gxc#!procedure::t))
            (__tmp175990 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp175991
         '(slot checked?)
         __tmp175990
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args175680%_
        (apply make-instance gxc#!mutator::t _%$args175680%_)))
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
      (let ((__tmp175993 (list gxc#!type::t))
            (__tmp175992 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp175993
         '(methods)
         __tmp175992
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args175677%_
        (apply make-instance gxc#!interface::t _%$args175677%_)))
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
      (let ((__tmp175995 (list gxc#!procedure::t))
            (__tmp175994 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp175995
         '(arity dispatch inline inline-typedecl)
         __tmp175994
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args175674%_
        (apply make-instance gxc#!lambda::t _%$args175674%_)))
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
      (let ((__tmp175997 (list gxc#!procedure::t))
            (__tmp175996 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp175997
         '(clauses)
         __tmp175996
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args175671%_
        (apply make-instance gxc#!case-lambda::t _%$args175671%_)))
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
      (let ((__tmp175999 (list gxc#!procedure::t))
            (__tmp175998 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp175999
         '(table dispatch)
         __tmp175998
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args175668%_
        (apply make-instance gxc#!kw-lambda::t _%$args175668%_)))
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
      (let ((__tmp176001 (list gxc#!procedure::t))
            (__tmp176000 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp176001
         '(keys main)
         __tmp176000
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args175665%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args175665%_)))
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
      (let ((__tmp176002 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp176002
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args175662%_
        (apply make-instance gxc#!primitive::t _%$args175662%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp176004 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp176003 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp176004
         '()
         __tmp176003
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args175659%_
        (apply make-instance gxc#!primitive-predicate::t _%$args175659%_)))
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
      (let ((__tmp176006 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp176005 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp176006
         '()
         __tmp176005
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args175656%_
        (apply make-instance gxc#!primitive-lambda::t _%$args175656%_)))
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
      (let ((__tmp176008 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp176007 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp176008
         '()
         __tmp176007
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args175653%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args175653%_)))
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
      (lambda (_%self175640%_)
        (let ((_%self175643%_ _%self175640%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self175643%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self175503%_ _%klass175504%_)
        (let ((_%self175507%_ _%self175503%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self175507%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175507%_
             _%klass175504%_
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
      (lambda (_%self175193%_
               _%id175194%_
               _%super175195%_
               _%slots175196%_
               _%ctor-method175197%_
               _%struct?175198%_
               _%final?175199%_
               _%system?175200%_
               _%metaclass175201%_)
        (let ((_%self175204%_ _%self175193%_))
          (let _%lp175215%_ ((_%rest175217%_ _%super175195%_))
            (let* ((_%rest175218175226%_ _%rest175217%_)
                   (_%else175220175234%_ (lambda () '#!void))
                   (_%K175222175240%_
                    (lambda (_%rest175237%_ _%super-id175238%_)
                      (if (let ((__tmp176009
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id175194%_ '()))
                                  _%super-id175238%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp176009 '8 '#f '#f))
                          (let ((__tmp176010
                                 (cons '!class (cons _%id175194%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp176010
                             _%super-id175238%_))
                          '#!void)
                      (_%lp175215%_ _%rest175237%_))))
              (if (pair? _%rest175218175226%_)
                  (let ((_%hd175223175243%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest175218175226%_)))
                        (_%tl175224175245%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest175218175226%_))))
                    (let* ((_%super-id175248%_ _%hd175223175243%_)
                           (_%rest175250%_ _%tl175224175245%_))
                      (_%K175222175240%_ _%rest175250%_ _%super-id175248%_)))
                  '#!void)))
          (let* ((_%ctor-method175301%_
                  (let ((_%$e175252%_ _%ctor-method175197%_))
                    (if _%$e175252%_
                        _%$e175252%_
                        (let _%lp175255%_ ((_%rest175257%_ _%super175195%_)
                                           (_%method175258%_ '#f))
                          (let* ((_%rest175259175267%_ _%rest175257%_)
                                 (_%else175261175275%_
                                  (lambda () _%method175258%_))
                                 (_%K175263175289%_
                                  (lambda (_%rest175278%_ _%super-id175279%_)
                                    (let* ((_%klass175281%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id175194%_ '()))
                                             _%super-id175279%_))
                                           (_%$e175283%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass175281%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e175283%_
                                          ((lambda (_%ctor-method175286%_)
                                             (if _%method175258%_
                                                 (if (eq? _%ctor-method175286%_
                                                          _%method175258%_)
                                                     (_%lp175255%_
                                                      _%rest175278%_
                                                      _%ctor-method175286%_)
                                                     (let ((__tmp176011
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id175194%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp176011
                _%method175258%_
                _%ctor-method175286%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp175255%_
                                                  _%rest175278%_
                                                  _%ctor-method175286%_)))
                                           _%$e175283%_)
                                          (_%lp175255%_
                                           _%rest175278%_
                                           _%method175258%_))))))
                            (if (pair? _%rest175259175267%_)
                                (let ((_%hd175264175292%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest175259175267%_)))
                                      (_%tl175265175294%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest175259175267%_))))
                                  (let* ((_%super-id175297%_
                                          _%hd175264175292%_)
                                         (_%rest175299%_ _%tl175265175294%_))
                                    (_%K175263175289%_
                                     _%rest175299%_
                                     _%super-id175297%_)))
                                (_%else175261175275%_)))))))
                 (_g176012_
                  (let ((__tmp176016
                         (lambda (_%klass-id175303%_)
                           (cons _%klass-id175303%_
                                 (let ((__tmp176017
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id175194%_ '()))
                                         _%klass-id175303%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp176017
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp176014
                         (lambda (_%klass-id175305%_)
                           (let ((__tmp176015
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id175194%_ '()))
                                   _%klass-id175305%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp176015
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp176016
                     __tmp176014
                     eq?
                     identity
                     '()
                     _%super175195%_))))
            (begin
              (let ((_g176013_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g176012_)
                           (##values-length _g176012_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g176013_ 2)))
                    (error "Context expects 2 values" _g176013_)))
              (let ((_%precedence-list175307%_
                     (let () (declare (not safe)) (##values-ref _g176012_ 0)))
                    (_%base-struct175308%_
                     (let () (declare (not safe)) (##values-ref _g176012_ 1))))
                (let* ((_%precedence-list175352%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id175194%_ '(t object class)))
                            _%precedence-list175307%_
                            (if (memq 'object::t _%precedence-list175307%_)
                                _%precedence-list175307%_
                                (if _%system?175200%_
                                    (if (memq 't::t _%precedence-list175307%_)
                                        _%precedence-list175307%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list175307%_
                                           '(t::t))))
                                    (let _%loop175314%_ ((_%tail175316%_
                                                          _%precedence-list175307%_)
                                                         (_%head175317%_ '()))
                                      (let* ((_%tail175318175326%_
                                              _%tail175316%_)
                                             (_%else175320175334%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head175317%_))))
                                             (_%K175322175340%_
                                              (lambda (_%rest175337%_
                                                       _%hd175338%_)
                                                (if (eq? _%hd175338%_ 't::t)
                                                    (let ((__tmp176018
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail175316%_)))
              (declare (not safe))
              (__foldl1 cons __tmp176018 _%head175317%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop175314%_
                                                     _%rest175337%_
                                                     (cons _%hd175338%_
                                                           _%head175317%_))))))
                                        (if (pair? _%tail175318175326%_)
                                            (let ((_%hd175323175343%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail175318175326%_)))
                                                  (_%tl175324175345%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail175318175326%_))))
                                              (let* ((_%hd175348%_
                                                      _%hd175323175343%_)
                                                     (_%rest175350%_
                                                      _%tl175324175345%_))
                                                (_%K175322175340%_
                                                 _%rest175350%_
                                                 _%hd175348%_)))
                                            (_%else175320175334%_))))))))
                       (_%fields175354%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id175194%_ '()))
                         _%base-struct175308%_
                         _%precedence-list175352%_
                         _%slots175196%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175204%_
                     _%id175194%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175204%_
                     _%super175195%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175204%_
                     _%precedence-list175352%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175204%_
                     _%slots175196%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175204%_
                     _%fields175354%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175204%_
                     _%ctor-method175301%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175204%_
                     _%struct?175198%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175204%_
                     _%final?175199%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175204%_
                     _%metaclass175201%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self175357%_
               _%id175358%_
               _%super175359%_
               _%precedence-list175360%_
               _%slots175361%_
               _%fields175362%_
               _%constructor175363%_
               _%struct?175364%_
               _%final?175365%_
               _%system?175366%_
               _%metaclass175367%_
               _%methods175368%_)
        (let ((_%self175371%_ _%self175357%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175371%_
             _%id175358%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175371%_
             _%super175359%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175371%_
             _%precedence-list175360%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175371%_
             _%slots175361%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175371%_
             _%fields175362%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175371%_
             _%constructor175363%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175371%_
             _%struct?175364%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175371%_
             _%final?175365%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175371%_
             _%metaclass175367%_
             '10
             '#f
             '#f))
          (if _%methods175368%_
              (let ((__tmp176019
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods175368%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self175371%_
                 __tmp176019
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g176020_
        (let ((_g176021_ (let () (declare (not safe)) (##length _g176020_))))
          (cond ((let () (declare (not safe)) (##fx= _g176021_ 9))
                 (apply gxc#!class:::init!__0 _g176020_))
                ((let () (declare (not safe)) (##fx= _g176021_ 12))
                 (apply gxc#!class:::init!__1 _g176020_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g176020_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where175045%_
               _%base-struct175046%_
               _%precedence-list175047%_
               _%direct-slots175048%_)
        (let* ((_%base-fields175050%_
                (if _%base-struct175046%_
                    (let ((__tmp176022
                           (gxc#optimizer-resolve-class
                            _%where175045%_
                            _%base-struct175046%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp176022 '5 '#f '#f))
                    '()))
               (_%r-fields175052%_ (reverse _%base-fields175050%_))
               (_%seen-slots175060%_
                (let ((_%tab175054%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g175055175057%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab175054%_ _%g175055175057%_ '#t)))
                   _%base-fields175050%_)
                  _%tab175054%_))
               (_%process-slot175064%_
                (lambda (_%slot175062%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots175060%_ _%slot175062%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots175060%_
                           _%slot175062%_
                           '#t))
                        (set! _%r-fields175052%_
                              (cons _%slot175062%_ _%r-fields175052%_)))))))
          (for-each
           (lambda (_%mixin175067%_)
             (let ((_%klass175069%_
                    (gxc#optimizer-resolve-class
                     _%where175045%_
                     _%mixin175067%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass175069%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot175064%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass175069%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list175047%_)
          (for-each _%process-slot175064%_ _%direct-slots175048%_)
          (let () (declare (not safe)) (##reverse _%r-fields175052%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass175004%_ _%slot175005%_)
        (let _%lp175007%_ ((_%rest175009%_
                            (##structure-ref
                             _%klass175004%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset175010%_ '1))
          (let* ((_%rest175011175019%_ _%rest175009%_)
                 (_%else175013175027%_
                  (lambda ()
                    (let ((__tmp176024
                           (##structure-ref
                            _%klass175004%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp176023
                           (##structure-ref
                            _%klass175004%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp176024
                       __tmp176023
                       _%slot175005%_))))
                 (_%K175015175033%_
                  (lambda (_%rest175030%_ _%s175031%_)
                    (if (eq? _%s175031%_ _%slot175005%_)
                        _%offset175010%_
                        (_%lp175007%_
                         _%rest175030%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset175010%_ '1)))))))
            (if (pair? _%rest175011175019%_)
                (let ((_%hd175016175036%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest175011175019%_)))
                      (_%tl175017175038%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest175011175019%_))))
                  (let* ((_%s175041%_ _%hd175016175036%_)
                         (_%rest175043%_ _%tl175017175038%_))
                    (_%K175015175033%_ _%rest175043%_ _%s175041%_)))
                (_%else175013175027%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass174962%_ _%slot174963%_)
        (if (gxc#!class-struct-slot? _%klass174962%_ _%slot174963%_)
            _%klass174962%_
            (let _%lp174965%_ ((_%rest174967%_
                                (##structure-ref
                                 _%klass174962%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest174968174976%_ _%rest174967%_)
                     (_%else174970174984%_ (lambda () '#f))
                     (_%K174972174992%_
                      (lambda (_%rest174987%_ _%super174988%_)
                        (let ((_%super-class174990%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass174962%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot174963%_ '())))
                                _%super174988%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class174990%_
                               _%slot174963%_)
                              _%super-class174990%_
                              (_%lp174965%_ _%rest174987%_))))))
                (if (pair? _%rest174968174976%_)
                    (let ((_%hd174973174995%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest174968174976%_)))
                          (_%tl174974174997%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest174968174976%_))))
                      (let* ((_%super175000%_ _%hd174973174995%_)
                             (_%rest175002%_ _%tl174974174997%_))
                        (_%K174972174992%_ _%rest175002%_ _%super175000%_)))
                    (_%else174970174984%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass174959%_ _%slot174960%_)
        (if (##structure-ref _%klass174959%_ '7 gxc#!class::t '#f)
            (memq _%slot174960%_
                  (##structure-ref _%klass174959%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self174944%_ _%id174945%_)
        (let ((_%self174948%_ _%self174944%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174948%_
             _%id174945%_
             '1
             '#f
             '#f))
          (let ((__tmp176025
                 (let ((__obj175957
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
                      __obj175957
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj175957
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj175957
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj175957)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174948%_
             __tmp176025
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self174807%_ _%id174808%_)
        (let ((_%self174811%_ _%self174807%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174811%_
             _%id174808%_
             '1
             '#f
             '#f))
          (let ((__tmp176026
                 (let ((__obj175958
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
                      __obj175958
                      _%id174808%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj175958
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj175958)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174811%_
             __tmp176026
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
      (lambda (_%self174668%_ _%id174669%_ _%slot174670%_ _%checked?174671%_)
        (let ((_%self174674%_ _%self174668%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174674%_
             _%id174669%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174674%_
             _%slot174670%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174674%_
             _%checked?174671%_
             '4
             '#f
             '#f))
          (let ((__tmp176027
                 (let ((__obj175959
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
                     (##unchecked-structure-set! __obj175959 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj175959
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp176028 (cons _%id174669%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj175959
                      __tmp176028
                      '3
                      '#f
                      '#f))
                   __obj175959)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174674%_
             __tmp176027
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self174529%_ _%id174530%_ _%slot174531%_ _%checked?174532%_)
        (let ((_%self174535%_ _%self174529%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174535%_
             _%id174530%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174535%_
             _%slot174531%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174535%_
             _%checked?174532%_
             '4
             '#f
             '#f))
          (let ((__tmp176029
                 (let ((__obj175960
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
                      __obj175960
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj175960
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp176030 (cons _%id174530%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj175960
                      __tmp176030
                      '3
                      '#f
                      '#f))
                   __obj175960)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174535%_
             __tmp176029
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords174373%_
               _%signature174370174374%_
               _%self174375%_
               _%arity174376%_
               _%dispatch174377%_)
        (let* ((_%signature174379%_
                (if (eq? _%signature174370174374%_ absent-value)
                    '#f
                    _%signature174370174374%_))
               (_%self174382%_ _%self174375%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self174382%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174382%_
             _%arity174376%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174382%_
             _%dispatch174377%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174382%_
             _%signature174379%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords174397%_ . _%args174398%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords174397%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords174397%_
                  'signature:
                  absent-value))
               _%args174398%_)))
    (define gxc#!lambda:::init!
      (lambda _%args174371174404%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args174371174404%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords174214%_
               _%signature174211174215%_
               _%self174216%_
               _%clauses174217%_)
        (let* ((_%signature174219%_
                (if (eq? _%signature174211174215%_ absent-value)
                    '#f
                    _%signature174211174215%_))
               (_%self174222%_ _%self174216%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self174222%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174222%_
             _%signature174219%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174222%_
             _%clauses174217%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords174237%_ . _%args174238%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords174237%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords174237%_
                  'signature:
                  absent-value))
               _%args174238%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args174212174244%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args174212174244%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self174072%_ _%tab174073%_ _%dispatch174074%_)
        (let ((_%self174077%_ _%self174072%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self174077%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174077%_
             _%tab174073%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174077%_
             _%dispatch174074%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self173934%_ _%keys173935%_ _%main173936%_)
        (let ((_%self173939%_ _%self173934%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self173939%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self173939%_
             _%keys173935%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self173939%_
             _%main173936%_
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
      (lambda (_%self173553%_ _%id173554%_)
        (let ((_%self173557%_ _%self173553%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self173557%_
             _%id173554%_
             '1
             '#f
             '#f))
          (let ((__tmp176031
                 (let ((__obj175961
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
                      __obj175961
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj175961
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj175961
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj175961)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self173557%_
             __tmp176031
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
      (lambda (_%klass173422%_)
        (let ((_%$e173424%_
               (##structure-ref _%klass173422%_ '11 gxc#!class::t '#f)))
          (if _%$e173424%_
              _%$e173424%_
              (let ((_%tab173428%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass173422%_
                 _%tab173428%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab173428%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass173414%_ _%method173415%_)
        (let ((_%tab173416173418%_
               (##structure-ref _%klass173414%_ '11 gxc#!class::t '#f)))
          (if _%tab173416173418%_
              (let ((_%tab173420%_ _%tab173416173418%_))
                (declare (not safe))
                (hash-get _%tab173420%_ _%method173415%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a173402%_ _%type-b173403%_)
        (if _%type-a173402%_
            (if _%type-b173403%_
                (let ((_%$e173405%_ (eq? _%type-a173402%_ _%type-b173403%_)))
                  (if _%$e173405%_
                      _%$e173405%_
                      (let ((_%$e173408%_
                             (eq? (##structure-ref
                                   _%type-b173403%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e173408%_
                            _%$e173408%_
                            (let ((_%$e173411%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a173402%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b173403%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e173411%_
                                  _%$e173411%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a173402%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b173403%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a173402%_
                                           _%type-b173403%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a173353%_ _%klass-b173354%_)
        (let ((_%$e173356%_
               (eq? (##structure-ref _%klass-a173353%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b173354%_ '1 gxc#!type::t '#f))))
          (if _%$e173356%_
              _%$e173356%_
              (let ((_%klass-id-b173359%_
                     (##structure-ref _%klass-b173354%_ '1 gxc#!type::t '#f))
                    (_%precedence-list173360%_
                     (##structure-ref _%klass-a173353%_ '3 gxc#!class::t '#f)))
                (let _%loop173362%_ ((_%rest173364%_
                                      _%precedence-list173360%_))
                  (let* ((_%rest173365173373%_ _%rest173364%_)
                         (_%else173367173381%_ (lambda () '#f))
                         (_%K173369173390%_
                          (lambda (_%rest173384%_ _%klass-name173385%_)
                            (let ((_%$e173387%_
                                   (eq? (let ((__tmp176032
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a173353%_
                                                            (cons _%klass-b173354%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name173385%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp176032
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b173359%_)))
                              (if _%$e173387%_
                                  _%$e173387%_
                                  (_%loop173362%_ _%rest173384%_))))))
                    (if (pair? _%rest173365173373%_)
                        (let ((_%hd173370173393%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest173365173373%_)))
                              (_%tl173371173395%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest173365173373%_))))
                          (let* ((_%klass-name173398%_ _%hd173370173393%_)
                                 (_%rest173400%_ _%tl173371173395%_))
                            (_%K173369173390%_
                             _%rest173400%_
                             _%klass-name173398%_)))
                        (_%else173367173381%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type173351%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type173351%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type173351%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc173340%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc173340%_ 'gxc#!procedure::t))
            (let ((_%proc173343%_ _%proc173340%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc173343%_ '2 '#f '#f))
                  (let ((__tmp176033
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc173343%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp176033 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@378.11-378.15"
               'contract:
               '!procedure?
               'value:
               _%proc173340%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym173322%_ _%type173323%_ _%local?173324%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type173323%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym173322%_
                     _%type173323%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym173322%_ '" " _%type173323%_))
        (let ((_%table173326%_
               (if _%local?173324%_
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
          (hash-put! _%table173326%_ _%sym173322%_ _%type173323%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym173331%_ _%type173332%_)
        (let ((_%local?173334%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym173331%_
           _%type173332%_
           _%local?173334%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g176034_
        (let ((_g176035_ (let () (declare (not safe)) (##length _g176034_))))
          (cond ((let () (declare (not safe)) (##fx= _g176035_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g176034_))
                ((let () (declare (not safe)) (##fx= _g176035_ 3))
                 (apply gxc#optimizer-declare-type!__% _g176034_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g176034_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym173316%_ _%type173317%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type173317%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym173316%_
                     _%type173317%_)))
        (let ((_%table173319%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp176036
                 (let () (declare (not safe)) (struct->list _%type173317%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym173316%_ '" " __tmp176036))
          (let ()
            (declare (not safe))
            (hash-put! _%table173319%_ _%sym173316%_ _%type173317%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table173319%_ _%type173317%_ _%sym173316%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym173311%_ _%type173312%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type173312%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym173311%_
                     _%type173312%_)))
        (let ((_%table173314%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table173314%_ _%sym173311%_))
              '#!void
              (begin
                (let ((__tmp176037
                       (let ()
                         (declare (not safe))
                         (struct->list _%type173312%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym173311%_
                   '" "
                   __tmp176037))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table173314%_ _%sym173311%_ _%type173312%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table173314%_
                   _%type173312%_
                   _%sym173311%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym173309%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym173309%_))
        (let ((__tmp176038
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp176038 _%sym173309%_))
        (let ((__tmp176039
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp176039 _%sym173309%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t173277%_
               _%method173278%_
               _%sym173279%_
               _%rebind?173280%_)
        (let ((__tmp176040
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp176040 _%sym173279%_ '#t))
        (let ((_%klass173282%_ (gxc#optimizer-lookup-class _%type-t173277%_)))
          (if _%klass173282%_
              (let* ((_%vtab173284%_ (gxc#!class-method-table _%klass173282%_))
                     (_%$e173286%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab173284%_ _%method173278%_))))
                (if _%$e173286%_
                    ((lambda (_%existing173289%_)
                       (if _%rebind?173280%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t173277%_
                                '" "
                                _%method173278%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab173284%_
                                _%method173278%_
                                _%sym173279%_)))
                           (if (eq? _%existing173289%_ _%sym173279%_)
                               '#!void
                               (let ((__tmp176041
                                      (cons 'bind-method!
                                            (cons _%type-t173277%_
                                                  (cons _%method173278%_
                                                        (cons _%sym173279%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp176041
                                  _%method173278%_)))))
                     _%$e173286%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t173277%_
                         '" "
                         _%method173278%_
                         '" => "
                         _%sym173279%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab173284%_
                         _%method173278%_
                         _%sym173279%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t173277%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t173298%_ _%method173299%_ _%sym173300%_)
        (let ((_%rebind?173302%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t173298%_
           _%method173299%_
           _%sym173300%_
           _%rebind?173302%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g176042_
        (let ((_g176043_ (let () (declare (not safe)) (##length _g176042_))))
          (cond ((let () (declare (not safe)) (##fx= _g176043_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g176042_))
                ((let () (declare (not safe)) (##fx= _g176043_ 4))
                 (apply gxc#optimizer-declare-method!__% _g176042_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g176042_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym173263%_)
        (let ((_%$e173265%_
               (let ((__tmp176044
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym173263%_ __tmp176044))))
          (if _%$e173265%_
              _%$e173265%_
              (let ((_%$e173273%_
                     (let ((_%ht173267173269%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht173267173269%_
                           (let ((_%ht173271%_ _%ht173267173269%_))
                             (declare (not safe))
                             (hash-get _%ht173271%_ _%sym173263%_))
                           '#f))))
                (if _%$e173273%_
                    _%$e173273%_
                    (let ((__tmp176045
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp176045 _%sym173263%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym173256%_)
        (let ((_%type173257173259%_ (gxc#optimizer-lookup-type _%sym173256%_)))
          (if _%type173257173259%_
              (let ((_%type173261%_ _%type173257173259%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type173261%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type173261%_ '1 '#f '#f)))
                    _%type173261%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym173252%_)
        (let ((_%table173254%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table173254%_ _%sym173252%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where173237%_ _%sym173238%_)
        (let ((_%$e173241%_ (gxc#optimizer-lookup-class _%sym173238%_)))
          (if _%$e173241%_
              ((lambda (_%g173243173245%_)
                 (let ((_%val173248%_ _%g173243173245%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val173248%_
                          'gxc#!class::t))
                       _%val173248%_
                       (begin
                         (raise-contract-violation-error
                          '"contract violation"
                          'context:
                          'gerbil/compiler/optimize-base
                          'contract:
                          '(!class? val)
                          'value:
                          _%val173248%_)
                         '#!void))))
               _%$e173241%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where173237%_
                   _%sym173238%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass173235%_)
        (let ((__tmp176046
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp176046 _%klass173235%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t173232%_ _%method173233%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t173232%_)
         _%method173233%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym173230%_)
        (let ((__tmp176047
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp176047 _%sym173230%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e173112%_
                  (lambda (_%t173213%_)
                    (if (symbol? _%t173213%_)
                        (_%type-e173112%_
                         (gxc#optimizer-lookup-type _%t173213%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t173213%_
                               'gxc#!lambda::t))
                            (_%__lambda-type173114%_ _%t173213%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t173213%_
                                   'gxc#!kw-lambda::t))
                                (_%__kw-lambda-type173116%_ _%t173213%_)
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t173213%_
                                       'gxc#!kw-lambda-primary::t))
                                    (_%__kw-lambda-primary-type173118%_
                                     _%t173213%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t173213%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t173220%_ _%t173213%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t173220%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp176048
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t173220%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp176048
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t173213%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t173213%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%lambda-type173113%_
                  (lambda (_%t173201%_)
                    (let ((_%t173204%_ _%t173201%_))
                      (_%__lambda-type173114%_ _%t173204%_))))
                 (_%__lambda-type173114%_
                  (lambda (_%t173189%_)
                    (let ((_%t173192%_ _%t173189%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t173192%_ '4 '#f '#f))
                          (_%type-e173112%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t173192%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t173192%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp176049
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t173192%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp176049
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%kw-lambda-type173115%_
                  (lambda (_%t173177%_)
                    (let ((_%t173180%_ _%t173177%_))
                      (_%__kw-lambda-type173116%_ _%t173180%_))))
                 (_%__kw-lambda-type173116%_
                  (lambda (_%t173165%_)
                    (let ((_%t173168%_ _%t173165%_))
                      (_%type-e173112%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t173168%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type173117%_
                  (lambda (_%t173153%_)
                    (let ((_%t173156%_ _%t173153%_))
                      (_%__kw-lambda-primary-type173118%_ _%t173156%_))))
                 (_%__kw-lambda-primary-type173118%_
                  (lambda (_%t173139%_)
                    (let ((_%t173142%_ _%t173139%_))
                      (_%type-e173112%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t173142%_
                          '4
                          '#f
                          '#f)))))))
          (let* ((_%ht1173120%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2173122%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result173124%_
                  (if _%ht1173120%_
                      (let () (declare (not safe)) (hash->list _%ht1173120%_))
                      '()))
                 (_%result173126%_
                  (if _%ht2173122%_
                      (let ((__tmp176050
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2173122%_))))
                        (declare (not safe))
                        (__foldl1 cons _%result173124%_ __tmp176050))
                      _%result173124%_)))
            (for-each
             (lambda (_%p173129%_)
               (let* ((_%t173131%_ (cdr _%p173129%_))
                      (_%tr173133%_ (_%type-e173112%_ _%t173131%_)))
                 (set-cdr! _%p173129%_ _%tr173133%_)))
             _%result173126%_)
            (list-sort
             (lambda (_%a173136%_ _%b173137%_)
               (let ((__tmp176052 (symbol->string (car _%a173136%_)))
                     (__tmp176051 (symbol->string (car _%b173137%_))))
                 (declare (not safe))
                 (##string<? __tmp176052 __tmp176051)))
             _%result173126%_)))))))
