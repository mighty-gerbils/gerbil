(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1756715354)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp160995 (list)) (__tmp160994 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp160995
         '(type classes ssxi methods)
         __tmp160994
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args160966%_
        (apply make-instance gxc#optimizer-info::t _%$args160966%_)))
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
      (lambda (_%self160953%_)
        (let ((_%self160956%_ _%self160953%_))
          (if (let ((__tmp160996
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self160956%_))))
                (declare (not safe))
                (##fx< '4 __tmp160996))
              (begin
                (let ((__tmp160997
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self160956%_
                   __tmp160997
                   '1
                   '#f
                   '#f))
                (let ((__tmp160998
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self160956%_
                   __tmp160998
                   '2
                   '#f
                   '#f))
                (let ((__tmp160999
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self160956%_
                   __tmp160999
                   '3
                   '#f
                   '#f))
                (let ((__tmp161000
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self160956%_
                   __tmp161000
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp161001
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self160956%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self160956%_
                       '4
                       __tmp161001))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp161003 (list))
            (__tmp161002
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp161003
         '(id)
         __tmp161002
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args160828%_
        (apply make-instance gxc#!type::t _%$args160828%_)))
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
      (let ((__tmp161005 (list gxc#!type::t))
            (__tmp161004 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp161005
         '()
         __tmp161004
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args160825%_
        (apply make-instance gxc#!abort::t _%$args160825%_)))
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
      (let ((__tmp161007 (list gxc#!type::t))
            (__tmp161006 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp161007
         '()
         __tmp161006
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args160822%_
        (apply make-instance gxc#!alias::t _%$args160822%_)))
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
      (let ((__tmp161009 (list))
            (__tmp161008
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp161009
         '(return effect arguments unchecked origin)
         __tmp161008
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args160819%_
        (apply make-instance gxc#!signature::t _%$args160819%_)))
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
      (let ((__tmp161011 (list gxc#!type::t))
            (__tmp161010
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp161011
         '(signature)
         __tmp161010
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
      (lambda (_%id160798%_ _%signature160799%_)
        (if ((lambda (_%$obj160802%_)
               (or (not _%$obj160802%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj160802%_
                      'gxc#!signature::t))))
             _%signature160799%_)
            (let ((_%signature160809%_ _%signature160799%_))
              (gxc#__make-!procedure _%id160798%_ _%signature160809%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature160799%_)
              '#!void))))
    (define gxc#__make-!procedure
      (lambda (_%id160784%_ _%signature160786%_)
        (let ((_%signature160789%_ _%signature160786%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id160784%_ _%signature160789%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj160753%_ _%signature160754%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj160753%_ 'gxc#!procedure::t))
            (let ((_%$obj160758%_ _%$obj160753%_))
              (if ((lambda (_%$obj160767%_)
                     (or (not _%$obj160767%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj160767%_
                            'gxc#!signature::t))))
                   _%signature160754%_)
                  (let ((_%signature160774%_ _%signature160754%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj160758%_
                     _%signature160774%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature160754%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj160753%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj160730%_ _%signature160732%_)
        (let* ((_%$obj160736%_ _%$obj160730%_)
               (_%signature160744%_ _%signature160732%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj160736%_
           _%signature160744%_
           '2
           '#f
           '#f))))
    (define gxc#!class-meta::t
      (let ((__tmp161013 (list gxc#!type::t))
            (__tmp161012 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp161013
         '(class)
         __tmp161012
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args160727%_
        (apply make-instance gxc#!class-meta::t _%$args160727%_)))
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
      (let ((__tmp161015 (list gxc#!type::t))
            (__tmp161014
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
         __tmp161015
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp161014
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args160724%_
        (apply make-instance gxc#!class::t _%$args160724%_)))
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
      (let ((__tmp161017 (list gxc#!procedure::t))
            (__tmp161016 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp161017
         '()
         __tmp161016
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args160721%_
        (apply make-instance gxc#!predicate::t _%$args160721%_)))
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
      (let ((__tmp161019 (list gxc#!procedure::t))
            (__tmp161018 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp161019
         '()
         __tmp161018
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args160718%_
        (apply make-instance gxc#!constructor::t _%$args160718%_)))
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
      (let ((__tmp161021 (list gxc#!procedure::t))
            (__tmp161020 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp161021
         '(slot checked?)
         __tmp161020
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args160715%_
        (apply make-instance gxc#!accessor::t _%$args160715%_)))
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
      (let ((__tmp161023 (list gxc#!procedure::t))
            (__tmp161022 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp161023
         '(slot checked?)
         __tmp161022
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args160712%_
        (apply make-instance gxc#!mutator::t _%$args160712%_)))
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
      (let ((__tmp161025 (list gxc#!type::t))
            (__tmp161024 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp161025
         '(methods)
         __tmp161024
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args160709%_
        (apply make-instance gxc#!interface::t _%$args160709%_)))
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
      (let ((__tmp161027 (list gxc#!procedure::t))
            (__tmp161026
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp161027
         '(arity dispatch inline inline-typedecl)
         __tmp161026
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args160706%_
        (apply make-instance gxc#!lambda::t _%$args160706%_)))
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
      (let ((__tmp161029 (list gxc#!procedure::t))
            (__tmp161028 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp161029
         '(clauses)
         __tmp161028
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args160703%_
        (apply make-instance gxc#!case-lambda::t _%$args160703%_)))
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
      (let ((__tmp161031 (list gxc#!procedure::t))
            (__tmp161030
             (cons (cons 'struct: '#t) '((equal: table dispatch)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp161031
         '(table dispatch)
         __tmp161030
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args160700%_
        (apply make-instance gxc#!kw-lambda::t _%$args160700%_)))
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
      (let ((__tmp161033 (list gxc#!procedure::t))
            (__tmp161032 (cons (cons 'struct: '#t) '((equal: keys main)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp161033
         '(keys main)
         __tmp161032
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args160697%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args160697%_)))
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
      (let ((__tmp161034 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp161034
         '()
         '((equal:))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args160694%_
        (apply make-instance gxc#!primitive::t _%$args160694%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp161036 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp161035 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp161036
         '()
         __tmp161035
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args160691%_
        (apply make-instance gxc#!primitive-predicate::t _%$args160691%_)))
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
      (let ((__tmp161038 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp161037 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp161038
         '()
         __tmp161037
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args160688%_
        (apply make-instance gxc#!primitive-lambda::t _%$args160688%_)))
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
      (let ((__tmp161040 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp161039 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp161040
         '()
         __tmp161039
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args160685%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args160685%_)))
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
      (lambda (_%self160672%_)
        (let ((_%self160675%_ _%self160672%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self160675%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self160535%_ _%klass160536%_)
        (let ((_%self160539%_ _%self160535%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self160539%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self160539%_
             _%klass160536%_
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
      (lambda (_%self160225%_
               _%id160226%_
               _%super160227%_
               _%slots160228%_
               _%ctor-method160229%_
               _%struct?160230%_
               _%final?160231%_
               _%system?160232%_
               _%metaclass160233%_)
        (let ((_%self160236%_ _%self160225%_))
          (let _%lp160247%_ ((_%rest160249%_ _%super160227%_))
            (let* ((_%rest160250160258%_ _%rest160249%_)
                   (_%else160252160266%_ (lambda () '#!void))
                   (_%K160254160272%_
                    (lambda (_%rest160269%_ _%super-id160270%_)
                      (if (let ((__tmp161041
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id160226%_ '()))
                                  _%super-id160270%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp161041 '8 '#f '#f))
                          (let ((__tmp161042
                                 (cons '!class (cons _%id160226%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp161042
                             _%super-id160270%_))
                          '#!void)
                      (_%lp160247%_ _%rest160269%_))))
              (if (pair? _%rest160250160258%_)
                  (let ((_%hd160255160275%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest160250160258%_)))
                        (_%tl160256160277%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest160250160258%_))))
                    (let* ((_%super-id160280%_ _%hd160255160275%_)
                           (_%rest160282%_ _%tl160256160277%_))
                      (_%K160254160272%_ _%rest160282%_ _%super-id160280%_)))
                  '#!void)))
          (let* ((_%ctor-method160333%_
                  (let ((_%$e160284%_ _%ctor-method160229%_))
                    (if _%$e160284%_
                        _%$e160284%_
                        (let _%lp160287%_ ((_%rest160289%_ _%super160227%_)
                                           (_%method160290%_ '#f))
                          (let* ((_%rest160291160299%_ _%rest160289%_)
                                 (_%else160293160307%_
                                  (lambda () _%method160290%_))
                                 (_%K160295160321%_
                                  (lambda (_%rest160310%_ _%super-id160311%_)
                                    (let* ((_%klass160313%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id160226%_ '()))
                                             _%super-id160311%_))
                                           (_%$e160315%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass160313%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e160315%_
                                          ((lambda (_%ctor-method160318%_)
                                             (if _%method160290%_
                                                 (if (eq? _%ctor-method160318%_
                                                          _%method160290%_)
                                                     (_%lp160287%_
                                                      _%rest160310%_
                                                      _%ctor-method160318%_)
                                                     (let ((__tmp161043
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id160226%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp161043
                _%method160290%_
                _%ctor-method160318%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp160287%_
                                                  _%rest160310%_
                                                  _%ctor-method160318%_)))
                                           _%$e160315%_)
                                          (_%lp160287%_
                                           _%rest160310%_
                                           _%method160290%_))))))
                            (if (pair? _%rest160291160299%_)
                                (let ((_%hd160296160324%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest160291160299%_)))
                                      (_%tl160297160326%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest160291160299%_))))
                                  (let* ((_%super-id160329%_
                                          _%hd160296160324%_)
                                         (_%rest160331%_ _%tl160297160326%_))
                                    (_%K160295160321%_
                                     _%rest160331%_
                                     _%super-id160329%_)))
                                (_%else160293160307%_)))))))
                 (_g161044_
                  (let ((__tmp161048
                         (lambda (_%klass-id160335%_)
                           (cons _%klass-id160335%_
                                 (let ((__tmp161049
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id160226%_ '()))
                                         _%klass-id160335%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp161049
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp161046
                         (lambda (_%klass-id160337%_)
                           (let ((__tmp161047
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id160226%_ '()))
                                   _%klass-id160337%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp161047
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp161048
                     __tmp161046
                     eq?
                     identity
                     '()
                     _%super160227%_))))
            (begin
              (let ((_g161045_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g161044_)
                           (##values-length _g161044_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g161045_ 2)))
                    (error "Context expects 2 values" _g161045_)))
              (let ((_%precedence-list160339%_
                     (let () (declare (not safe)) (##values-ref _g161044_ 0)))
                    (_%base-struct160340%_
                     (let () (declare (not safe)) (##values-ref _g161044_ 1))))
                (let* ((_%precedence-list160384%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id160226%_ '(t object class)))
                            _%precedence-list160339%_
                            (if (memq 'object::t _%precedence-list160339%_)
                                _%precedence-list160339%_
                                (if _%system?160232%_
                                    (if (memq 't::t _%precedence-list160339%_)
                                        _%precedence-list160339%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list160339%_
                                           '(t::t))))
                                    (let _%loop160346%_ ((_%tail160348%_
                                                          _%precedence-list160339%_)
                                                         (_%head160349%_ '()))
                                      (let* ((_%tail160350160358%_
                                              _%tail160348%_)
                                             (_%else160352160366%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head160349%_))))
                                             (_%K160354160372%_
                                              (lambda (_%rest160369%_
                                                       _%hd160370%_)
                                                (if (eq? _%hd160370%_ 't::t)
                                                    (let ((__tmp161050
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail160348%_)))
              (declare (not safe))
              (__foldl1 cons __tmp161050 _%head160349%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop160346%_
                                                     _%rest160369%_
                                                     (cons _%hd160370%_
                                                           _%head160349%_))))))
                                        (if (pair? _%tail160350160358%_)
                                            (let ((_%hd160355160375%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail160350160358%_)))
                                                  (_%tl160356160377%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail160350160358%_))))
                                              (let* ((_%hd160380%_
                                                      _%hd160355160375%_)
                                                     (_%rest160382%_
                                                      _%tl160356160377%_))
                                                (_%K160354160372%_
                                                 _%rest160382%_
                                                 _%hd160380%_)))
                                            (_%else160352160366%_))))))))
                       (_%fields160386%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id160226%_ '()))
                         _%base-struct160340%_
                         _%precedence-list160384%_
                         _%slots160228%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self160236%_
                     _%id160226%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self160236%_
                     _%super160227%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self160236%_
                     _%precedence-list160384%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self160236%_
                     _%slots160228%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self160236%_
                     _%fields160386%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self160236%_
                     _%ctor-method160333%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self160236%_
                     _%struct?160230%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self160236%_
                     _%final?160231%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self160236%_
                     _%metaclass160233%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self160389%_
               _%id160390%_
               _%super160391%_
               _%precedence-list160392%_
               _%slots160393%_
               _%fields160394%_
               _%constructor160395%_
               _%struct?160396%_
               _%final?160397%_
               _%system?160398%_
               _%metaclass160399%_
               _%methods160400%_)
        (let ((_%self160403%_ _%self160389%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self160403%_
             _%id160390%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self160403%_
             _%super160391%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self160403%_
             _%precedence-list160392%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self160403%_
             _%slots160393%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self160403%_
             _%fields160394%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self160403%_
             _%constructor160395%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self160403%_
             _%struct?160396%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self160403%_
             _%final?160397%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self160403%_
             _%metaclass160399%_
             '10
             '#f
             '#f))
          (if _%methods160400%_
              (let ((__tmp161051
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods160400%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self160403%_
                 __tmp161051
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g161052_
        (let ((_g161053_ (let () (declare (not safe)) (##length _g161052_))))
          (cond ((let () (declare (not safe)) (##fx= _g161053_ 9))
                 (apply gxc#!class:::init!__0 _g161052_))
                ((let () (declare (not safe)) (##fx= _g161053_ 12))
                 (apply gxc#!class:::init!__1 _g161052_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g161052_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where160077%_
               _%base-struct160078%_
               _%precedence-list160079%_
               _%direct-slots160080%_)
        (let* ((_%base-fields160082%_
                (if _%base-struct160078%_
                    (let ((__tmp161054
                           (gxc#optimizer-resolve-class
                            _%where160077%_
                            _%base-struct160078%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp161054 '5 '#f '#f))
                    '()))
               (_%r-fields160084%_ (reverse _%base-fields160082%_))
               (_%seen-slots160092%_
                (let ((_%tab160086%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g160087160089%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab160086%_ _%g160087160089%_ '#t)))
                   _%base-fields160082%_)
                  _%tab160086%_))
               (_%process-slot160096%_
                (lambda (_%slot160094%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots160092%_ _%slot160094%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots160092%_
                           _%slot160094%_
                           '#t))
                        (set! _%r-fields160084%_
                              (cons _%slot160094%_ _%r-fields160084%_)))))))
          (for-each
           (lambda (_%mixin160099%_)
             (let ((_%klass160101%_
                    (gxc#optimizer-resolve-class
                     _%where160077%_
                     _%mixin160099%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass160101%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot160096%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass160101%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list160079%_)
          (for-each _%process-slot160096%_ _%direct-slots160080%_)
          (let () (declare (not safe)) (##reverse _%r-fields160084%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass160036%_ _%slot160037%_)
        (let _%lp160039%_ ((_%rest160041%_
                            (##structure-ref
                             _%klass160036%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset160042%_ '1))
          (let* ((_%rest160043160051%_ _%rest160041%_)
                 (_%else160045160059%_
                  (lambda ()
                    (let ((__tmp161056
                           (##structure-ref
                            _%klass160036%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp161055
                           (##structure-ref
                            _%klass160036%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp161056
                       __tmp161055
                       _%slot160037%_))))
                 (_%K160047160065%_
                  (lambda (_%rest160062%_ _%s160063%_)
                    (if (eq? _%s160063%_ _%slot160037%_)
                        _%offset160042%_
                        (_%lp160039%_
                         _%rest160062%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset160042%_ '1)))))))
            (if (pair? _%rest160043160051%_)
                (let ((_%hd160048160068%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest160043160051%_)))
                      (_%tl160049160070%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest160043160051%_))))
                  (let* ((_%s160073%_ _%hd160048160068%_)
                         (_%rest160075%_ _%tl160049160070%_))
                    (_%K160047160065%_ _%rest160075%_ _%s160073%_)))
                (_%else160045160059%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass159994%_ _%slot159995%_)
        (if (gxc#!class-struct-slot? _%klass159994%_ _%slot159995%_)
            _%klass159994%_
            (let _%lp159997%_ ((_%rest159999%_
                                (##structure-ref
                                 _%klass159994%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest160000160008%_ _%rest159999%_)
                     (_%else160002160016%_ (lambda () '#f))
                     (_%K160004160024%_
                      (lambda (_%rest160019%_ _%super160020%_)
                        (let ((_%super-class160022%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass159994%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot159995%_ '())))
                                _%super160020%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class160022%_
                               _%slot159995%_)
                              _%super-class160022%_
                              (_%lp159997%_ _%rest160019%_))))))
                (if (pair? _%rest160000160008%_)
                    (let ((_%hd160005160027%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest160000160008%_)))
                          (_%tl160006160029%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest160000160008%_))))
                      (let* ((_%super160032%_ _%hd160005160027%_)
                             (_%rest160034%_ _%tl160006160029%_))
                        (_%K160004160024%_ _%rest160034%_ _%super160032%_)))
                    (_%else160002160016%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass159991%_ _%slot159992%_)
        (if (##structure-ref _%klass159991%_ '7 gxc#!class::t '#f)
            (memq _%slot159992%_
                  (##structure-ref _%klass159991%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self159976%_ _%id159977%_)
        (let ((_%self159980%_ _%self159976%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159980%_
             _%id159977%_
             '1
             '#f
             '#f))
          (let ((__tmp161057
                 (let ((__obj160989
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
                      __obj160989
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj160989
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj160989
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj160989)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159980%_
             __tmp161057
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self159839%_ _%id159840%_)
        (let ((_%self159843%_ _%self159839%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159843%_
             _%id159840%_
             '1
             '#f
             '#f))
          (let ((__tmp161058
                 (let ((__obj160990
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
                      __obj160990
                      _%id159840%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj160990
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj160990)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159843%_
             __tmp161058
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
      (lambda (_%self159700%_ _%id159701%_ _%slot159702%_ _%checked?159703%_)
        (let ((_%self159706%_ _%self159700%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159706%_
             _%id159701%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159706%_
             _%slot159702%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159706%_
             _%checked?159703%_
             '4
             '#f
             '#f))
          (let ((__tmp161059
                 (let ((__obj160991
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
                     (##unchecked-structure-set! __obj160991 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj160991
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp161060 (cons _%id159701%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj160991
                      __tmp161060
                      '3
                      '#f
                      '#f))
                   __obj160991)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159706%_
             __tmp161059
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self159561%_ _%id159562%_ _%slot159563%_ _%checked?159564%_)
        (let ((_%self159567%_ _%self159561%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159567%_
             _%id159562%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159567%_
             _%slot159563%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159567%_
             _%checked?159564%_
             '4
             '#f
             '#f))
          (let ((__tmp161061
                 (let ((__obj160992
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
                      __obj160992
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj160992
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp161062 (cons _%id159562%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj160992
                      __tmp161062
                      '3
                      '#f
                      '#f))
                   __obj160992)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159567%_
             __tmp161061
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords159404%_
               _%signature159401159405%_
               _%self159407%_
               _%arity159408%_
               _%dispatch159409%_)
        (let* ((_%signature159411%_
                (if (eq? _%signature159401159405%_ absent-value)
                    '#f
                    _%signature159401159405%_))
               (_%self159414%_ _%self159407%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self159414%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159414%_
             _%arity159408%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159414%_
             _%dispatch159409%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159414%_
             _%signature159411%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords159429%_ . _%args159430%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords159429%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords159429%_
                  'signature:
                  absent-value))
               _%args159430%_)))
    (define gxc#!lambda:::init!
      (lambda _%args159402159436%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args159402159436%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords159244%_
               _%signature159241159245%_
               _%self159247%_
               _%clauses159248%_)
        (let* ((_%signature159250%_
                (if (eq? _%signature159241159245%_ absent-value)
                    '#f
                    _%signature159241159245%_))
               (_%self159253%_ _%self159247%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self159253%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159253%_
             _%signature159250%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159253%_
             _%clauses159248%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords159268%_ . _%args159269%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords159268%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords159268%_
                  'signature:
                  absent-value))
               _%args159269%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args159242159275%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args159242159275%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self159102%_ _%tab159103%_ _%dispatch159104%_)
        (let ((_%self159107%_ _%self159102%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self159107%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159107%_
             _%tab159103%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159107%_
             _%dispatch159104%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self158964%_ _%keys158965%_ _%main158966%_)
        (let ((_%self158969%_ _%self158964%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self158969%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158969%_
             _%keys158965%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158969%_
             _%main158966%_
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
      (lambda (_%self158583%_ _%id158584%_)
        (let ((_%self158587%_ _%self158583%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158587%_
             _%id158584%_
             '1
             '#f
             '#f))
          (let ((__tmp161063
                 (let ((__obj160993
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
                      __obj160993
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj160993
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj160993
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj160993)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158587%_
             __tmp161063
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
      (lambda (_%klass158452%_)
        (let ((_%$e158454%_
               (##structure-ref _%klass158452%_ '11 gxc#!class::t '#f)))
          (if _%$e158454%_
              _%$e158454%_
              (let ((_%tab158458%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass158452%_
                 _%tab158458%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab158458%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass158443%_ _%method158444%_)
        (let ((_%tab158445158447%_
               (##structure-ref _%klass158443%_ '11 gxc#!class::t '#f)))
          (if _%tab158445158447%_
              (let ((_%tab158450%_ _%tab158445158447%_))
                (declare (not safe))
                (hash-get _%tab158450%_ _%method158444%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a158431%_ _%type-b158432%_)
        (if _%type-a158431%_
            (if _%type-b158432%_
                (let ((_%$e158434%_ (eq? _%type-a158431%_ _%type-b158432%_)))
                  (if _%$e158434%_
                      _%$e158434%_
                      (let ((_%$e158437%_
                             (eq? (##structure-ref
                                   _%type-b158432%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e158437%_
                            _%$e158437%_
                            (let ((_%$e158440%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a158431%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b158432%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e158440%_
                                  _%$e158440%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a158431%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b158432%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a158431%_
                                           _%type-b158432%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a158382%_ _%klass-b158383%_)
        (let ((_%$e158385%_
               (eq? (##structure-ref _%klass-a158382%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b158383%_ '1 gxc#!type::t '#f))))
          (if _%$e158385%_
              _%$e158385%_
              (let ((_%klass-id-b158388%_
                     (##structure-ref _%klass-b158383%_ '1 gxc#!type::t '#f))
                    (_%precedence-list158389%_
                     (##structure-ref _%klass-a158382%_ '3 gxc#!class::t '#f)))
                (let _%loop158391%_ ((_%rest158393%_
                                      _%precedence-list158389%_))
                  (let* ((_%rest158394158402%_ _%rest158393%_)
                         (_%else158396158410%_ (lambda () '#f))
                         (_%K158398158419%_
                          (lambda (_%rest158413%_ _%klass-name158414%_)
                            (let ((_%$e158416%_
                                   (eq? (let ((__tmp161064
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a158382%_
                                                            (cons _%klass-b158383%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name158414%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp161064
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b158388%_)))
                              (if _%$e158416%_
                                  _%$e158416%_
                                  (_%loop158391%_ _%rest158413%_))))))
                    (if (pair? _%rest158394158402%_)
                        (let ((_%hd158399158422%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest158394158402%_)))
                              (_%tl158400158424%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest158394158402%_))))
                          (let* ((_%klass-name158427%_ _%hd158399158422%_)
                                 (_%rest158429%_ _%tl158400158424%_))
                            (_%K158398158419%_
                             _%rest158429%_
                             _%klass-name158427%_)))
                        (_%else158396158410%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type158380%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type158380%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type158380%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc158369%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc158369%_ 'gxc#!procedure::t))
            (let ((_%proc158372%_ _%proc158369%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc158372%_ '2 '#f '#f))
                  (let ((__tmp161065
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc158372%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp161065 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@378.11-378.15"
               'contract:
               '!procedure?
               'value:
               _%proc158369%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym158351%_ _%type158352%_ _%local?158353%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type158352%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym158351%_
                     _%type158352%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym158351%_ '" " _%type158352%_))
        (let ((_%table158355%_
               (if _%local?158353%_
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
          (hash-put! _%table158355%_ _%sym158351%_ _%type158352%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym158360%_ _%type158361%_)
        (let ((_%local?158363%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym158360%_
           _%type158361%_
           _%local?158363%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g161066_
        (let ((_g161067_ (let () (declare (not safe)) (##length _g161066_))))
          (cond ((let () (declare (not safe)) (##fx= _g161067_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g161066_))
                ((let () (declare (not safe)) (##fx= _g161067_ 3))
                 (apply gxc#optimizer-declare-type!__% _g161066_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g161066_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym158345%_ _%type158346%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type158346%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym158345%_
                     _%type158346%_)))
        (let ((_%table158348%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp161068
                 (let () (declare (not safe)) (struct->list _%type158346%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym158345%_ '" " __tmp161068))
          (let ()
            (declare (not safe))
            (hash-put! _%table158348%_ _%sym158345%_ _%type158346%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table158348%_ _%type158346%_ _%sym158345%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym158340%_ _%type158341%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type158341%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym158340%_
                     _%type158341%_)))
        (let ((_%table158343%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table158343%_ _%sym158340%_))
              '#!void
              (begin
                (let ((__tmp161069
                       (let ()
                         (declare (not safe))
                         (struct->list _%type158341%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym158340%_
                   '" "
                   __tmp161069))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table158343%_ _%sym158340%_ _%type158341%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table158343%_
                   _%type158341%_
                   _%sym158340%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym158338%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym158338%_))
        (let ((__tmp161070
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp161070 _%sym158338%_))
        (let ((__tmp161071
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp161071 _%sym158338%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t158306%_
               _%method158307%_
               _%sym158308%_
               _%rebind?158309%_)
        (let ((__tmp161072
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp161072 _%sym158308%_ '#t))
        (let ((_%klass158311%_ (gxc#optimizer-lookup-class _%type-t158306%_)))
          (if _%klass158311%_
              (let* ((_%vtab158313%_ (gxc#!class-method-table _%klass158311%_))
                     (_%$e158315%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab158313%_ _%method158307%_))))
                (if _%$e158315%_
                    ((lambda (_%existing158318%_)
                       (if _%rebind?158309%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t158306%_
                                '" "
                                _%method158307%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab158313%_
                                _%method158307%_
                                _%sym158308%_)))
                           (if (eq? _%existing158318%_ _%sym158308%_)
                               '#!void
                               (let ((__tmp161073
                                      (cons 'bind-method!
                                            (cons _%type-t158306%_
                                                  (cons _%method158307%_
                                                        (cons _%sym158308%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp161073
                                  _%method158307%_)))))
                     _%$e158315%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t158306%_
                         '" "
                         _%method158307%_
                         '" => "
                         _%sym158308%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab158313%_
                         _%method158307%_
                         _%sym158308%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t158306%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t158327%_ _%method158328%_ _%sym158329%_)
        (let ((_%rebind?158331%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t158327%_
           _%method158328%_
           _%sym158329%_
           _%rebind?158331%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g161074_
        (let ((_g161075_ (let () (declare (not safe)) (##length _g161074_))))
          (cond ((let () (declare (not safe)) (##fx= _g161075_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g161074_))
                ((let () (declare (not safe)) (##fx= _g161075_ 4))
                 (apply gxc#optimizer-declare-method!__% _g161074_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g161074_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym158291%_)
        (let ((_%$e158293%_
               (let ((__tmp161076
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym158291%_ __tmp161076))))
          (if _%$e158293%_
              _%$e158293%_
              (let ((_%$e158302%_
                     (let ((_%ht158295158297%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht158295158297%_
                           (let ((_%ht158300%_ _%ht158295158297%_))
                             (declare (not safe))
                             (hash-get _%ht158300%_ _%sym158291%_))
                           '#f))))
                (if _%$e158302%_
                    _%$e158302%_
                    (let ((__tmp161077
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp161077 _%sym158291%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym158283%_)
        (let ((_%type158284158286%_ (gxc#optimizer-lookup-type _%sym158283%_)))
          (if _%type158284158286%_
              (let ((_%type158289%_ _%type158284158286%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type158289%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type158289%_ '1 '#f '#f)))
                    _%type158289%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym158279%_)
        (let ((_%table158281%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table158281%_ _%sym158279%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where158264%_ _%sym158265%_)
        (let ((_%$e158268%_ (gxc#optimizer-lookup-class _%sym158265%_)))
          (if _%$e158268%_
              ((lambda (_%g158270158272%_)
                 (let ((_%val158275%_ _%g158270158272%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val158275%_
                          'gxc#!class::t))
                       _%val158275%_
                       (let ()
                         (declare (not safe))
                         (error '"bad cast" gxc#!class::t _%val158275%_)))))
               _%$e158268%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where158264%_
                   _%sym158265%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass158262%_)
        (let ((__tmp161078
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp161078 _%klass158262%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t158259%_ _%method158260%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t158259%_)
         _%method158260%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym158257%_)
        (let ((__tmp161079
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp161079 _%sym158257%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e158139%_
                  (lambda (_%t158240%_)
                    (if (symbol? _%t158240%_)
                        (_%type-e158139%_
                         (gxc#optimizer-lookup-type _%t158240%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t158240%_
                               'gxc#!lambda::t))
                            (_%__lambda-type158141%_ _%t158240%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t158240%_
                                   'gxc#!kw-lambda::t))
                                (_%__kw-lambda-type158143%_ _%t158240%_)
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t158240%_
                                       'gxc#!kw-lambda-primary::t))
                                    (_%__kw-lambda-primary-type158145%_
                                     _%t158240%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t158240%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t158247%_ _%t158240%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t158247%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp161080
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t158247%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp161080
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t158240%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t158240%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%lambda-type158140%_
                  (lambda (_%t158228%_)
                    (let ((_%t158231%_ _%t158228%_))
                      (_%__lambda-type158141%_ _%t158231%_))))
                 (_%__lambda-type158141%_
                  (lambda (_%t158216%_)
                    (let ((_%t158219%_ _%t158216%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t158219%_ '4 '#f '#f))
                          (_%type-e158139%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t158219%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t158219%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp161081
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t158219%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp161081
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%kw-lambda-type158142%_
                  (lambda (_%t158204%_)
                    (let ((_%t158207%_ _%t158204%_))
                      (_%__kw-lambda-type158143%_ _%t158207%_))))
                 (_%__kw-lambda-type158143%_
                  (lambda (_%t158192%_)
                    (let ((_%t158195%_ _%t158192%_))
                      (_%type-e158139%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t158195%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type158144%_
                  (lambda (_%t158180%_)
                    (let ((_%t158183%_ _%t158180%_))
                      (_%__kw-lambda-primary-type158145%_ _%t158183%_))))
                 (_%__kw-lambda-primary-type158145%_
                  (lambda (_%t158166%_)
                    (let ((_%t158169%_ _%t158166%_))
                      (_%type-e158139%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t158169%_
                          '4
                          '#f
                          '#f)))))))
          (let* ((_%ht1158147%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2158149%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result158151%_
                  (if _%ht1158147%_
                      (let () (declare (not safe)) (hash->list _%ht1158147%_))
                      '()))
                 (_%result158153%_
                  (if _%ht2158149%_
                      (let ((__tmp161082
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2158149%_))))
                        (declare (not safe))
                        (__foldl1 cons _%result158151%_ __tmp161082))
                      _%result158151%_)))
            (for-each
             (lambda (_%p158156%_)
               (let* ((_%t158158%_ (cdr _%p158156%_))
                      (_%tr158160%_ (_%type-e158139%_ _%t158158%_)))
                 (set-cdr! _%p158156%_ _%tr158160%_)))
             _%result158153%_)
            (list-sort
             (lambda (_%a158163%_ _%b158164%_)
               (let ((__tmp161084 (symbol->string (car _%a158163%_)))
                     (__tmp161083 (symbol->string (car _%b158164%_))))
                 (declare (not safe))
                 (##string<? __tmp161084 __tmp161083)))
             _%result158153%_)))))))
