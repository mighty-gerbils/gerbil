(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1779967245)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp211995 (list)) (__tmp211994 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp211995
         '(type classes ssxi methods)
         __tmp211994
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args211914%_
        (apply make-instance gxc#optimizer-info::t _%$args211914%_)))
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
      (lambda (_%self211901%_)
        (let ((_%self211904%_ _%self211901%_))
          (if (let ((__tmp211996
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self211904%_))))
                (declare (not safe))
                (##fx< '4 __tmp211996))
              (begin
                (let ((__tmp211997
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self211904%_
                   __tmp211997
                   '1
                   '#f
                   '#f))
                (let ((__tmp211998
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self211904%_
                   __tmp211998
                   '2
                   '#f
                   '#f))
                (let ((__tmp211999
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self211904%_
                   __tmp211999
                   '3
                   '#f
                   '#f))
                (let ((__tmp212000
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self211904%_
                   __tmp212000
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp212001
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self211904%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self211904%_
                       '4
                       __tmp212001))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp212003 (list))
            (__tmp212002
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp212003
         '(id)
         __tmp212002
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args211776%_
        (apply make-instance gxc#!type::t _%$args211776%_)))
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
      (let ((__tmp212005 (list gxc#!type::t))
            (__tmp212004 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp212005
         '()
         __tmp212004
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args211773%_
        (apply make-instance gxc#!abort::t _%$args211773%_)))
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
      (let ((__tmp212007 (list gxc#!type::t))
            (__tmp212006 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp212007
         '()
         __tmp212006
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args211770%_
        (apply make-instance gxc#!alias::t _%$args211770%_)))
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
      (let ((__tmp212009 (list))
            (__tmp212008
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp212009
         '(return effect arguments unchecked origin)
         __tmp212008
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args211767%_
        (apply make-instance gxc#!signature::t _%$args211767%_)))
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
      (let ((__tmp212011 (list gxc#!type::t))
            (__tmp212010
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp212011
         '(signature)
         __tmp212010
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
      (lambda (_%id211754%_ _%signature211755%_)
        (let ((_%signature211758%_ _%signature211755%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id211754%_ _%signature211758%_))))
    (define gxc#make-!procedure
      (lambda (_%id211732%_ _%signature211734%_)
        (if (or (not _%signature211734%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%signature211734%_
                   'gxc#!signature::t)))
            (let ((_%signature211744%_ _%signature211734%_))
              (gxc#__make-!procedure _%id211732%_ _%signature211744%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature211734%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj211711%_ _%signature211712%_)
        (let* ((_%$obj211715%_ _%$obj211711%_)
               (_%signature211723%_ _%signature211712%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj211715%_
           _%signature211723%_
           '2
           '#f
           '#f))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj211678%_ _%signature211680%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj211678%_ 'gxc#!procedure::t))
            (let ((_%$obj211685%_ _%$obj211678%_))
              (if (or (not _%signature211680%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature211680%_
                         'gxc#!signature::t)))
                  (let ((_%signature211701%_ _%signature211680%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj211685%_
                     _%signature211701%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature211680%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj211678%_)
              '#!void))))
    (define gxc#!class-meta::t
      (let ((__tmp212013 (list gxc#!type::t))
            (__tmp212012 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp212013
         '(class)
         __tmp212012
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args211675%_
        (apply make-instance gxc#!class-meta::t _%$args211675%_)))
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
      (let ((__tmp212015 (list gxc#!type::t))
            (__tmp212014
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
         __tmp212015
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp212014
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args211672%_
        (apply make-instance gxc#!class::t _%$args211672%_)))
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
      (let ((__tmp212017 (list gxc#!procedure::t))
            (__tmp212016 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp212017
         '()
         __tmp212016
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args211669%_
        (apply make-instance gxc#!predicate::t _%$args211669%_)))
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
      (let ((__tmp212019 (list gxc#!procedure::t))
            (__tmp212018 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp212019
         '()
         __tmp212018
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args211666%_
        (apply make-instance gxc#!constructor::t _%$args211666%_)))
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
      (let ((__tmp212021 (list gxc#!procedure::t))
            (__tmp212020 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp212021
         '(slot checked?)
         __tmp212020
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args211663%_
        (apply make-instance gxc#!accessor::t _%$args211663%_)))
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
      (let ((__tmp212023 (list gxc#!procedure::t))
            (__tmp212022 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp212023
         '(slot checked?)
         __tmp212022
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args211660%_
        (apply make-instance gxc#!mutator::t _%$args211660%_)))
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
      (let ((__tmp212025 (list gxc#!type::t))
            (__tmp212024 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp212025
         '(methods)
         __tmp212024
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args211657%_
        (apply make-instance gxc#!interface::t _%$args211657%_)))
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
      (let ((__tmp212027 (list gxc#!procedure::t))
            (__tmp212026
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp212027
         '(arity dispatch inline inline-typedecl)
         __tmp212026
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args211654%_
        (apply make-instance gxc#!lambda::t _%$args211654%_)))
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
      (let ((__tmp212029 (list gxc#!procedure::t))
            (__tmp212028 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp212029
         '(clauses)
         __tmp212028
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args211651%_
        (apply make-instance gxc#!case-lambda::t _%$args211651%_)))
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
      (let ((__tmp212031 (list gxc#!procedure::t))
            (__tmp212030
             (cons (cons 'struct: '#t) '((equal: table dispatch)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp212031
         '(table dispatch)
         __tmp212030
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args211648%_
        (apply make-instance gxc#!kw-lambda::t _%$args211648%_)))
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
      (let ((__tmp212033 (list gxc#!procedure::t))
            (__tmp212032 (cons (cons 'struct: '#t) '((equal: keys main)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp212033
         '(keys main)
         __tmp212032
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args211645%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args211645%_)))
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
      (let ((__tmp212034 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp212034
         '()
         '((equal:))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args211642%_
        (apply make-instance gxc#!primitive::t _%$args211642%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp212036 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp212035 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp212036
         '()
         __tmp212035
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args211639%_
        (apply make-instance gxc#!primitive-predicate::t _%$args211639%_)))
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
      (let ((__tmp212038 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp212037 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp212038
         '()
         __tmp212037
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args211636%_
        (apply make-instance gxc#!primitive-lambda::t _%$args211636%_)))
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
      (let ((__tmp212040 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp212039 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp212040
         '()
         __tmp212039
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args211633%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args211633%_)))
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
      (lambda (_%self211620%_)
        (let ((_%self211623%_ _%self211620%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self211623%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self211483%_ _%klass211484%_)
        (let ((_%self211487%_ _%self211483%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self211487%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self211487%_
             _%klass211484%_
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
      (lambda (_%self211173%_
               _%id211174%_
               _%super211175%_
               _%slots211176%_
               _%ctor-method211177%_
               _%struct?211178%_
               _%final?211179%_
               _%system?211180%_
               _%metaclass211181%_)
        (let ((_%self211184%_ _%self211173%_))
          (let _%lp211195%_ ((_%rest211197%_ _%super211175%_))
            (let* ((_%rest211198211206%_ _%rest211197%_)
                   (_%else211200211214%_ (lambda () '#!void))
                   (_%K211202211220%_
                    (lambda (_%rest211217%_ _%super-id211218%_)
                      (if (let ((__tmp212041
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id211174%_ '()))
                                  _%super-id211218%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp212041 '8 '#f '#f))
                          (let ((__tmp212042
                                 (cons '!class (cons _%id211174%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp212042
                             _%super-id211218%_))
                          '#!void)
                      (_%lp211195%_ _%rest211217%_))))
              (if (pair? _%rest211198211206%_)
                  (let ((_%hd211203211223%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest211198211206%_)))
                        (_%tl211204211225%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest211198211206%_))))
                    (let* ((_%super-id211228%_ _%hd211203211223%_)
                           (_%rest211230%_ _%tl211204211225%_))
                      (_%K211202211220%_ _%rest211230%_ _%super-id211228%_)))
                  '#!void)))
          (let* ((_%ctor-method211281%_
                  (let ((_%$e211232%_ _%ctor-method211177%_))
                    (if _%$e211232%_
                        _%$e211232%_
                        (let _%lp211235%_ ((_%rest211237%_ _%super211175%_)
                                           (_%method211238%_ '#f))
                          (let* ((_%rest211239211247%_ _%rest211237%_)
                                 (_%else211241211255%_
                                  (lambda () _%method211238%_))
                                 (_%K211243211269%_
                                  (lambda (_%rest211258%_ _%super-id211259%_)
                                    (let* ((_%klass211261%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id211174%_ '()))
                                             _%super-id211259%_))
                                           (_%$e211263%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass211261%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e211263%_
                                          (if _%method211238%_
                                              (if (eq? _%$e211263%_
                                                       _%method211238%_)
                                                  (_%lp211235%_
                                                   _%rest211258%_
                                                   _%$e211263%_)
                                                  (let ((__tmp212043
                                                         (cons '!class
                                                               (cons _%id211174%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#raise-compile-error
                                                     '"conflicting implicit constructor methods"
                                                     __tmp212043
                                                     _%method211238%_
                                                     _%$e211263%_)))
                                              (_%lp211235%_
                                               _%rest211258%_
                                               _%$e211263%_))
                                          (_%lp211235%_
                                           _%rest211258%_
                                           _%method211238%_))))))
                            (if (pair? _%rest211239211247%_)
                                (let ((_%hd211244211272%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest211239211247%_)))
                                      (_%tl211245211274%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest211239211247%_))))
                                  (let* ((_%super-id211277%_
                                          _%hd211244211272%_)
                                         (_%rest211279%_ _%tl211245211274%_))
                                    (_%K211243211269%_
                                     _%rest211279%_
                                     _%super-id211277%_)))
                                (_%else211241211255%_)))))))
                 (_g212044_
                  (let ((__tmp212048
                         (lambda (_%klass-id211283%_)
                           (cons _%klass-id211283%_
                                 (let ((__tmp212049
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id211174%_ '()))
                                         _%klass-id211283%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp212049
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp212046
                         (lambda (_%klass-id211285%_)
                           (let ((__tmp212047
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id211174%_ '()))
                                   _%klass-id211285%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp212047
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp212048
                     __tmp212046
                     eq?
                     identity
                     '()
                     _%super211175%_))))
            (begin
              (let ((_g212045_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g212044_)
                           (##values-length _g212044_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g212045_ 2)))
                    (error "Context expects 2 values" _g212045_)))
              (let ((_%precedence-list211287%_
                     (let () (declare (not safe)) (##values-ref _g212044_ 0)))
                    (_%base-struct211288%_
                     (let () (declare (not safe)) (##values-ref _g212044_ 1))))
                (let* ((_%precedence-list211332%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id211174%_ '(t object class)))
                            _%precedence-list211287%_
                            (if (memq 'object::t _%precedence-list211287%_)
                                _%precedence-list211287%_
                                (if _%system?211180%_
                                    (if (memq 't::t _%precedence-list211287%_)
                                        _%precedence-list211287%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list211287%_
                                           '(t::t))))
                                    (let _%loop211294%_ ((_%tail211296%_
                                                          _%precedence-list211287%_)
                                                         (_%head211297%_ '()))
                                      (let* ((_%tail211298211306%_
                                              _%tail211296%_)
                                             (_%else211300211314%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (foldl__0
                                                   cons
                                                   '(object::t t::t)
                                                   _%head211297%_))))
                                             (_%K211302211320%_
                                              (lambda (_%rest211317%_
                                                       _%hd211318%_)
                                                (if (eq? _%hd211318%_ 't::t)
                                                    (let ((__tmp212050
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail211296%_)))
              (declare (not safe))
              (foldl__0 cons __tmp212050 _%head211297%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop211294%_
                                                     _%rest211317%_
                                                     (cons _%hd211318%_
                                                           _%head211297%_))))))
                                        (if (pair? _%tail211298211306%_)
                                            (let ((_%hd211303211323%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail211298211306%_)))
                                                  (_%tl211304211325%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail211298211306%_))))
                                              (let* ((_%hd211328%_
                                                      _%hd211303211323%_)
                                                     (_%rest211330%_
                                                      _%tl211304211325%_))
                                                (_%K211302211320%_
                                                 _%rest211330%_
                                                 _%hd211328%_)))
                                            (_%else211300211314%_))))))))
                       (_%fields211334%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id211174%_ '()))
                         _%precedence-list211332%_
                         _%slots211176%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self211184%_
                     _%id211174%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self211184%_
                     _%super211175%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self211184%_
                     _%precedence-list211332%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self211184%_
                     _%slots211176%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self211184%_
                     _%fields211334%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self211184%_
                     _%ctor-method211281%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self211184%_
                     _%struct?211178%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self211184%_
                     _%final?211179%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self211184%_
                     _%metaclass211181%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self211337%_
               _%id211338%_
               _%super211339%_
               _%precedence-list211340%_
               _%slots211341%_
               _%fields211342%_
               _%constructor211343%_
               _%struct?211344%_
               _%final?211345%_
               _%system?211346%_
               _%metaclass211347%_
               _%methods211348%_)
        (let ((_%self211351%_ _%self211337%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self211351%_
             _%id211338%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self211351%_
             _%super211339%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self211351%_
             _%precedence-list211340%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self211351%_
             _%slots211341%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self211351%_
             _%fields211342%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self211351%_
             _%constructor211343%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self211351%_
             _%struct?211344%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self211351%_
             _%final?211345%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self211351%_
             _%metaclass211347%_
             '10
             '#f
             '#f))
          (if _%methods211348%_
              (let ((__tmp212051
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods211348%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self211351%_
                 __tmp212051
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g212052_
        (let ((_g212053_ (let () (declare (not safe)) (##length _g212052_))))
          (cond ((let () (declare (not safe)) (##fx= _g212053_ 9))
                 (apply gxc#!class:::init!__0 _g212052_))
                ((let () (declare (not safe)) (##fx= _g212053_ 12))
                 (apply gxc#!class:::init!__1 _g212052_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g212052_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where211042%_
               _%precedence-list211043%_
               _%direct-slots211044%_)
        (let ((__tmp212055
               (lambda (_%mixin211046%_)
                 (let ((__tmp212056
                        (gxc#optimizer-resolve-class
                         _%where211042%_
                         _%mixin211046%_)))
                   (declare (not safe))
                   (##unchecked-structure-ref __tmp212056 '5 '#f '#f))))
              (__tmp212054
               (lambda (_%slot-list211048%_ _%slot-table211049%_)
                 (cdr _%slot-list211048%_))))
          (declare (not safe))
          (c4-compute-class-slots
           _%precedence-list211043%_
           _%direct-slots211044%_
           __tmp212055
           __tmp212054))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass211001%_ _%slot211002%_)
        (let _%lp211004%_ ((_%rest211006%_
                            (##structure-ref
                             _%klass211001%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset211007%_ '1))
          (let* ((_%rest211008211016%_ _%rest211006%_)
                 (_%else211010211024%_
                  (lambda ()
                    (let ((__tmp212058
                           (##structure-ref
                            _%klass211001%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp212057
                           (##structure-ref
                            _%klass211001%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp212058
                       __tmp212057
                       _%slot211002%_))))
                 (_%K211012211030%_
                  (lambda (_%rest211027%_ _%s211028%_)
                    (if (eq? _%s211028%_ _%slot211002%_)
                        _%offset211007%_
                        (_%lp211004%_
                         _%rest211027%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset211007%_ '1)))))))
            (if (pair? _%rest211008211016%_)
                (let ((_%hd211013211033%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest211008211016%_)))
                      (_%tl211014211035%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest211008211016%_))))
                  (let* ((_%s211038%_ _%hd211013211033%_)
                         (_%rest211040%_ _%tl211014211035%_))
                    (_%K211012211030%_ _%rest211040%_ _%s211038%_)))
                (_%else211010211024%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass210959%_ _%slot210960%_)
        (if (gxc#!class-struct-slot? _%klass210959%_ _%slot210960%_)
            _%klass210959%_
            (let _%lp210962%_ ((_%rest210964%_
                                (##structure-ref
                                 _%klass210959%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest210965210973%_ _%rest210964%_)
                     (_%else210967210981%_ (lambda () '#f))
                     (_%K210969210989%_
                      (lambda (_%rest210984%_ _%super210985%_)
                        (let ((_%super-class210987%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass210959%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot210960%_ '())))
                                _%super210985%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class210987%_
                               _%slot210960%_)
                              _%super-class210987%_
                              (_%lp210962%_ _%rest210984%_))))))
                (if (pair? _%rest210965210973%_)
                    (let ((_%hd210970210992%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest210965210973%_)))
                          (_%tl210971210994%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest210965210973%_))))
                      (let* ((_%super210997%_ _%hd210970210992%_)
                             (_%rest210999%_ _%tl210971210994%_))
                        (_%K210969210989%_ _%rest210999%_ _%super210997%_)))
                    (_%else210967210981%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass210956%_ _%slot210957%_)
        (if (##structure-ref _%klass210956%_ '7 gxc#!class::t '#f)
            (memq _%slot210957%_
                  (##structure-ref _%klass210956%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self210941%_ _%id210942%_)
        (let ((_%self210945%_ _%self210941%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210945%_
             _%id210942%_
             '1
             '#f
             '#f))
          (let ((__tmp212059
                 (let ((__obj211989
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
                      __obj211989
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj211989
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj211989
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj211989)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210945%_
             __tmp212059
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self210804%_ _%id210805%_)
        (let ((_%self210808%_ _%self210804%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210808%_
             _%id210805%_
             '1
             '#f
             '#f))
          (let ((__tmp212060
                 (let ((__obj211990
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
                      __obj211990
                      _%id210805%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj211990
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj211990)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210808%_
             __tmp212060
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
      (lambda (_%self210665%_ _%id210666%_ _%slot210667%_ _%checked?210668%_)
        (let ((_%self210671%_ _%self210665%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210671%_
             _%id210666%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210671%_
             _%slot210667%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210671%_
             _%checked?210668%_
             '4
             '#f
             '#f))
          (let ((__tmp212061
                 (let ((__obj211991
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
                     (##unchecked-structure-set! __obj211991 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj211991
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp212062 (cons _%id210666%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj211991
                      __tmp212062
                      '3
                      '#f
                      '#f))
                   __obj211991)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210671%_
             __tmp212061
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self210526%_ _%id210527%_ _%slot210528%_ _%checked?210529%_)
        (let ((_%self210532%_ _%self210526%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210532%_
             _%id210527%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210532%_
             _%slot210528%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210532%_
             _%checked?210529%_
             '4
             '#f
             '#f))
          (let ((__tmp212063
                 (let ((__obj211992
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
                      __obj211992
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj211992
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp212064 (cons _%id210527%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj211992
                      __tmp212064
                      '3
                      '#f
                      '#f))
                   __obj211992)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210532%_
             __tmp212063
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords210370%_
               _%signature210367210371%_
               _%self210372%_
               _%arity210373%_
               _%dispatch210374%_)
        (let* ((_%signature210376%_
                (if (eq? _%signature210367210371%_ absent-value)
                    '#f
                    _%signature210367210371%_))
               (_%self210379%_ _%self210372%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self210379%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210379%_
             _%arity210373%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210379%_
             _%dispatch210374%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210379%_
             _%signature210376%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords210394%_ . _%args210395%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords210394%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords210394%_
                  'signature:
                  absent-value))
               _%args210395%_)))
    (define gxc#!lambda:::init!
      (lambda _%args210368210401%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args210368210401%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords210211%_
               _%signature210208210212%_
               _%self210213%_
               _%clauses210214%_)
        (let* ((_%signature210216%_
                (if (eq? _%signature210208210212%_ absent-value)
                    '#f
                    _%signature210208210212%_))
               (_%self210219%_ _%self210213%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self210219%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210219%_
             _%signature210216%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210219%_
             _%clauses210214%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords210234%_ . _%args210235%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords210234%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords210234%_
                  'signature:
                  absent-value))
               _%args210235%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args210209210241%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args210209210241%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self210069%_ _%tab210070%_ _%dispatch210071%_)
        (let ((_%self210074%_ _%self210069%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self210074%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210074%_
             _%tab210070%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210074%_
             _%dispatch210071%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self209931%_ _%keys209932%_ _%main209933%_)
        (let ((_%self209936%_ _%self209931%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self209936%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209936%_
             _%keys209932%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209936%_
             _%main209933%_
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
      (lambda (_%self209550%_ _%id209551%_)
        (let ((_%self209554%_ _%self209550%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209554%_
             _%id209551%_
             '1
             '#f
             '#f))
          (let ((__tmp212065
                 (let ((__obj211993
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
                      __obj211993
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj211993
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj211993
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj211993)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209554%_
             __tmp212065
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
      (lambda (_%klass209420%_)
        (let ((_%$e209422%_
               (##structure-ref _%klass209420%_ '11 gxc#!class::t '#f)))
          (if _%$e209422%_
              _%$e209422%_
              (let ((_%tab209426%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass209420%_
                 _%tab209426%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab209426%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass209412%_ _%method209413%_)
        (let ((_%tab209414209416%_
               (##structure-ref _%klass209412%_ '11 gxc#!class::t '#f)))
          (if _%tab209414209416%_
              (let ((_%tab209418%_ _%tab209414209416%_))
                (declare (not safe))
                (hash-get _%tab209418%_ _%method209413%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a209397%_ _%type-b209398%_)
        (if _%type-a209397%_
            (if _%type-b209398%_
                (let ((_%$e209400%_ (eq? _%type-a209397%_ _%type-b209398%_)))
                  (if _%$e209400%_
                      _%$e209400%_
                      (let ((_%$e209403%_
                             (eq? (##structure-ref
                                   _%type-b209398%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e209403%_
                            _%$e209403%_
                            (let ((_%$e209406%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a209397%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b209398%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e209406%_
                                  _%$e209406%_
                                  (let ((_%$e209409%_
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-instance-of?
                                                _%type-a209397%_
                                                'gxc#!class::t))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-instance-of?
                                                    _%type-b209398%_
                                                    'gxc#!class::t))
                                                 (gxc#!class-subclass?
                                                  _%type-a209397%_
                                                  _%type-b209398%_)
                                                 '#f)
                                             '#f)))
                                    (if _%$e209409%_
                                        _%$e209409%_
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%type-a209397%_
                                               'gxc#!interface::t))
                                            (eq? (##structure-ref
                                                  _%type-b209398%_
                                                  '1
                                                  gxc#!type::t
                                                  '#f)
                                                 'interface-descriptor::t)
                                            '#f)))))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a209348%_ _%klass-b209349%_)
        (let ((_%$e209351%_
               (eq? (##structure-ref _%klass-a209348%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b209349%_ '1 gxc#!type::t '#f))))
          (if _%$e209351%_
              _%$e209351%_
              (let ((_%klass-id-b209354%_
                     (##structure-ref _%klass-b209349%_ '1 gxc#!type::t '#f))
                    (_%precedence-list209355%_
                     (##structure-ref _%klass-a209348%_ '3 gxc#!class::t '#f)))
                (let _%loop209357%_ ((_%rest209359%_
                                      _%precedence-list209355%_))
                  (let* ((_%rest209360209368%_ _%rest209359%_)
                         (_%else209362209376%_ (lambda () '#f))
                         (_%K209364209385%_
                          (lambda (_%rest209379%_ _%klass-name209380%_)
                            (let ((_%$e209382%_
                                   (eq? (let ((__tmp212066
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a209348%_
                                                            (cons _%klass-b209349%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name209380%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp212066
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b209354%_)))
                              (if _%$e209382%_
                                  _%$e209382%_
                                  (_%loop209357%_ _%rest209379%_))))))
                    (if (pair? _%rest209360209368%_)
                        (let ((_%hd209365209388%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest209360209368%_)))
                              (_%tl209366209390%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest209360209368%_))))
                          (let* ((_%klass-name209393%_ _%hd209365209388%_)
                                 (_%rest209395%_ _%tl209366209390%_))
                            (_%K209364209385%_
                             _%rest209395%_
                             _%klass-name209393%_)))
                        (_%else209362209376%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type209346%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type209346%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type209346%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc209335%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc209335%_ 'gxc#!procedure::t))
            (let ((_%proc209338%_ _%proc209335%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc209338%_ '2 '#f '#f))
                  (let ((__tmp212067
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc209338%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp212067 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@365.11-365.15"
               'contract:
               '!procedure?
               'value:
               _%proc209335%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym209317%_ _%type209318%_ _%local?209319%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type209318%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym209317%_
                     _%type209318%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym209317%_ '" " _%type209318%_))
        (let ((_%table209321%_
               (if _%local?209319%_
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
          (hash-put! _%table209321%_ _%sym209317%_ _%type209318%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym209326%_ _%type209327%_)
        (let ((_%local?209329%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym209326%_
           _%type209327%_
           _%local?209329%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g212068_
        (let ((_g212069_ (let () (declare (not safe)) (##length _g212068_))))
          (cond ((let () (declare (not safe)) (##fx= _g212069_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g212068_))
                ((let () (declare (not safe)) (##fx= _g212069_ 3))
                 (apply gxc#optimizer-declare-type!__% _g212068_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g212068_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym209311%_ _%type209312%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type209312%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym209311%_
                     _%type209312%_)))
        (let ((_%table209314%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp212070
                 (let () (declare (not safe)) (struct->list _%type209312%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym209311%_ '" " __tmp212070))
          (let ()
            (declare (not safe))
            (hash-put! _%table209314%_ _%sym209311%_ _%type209312%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table209314%_ _%type209312%_ _%sym209311%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym209306%_ _%type209307%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type209307%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym209306%_
                     _%type209307%_)))
        (let ((_%table209309%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table209309%_ _%sym209306%_))
              '#!void
              (begin
                (let ((__tmp212071
                       (let ()
                         (declare (not safe))
                         (struct->list _%type209307%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym209306%_
                   '" "
                   __tmp212071))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table209309%_ _%sym209306%_ _%type209307%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table209309%_
                   _%type209307%_
                   _%sym209306%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym209304%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym209304%_))
        (let ((__tmp212072
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp212072 _%sym209304%_))
        (let ((__tmp212073
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp212073 _%sym209304%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t209272%_
               _%method209273%_
               _%sym209274%_
               _%rebind?209275%_)
        (let ((__tmp212074
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp212074 _%sym209274%_ '#t))
        (let ((_%klass209277%_ (gxc#optimizer-lookup-class _%type-t209272%_)))
          (if _%klass209277%_
              (let* ((_%vtab209279%_ (gxc#!class-method-table _%klass209277%_))
                     (_%$e209281%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab209279%_ _%method209273%_))))
                (if _%$e209281%_
                    (if _%rebind?209275%_
                        (let ()
                          (let ()
                            (declare (not safe))
                            (gxc#verbose
                             '"declare-method: rebind existing method"
                             _%type-t209272%_
                             '" "
                             _%method209273%_))
                          (let ()
                            (declare (not safe))
                            (hash-put!
                             _%vtab209279%_
                             _%method209273%_
                             _%sym209274%_)))
                        (if (eq? _%$e209281%_ _%sym209274%_)
                            '#!void
                            (let ((__tmp212075
                                   (cons 'bind-method!
                                         (cons _%type-t209272%_
                                               (cons _%method209273%_
                                                     (cons _%sym209274%_
                                                           '()))))))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"declare-method: duplicate method declaration"
                               __tmp212075
                               _%method209273%_))))
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t209272%_
                         '" "
                         _%method209273%_
                         '" => "
                         _%sym209274%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab209279%_
                         _%method209273%_
                         _%sym209274%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t209272%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t209293%_ _%method209294%_ _%sym209295%_)
        (let ((_%rebind?209297%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t209293%_
           _%method209294%_
           _%sym209295%_
           _%rebind?209297%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g212076_
        (let ((_g212077_ (let () (declare (not safe)) (##length _g212076_))))
          (cond ((let () (declare (not safe)) (##fx= _g212077_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g212076_))
                ((let () (declare (not safe)) (##fx= _g212077_ 4))
                 (apply gxc#optimizer-declare-method!__% _g212076_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g212076_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym209258%_)
        (let ((_%$e209260%_
               (let ((__tmp212078
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym209258%_ __tmp212078))))
          (if _%$e209260%_
              _%$e209260%_
              (let ((_%$e209268%_
                     (let ((_%ht209262209264%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht209262209264%_
                           (let ((_%ht209266%_ _%ht209262209264%_))
                             (declare (not safe))
                             (hash-get _%ht209266%_ _%sym209258%_))
                           '#f))))
                (if _%$e209268%_
                    _%$e209268%_
                    (let ((__tmp212079
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp212079 _%sym209258%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym209251%_)
        (let ((_%type209252209254%_ (gxc#optimizer-lookup-type _%sym209251%_)))
          (if _%type209252209254%_
              (let ((_%type209256%_ _%type209252209254%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type209256%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type209256%_ '1 '#f '#f)))
                    _%type209256%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym209247%_)
        (let ((_%table209249%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table209249%_ _%sym209247%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where209232%_ _%sym209233%_)
        (let ((_%$e209236%_ (gxc#optimizer-lookup-class _%sym209233%_)))
          (if _%$e209236%_
              (let ((_%val209243%_ _%$e209236%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%val209243%_ 'gxc#!class::t))
                    _%val209243%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/compiler/optimize-base
                       'contract:
                       '(!class? val)
                       'value:
                       _%val209243%_)
                      '#!void)))
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where209232%_
                   _%sym209233%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass209230%_)
        (let ((__tmp212080
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp212080 _%klass209230%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t209227%_ _%method209228%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t209227%_)
         _%method209228%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym209225%_)
        (let ((__tmp212081
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp212081 _%sym209225%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e208700%_
                  (lambda (_%t209166%_)
                    (if (symbol? _%t209166%_)
                        (_%type-e208700%_
                         (gxc#optimizer-lookup-type _%t209166%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t209166%_
                               'gxc#!lambda::t))
                            (let* ((_%t209170%_ _%t209166%_)
                                   (_%t209174%_ _%t209170%_))
                              (_%__lambda-type208826%_ _%t209174%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t209166%_
                                   'gxc#!kw-lambda::t))
                                (let* ((_%t209186%_ _%t209166%_)
                                       (_%t209190%_ _%t209186%_))
                                  (_%__kw-lambda-type208949%_ _%t209190%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t209166%_
                                       'gxc#!kw-lambda-primary::t))
                                    (let* ((_%t209201%_ _%t209166%_)
                                           (_%t209205%_ _%t209201%_))
                                      (_%__kw-lambda-primary-type209072%_
                                       _%t209205%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t209166%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t209216%_ _%t209166%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t209216%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp212082
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t209216%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp212082
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t209166%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t209166%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%__lambda-type208826%_
                  (lambda (_%t209154%_)
                    (let ((_%t209157%_ _%t209154%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t209157%_ '4 '#f '#f))
                          (_%type-e208700%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t209157%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t209157%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp212083
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t209157%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp212083
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%lambda-type208827%_
                  (lambda (_%t209142%_)
                    (let ((_%t209145%_ _%t209142%_))
                      (_%__lambda-type208826%_ _%t209145%_))))
                 (_%__kw-lambda-type208949%_
                  (lambda (_%t209130%_)
                    (let ((_%t209133%_ _%t209130%_))
                      (_%type-e208700%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t209133%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-type208950%_
                  (lambda (_%t209118%_)
                    (let ((_%t209121%_ _%t209118%_))
                      (_%__kw-lambda-type208949%_ _%t209121%_))))
                 (_%__kw-lambda-primary-type209072%_
                  (lambda (_%t209106%_)
                    (let ((_%t209109%_ _%t209106%_))
                      (_%type-e208700%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t209109%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type209073%_
                  (lambda (_%t209094%_)
                    (let ((_%t209097%_ _%t209094%_))
                      (_%__kw-lambda-primary-type209072%_ _%t209097%_)))))
          (let* ((_%ht1209075%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2209077%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result209079%_
                  (if _%ht1209075%_
                      (let () (declare (not safe)) (hash->list _%ht1209075%_))
                      '()))
                 (_%result209081%_
                  (if _%ht2209077%_
                      (let ((__tmp212084
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2209077%_))))
                        (declare (not safe))
                        (foldl__0 cons _%result209079%_ __tmp212084))
                      _%result209079%_)))
            (for-each
             (lambda (_%p209084%_)
               (let* ((_%t209086%_ (cdr _%p209084%_))
                      (_%tr209088%_ (_%type-e208700%_ _%t209086%_)))
                 (set-cdr! _%p209084%_ _%tr209088%_)))
             _%result209081%_)
            (list-sort
             (lambda (_%a209091%_ _%b209092%_)
               (let ((__tmp212086 (symbol->string (car _%a209091%_)))
                     (__tmp212085 (symbol->string (car _%b209092%_))))
                 (declare (not safe))
                 (##string<? __tmp212086 __tmp212085)))
             _%result209081%_)))))))
