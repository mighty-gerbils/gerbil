(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1770325973)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp176007 (list)) (__tmp176006 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp176007
         '(type classes ssxi methods)
         __tmp176006
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args175978%_
        (apply make-instance gxc#optimizer-info::t _%$args175978%_)))
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
      (lambda (_%self175965%_)
        (let ((_%self175968%_ _%self175965%_))
          (if (let ((__tmp176008
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self175968%_))))
                (declare (not safe))
                (##fx< '4 __tmp176008))
              (begin
                (let ((__tmp176009
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self175968%_
                   __tmp176009
                   '1
                   '#f
                   '#f))
                (let ((__tmp176010
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self175968%_
                   __tmp176010
                   '2
                   '#f
                   '#f))
                (let ((__tmp176011
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self175968%_
                   __tmp176011
                   '3
                   '#f
                   '#f))
                (let ((__tmp176012
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self175968%_
                   __tmp176012
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp176013
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self175968%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self175968%_
                       '4
                       __tmp176013))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp176015 (list)) (__tmp176014 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp176015
         '(id)
         __tmp176014
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args175840%_
        (apply make-instance gxc#!type::t _%$args175840%_)))
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
      (let ((__tmp176017 (list gxc#!type::t))
            (__tmp176016 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp176017
         '()
         __tmp176016
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args175837%_
        (apply make-instance gxc#!abort::t _%$args175837%_)))
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
      (let ((__tmp176019 (list gxc#!type::t))
            (__tmp176018 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp176019
         '()
         __tmp176018
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args175834%_
        (apply make-instance gxc#!alias::t _%$args175834%_)))
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
      (let ((__tmp176021 (list)) (__tmp176020 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp176021
         '(return effect arguments unchecked origin)
         __tmp176020
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args175831%_
        (apply make-instance gxc#!signature::t _%$args175831%_)))
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
      (let ((__tmp176023 (list gxc#!type::t))
            (__tmp176022 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp176023
         '(signature)
         __tmp176022
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
      (lambda (_%id175810%_ _%signature175811%_)
        (if ((lambda (_%$obj175814%_)
               (or (not _%$obj175814%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj175814%_
                      'gxc#!signature::t))))
             _%signature175811%_)
            (let ((_%signature175821%_ _%signature175811%_))
              (gxc#__make-!procedure _%id175810%_ _%signature175821%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature175811%_)
              '#!void))))
    (define gxc#__make-!procedure
      (lambda (_%id175796%_ _%signature175798%_)
        (let ((_%signature175801%_ _%signature175798%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id175796%_ _%signature175801%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj175765%_ _%signature175766%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj175765%_ 'gxc#!procedure::t))
            (let ((_%$obj175770%_ _%$obj175765%_))
              (if ((lambda (_%$obj175779%_)
                     (or (not _%$obj175779%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj175779%_
                            'gxc#!signature::t))))
                   _%signature175766%_)
                  (let ((_%signature175786%_ _%signature175766%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj175770%_
                     _%signature175786%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature175766%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj175765%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj175742%_ _%signature175744%_)
        (let* ((_%$obj175748%_ _%$obj175742%_)
               (_%signature175756%_ _%signature175744%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj175748%_
           _%signature175756%_
           '2
           '#f
           '#f))))
    (define gxc#!class-meta::t
      (let ((__tmp176025 (list gxc#!type::t))
            (__tmp176024 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp176025
         '(class)
         __tmp176024
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args175739%_
        (apply make-instance gxc#!class-meta::t _%$args175739%_)))
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
      (let ((__tmp176027 (list gxc#!type::t))
            (__tmp176026 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class::t
         '!class
         __tmp176027
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp176026
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args175736%_
        (apply make-instance gxc#!class::t _%$args175736%_)))
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
      (let ((__tmp176029 (list gxc#!procedure::t))
            (__tmp176028 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp176029
         '()
         __tmp176028
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args175733%_
        (apply make-instance gxc#!predicate::t _%$args175733%_)))
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
      (let ((__tmp176031 (list gxc#!procedure::t))
            (__tmp176030 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp176031
         '()
         __tmp176030
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args175730%_
        (apply make-instance gxc#!constructor::t _%$args175730%_)))
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
      (let ((__tmp176033 (list gxc#!procedure::t))
            (__tmp176032 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp176033
         '(slot checked?)
         __tmp176032
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args175727%_
        (apply make-instance gxc#!accessor::t _%$args175727%_)))
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
      (let ((__tmp176035 (list gxc#!procedure::t))
            (__tmp176034 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp176035
         '(slot checked?)
         __tmp176034
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args175724%_
        (apply make-instance gxc#!mutator::t _%$args175724%_)))
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
      (let ((__tmp176037 (list gxc#!type::t))
            (__tmp176036 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp176037
         '(methods)
         __tmp176036
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args175721%_
        (apply make-instance gxc#!interface::t _%$args175721%_)))
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
      (let ((__tmp176039 (list gxc#!procedure::t))
            (__tmp176038 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp176039
         '(arity dispatch inline inline-typedecl)
         __tmp176038
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args175718%_
        (apply make-instance gxc#!lambda::t _%$args175718%_)))
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
      (let ((__tmp176041 (list gxc#!procedure::t))
            (__tmp176040 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp176041
         '(clauses)
         __tmp176040
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args175715%_
        (apply make-instance gxc#!case-lambda::t _%$args175715%_)))
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
      (let ((__tmp176043 (list gxc#!procedure::t))
            (__tmp176042 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp176043
         '(table dispatch)
         __tmp176042
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args175712%_
        (apply make-instance gxc#!kw-lambda::t _%$args175712%_)))
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
      (let ((__tmp176045 (list gxc#!procedure::t))
            (__tmp176044 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp176045
         '(keys main)
         __tmp176044
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args175709%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args175709%_)))
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
      (let ((__tmp176046 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp176046
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args175706%_
        (apply make-instance gxc#!primitive::t _%$args175706%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp176048 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp176047 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp176048
         '()
         __tmp176047
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args175703%_
        (apply make-instance gxc#!primitive-predicate::t _%$args175703%_)))
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
      (let ((__tmp176050 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp176049 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp176050
         '()
         __tmp176049
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args175700%_
        (apply make-instance gxc#!primitive-lambda::t _%$args175700%_)))
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
      (let ((__tmp176052 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp176051 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp176052
         '()
         __tmp176051
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args175697%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args175697%_)))
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
      (lambda (_%self175684%_)
        (let ((_%self175687%_ _%self175684%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self175687%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self175547%_ _%klass175548%_)
        (let ((_%self175551%_ _%self175547%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self175551%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175551%_
             _%klass175548%_
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
      (lambda (_%self175237%_
               _%id175238%_
               _%super175239%_
               _%slots175240%_
               _%ctor-method175241%_
               _%struct?175242%_
               _%final?175243%_
               _%system?175244%_
               _%metaclass175245%_)
        (let ((_%self175248%_ _%self175237%_))
          (let _%lp175259%_ ((_%rest175261%_ _%super175239%_))
            (let* ((_%rest175262175270%_ _%rest175261%_)
                   (_%else175264175278%_ (lambda () '#!void))
                   (_%K175266175284%_
                    (lambda (_%rest175281%_ _%super-id175282%_)
                      (if (let ((__tmp176053
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id175238%_ '()))
                                  _%super-id175282%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp176053 '8 '#f '#f))
                          (let ((__tmp176054
                                 (cons '!class (cons _%id175238%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp176054
                             _%super-id175282%_))
                          '#!void)
                      (_%lp175259%_ _%rest175281%_))))
              (if (pair? _%rest175262175270%_)
                  (let ((_%hd175267175287%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest175262175270%_)))
                        (_%tl175268175289%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest175262175270%_))))
                    (let* ((_%super-id175292%_ _%hd175267175287%_)
                           (_%rest175294%_ _%tl175268175289%_))
                      (_%K175266175284%_ _%rest175294%_ _%super-id175292%_)))
                  '#!void)))
          (let* ((_%ctor-method175345%_
                  (let ((_%$e175296%_ _%ctor-method175241%_))
                    (if _%$e175296%_
                        _%$e175296%_
                        (let _%lp175299%_ ((_%rest175301%_ _%super175239%_)
                                           (_%method175302%_ '#f))
                          (let* ((_%rest175303175311%_ _%rest175301%_)
                                 (_%else175305175319%_
                                  (lambda () _%method175302%_))
                                 (_%K175307175333%_
                                  (lambda (_%rest175322%_ _%super-id175323%_)
                                    (let* ((_%klass175325%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id175238%_ '()))
                                             _%super-id175323%_))
                                           (_%$e175327%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass175325%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e175327%_
                                          ((lambda (_%ctor-method175330%_)
                                             (if _%method175302%_
                                                 (if (eq? _%ctor-method175330%_
                                                          _%method175302%_)
                                                     (_%lp175299%_
                                                      _%rest175322%_
                                                      _%ctor-method175330%_)
                                                     (let ((__tmp176055
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id175238%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp176055
                _%method175302%_
                _%ctor-method175330%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp175299%_
                                                  _%rest175322%_
                                                  _%ctor-method175330%_)))
                                           _%$e175327%_)
                                          (_%lp175299%_
                                           _%rest175322%_
                                           _%method175302%_))))))
                            (if (pair? _%rest175303175311%_)
                                (let ((_%hd175308175336%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest175303175311%_)))
                                      (_%tl175309175338%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest175303175311%_))))
                                  (let* ((_%super-id175341%_
                                          _%hd175308175336%_)
                                         (_%rest175343%_ _%tl175309175338%_))
                                    (_%K175307175333%_
                                     _%rest175343%_
                                     _%super-id175341%_)))
                                (_%else175305175319%_)))))))
                 (_g176056_
                  (let ((__tmp176060
                         (lambda (_%klass-id175347%_)
                           (cons _%klass-id175347%_
                                 (let ((__tmp176061
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id175238%_ '()))
                                         _%klass-id175347%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp176061
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp176058
                         (lambda (_%klass-id175349%_)
                           (let ((__tmp176059
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id175238%_ '()))
                                   _%klass-id175349%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp176059
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp176060
                     __tmp176058
                     eq?
                     identity
                     '()
                     _%super175239%_))))
            (begin
              (let ((_g176057_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g176056_)
                           (##values-length _g176056_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g176057_ 2)))
                    (error "Context expects 2 values" _g176057_)))
              (let ((_%precedence-list175351%_
                     (let () (declare (not safe)) (##values-ref _g176056_ 0)))
                    (_%base-struct175352%_
                     (let () (declare (not safe)) (##values-ref _g176056_ 1))))
                (let* ((_%precedence-list175396%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id175238%_ '(t object class)))
                            _%precedence-list175351%_
                            (if (memq 'object::t _%precedence-list175351%_)
                                _%precedence-list175351%_
                                (if _%system?175244%_
                                    (if (memq 't::t _%precedence-list175351%_)
                                        _%precedence-list175351%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list175351%_
                                           '(t::t))))
                                    (let _%loop175358%_ ((_%tail175360%_
                                                          _%precedence-list175351%_)
                                                         (_%head175361%_ '()))
                                      (let* ((_%tail175362175370%_
                                              _%tail175360%_)
                                             (_%else175364175378%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head175361%_))))
                                             (_%K175366175384%_
                                              (lambda (_%rest175381%_
                                                       _%hd175382%_)
                                                (if (eq? _%hd175382%_ 't::t)
                                                    (let ((__tmp176062
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail175360%_)))
              (declare (not safe))
              (__foldl1 cons __tmp176062 _%head175361%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop175358%_
                                                     _%rest175381%_
                                                     (cons _%hd175382%_
                                                           _%head175361%_))))))
                                        (if (pair? _%tail175362175370%_)
                                            (let ((_%hd175367175387%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail175362175370%_)))
                                                  (_%tl175368175389%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail175362175370%_))))
                                              (let* ((_%hd175392%_
                                                      _%hd175367175387%_)
                                                     (_%rest175394%_
                                                      _%tl175368175389%_))
                                                (_%K175366175384%_
                                                 _%rest175394%_
                                                 _%hd175392%_)))
                                            (_%else175364175378%_))))))))
                       (_%fields175398%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id175238%_ '()))
                         _%base-struct175352%_
                         _%precedence-list175396%_
                         _%slots175240%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175248%_
                     _%id175238%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175248%_
                     _%super175239%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175248%_
                     _%precedence-list175396%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175248%_
                     _%slots175240%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175248%_
                     _%fields175398%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175248%_
                     _%ctor-method175345%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175248%_
                     _%struct?175242%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175248%_
                     _%final?175243%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self175248%_
                     _%metaclass175245%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self175401%_
               _%id175402%_
               _%super175403%_
               _%precedence-list175404%_
               _%slots175405%_
               _%fields175406%_
               _%constructor175407%_
               _%struct?175408%_
               _%final?175409%_
               _%system?175410%_
               _%metaclass175411%_
               _%methods175412%_)
        (let ((_%self175415%_ _%self175401%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175415%_
             _%id175402%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175415%_
             _%super175403%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175415%_
             _%precedence-list175404%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175415%_
             _%slots175405%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175415%_
             _%fields175406%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175415%_
             _%constructor175407%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175415%_
             _%struct?175408%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175415%_
             _%final?175409%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self175415%_
             _%metaclass175411%_
             '10
             '#f
             '#f))
          (if _%methods175412%_
              (let ((__tmp176063
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods175412%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self175415%_
                 __tmp176063
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g176064_
        (let ((_g176065_ (let () (declare (not safe)) (##length _g176064_))))
          (cond ((let () (declare (not safe)) (##fx= _g176065_ 9))
                 (apply gxc#!class:::init!__0 _g176064_))
                ((let () (declare (not safe)) (##fx= _g176065_ 12))
                 (apply gxc#!class:::init!__1 _g176064_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g176064_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where175089%_
               _%base-struct175090%_
               _%precedence-list175091%_
               _%direct-slots175092%_)
        (let* ((_%base-fields175094%_
                (if _%base-struct175090%_
                    (let ((__tmp176066
                           (gxc#optimizer-resolve-class
                            _%where175089%_
                            _%base-struct175090%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp176066 '5 '#f '#f))
                    '()))
               (_%r-fields175096%_ (reverse _%base-fields175094%_))
               (_%seen-slots175104%_
                (let ((_%tab175098%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g175099175101%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab175098%_ _%g175099175101%_ '#t)))
                   _%base-fields175094%_)
                  _%tab175098%_))
               (_%process-slot175108%_
                (lambda (_%slot175106%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots175104%_ _%slot175106%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots175104%_
                           _%slot175106%_
                           '#t))
                        (set! _%r-fields175096%_
                              (cons _%slot175106%_ _%r-fields175096%_)))))))
          (for-each
           (lambda (_%mixin175111%_)
             (let ((_%klass175113%_
                    (gxc#optimizer-resolve-class
                     _%where175089%_
                     _%mixin175111%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass175113%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot175108%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass175113%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list175091%_)
          (for-each _%process-slot175108%_ _%direct-slots175092%_)
          (let () (declare (not safe)) (##reverse _%r-fields175096%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass175048%_ _%slot175049%_)
        (let _%lp175051%_ ((_%rest175053%_
                            (##structure-ref
                             _%klass175048%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset175054%_ '1))
          (let* ((_%rest175055175063%_ _%rest175053%_)
                 (_%else175057175071%_
                  (lambda ()
                    (let ((__tmp176068
                           (##structure-ref
                            _%klass175048%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp176067
                           (##structure-ref
                            _%klass175048%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp176068
                       __tmp176067
                       _%slot175049%_))))
                 (_%K175059175077%_
                  (lambda (_%rest175074%_ _%s175075%_)
                    (if (eq? _%s175075%_ _%slot175049%_)
                        _%offset175054%_
                        (_%lp175051%_
                         _%rest175074%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset175054%_ '1)))))))
            (if (pair? _%rest175055175063%_)
                (let ((_%hd175060175080%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest175055175063%_)))
                      (_%tl175061175082%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest175055175063%_))))
                  (let* ((_%s175085%_ _%hd175060175080%_)
                         (_%rest175087%_ _%tl175061175082%_))
                    (_%K175059175077%_ _%rest175087%_ _%s175085%_)))
                (_%else175057175071%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass175006%_ _%slot175007%_)
        (if (gxc#!class-struct-slot? _%klass175006%_ _%slot175007%_)
            _%klass175006%_
            (let _%lp175009%_ ((_%rest175011%_
                                (##structure-ref
                                 _%klass175006%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest175012175020%_ _%rest175011%_)
                     (_%else175014175028%_ (lambda () '#f))
                     (_%K175016175036%_
                      (lambda (_%rest175031%_ _%super175032%_)
                        (let ((_%super-class175034%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass175006%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot175007%_ '())))
                                _%super175032%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class175034%_
                               _%slot175007%_)
                              _%super-class175034%_
                              (_%lp175009%_ _%rest175031%_))))))
                (if (pair? _%rest175012175020%_)
                    (let ((_%hd175017175039%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest175012175020%_)))
                          (_%tl175018175041%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest175012175020%_))))
                      (let* ((_%super175044%_ _%hd175017175039%_)
                             (_%rest175046%_ _%tl175018175041%_))
                        (_%K175016175036%_ _%rest175046%_ _%super175044%_)))
                    (_%else175014175028%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass175003%_ _%slot175004%_)
        (if (##structure-ref _%klass175003%_ '7 gxc#!class::t '#f)
            (memq _%slot175004%_
                  (##structure-ref _%klass175003%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
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
          (let ((__tmp176069
                 (let ((__obj176001
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
                      __obj176001
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176001
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176001
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj176001)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174992%_
             __tmp176069
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self174851%_ _%id174852%_)
        (let ((_%self174855%_ _%self174851%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174855%_
             _%id174852%_
             '1
             '#f
             '#f))
          (let ((__tmp176070
                 (let ((__obj176002
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
                      __obj176002
                      _%id174852%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176002
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj176002)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174855%_
             __tmp176070
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
      (lambda (_%self174712%_ _%id174713%_ _%slot174714%_ _%checked?174715%_)
        (let ((_%self174718%_ _%self174712%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174718%_
             _%id174713%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174718%_
             _%slot174714%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174718%_
             _%checked?174715%_
             '4
             '#f
             '#f))
          (let ((__tmp176071
                 (let ((__obj176003
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
                     (##unchecked-structure-set! __obj176003 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176003
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp176072 (cons _%id174713%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176003
                      __tmp176072
                      '3
                      '#f
                      '#f))
                   __obj176003)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174718%_
             __tmp176071
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self174573%_ _%id174574%_ _%slot174575%_ _%checked?174576%_)
        (let ((_%self174579%_ _%self174573%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174579%_
             _%id174574%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174579%_
             _%slot174575%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174579%_
             _%checked?174576%_
             '4
             '#f
             '#f))
          (let ((__tmp176073
                 (let ((__obj176004
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
                      __obj176004
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176004
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp176074 (cons _%id174574%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176004
                      __tmp176074
                      '3
                      '#f
                      '#f))
                   __obj176004)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174579%_
             __tmp176073
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords174417%_
               _%signature174414174418%_
               _%self174419%_
               _%arity174420%_
               _%dispatch174421%_)
        (let* ((_%signature174423%_
                (if (eq? _%signature174414174418%_ absent-value)
                    '#f
                    _%signature174414174418%_))
               (_%self174426%_ _%self174419%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self174426%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174426%_
             _%arity174420%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174426%_
             _%dispatch174421%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174426%_
             _%signature174423%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords174441%_ . _%args174442%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords174441%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords174441%_
                  'signature:
                  absent-value))
               _%args174442%_)))
    (define gxc#!lambda:::init!
      (lambda _%args174415174448%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args174415174448%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords174258%_
               _%signature174255174259%_
               _%self174260%_
               _%clauses174261%_)
        (let* ((_%signature174263%_
                (if (eq? _%signature174255174259%_ absent-value)
                    '#f
                    _%signature174255174259%_))
               (_%self174266%_ _%self174260%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self174266%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174266%_
             _%signature174263%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174266%_
             _%clauses174261%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords174281%_ . _%args174282%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords174281%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords174281%_
                  'signature:
                  absent-value))
               _%args174282%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args174256174288%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args174256174288%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self174116%_ _%tab174117%_ _%dispatch174118%_)
        (let ((_%self174121%_ _%self174116%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self174121%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174121%_
             _%tab174117%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self174121%_
             _%dispatch174118%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self173978%_ _%keys173979%_ _%main173980%_)
        (let ((_%self173983%_ _%self173978%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self173983%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self173983%_
             _%keys173979%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self173983%_
             _%main173980%_
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
      (lambda (_%self173597%_ _%id173598%_)
        (let ((_%self173601%_ _%self173597%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self173601%_
             _%id173598%_
             '1
             '#f
             '#f))
          (let ((__tmp176075
                 (let ((__obj176005
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
                      __obj176005
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176005
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj176005
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj176005)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self173601%_
             __tmp176075
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
      (lambda (_%klass173466%_)
        (let ((_%$e173468%_
               (##structure-ref _%klass173466%_ '11 gxc#!class::t '#f)))
          (if _%$e173468%_
              _%$e173468%_
              (let ((_%tab173472%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass173466%_
                 _%tab173472%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab173472%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass173458%_ _%method173459%_)
        (let ((_%tab173460173462%_
               (##structure-ref _%klass173458%_ '11 gxc#!class::t '#f)))
          (if _%tab173460173462%_
              (let ((_%tab173464%_ _%tab173460173462%_))
                (declare (not safe))
                (hash-get _%tab173464%_ _%method173459%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a173446%_ _%type-b173447%_)
        (if _%type-a173446%_
            (if _%type-b173447%_
                (let ((_%$e173449%_ (eq? _%type-a173446%_ _%type-b173447%_)))
                  (if _%$e173449%_
                      _%$e173449%_
                      (let ((_%$e173452%_
                             (eq? (##structure-ref
                                   _%type-b173447%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e173452%_
                            _%$e173452%_
                            (let ((_%$e173455%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a173446%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b173447%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e173455%_
                                  _%$e173455%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a173446%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b173447%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a173446%_
                                           _%type-b173447%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a173397%_ _%klass-b173398%_)
        (let ((_%$e173400%_
               (eq? (##structure-ref _%klass-a173397%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b173398%_ '1 gxc#!type::t '#f))))
          (if _%$e173400%_
              _%$e173400%_
              (let ((_%klass-id-b173403%_
                     (##structure-ref _%klass-b173398%_ '1 gxc#!type::t '#f))
                    (_%precedence-list173404%_
                     (##structure-ref _%klass-a173397%_ '3 gxc#!class::t '#f)))
                (let _%loop173406%_ ((_%rest173408%_
                                      _%precedence-list173404%_))
                  (let* ((_%rest173409173417%_ _%rest173408%_)
                         (_%else173411173425%_ (lambda () '#f))
                         (_%K173413173434%_
                          (lambda (_%rest173428%_ _%klass-name173429%_)
                            (let ((_%$e173431%_
                                   (eq? (let ((__tmp176076
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a173397%_
                                                            (cons _%klass-b173398%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name173429%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp176076
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b173403%_)))
                              (if _%$e173431%_
                                  _%$e173431%_
                                  (_%loop173406%_ _%rest173428%_))))))
                    (if (pair? _%rest173409173417%_)
                        (let ((_%hd173414173437%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest173409173417%_)))
                              (_%tl173415173439%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest173409173417%_))))
                          (let* ((_%klass-name173442%_ _%hd173414173437%_)
                                 (_%rest173444%_ _%tl173415173439%_))
                            (_%K173413173434%_
                             _%rest173444%_
                             _%klass-name173442%_)))
                        (_%else173411173425%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type173395%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type173395%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type173395%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc173384%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc173384%_ 'gxc#!procedure::t))
            (let ((_%proc173387%_ _%proc173384%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc173387%_ '2 '#f '#f))
                  (let ((__tmp176077
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc173387%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp176077 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@378.11-378.15"
               'contract:
               '!procedure?
               'value:
               _%proc173384%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym173366%_ _%type173367%_ _%local?173368%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type173367%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym173366%_
                     _%type173367%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym173366%_ '" " _%type173367%_))
        (let ((_%table173370%_
               (if _%local?173368%_
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
          (hash-put! _%table173370%_ _%sym173366%_ _%type173367%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym173375%_ _%type173376%_)
        (let ((_%local?173378%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym173375%_
           _%type173376%_
           _%local?173378%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g176078_
        (let ((_g176079_ (let () (declare (not safe)) (##length _g176078_))))
          (cond ((let () (declare (not safe)) (##fx= _g176079_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g176078_))
                ((let () (declare (not safe)) (##fx= _g176079_ 3))
                 (apply gxc#optimizer-declare-type!__% _g176078_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g176078_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym173360%_ _%type173361%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type173361%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym173360%_
                     _%type173361%_)))
        (let ((_%table173363%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp176080
                 (let () (declare (not safe)) (struct->list _%type173361%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym173360%_ '" " __tmp176080))
          (let ()
            (declare (not safe))
            (hash-put! _%table173363%_ _%sym173360%_ _%type173361%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table173363%_ _%type173361%_ _%sym173360%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym173355%_ _%type173356%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type173356%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym173355%_
                     _%type173356%_)))
        (let ((_%table173358%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table173358%_ _%sym173355%_))
              '#!void
              (begin
                (let ((__tmp176081
                       (let ()
                         (declare (not safe))
                         (struct->list _%type173356%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym173355%_
                   '" "
                   __tmp176081))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table173358%_ _%sym173355%_ _%type173356%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table173358%_
                   _%type173356%_
                   _%sym173355%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym173353%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym173353%_))
        (let ((__tmp176082
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp176082 _%sym173353%_))
        (let ((__tmp176083
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp176083 _%sym173353%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t173321%_
               _%method173322%_
               _%sym173323%_
               _%rebind?173324%_)
        (let ((__tmp176084
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp176084 _%sym173323%_ '#t))
        (let ((_%klass173326%_ (gxc#optimizer-lookup-class _%type-t173321%_)))
          (if _%klass173326%_
              (let* ((_%vtab173328%_ (gxc#!class-method-table _%klass173326%_))
                     (_%$e173330%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab173328%_ _%method173322%_))))
                (if _%$e173330%_
                    ((lambda (_%existing173333%_)
                       (if _%rebind?173324%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t173321%_
                                '" "
                                _%method173322%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab173328%_
                                _%method173322%_
                                _%sym173323%_)))
                           (if (eq? _%existing173333%_ _%sym173323%_)
                               '#!void
                               (let ((__tmp176085
                                      (cons 'bind-method!
                                            (cons _%type-t173321%_
                                                  (cons _%method173322%_
                                                        (cons _%sym173323%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp176085
                                  _%method173322%_)))))
                     _%$e173330%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t173321%_
                         '" "
                         _%method173322%_
                         '" => "
                         _%sym173323%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab173328%_
                         _%method173322%_
                         _%sym173323%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t173321%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t173342%_ _%method173343%_ _%sym173344%_)
        (let ((_%rebind?173346%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t173342%_
           _%method173343%_
           _%sym173344%_
           _%rebind?173346%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g176086_
        (let ((_g176087_ (let () (declare (not safe)) (##length _g176086_))))
          (cond ((let () (declare (not safe)) (##fx= _g176087_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g176086_))
                ((let () (declare (not safe)) (##fx= _g176087_ 4))
                 (apply gxc#optimizer-declare-method!__% _g176086_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g176086_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym173307%_)
        (let ((_%$e173309%_
               (let ((__tmp176088
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym173307%_ __tmp176088))))
          (if _%$e173309%_
              _%$e173309%_
              (let ((_%$e173317%_
                     (let ((_%ht173311173313%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht173311173313%_
                           (let ((_%ht173315%_ _%ht173311173313%_))
                             (declare (not safe))
                             (hash-get _%ht173315%_ _%sym173307%_))
                           '#f))))
                (if _%$e173317%_
                    _%$e173317%_
                    (let ((__tmp176089
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp176089 _%sym173307%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym173300%_)
        (let ((_%type173301173303%_ (gxc#optimizer-lookup-type _%sym173300%_)))
          (if _%type173301173303%_
              (let ((_%type173305%_ _%type173301173303%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type173305%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type173305%_ '1 '#f '#f)))
                    _%type173305%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym173296%_)
        (let ((_%table173298%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table173298%_ _%sym173296%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where173281%_ _%sym173282%_)
        (let ((_%$e173285%_ (gxc#optimizer-lookup-class _%sym173282%_)))
          (if _%$e173285%_
              ((lambda (_%g173287173289%_)
                 (let ((_%val173292%_ _%g173287173289%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val173292%_
                          'gxc#!class::t))
                       _%val173292%_
                       (begin
                         (raise-contract-violation-error
                          '"contract violation"
                          'context:
                          'gerbil/compiler/optimize-base
                          'contract:
                          '(!class? val)
                          'value:
                          _%val173292%_)
                         '#!void))))
               _%$e173285%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where173281%_
                   _%sym173282%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass173279%_)
        (let ((__tmp176090
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp176090 _%klass173279%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t173276%_ _%method173277%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t173276%_)
         _%method173277%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym173274%_)
        (let ((__tmp176091
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp176091 _%sym173274%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e173156%_
                  (lambda (_%t173257%_)
                    (if (symbol? _%t173257%_)
                        (_%type-e173156%_
                         (gxc#optimizer-lookup-type _%t173257%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t173257%_
                               'gxc#!lambda::t))
                            (_%__lambda-type173158%_ _%t173257%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t173257%_
                                   'gxc#!kw-lambda::t))
                                (_%__kw-lambda-type173160%_ _%t173257%_)
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t173257%_
                                       'gxc#!kw-lambda-primary::t))
                                    (_%__kw-lambda-primary-type173162%_
                                     _%t173257%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t173257%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t173264%_ _%t173257%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t173264%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp176092
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t173264%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp176092
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t173257%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t173257%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%lambda-type173157%_
                  (lambda (_%t173245%_)
                    (let ((_%t173248%_ _%t173245%_))
                      (_%__lambda-type173158%_ _%t173248%_))))
                 (_%__lambda-type173158%_
                  (lambda (_%t173233%_)
                    (let ((_%t173236%_ _%t173233%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t173236%_ '4 '#f '#f))
                          (_%type-e173156%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t173236%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t173236%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp176093
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t173236%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp176093
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%kw-lambda-type173159%_
                  (lambda (_%t173221%_)
                    (let ((_%t173224%_ _%t173221%_))
                      (_%__kw-lambda-type173160%_ _%t173224%_))))
                 (_%__kw-lambda-type173160%_
                  (lambda (_%t173209%_)
                    (let ((_%t173212%_ _%t173209%_))
                      (_%type-e173156%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t173212%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type173161%_
                  (lambda (_%t173197%_)
                    (let ((_%t173200%_ _%t173197%_))
                      (_%__kw-lambda-primary-type173162%_ _%t173200%_))))
                 (_%__kw-lambda-primary-type173162%_
                  (lambda (_%t173183%_)
                    (let ((_%t173186%_ _%t173183%_))
                      (_%type-e173156%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t173186%_
                          '4
                          '#f
                          '#f)))))))
          (let* ((_%ht1173164%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2173166%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result173168%_
                  (if _%ht1173164%_
                      (let () (declare (not safe)) (hash->list _%ht1173164%_))
                      '()))
                 (_%result173170%_
                  (if _%ht2173166%_
                      (let ((__tmp176094
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2173166%_))))
                        (declare (not safe))
                        (__foldl1 cons _%result173168%_ __tmp176094))
                      _%result173168%_)))
            (for-each
             (lambda (_%p173173%_)
               (let* ((_%t173175%_ (cdr _%p173173%_))
                      (_%tr173177%_ (_%type-e173156%_ _%t173175%_)))
                 (set-cdr! _%p173173%_ _%tr173177%_)))
             _%result173170%_)
            (list-sort
             (lambda (_%a173180%_ _%b173181%_)
               (let ((__tmp176096 (symbol->string (car _%a173180%_)))
                     (__tmp176095 (symbol->string (car _%b173181%_))))
                 (declare (not safe))
                 (##string<? __tmp176096 __tmp176095)))
             _%result173170%_)))))))
