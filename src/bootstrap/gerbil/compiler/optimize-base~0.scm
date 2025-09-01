(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1756721297)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp160993 (list)) (__tmp160992 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp160993
         '(type classes ssxi methods)
         __tmp160992
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args160964%_
        (apply make-instance gxc#optimizer-info::t _%$args160964%_)))
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
      (lambda (_%self160951%_)
        (let ((_%self160954%_ _%self160951%_))
          (if (let ((__tmp160994
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self160954%_))))
                (declare (not safe))
                (##fx< '4 __tmp160994))
              (begin
                (let ((__tmp160995
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self160954%_
                   __tmp160995
                   '1
                   '#f
                   '#f))
                (let ((__tmp160996
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self160954%_
                   __tmp160996
                   '2
                   '#f
                   '#f))
                (let ((__tmp160997
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self160954%_
                   __tmp160997
                   '3
                   '#f
                   '#f))
                (let ((__tmp160998
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self160954%_
                   __tmp160998
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp160999
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self160954%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self160954%_
                       '4
                       __tmp160999))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp161001 (list))
            (__tmp161000
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp161001
         '(id)
         __tmp161000
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args160826%_
        (apply make-instance gxc#!type::t _%$args160826%_)))
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
      (let ((__tmp161003 (list gxc#!type::t))
            (__tmp161002 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp161003
         '()
         __tmp161002
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args160823%_
        (apply make-instance gxc#!abort::t _%$args160823%_)))
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
      (let ((__tmp161005 (list gxc#!type::t))
            (__tmp161004 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp161005
         '()
         __tmp161004
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args160820%_
        (apply make-instance gxc#!alias::t _%$args160820%_)))
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
      (let ((__tmp161007 (list))
            (__tmp161006
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp161007
         '(return effect arguments unchecked origin)
         __tmp161006
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args160817%_
        (apply make-instance gxc#!signature::t _%$args160817%_)))
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
      (let ((__tmp161009 (list gxc#!type::t))
            (__tmp161008
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp161009
         '(signature)
         __tmp161008
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
      (lambda (_%id160796%_ _%signature160797%_)
        (if ((lambda (_%$obj160800%_)
               (or (not _%$obj160800%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj160800%_
                      'gxc#!signature::t))))
             _%signature160797%_)
            (let ((_%signature160807%_ _%signature160797%_))
              (gxc#__make-!procedure _%id160796%_ _%signature160807%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature160797%_)
              '#!void))))
    (define gxc#__make-!procedure
      (lambda (_%id160782%_ _%signature160784%_)
        (let ((_%signature160787%_ _%signature160784%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id160782%_ _%signature160787%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj160751%_ _%signature160752%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj160751%_ 'gxc#!procedure::t))
            (let ((_%$obj160756%_ _%$obj160751%_))
              (if ((lambda (_%$obj160765%_)
                     (or (not _%$obj160765%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj160765%_
                            'gxc#!signature::t))))
                   _%signature160752%_)
                  (let ((_%signature160772%_ _%signature160752%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj160756%_
                     _%signature160772%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature160752%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj160751%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj160728%_ _%signature160730%_)
        (let* ((_%$obj160734%_ _%$obj160728%_)
               (_%signature160742%_ _%signature160730%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj160734%_
           _%signature160742%_
           '2
           '#f
           '#f))))
    (define gxc#!class-meta::t
      (let ((__tmp161011 (list gxc#!type::t))
            (__tmp161010 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp161011
         '(class)
         __tmp161010
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args160725%_
        (apply make-instance gxc#!class-meta::t _%$args160725%_)))
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
      (let ((__tmp161013 (list gxc#!type::t))
            (__tmp161012
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
         __tmp161013
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp161012
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args160722%_
        (apply make-instance gxc#!class::t _%$args160722%_)))
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
      (let ((__tmp161015 (list gxc#!procedure::t))
            (__tmp161014 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp161015
         '()
         __tmp161014
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args160719%_
        (apply make-instance gxc#!predicate::t _%$args160719%_)))
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
      (let ((__tmp161017 (list gxc#!procedure::t))
            (__tmp161016 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp161017
         '()
         __tmp161016
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args160716%_
        (apply make-instance gxc#!constructor::t _%$args160716%_)))
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
      (let ((__tmp161019 (list gxc#!procedure::t))
            (__tmp161018 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp161019
         '(slot checked?)
         __tmp161018
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args160713%_
        (apply make-instance gxc#!accessor::t _%$args160713%_)))
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
      (let ((__tmp161021 (list gxc#!procedure::t))
            (__tmp161020 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp161021
         '(slot checked?)
         __tmp161020
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args160710%_
        (apply make-instance gxc#!mutator::t _%$args160710%_)))
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
      (let ((__tmp161023 (list gxc#!type::t))
            (__tmp161022 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp161023
         '(methods)
         __tmp161022
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args160707%_
        (apply make-instance gxc#!interface::t _%$args160707%_)))
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
      (let ((__tmp161025 (list gxc#!procedure::t))
            (__tmp161024
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp161025
         '(arity dispatch inline inline-typedecl)
         __tmp161024
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args160704%_
        (apply make-instance gxc#!lambda::t _%$args160704%_)))
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
      (let ((__tmp161027 (list gxc#!procedure::t))
            (__tmp161026 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp161027
         '(clauses)
         __tmp161026
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args160701%_
        (apply make-instance gxc#!case-lambda::t _%$args160701%_)))
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
      (let ((__tmp161029 (list gxc#!procedure::t))
            (__tmp161028
             (cons (cons 'struct: '#t) '((equal: table dispatch)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp161029
         '(table dispatch)
         __tmp161028
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args160698%_
        (apply make-instance gxc#!kw-lambda::t _%$args160698%_)))
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
      (let ((__tmp161031 (list gxc#!procedure::t))
            (__tmp161030 (cons (cons 'struct: '#t) '((equal: keys main)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp161031
         '(keys main)
         __tmp161030
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args160695%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args160695%_)))
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
      (let ((__tmp161032 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp161032
         '()
         '((equal:))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args160692%_
        (apply make-instance gxc#!primitive::t _%$args160692%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp161034 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp161033 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp161034
         '()
         __tmp161033
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args160689%_
        (apply make-instance gxc#!primitive-predicate::t _%$args160689%_)))
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
      (let ((__tmp161036 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp161035 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp161036
         '()
         __tmp161035
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args160686%_
        (apply make-instance gxc#!primitive-lambda::t _%$args160686%_)))
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
      (let ((__tmp161038 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp161037 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp161038
         '()
         __tmp161037
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args160683%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args160683%_)))
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
      (lambda (_%self160670%_)
        (let ((_%self160673%_ _%self160670%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self160673%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self160533%_ _%klass160534%_)
        (let ((_%self160537%_ _%self160533%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self160537%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self160537%_
             _%klass160534%_
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
      (lambda (_%self160223%_
               _%id160224%_
               _%super160225%_
               _%slots160226%_
               _%ctor-method160227%_
               _%struct?160228%_
               _%final?160229%_
               _%system?160230%_
               _%metaclass160231%_)
        (let ((_%self160234%_ _%self160223%_))
          (let _%lp160245%_ ((_%rest160247%_ _%super160225%_))
            (let* ((_%rest160248160256%_ _%rest160247%_)
                   (_%else160250160264%_ (lambda () '#!void))
                   (_%K160252160270%_
                    (lambda (_%rest160267%_ _%super-id160268%_)
                      (if (let ((__tmp161039
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id160224%_ '()))
                                  _%super-id160268%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp161039 '8 '#f '#f))
                          (let ((__tmp161040
                                 (cons '!class (cons _%id160224%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp161040
                             _%super-id160268%_))
                          '#!void)
                      (_%lp160245%_ _%rest160267%_))))
              (if (pair? _%rest160248160256%_)
                  (let ((_%hd160253160273%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest160248160256%_)))
                        (_%tl160254160275%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest160248160256%_))))
                    (let* ((_%super-id160278%_ _%hd160253160273%_)
                           (_%rest160280%_ _%tl160254160275%_))
                      (_%K160252160270%_ _%rest160280%_ _%super-id160278%_)))
                  '#!void)))
          (let* ((_%ctor-method160331%_
                  (let ((_%$e160282%_ _%ctor-method160227%_))
                    (if _%$e160282%_
                        _%$e160282%_
                        (let _%lp160285%_ ((_%rest160287%_ _%super160225%_)
                                           (_%method160288%_ '#f))
                          (let* ((_%rest160289160297%_ _%rest160287%_)
                                 (_%else160291160305%_
                                  (lambda () _%method160288%_))
                                 (_%K160293160319%_
                                  (lambda (_%rest160308%_ _%super-id160309%_)
                                    (let* ((_%klass160311%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id160224%_ '()))
                                             _%super-id160309%_))
                                           (_%$e160313%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass160311%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e160313%_
                                          ((lambda (_%ctor-method160316%_)
                                             (if _%method160288%_
                                                 (if (eq? _%ctor-method160316%_
                                                          _%method160288%_)
                                                     (_%lp160285%_
                                                      _%rest160308%_
                                                      _%ctor-method160316%_)
                                                     (let ((__tmp161041
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id160224%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp161041
                _%method160288%_
                _%ctor-method160316%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp160285%_
                                                  _%rest160308%_
                                                  _%ctor-method160316%_)))
                                           _%$e160313%_)
                                          (_%lp160285%_
                                           _%rest160308%_
                                           _%method160288%_))))))
                            (if (pair? _%rest160289160297%_)
                                (let ((_%hd160294160322%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest160289160297%_)))
                                      (_%tl160295160324%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest160289160297%_))))
                                  (let* ((_%super-id160327%_
                                          _%hd160294160322%_)
                                         (_%rest160329%_ _%tl160295160324%_))
                                    (_%K160293160319%_
                                     _%rest160329%_
                                     _%super-id160327%_)))
                                (_%else160291160305%_)))))))
                 (_g161042_
                  (let ((__tmp161046
                         (lambda (_%klass-id160333%_)
                           (cons _%klass-id160333%_
                                 (let ((__tmp161047
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id160224%_ '()))
                                         _%klass-id160333%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp161047
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp161044
                         (lambda (_%klass-id160335%_)
                           (let ((__tmp161045
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id160224%_ '()))
                                   _%klass-id160335%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp161045
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp161046
                     __tmp161044
                     eq?
                     identity
                     '()
                     _%super160225%_))))
            (begin
              (let ((_g161043_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g161042_)
                           (##values-length _g161042_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g161043_ 2)))
                    (error "Context expects 2 values" _g161043_)))
              (let ((_%precedence-list160337%_
                     (let () (declare (not safe)) (##values-ref _g161042_ 0)))
                    (_%base-struct160338%_
                     (let () (declare (not safe)) (##values-ref _g161042_ 1))))
                (let* ((_%precedence-list160382%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id160224%_ '(t object class)))
                            _%precedence-list160337%_
                            (if (memq 'object::t _%precedence-list160337%_)
                                _%precedence-list160337%_
                                (if _%system?160230%_
                                    (if (memq 't::t _%precedence-list160337%_)
                                        _%precedence-list160337%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list160337%_
                                           '(t::t))))
                                    (let _%loop160344%_ ((_%tail160346%_
                                                          _%precedence-list160337%_)
                                                         (_%head160347%_ '()))
                                      (let* ((_%tail160348160356%_
                                              _%tail160346%_)
                                             (_%else160350160364%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head160347%_))))
                                             (_%K160352160370%_
                                              (lambda (_%rest160367%_
                                                       _%hd160368%_)
                                                (if (eq? _%hd160368%_ 't::t)
                                                    (let ((__tmp161048
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail160346%_)))
              (declare (not safe))
              (__foldl1 cons __tmp161048 _%head160347%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop160344%_
                                                     _%rest160367%_
                                                     (cons _%hd160368%_
                                                           _%head160347%_))))))
                                        (if (pair? _%tail160348160356%_)
                                            (let ((_%hd160353160373%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail160348160356%_)))
                                                  (_%tl160354160375%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail160348160356%_))))
                                              (let* ((_%hd160378%_
                                                      _%hd160353160373%_)
                                                     (_%rest160380%_
                                                      _%tl160354160375%_))
                                                (_%K160352160370%_
                                                 _%rest160380%_
                                                 _%hd160378%_)))
                                            (_%else160350160364%_))))))))
                       (_%fields160384%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id160224%_ '()))
                         _%base-struct160338%_
                         _%precedence-list160382%_
                         _%slots160226%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self160234%_
                     _%id160224%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self160234%_
                     _%super160225%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self160234%_
                     _%precedence-list160382%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self160234%_
                     _%slots160226%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self160234%_
                     _%fields160384%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self160234%_
                     _%ctor-method160331%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self160234%_
                     _%struct?160228%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self160234%_
                     _%final?160229%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self160234%_
                     _%metaclass160231%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self160387%_
               _%id160388%_
               _%super160389%_
               _%precedence-list160390%_
               _%slots160391%_
               _%fields160392%_
               _%constructor160393%_
               _%struct?160394%_
               _%final?160395%_
               _%system?160396%_
               _%metaclass160397%_
               _%methods160398%_)
        (let ((_%self160401%_ _%self160387%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self160401%_
             _%id160388%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self160401%_
             _%super160389%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self160401%_
             _%precedence-list160390%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self160401%_
             _%slots160391%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self160401%_
             _%fields160392%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self160401%_
             _%constructor160393%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self160401%_
             _%struct?160394%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self160401%_
             _%final?160395%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self160401%_
             _%metaclass160397%_
             '10
             '#f
             '#f))
          (if _%methods160398%_
              (let ((__tmp161049
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods160398%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self160401%_
                 __tmp161049
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g161050_
        (let ((_g161051_ (let () (declare (not safe)) (##length _g161050_))))
          (cond ((let () (declare (not safe)) (##fx= _g161051_ 9))
                 (apply gxc#!class:::init!__0 _g161050_))
                ((let () (declare (not safe)) (##fx= _g161051_ 12))
                 (apply gxc#!class:::init!__1 _g161050_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g161050_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where160075%_
               _%base-struct160076%_
               _%precedence-list160077%_
               _%direct-slots160078%_)
        (let* ((_%base-fields160080%_
                (if _%base-struct160076%_
                    (let ((__tmp161052
                           (gxc#optimizer-resolve-class
                            _%where160075%_
                            _%base-struct160076%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp161052 '5 '#f '#f))
                    '()))
               (_%r-fields160082%_ (reverse _%base-fields160080%_))
               (_%seen-slots160090%_
                (let ((_%tab160084%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g160085160087%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab160084%_ _%g160085160087%_ '#t)))
                   _%base-fields160080%_)
                  _%tab160084%_))
               (_%process-slot160094%_
                (lambda (_%slot160092%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots160090%_ _%slot160092%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots160090%_
                           _%slot160092%_
                           '#t))
                        (set! _%r-fields160082%_
                              (cons _%slot160092%_ _%r-fields160082%_)))))))
          (for-each
           (lambda (_%mixin160097%_)
             (let ((_%klass160099%_
                    (gxc#optimizer-resolve-class
                     _%where160075%_
                     _%mixin160097%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass160099%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot160094%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass160099%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list160077%_)
          (for-each _%process-slot160094%_ _%direct-slots160078%_)
          (let () (declare (not safe)) (##reverse _%r-fields160082%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass160034%_ _%slot160035%_)
        (let _%lp160037%_ ((_%rest160039%_
                            (##structure-ref
                             _%klass160034%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset160040%_ '1))
          (let* ((_%rest160041160049%_ _%rest160039%_)
                 (_%else160043160057%_
                  (lambda ()
                    (let ((__tmp161054
                           (##structure-ref
                            _%klass160034%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp161053
                           (##structure-ref
                            _%klass160034%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp161054
                       __tmp161053
                       _%slot160035%_))))
                 (_%K160045160063%_
                  (lambda (_%rest160060%_ _%s160061%_)
                    (if (eq? _%s160061%_ _%slot160035%_)
                        _%offset160040%_
                        (_%lp160037%_
                         _%rest160060%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset160040%_ '1)))))))
            (if (pair? _%rest160041160049%_)
                (let ((_%hd160046160066%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest160041160049%_)))
                      (_%tl160047160068%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest160041160049%_))))
                  (let* ((_%s160071%_ _%hd160046160066%_)
                         (_%rest160073%_ _%tl160047160068%_))
                    (_%K160045160063%_ _%rest160073%_ _%s160071%_)))
                (_%else160043160057%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass159992%_ _%slot159993%_)
        (if (gxc#!class-struct-slot? _%klass159992%_ _%slot159993%_)
            _%klass159992%_
            (let _%lp159995%_ ((_%rest159997%_
                                (##structure-ref
                                 _%klass159992%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest159998160006%_ _%rest159997%_)
                     (_%else160000160014%_ (lambda () '#f))
                     (_%K160002160022%_
                      (lambda (_%rest160017%_ _%super160018%_)
                        (let ((_%super-class160020%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass159992%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot159993%_ '())))
                                _%super160018%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class160020%_
                               _%slot159993%_)
                              _%super-class160020%_
                              (_%lp159995%_ _%rest160017%_))))))
                (if (pair? _%rest159998160006%_)
                    (let ((_%hd160003160025%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest159998160006%_)))
                          (_%tl160004160027%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest159998160006%_))))
                      (let* ((_%super160030%_ _%hd160003160025%_)
                             (_%rest160032%_ _%tl160004160027%_))
                        (_%K160002160022%_ _%rest160032%_ _%super160030%_)))
                    (_%else160000160014%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass159989%_ _%slot159990%_)
        (if (##structure-ref _%klass159989%_ '7 gxc#!class::t '#f)
            (memq _%slot159990%_
                  (##structure-ref _%klass159989%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self159974%_ _%id159975%_)
        (let ((_%self159978%_ _%self159974%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159978%_
             _%id159975%_
             '1
             '#f
             '#f))
          (let ((__tmp161055
                 (let ((__obj160987
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
                      __obj160987
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj160987
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj160987
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj160987)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159978%_
             __tmp161055
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self159837%_ _%id159838%_)
        (let ((_%self159841%_ _%self159837%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159841%_
             _%id159838%_
             '1
             '#f
             '#f))
          (let ((__tmp161056
                 (let ((__obj160988
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
                      __obj160988
                      _%id159838%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj160988
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj160988)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159841%_
             __tmp161056
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
      (lambda (_%self159698%_ _%id159699%_ _%slot159700%_ _%checked?159701%_)
        (let ((_%self159704%_ _%self159698%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159704%_
             _%id159699%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159704%_
             _%slot159700%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159704%_
             _%checked?159701%_
             '4
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
                     (##unchecked-structure-set! __obj160989 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj160989
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp161058 (cons _%id159699%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj160989
                      __tmp161058
                      '3
                      '#f
                      '#f))
                   __obj160989)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159704%_
             __tmp161057
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self159559%_ _%id159560%_ _%slot159561%_ _%checked?159562%_)
        (let ((_%self159565%_ _%self159559%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159565%_
             _%id159560%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159565%_
             _%slot159561%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159565%_
             _%checked?159562%_
             '4
             '#f
             '#f))
          (let ((__tmp161059
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
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj160990
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp161060 (cons _%id159560%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj160990
                      __tmp161060
                      '3
                      '#f
                      '#f))
                   __obj160990)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159565%_
             __tmp161059
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords159402%_
               _%signature159399159403%_
               _%self159405%_
               _%arity159406%_
               _%dispatch159407%_)
        (let* ((_%signature159409%_
                (if (eq? _%signature159399159403%_ absent-value)
                    '#f
                    _%signature159399159403%_))
               (_%self159412%_ _%self159405%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self159412%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159412%_
             _%arity159406%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159412%_
             _%dispatch159407%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159412%_
             _%signature159409%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords159427%_ . _%args159428%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords159427%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords159427%_
                  'signature:
                  absent-value))
               _%args159428%_)))
    (define gxc#!lambda:::init!
      (lambda _%args159400159434%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args159400159434%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords159242%_
               _%signature159239159243%_
               _%self159245%_
               _%clauses159246%_)
        (let* ((_%signature159248%_
                (if (eq? _%signature159239159243%_ absent-value)
                    '#f
                    _%signature159239159243%_))
               (_%self159251%_ _%self159245%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self159251%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159251%_
             _%signature159248%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159251%_
             _%clauses159246%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords159266%_ . _%args159267%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords159266%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords159266%_
                  'signature:
                  absent-value))
               _%args159267%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args159240159273%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args159240159273%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self159100%_ _%tab159101%_ _%dispatch159102%_)
        (let ((_%self159105%_ _%self159100%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self159105%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159105%_
             _%tab159101%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self159105%_
             _%dispatch159102%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self158962%_ _%keys158963%_ _%main158964%_)
        (let ((_%self158967%_ _%self158962%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self158967%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158967%_
             _%keys158963%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158967%_
             _%main158964%_
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
      (lambda (_%self158581%_ _%id158582%_)
        (let ((_%self158585%_ _%self158581%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158585%_
             _%id158582%_
             '1
             '#f
             '#f))
          (let ((__tmp161061
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
                     (##unchecked-structure-set!
                      __obj160991
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj160991
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj160991
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj160991)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self158585%_
             __tmp161061
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
      (lambda (_%klass158450%_)
        (let ((_%$e158452%_
               (##structure-ref _%klass158450%_ '11 gxc#!class::t '#f)))
          (if _%$e158452%_
              _%$e158452%_
              (let ((_%tab158456%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass158450%_
                 _%tab158456%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab158456%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass158441%_ _%method158442%_)
        (let ((_%tab158443158445%_
               (##structure-ref _%klass158441%_ '11 gxc#!class::t '#f)))
          (if _%tab158443158445%_
              (let ((_%tab158448%_ _%tab158443158445%_))
                (declare (not safe))
                (hash-get _%tab158448%_ _%method158442%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a158429%_ _%type-b158430%_)
        (if _%type-a158429%_
            (if _%type-b158430%_
                (let ((_%$e158432%_ (eq? _%type-a158429%_ _%type-b158430%_)))
                  (if _%$e158432%_
                      _%$e158432%_
                      (let ((_%$e158435%_
                             (eq? (##structure-ref
                                   _%type-b158430%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e158435%_
                            _%$e158435%_
                            (let ((_%$e158438%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a158429%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b158430%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e158438%_
                                  _%$e158438%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a158429%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b158430%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a158429%_
                                           _%type-b158430%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a158380%_ _%klass-b158381%_)
        (let ((_%$e158383%_
               (eq? (##structure-ref _%klass-a158380%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b158381%_ '1 gxc#!type::t '#f))))
          (if _%$e158383%_
              _%$e158383%_
              (let ((_%klass-id-b158386%_
                     (##structure-ref _%klass-b158381%_ '1 gxc#!type::t '#f))
                    (_%precedence-list158387%_
                     (##structure-ref _%klass-a158380%_ '3 gxc#!class::t '#f)))
                (let _%loop158389%_ ((_%rest158391%_
                                      _%precedence-list158387%_))
                  (let* ((_%rest158392158400%_ _%rest158391%_)
                         (_%else158394158408%_ (lambda () '#f))
                         (_%K158396158417%_
                          (lambda (_%rest158411%_ _%klass-name158412%_)
                            (let ((_%$e158414%_
                                   (eq? (let ((__tmp161062
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a158380%_
                                                            (cons _%klass-b158381%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name158412%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp161062
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b158386%_)))
                              (if _%$e158414%_
                                  _%$e158414%_
                                  (_%loop158389%_ _%rest158411%_))))))
                    (if (pair? _%rest158392158400%_)
                        (let ((_%hd158397158420%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest158392158400%_)))
                              (_%tl158398158422%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest158392158400%_))))
                          (let* ((_%klass-name158425%_ _%hd158397158420%_)
                                 (_%rest158427%_ _%tl158398158422%_))
                            (_%K158396158417%_
                             _%rest158427%_
                             _%klass-name158425%_)))
                        (_%else158394158408%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type158378%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type158378%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type158378%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc158367%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc158367%_ 'gxc#!procedure::t))
            (let ((_%proc158370%_ _%proc158367%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc158370%_ '2 '#f '#f))
                  (let ((__tmp161063
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc158370%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp161063 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@378.11-378.15"
               'contract:
               '!procedure?
               'value:
               _%proc158367%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym158349%_ _%type158350%_ _%local?158351%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type158350%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym158349%_
                     _%type158350%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym158349%_ '" " _%type158350%_))
        (let ((_%table158353%_
               (if _%local?158351%_
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
          (hash-put! _%table158353%_ _%sym158349%_ _%type158350%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym158358%_ _%type158359%_)
        (let ((_%local?158361%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym158358%_
           _%type158359%_
           _%local?158361%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g161064_
        (let ((_g161065_ (let () (declare (not safe)) (##length _g161064_))))
          (cond ((let () (declare (not safe)) (##fx= _g161065_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g161064_))
                ((let () (declare (not safe)) (##fx= _g161065_ 3))
                 (apply gxc#optimizer-declare-type!__% _g161064_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g161064_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym158343%_ _%type158344%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type158344%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym158343%_
                     _%type158344%_)))
        (let ((_%table158346%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp161066
                 (let () (declare (not safe)) (struct->list _%type158344%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym158343%_ '" " __tmp161066))
          (let ()
            (declare (not safe))
            (hash-put! _%table158346%_ _%sym158343%_ _%type158344%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table158346%_ _%type158344%_ _%sym158343%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym158338%_ _%type158339%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type158339%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym158338%_
                     _%type158339%_)))
        (let ((_%table158341%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table158341%_ _%sym158338%_))
              '#!void
              (begin
                (let ((__tmp161067
                       (let ()
                         (declare (not safe))
                         (struct->list _%type158339%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym158338%_
                   '" "
                   __tmp161067))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table158341%_ _%sym158338%_ _%type158339%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table158341%_
                   _%type158339%_
                   _%sym158338%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym158336%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym158336%_))
        (let ((__tmp161068
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp161068 _%sym158336%_))
        (let ((__tmp161069
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp161069 _%sym158336%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t158304%_
               _%method158305%_
               _%sym158306%_
               _%rebind?158307%_)
        (let ((__tmp161070
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp161070 _%sym158306%_ '#t))
        (let ((_%klass158309%_ (gxc#optimizer-lookup-class _%type-t158304%_)))
          (if _%klass158309%_
              (let* ((_%vtab158311%_ (gxc#!class-method-table _%klass158309%_))
                     (_%$e158313%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab158311%_ _%method158305%_))))
                (if _%$e158313%_
                    ((lambda (_%existing158316%_)
                       (if _%rebind?158307%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t158304%_
                                '" "
                                _%method158305%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab158311%_
                                _%method158305%_
                                _%sym158306%_)))
                           (if (eq? _%existing158316%_ _%sym158306%_)
                               '#!void
                               (let ((__tmp161071
                                      (cons 'bind-method!
                                            (cons _%type-t158304%_
                                                  (cons _%method158305%_
                                                        (cons _%sym158306%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp161071
                                  _%method158305%_)))))
                     _%$e158313%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t158304%_
                         '" "
                         _%method158305%_
                         '" => "
                         _%sym158306%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab158311%_
                         _%method158305%_
                         _%sym158306%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t158304%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t158325%_ _%method158326%_ _%sym158327%_)
        (let ((_%rebind?158329%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t158325%_
           _%method158326%_
           _%sym158327%_
           _%rebind?158329%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g161072_
        (let ((_g161073_ (let () (declare (not safe)) (##length _g161072_))))
          (cond ((let () (declare (not safe)) (##fx= _g161073_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g161072_))
                ((let () (declare (not safe)) (##fx= _g161073_ 4))
                 (apply gxc#optimizer-declare-method!__% _g161072_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g161072_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym158289%_)
        (let ((_%$e158291%_
               (let ((__tmp161074
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym158289%_ __tmp161074))))
          (if _%$e158291%_
              _%$e158291%_
              (let ((_%$e158300%_
                     (let ((_%ht158293158295%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht158293158295%_
                           (let ((_%ht158298%_ _%ht158293158295%_))
                             (declare (not safe))
                             (hash-get _%ht158298%_ _%sym158289%_))
                           '#f))))
                (if _%$e158300%_
                    _%$e158300%_
                    (let ((__tmp161075
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp161075 _%sym158289%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym158281%_)
        (let ((_%type158282158284%_ (gxc#optimizer-lookup-type _%sym158281%_)))
          (if _%type158282158284%_
              (let ((_%type158287%_ _%type158282158284%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type158287%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type158287%_ '1 '#f '#f)))
                    _%type158287%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym158277%_)
        (let ((_%table158279%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table158279%_ _%sym158277%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where158262%_ _%sym158263%_)
        (let ((_%$e158266%_ (gxc#optimizer-lookup-class _%sym158263%_)))
          (if _%$e158266%_
              ((lambda (_%g158268158270%_)
                 (let ((_%val158273%_ _%g158268158270%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val158273%_
                          'gxc#!class::t))
                       _%val158273%_
                       (let ()
                         (declare (not safe))
                         (error '"bad cast" gxc#!class::t _%val158273%_)))))
               _%$e158266%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where158262%_
                   _%sym158263%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass158260%_)
        (let ((__tmp161076
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp161076 _%klass158260%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t158257%_ _%method158258%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t158257%_)
         _%method158258%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym158255%_)
        (let ((__tmp161077
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp161077 _%sym158255%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e158137%_
                  (lambda (_%t158238%_)
                    (if (symbol? _%t158238%_)
                        (_%type-e158137%_
                         (gxc#optimizer-lookup-type _%t158238%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t158238%_
                               'gxc#!lambda::t))
                            (_%__lambda-type158139%_ _%t158238%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t158238%_
                                   'gxc#!kw-lambda::t))
                                (_%__kw-lambda-type158141%_ _%t158238%_)
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t158238%_
                                       'gxc#!kw-lambda-primary::t))
                                    (_%__kw-lambda-primary-type158143%_
                                     _%t158238%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t158238%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t158245%_ _%t158238%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t158245%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp161078
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t158245%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp161078
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t158238%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t158238%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%lambda-type158138%_
                  (lambda (_%t158226%_)
                    (let ((_%t158229%_ _%t158226%_))
                      (_%__lambda-type158139%_ _%t158229%_))))
                 (_%__lambda-type158139%_
                  (lambda (_%t158214%_)
                    (let ((_%t158217%_ _%t158214%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t158217%_ '4 '#f '#f))
                          (_%type-e158137%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t158217%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t158217%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp161079
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t158217%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp161079
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%kw-lambda-type158140%_
                  (lambda (_%t158202%_)
                    (let ((_%t158205%_ _%t158202%_))
                      (_%__kw-lambda-type158141%_ _%t158205%_))))
                 (_%__kw-lambda-type158141%_
                  (lambda (_%t158190%_)
                    (let ((_%t158193%_ _%t158190%_))
                      (_%type-e158137%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t158193%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type158142%_
                  (lambda (_%t158178%_)
                    (let ((_%t158181%_ _%t158178%_))
                      (_%__kw-lambda-primary-type158143%_ _%t158181%_))))
                 (_%__kw-lambda-primary-type158143%_
                  (lambda (_%t158164%_)
                    (let ((_%t158167%_ _%t158164%_))
                      (_%type-e158137%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t158167%_
                          '4
                          '#f
                          '#f)))))))
          (let* ((_%ht1158145%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2158147%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result158149%_
                  (if _%ht1158145%_
                      (let () (declare (not safe)) (hash->list _%ht1158145%_))
                      '()))
                 (_%result158151%_
                  (if _%ht2158147%_
                      (let ((__tmp161080
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2158147%_))))
                        (declare (not safe))
                        (__foldl1 cons _%result158149%_ __tmp161080))
                      _%result158149%_)))
            (for-each
             (lambda (_%p158154%_)
               (let* ((_%t158156%_ (cdr _%p158154%_))
                      (_%tr158158%_ (_%type-e158137%_ _%t158156%_)))
                 (set-cdr! _%p158154%_ _%tr158158%_)))
             _%result158151%_)
            (list-sort
             (lambda (_%a158161%_ _%b158162%_)
               (let ((__tmp161082 (symbol->string (car _%a158161%_)))
                     (__tmp161081 (symbol->string (car _%b158162%_))))
                 (declare (not safe))
                 (##string<? __tmp161082 __tmp161081)))
             _%result158151%_)))))))
