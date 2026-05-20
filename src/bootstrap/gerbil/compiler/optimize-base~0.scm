(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1779274774)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp210983 (list)) (__tmp210982 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp210983
         '(type classes ssxi methods)
         __tmp210982
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args210902%_
        (apply make-instance gxc#optimizer-info::t _%$args210902%_)))
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
      (lambda (_%self210889%_)
        (let ((_%self210892%_ _%self210889%_))
          (if (let ((__tmp210984
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self210892%_))))
                (declare (not safe))
                (##fx< '4 __tmp210984))
              (begin
                (let ((__tmp210985
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self210892%_
                   __tmp210985
                   '1
                   '#f
                   '#f))
                (let ((__tmp210986
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self210892%_
                   __tmp210986
                   '2
                   '#f
                   '#f))
                (let ((__tmp210987
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self210892%_
                   __tmp210987
                   '3
                   '#f
                   '#f))
                (let ((__tmp210988
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self210892%_
                   __tmp210988
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp210989
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self210892%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self210892%_
                       '4
                       __tmp210989))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp210991 (list))
            (__tmp210990
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp210991
         '(id)
         __tmp210990
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args210764%_
        (apply make-instance gxc#!type::t _%$args210764%_)))
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
      (let ((__tmp210993 (list gxc#!type::t))
            (__tmp210992 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp210993
         '()
         __tmp210992
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args210761%_
        (apply make-instance gxc#!abort::t _%$args210761%_)))
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
      (let ((__tmp210995 (list gxc#!type::t))
            (__tmp210994 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp210995
         '()
         __tmp210994
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args210758%_
        (apply make-instance gxc#!alias::t _%$args210758%_)))
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
      (let ((__tmp210997 (list))
            (__tmp210996
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp210997
         '(return effect arguments unchecked origin)
         __tmp210996
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args210755%_
        (apply make-instance gxc#!signature::t _%$args210755%_)))
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
      (let ((__tmp210999 (list gxc#!type::t))
            (__tmp210998
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp210999
         '(signature)
         __tmp210998
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
      (lambda (_%id210742%_ _%signature210743%_)
        (let ((_%signature210746%_ _%signature210743%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id210742%_ _%signature210746%_))))
    (define gxc#make-!procedure
      (lambda (_%id207567%_ _%signature207569%_)
        (if ((lambda (_%$obj207573%_)
               (or (not _%$obj207573%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj207573%_
                      'gxc#!signature::t))))
             _%signature207569%_)
            (let ((_%signature207580%_ _%signature207569%_))
              (gxc#__make-!procedure _%id207567%_ _%signature207580%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature207569%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj210721%_ _%signature210722%_)
        (let* ((_%$obj210725%_ _%$obj210721%_)
               (_%signature210733%_ _%signature210722%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj210725%_
           _%signature210733%_
           '2
           '#f
           '#f))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj207710%_ _%signature207712%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj207710%_ 'gxc#!procedure::t))
            (let ((_%$obj207716%_ _%$obj207710%_))
              (if ((lambda (_%$obj207725%_)
                     (or (not _%$obj207725%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj207725%_
                            'gxc#!signature::t))))
                   _%signature207712%_)
                  (let ((_%signature207732%_ _%signature207712%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj207716%_
                     _%signature207732%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature207712%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj207710%_)
              '#!void))))
    (define gxc#!class-meta::t
      (let ((__tmp211001 (list gxc#!type::t))
            (__tmp211000 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp211001
         '(class)
         __tmp211000
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args210718%_
        (apply make-instance gxc#!class-meta::t _%$args210718%_)))
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
      (let ((__tmp211003 (list gxc#!type::t))
            (__tmp211002
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
         __tmp211003
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp211002
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args210715%_
        (apply make-instance gxc#!class::t _%$args210715%_)))
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
      (let ((__tmp211005 (list gxc#!procedure::t))
            (__tmp211004 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp211005
         '()
         __tmp211004
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args210712%_
        (apply make-instance gxc#!predicate::t _%$args210712%_)))
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
      (let ((__tmp211007 (list gxc#!procedure::t))
            (__tmp211006 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp211007
         '()
         __tmp211006
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args210709%_
        (apply make-instance gxc#!constructor::t _%$args210709%_)))
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
      (let ((__tmp211009 (list gxc#!procedure::t))
            (__tmp211008 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp211009
         '(slot checked?)
         __tmp211008
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args210706%_
        (apply make-instance gxc#!accessor::t _%$args210706%_)))
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
      (let ((__tmp211011 (list gxc#!procedure::t))
            (__tmp211010 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp211011
         '(slot checked?)
         __tmp211010
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args210703%_
        (apply make-instance gxc#!mutator::t _%$args210703%_)))
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
      (let ((__tmp211013 (list gxc#!type::t))
            (__tmp211012 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp211013
         '(methods)
         __tmp211012
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args210700%_
        (apply make-instance gxc#!interface::t _%$args210700%_)))
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
      (let ((__tmp211015 (list gxc#!procedure::t))
            (__tmp211014
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp211015
         '(arity dispatch inline inline-typedecl)
         __tmp211014
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args210697%_
        (apply make-instance gxc#!lambda::t _%$args210697%_)))
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
      (let ((__tmp211017 (list gxc#!procedure::t))
            (__tmp211016 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp211017
         '(clauses)
         __tmp211016
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args210694%_
        (apply make-instance gxc#!case-lambda::t _%$args210694%_)))
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
      (let ((__tmp211019 (list gxc#!procedure::t))
            (__tmp211018
             (cons (cons 'struct: '#t) '((equal: table dispatch)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp211019
         '(table dispatch)
         __tmp211018
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args210691%_
        (apply make-instance gxc#!kw-lambda::t _%$args210691%_)))
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
      (let ((__tmp211021 (list gxc#!procedure::t))
            (__tmp211020 (cons (cons 'struct: '#t) '((equal: keys main)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp211021
         '(keys main)
         __tmp211020
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args210688%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args210688%_)))
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
      (let ((__tmp211022 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp211022
         '()
         '((equal:))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args210685%_
        (apply make-instance gxc#!primitive::t _%$args210685%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp211024 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp211023 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp211024
         '()
         __tmp211023
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args210682%_
        (apply make-instance gxc#!primitive-predicate::t _%$args210682%_)))
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
      (let ((__tmp211026 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp211025 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp211026
         '()
         __tmp211025
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args210679%_
        (apply make-instance gxc#!primitive-lambda::t _%$args210679%_)))
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
      (let ((__tmp211028 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp211027 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp211028
         '()
         __tmp211027
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args210676%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args210676%_)))
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
      (lambda (_%self210663%_)
        (let ((_%self210666%_ _%self210663%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self210666%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self210526%_ _%klass210527%_)
        (let ((_%self210530%_ _%self210526%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self210530%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210530%_
             _%klass210527%_
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
      (lambda (_%self210216%_
               _%id210217%_
               _%super210218%_
               _%slots210219%_
               _%ctor-method210220%_
               _%struct?210221%_
               _%final?210222%_
               _%system?210223%_
               _%metaclass210224%_)
        (let ((_%self210227%_ _%self210216%_))
          (let _%lp210238%_ ((_%rest210240%_ _%super210218%_))
            (let* ((_%rest210241210249%_ _%rest210240%_)
                   (_%else210243210257%_ (lambda () '#!void))
                   (_%K210245210263%_
                    (lambda (_%rest210260%_ _%super-id210261%_)
                      (if (let ((__tmp211029
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id210217%_ '()))
                                  _%super-id210261%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp211029 '8 '#f '#f))
                          (let ((__tmp211030
                                 (cons '!class (cons _%id210217%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp211030
                             _%super-id210261%_))
                          '#!void)
                      (_%lp210238%_ _%rest210260%_))))
              (if (pair? _%rest210241210249%_)
                  (let ((_%hd210246210266%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest210241210249%_)))
                        (_%tl210247210268%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest210241210249%_))))
                    (let* ((_%super-id210271%_ _%hd210246210266%_)
                           (_%rest210273%_ _%tl210247210268%_))
                      (_%K210245210263%_ _%rest210273%_ _%super-id210271%_)))
                  '#!void)))
          (let* ((_%ctor-method210324%_
                  (let ((_%$e210275%_ _%ctor-method210220%_))
                    (if _%$e210275%_
                        _%$e210275%_
                        (let _%lp210278%_ ((_%rest210280%_ _%super210218%_)
                                           (_%method210281%_ '#f))
                          (let* ((_%rest210282210290%_ _%rest210280%_)
                                 (_%else210284210298%_
                                  (lambda () _%method210281%_))
                                 (_%K210286210312%_
                                  (lambda (_%rest210301%_ _%super-id210302%_)
                                    (let* ((_%klass210304%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id210217%_ '()))
                                             _%super-id210302%_))
                                           (_%$e210306%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass210304%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e210306%_
                                          ((lambda (_%ctor-method210309%_)
                                             (if _%method210281%_
                                                 (if (eq? _%ctor-method210309%_
                                                          _%method210281%_)
                                                     (_%lp210278%_
                                                      _%rest210301%_
                                                      _%ctor-method210309%_)
                                                     (let ((__tmp211031
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id210217%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp211031
                _%method210281%_
                _%ctor-method210309%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp210278%_
                                                  _%rest210301%_
                                                  _%ctor-method210309%_)))
                                           _%$e210306%_)
                                          (_%lp210278%_
                                           _%rest210301%_
                                           _%method210281%_))))))
                            (if (pair? _%rest210282210290%_)
                                (let ((_%hd210287210315%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest210282210290%_)))
                                      (_%tl210288210317%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest210282210290%_))))
                                  (let* ((_%super-id210320%_
                                          _%hd210287210315%_)
                                         (_%rest210322%_ _%tl210288210317%_))
                                    (_%K210286210312%_
                                     _%rest210322%_
                                     _%super-id210320%_)))
                                (_%else210284210298%_)))))))
                 (_g211032_
                  (let ((__tmp211036
                         (lambda (_%klass-id210326%_)
                           (cons _%klass-id210326%_
                                 (let ((__tmp211037
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id210217%_ '()))
                                         _%klass-id210326%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp211037
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp211034
                         (lambda (_%klass-id210328%_)
                           (let ((__tmp211035
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id210217%_ '()))
                                   _%klass-id210328%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp211035
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp211036
                     __tmp211034
                     eq?
                     identity
                     '()
                     _%super210218%_))))
            (begin
              (let ((_g211033_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g211032_)
                           (##values-length _g211032_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g211033_ 2)))
                    (error "Context expects 2 values" _g211033_)))
              (let ((_%precedence-list210330%_
                     (let () (declare (not safe)) (##values-ref _g211032_ 0)))
                    (_%base-struct210331%_
                     (let () (declare (not safe)) (##values-ref _g211032_ 1))))
                (let* ((_%precedence-list210375%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id210217%_ '(t object class)))
                            _%precedence-list210330%_
                            (if (memq 'object::t _%precedence-list210330%_)
                                _%precedence-list210330%_
                                (if _%system?210223%_
                                    (if (memq 't::t _%precedence-list210330%_)
                                        _%precedence-list210330%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list210330%_
                                           '(t::t))))
                                    (let _%loop210337%_ ((_%tail210339%_
                                                          _%precedence-list210330%_)
                                                         (_%head210340%_ '()))
                                      (let* ((_%tail210341210349%_
                                              _%tail210339%_)
                                             (_%else210343210357%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (foldl__0
                                                   cons
                                                   '(object::t t::t)
                                                   _%head210340%_))))
                                             (_%K210345210363%_
                                              (lambda (_%rest210360%_
                                                       _%hd210361%_)
                                                (if (eq? _%hd210361%_ 't::t)
                                                    (let ((__tmp211038
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail210339%_)))
              (declare (not safe))
              (foldl__0 cons __tmp211038 _%head210340%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop210337%_
                                                     _%rest210360%_
                                                     (cons _%hd210361%_
                                                           _%head210340%_))))))
                                        (if (pair? _%tail210341210349%_)
                                            (let ((_%hd210346210366%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail210341210349%_)))
                                                  (_%tl210347210368%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail210341210349%_))))
                                              (let* ((_%hd210371%_
                                                      _%hd210346210366%_)
                                                     (_%rest210373%_
                                                      _%tl210347210368%_))
                                                (_%K210345210363%_
                                                 _%rest210373%_
                                                 _%hd210371%_)))
                                            (_%else210343210357%_))))))))
                       (_%fields210377%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id210217%_ '()))
                         _%precedence-list210375%_
                         _%slots210219%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self210227%_
                     _%id210217%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self210227%_
                     _%super210218%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self210227%_
                     _%precedence-list210375%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self210227%_
                     _%slots210219%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self210227%_
                     _%fields210377%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self210227%_
                     _%ctor-method210324%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self210227%_
                     _%struct?210221%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self210227%_
                     _%final?210222%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self210227%_
                     _%metaclass210224%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self210380%_
               _%id210381%_
               _%super210382%_
               _%precedence-list210383%_
               _%slots210384%_
               _%fields210385%_
               _%constructor210386%_
               _%struct?210387%_
               _%final?210388%_
               _%system?210389%_
               _%metaclass210390%_
               _%methods210391%_)
        (let ((_%self210394%_ _%self210380%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210394%_
             _%id210381%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210394%_
             _%super210382%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210394%_
             _%precedence-list210383%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210394%_
             _%slots210384%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210394%_
             _%fields210385%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210394%_
             _%constructor210386%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210394%_
             _%struct?210387%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210394%_
             _%final?210388%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210394%_
             _%metaclass210390%_
             '10
             '#f
             '#f))
          (if _%methods210391%_
              (let ((__tmp211039
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods210391%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self210394%_
                 __tmp211039
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g211040_
        (let ((_g211041_ (let () (declare (not safe)) (##length _g211040_))))
          (cond ((let () (declare (not safe)) (##fx= _g211041_ 9))
                 (apply gxc#!class:::init!__0 _g211040_))
                ((let () (declare (not safe)) (##fx= _g211041_ 12))
                 (apply gxc#!class:::init!__1 _g211040_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g211040_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where210085%_
               _%precedence-list210086%_
               _%direct-slots210087%_)
        (let ((__tmp211043
               (lambda (_%mixin210089%_)
                 (let ((__tmp211044
                        (gxc#optimizer-resolve-class
                         _%where210085%_
                         _%mixin210089%_)))
                   (declare (not safe))
                   (##unchecked-structure-ref __tmp211044 '5 '#f '#f))))
              (__tmp211042
               (lambda (_%slot-list210091%_ _%slot-table210092%_)
                 (cdr _%slot-list210091%_))))
          (declare (not safe))
          (c4-compute-class-slots
           _%precedence-list210086%_
           _%direct-slots210087%_
           __tmp211043
           __tmp211042))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass210044%_ _%slot210045%_)
        (let _%lp210047%_ ((_%rest210049%_
                            (##structure-ref
                             _%klass210044%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset210050%_ '1))
          (let* ((_%rest210051210059%_ _%rest210049%_)
                 (_%else210053210067%_
                  (lambda ()
                    (let ((__tmp211046
                           (##structure-ref
                            _%klass210044%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp211045
                           (##structure-ref
                            _%klass210044%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp211046
                       __tmp211045
                       _%slot210045%_))))
                 (_%K210055210073%_
                  (lambda (_%rest210070%_ _%s210071%_)
                    (if (eq? _%s210071%_ _%slot210045%_)
                        _%offset210050%_
                        (_%lp210047%_
                         _%rest210070%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset210050%_ '1)))))))
            (if (pair? _%rest210051210059%_)
                (let ((_%hd210056210076%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest210051210059%_)))
                      (_%tl210057210078%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest210051210059%_))))
                  (let* ((_%s210081%_ _%hd210056210076%_)
                         (_%rest210083%_ _%tl210057210078%_))
                    (_%K210055210073%_ _%rest210083%_ _%s210081%_)))
                (_%else210053210067%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass210002%_ _%slot210003%_)
        (if (gxc#!class-struct-slot? _%klass210002%_ _%slot210003%_)
            _%klass210002%_
            (let _%lp210005%_ ((_%rest210007%_
                                (##structure-ref
                                 _%klass210002%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest210008210016%_ _%rest210007%_)
                     (_%else210010210024%_ (lambda () '#f))
                     (_%K210012210032%_
                      (lambda (_%rest210027%_ _%super210028%_)
                        (let ((_%super-class210030%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass210002%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot210003%_ '())))
                                _%super210028%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class210030%_
                               _%slot210003%_)
                              _%super-class210030%_
                              (_%lp210005%_ _%rest210027%_))))))
                (if (pair? _%rest210008210016%_)
                    (let ((_%hd210013210035%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest210008210016%_)))
                          (_%tl210014210037%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest210008210016%_))))
                      (let* ((_%super210040%_ _%hd210013210035%_)
                             (_%rest210042%_ _%tl210014210037%_))
                        (_%K210012210032%_ _%rest210042%_ _%super210040%_)))
                    (_%else210010210024%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass209999%_ _%slot210000%_)
        (if (##structure-ref _%klass209999%_ '7 gxc#!class::t '#f)
            (memq _%slot210000%_
                  (##structure-ref _%klass209999%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self209984%_ _%id209985%_)
        (let ((_%self209988%_ _%self209984%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209988%_
             _%id209985%_
             '1
             '#f
             '#f))
          (let ((__tmp211047
                 (let ((__obj210977
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
                      __obj210977
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210977
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210977
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj210977)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209988%_
             __tmp211047
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self209847%_ _%id209848%_)
        (let ((_%self209851%_ _%self209847%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209851%_
             _%id209848%_
             '1
             '#f
             '#f))
          (let ((__tmp211048
                 (let ((__obj210978
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
                      __obj210978
                      _%id209848%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210978
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj210978)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209851%_
             __tmp211048
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
      (lambda (_%self209708%_ _%id209709%_ _%slot209710%_ _%checked?209711%_)
        (let ((_%self209714%_ _%self209708%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209714%_
             _%id209709%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209714%_
             _%slot209710%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209714%_
             _%checked?209711%_
             '4
             '#f
             '#f))
          (let ((__tmp211049
                 (let ((__obj210979
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
                     (##unchecked-structure-set! __obj210979 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210979
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp211050 (cons _%id209709%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210979
                      __tmp211050
                      '3
                      '#f
                      '#f))
                   __obj210979)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209714%_
             __tmp211049
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self209569%_ _%id209570%_ _%slot209571%_ _%checked?209572%_)
        (let ((_%self209575%_ _%self209569%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209575%_
             _%id209570%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209575%_
             _%slot209571%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209575%_
             _%checked?209572%_
             '4
             '#f
             '#f))
          (let ((__tmp211051
                 (let ((__obj210980
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
                      __obj210980
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210980
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp211052 (cons _%id209570%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210980
                      __tmp211052
                      '3
                      '#f
                      '#f))
                   __obj210980)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209575%_
             __tmp211051
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords209413%_
               _%signature209410209414%_
               _%self209415%_
               _%arity209416%_
               _%dispatch209417%_)
        (let* ((_%signature209419%_
                (if (eq? _%signature209410209414%_ absent-value)
                    '#f
                    _%signature209410209414%_))
               (_%self209422%_ _%self209415%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self209422%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209422%_
             _%arity209416%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209422%_
             _%dispatch209417%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209422%_
             _%signature209419%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords209437%_ . _%args209438%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords209437%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords209437%_
                  'signature:
                  absent-value))
               _%args209438%_)))
    (define gxc#!lambda:::init!
      (lambda _%args209411209444%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args209411209444%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords209254%_
               _%signature209251209255%_
               _%self209256%_
               _%clauses209257%_)
        (let* ((_%signature209259%_
                (if (eq? _%signature209251209255%_ absent-value)
                    '#f
                    _%signature209251209255%_))
               (_%self209262%_ _%self209256%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self209262%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209262%_
             _%signature209259%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209262%_
             _%clauses209257%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords209277%_ . _%args209278%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords209277%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords209277%_
                  'signature:
                  absent-value))
               _%args209278%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args209252209284%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args209252209284%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self209112%_ _%tab209113%_ _%dispatch209114%_)
        (let ((_%self209117%_ _%self209112%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self209117%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209117%_
             _%tab209113%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209117%_
             _%dispatch209114%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self208974%_ _%keys208975%_ _%main208976%_)
        (let ((_%self208979%_ _%self208974%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self208979%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208979%_
             _%keys208975%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208979%_
             _%main208976%_
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
      (lambda (_%self208593%_ _%id208594%_)
        (let ((_%self208597%_ _%self208593%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208597%_
             _%id208594%_
             '1
             '#f
             '#f))
          (let ((__tmp211053
                 (let ((__obj210981
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
                      __obj210981
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210981
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210981
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj210981)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208597%_
             __tmp211053
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
      (lambda (_%klass208463%_)
        (let ((_%$e208465%_
               (##structure-ref _%klass208463%_ '11 gxc#!class::t '#f)))
          (if _%$e208465%_
              _%$e208465%_
              (let ((_%tab208469%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass208463%_
                 _%tab208469%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab208469%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass208455%_ _%method208456%_)
        (let ((_%tab208457208459%_
               (##structure-ref _%klass208455%_ '11 gxc#!class::t '#f)))
          (if _%tab208457208459%_
              (let ((_%tab208461%_ _%tab208457208459%_))
                (declare (not safe))
                (hash-get _%tab208461%_ _%method208456%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a208440%_ _%type-b208441%_)
        (if _%type-a208440%_
            (if _%type-b208441%_
                (let ((_%$e208443%_ (eq? _%type-a208440%_ _%type-b208441%_)))
                  (if _%$e208443%_
                      _%$e208443%_
                      (let ((_%$e208446%_
                             (eq? (##structure-ref
                                   _%type-b208441%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e208446%_
                            _%$e208446%_
                            (let ((_%$e208449%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a208440%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b208441%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e208449%_
                                  _%$e208449%_
                                  (let ((_%$e208452%_
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-instance-of?
                                                _%type-a208440%_
                                                'gxc#!class::t))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-instance-of?
                                                    _%type-b208441%_
                                                    'gxc#!class::t))
                                                 (gxc#!class-subclass?
                                                  _%type-a208440%_
                                                  _%type-b208441%_)
                                                 '#f)
                                             '#f)))
                                    (if _%$e208452%_
                                        _%$e208452%_
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%type-a208440%_
                                               'gxc#!interface::t))
                                            (eq? (##structure-ref
                                                  _%type-b208441%_
                                                  '1
                                                  gxc#!type::t
                                                  '#f)
                                                 'interface-descriptor::t)
                                            '#f)))))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a208391%_ _%klass-b208392%_)
        (let ((_%$e208394%_
               (eq? (##structure-ref _%klass-a208391%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b208392%_ '1 gxc#!type::t '#f))))
          (if _%$e208394%_
              _%$e208394%_
              (let ((_%klass-id-b208397%_
                     (##structure-ref _%klass-b208392%_ '1 gxc#!type::t '#f))
                    (_%precedence-list208398%_
                     (##structure-ref _%klass-a208391%_ '3 gxc#!class::t '#f)))
                (let _%loop208400%_ ((_%rest208402%_
                                      _%precedence-list208398%_))
                  (let* ((_%rest208403208411%_ _%rest208402%_)
                         (_%else208405208419%_ (lambda () '#f))
                         (_%K208407208428%_
                          (lambda (_%rest208422%_ _%klass-name208423%_)
                            (let ((_%$e208425%_
                                   (eq? (let ((__tmp211054
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a208391%_
                                                            (cons _%klass-b208392%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name208423%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp211054
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b208397%_)))
                              (if _%$e208425%_
                                  _%$e208425%_
                                  (_%loop208400%_ _%rest208422%_))))))
                    (if (pair? _%rest208403208411%_)
                        (let ((_%hd208408208431%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest208403208411%_)))
                              (_%tl208409208433%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest208403208411%_))))
                          (let* ((_%klass-name208436%_ _%hd208408208431%_)
                                 (_%rest208438%_ _%tl208409208433%_))
                            (_%K208407208428%_
                             _%rest208438%_
                             _%klass-name208436%_)))
                        (_%else208405208419%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type208389%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type208389%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type208389%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc208378%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc208378%_ 'gxc#!procedure::t))
            (let ((_%proc208381%_ _%proc208378%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc208381%_ '2 '#f '#f))
                  (let ((__tmp211055
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc208381%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp211055 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@365.11-365.15"
               'contract:
               '!procedure?
               'value:
               _%proc208378%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym208360%_ _%type208361%_ _%local?208362%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type208361%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym208360%_
                     _%type208361%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym208360%_ '" " _%type208361%_))
        (let ((_%table208364%_
               (if _%local?208362%_
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
          (hash-put! _%table208364%_ _%sym208360%_ _%type208361%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym208369%_ _%type208370%_)
        (let ((_%local?208372%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym208369%_
           _%type208370%_
           _%local?208372%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g211056_
        (let ((_g211057_ (let () (declare (not safe)) (##length _g211056_))))
          (cond ((let () (declare (not safe)) (##fx= _g211057_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g211056_))
                ((let () (declare (not safe)) (##fx= _g211057_ 3))
                 (apply gxc#optimizer-declare-type!__% _g211056_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g211056_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym208354%_ _%type208355%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type208355%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym208354%_
                     _%type208355%_)))
        (let ((_%table208357%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp211058
                 (let () (declare (not safe)) (struct->list _%type208355%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym208354%_ '" " __tmp211058))
          (let ()
            (declare (not safe))
            (hash-put! _%table208357%_ _%sym208354%_ _%type208355%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table208357%_ _%type208355%_ _%sym208354%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym208349%_ _%type208350%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type208350%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym208349%_
                     _%type208350%_)))
        (let ((_%table208352%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table208352%_ _%sym208349%_))
              '#!void
              (begin
                (let ((__tmp211059
                       (let ()
                         (declare (not safe))
                         (struct->list _%type208350%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym208349%_
                   '" "
                   __tmp211059))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table208352%_ _%sym208349%_ _%type208350%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table208352%_
                   _%type208350%_
                   _%sym208349%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym208347%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym208347%_))
        (let ((__tmp211060
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp211060 _%sym208347%_))
        (let ((__tmp211061
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp211061 _%sym208347%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t208315%_
               _%method208316%_
               _%sym208317%_
               _%rebind?208318%_)
        (let ((__tmp211062
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp211062 _%sym208317%_ '#t))
        (let ((_%klass208320%_ (gxc#optimizer-lookup-class _%type-t208315%_)))
          (if _%klass208320%_
              (let* ((_%vtab208322%_ (gxc#!class-method-table _%klass208320%_))
                     (_%$e208324%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab208322%_ _%method208316%_))))
                (if _%$e208324%_
                    ((lambda (_%existing208327%_)
                       (if _%rebind?208318%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t208315%_
                                '" "
                                _%method208316%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab208322%_
                                _%method208316%_
                                _%sym208317%_)))
                           (if (eq? _%existing208327%_ _%sym208317%_)
                               '#!void
                               (let ((__tmp211063
                                      (cons 'bind-method!
                                            (cons _%type-t208315%_
                                                  (cons _%method208316%_
                                                        (cons _%sym208317%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp211063
                                  _%method208316%_)))))
                     _%$e208324%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t208315%_
                         '" "
                         _%method208316%_
                         '" => "
                         _%sym208317%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab208322%_
                         _%method208316%_
                         _%sym208317%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t208315%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t208336%_ _%method208337%_ _%sym208338%_)
        (let ((_%rebind?208340%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t208336%_
           _%method208337%_
           _%sym208338%_
           _%rebind?208340%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g211064_
        (let ((_g211065_ (let () (declare (not safe)) (##length _g211064_))))
          (cond ((let () (declare (not safe)) (##fx= _g211065_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g211064_))
                ((let () (declare (not safe)) (##fx= _g211065_ 4))
                 (apply gxc#optimizer-declare-method!__% _g211064_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g211064_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym208301%_)
        (let ((_%$e208303%_
               (let ((__tmp211066
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym208301%_ __tmp211066))))
          (if _%$e208303%_
              _%$e208303%_
              (let ((_%$e208311%_
                     (let ((_%ht208305208307%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht208305208307%_
                           (let ((_%ht208309%_ _%ht208305208307%_))
                             (declare (not safe))
                             (hash-get _%ht208309%_ _%sym208301%_))
                           '#f))))
                (if _%$e208311%_
                    _%$e208311%_
                    (let ((__tmp211067
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp211067 _%sym208301%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym208294%_)
        (let ((_%type208295208297%_ (gxc#optimizer-lookup-type _%sym208294%_)))
          (if _%type208295208297%_
              (let ((_%type208299%_ _%type208295208297%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type208299%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type208299%_ '1 '#f '#f)))
                    _%type208299%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym208290%_)
        (let ((_%table208292%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table208292%_ _%sym208290%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where208275%_ _%sym208276%_)
        (let ((_%$e208279%_ (gxc#optimizer-lookup-class _%sym208276%_)))
          (if _%$e208279%_
              ((lambda (_%g208281208283%_)
                 (let ((_%val208286%_ _%g208281208283%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val208286%_
                          'gxc#!class::t))
                       _%val208286%_
                       (begin
                         (raise-contract-violation-error
                          '"contract violation"
                          'context:
                          'gerbil/compiler/optimize-base
                          'contract:
                          '(!class? val)
                          'value:
                          _%val208286%_)
                         '#!void))))
               _%$e208279%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where208275%_
                   _%sym208276%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass208273%_)
        (let ((__tmp211068
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp211068 _%klass208273%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t208270%_ _%method208271%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t208270%_)
         _%method208271%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym208268%_)
        (let ((__tmp211069
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp211069 _%sym208268%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e207743%_
                  (lambda (_%t208209%_)
                    (if (symbol? _%t208209%_)
                        (_%type-e207743%_
                         (gxc#optimizer-lookup-type _%t208209%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t208209%_
                               'gxc#!lambda::t))
                            (let* ((_%t208213%_ _%t208209%_)
                                   (_%t208217%_ _%t208213%_))
                              (_%__lambda-type207869%_ _%t208217%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t208209%_
                                   'gxc#!kw-lambda::t))
                                (let* ((_%t208229%_ _%t208209%_)
                                       (_%t208233%_ _%t208229%_))
                                  (_%__kw-lambda-type207992%_ _%t208233%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t208209%_
                                       'gxc#!kw-lambda-primary::t))
                                    (let* ((_%t208244%_ _%t208209%_)
                                           (_%t208248%_ _%t208244%_))
                                      (_%__kw-lambda-primary-type208115%_
                                       _%t208248%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t208209%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t208259%_ _%t208209%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t208259%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp211070
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t208259%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp211070
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t208209%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t208209%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%__lambda-type207869%_
                  (lambda (_%t208197%_)
                    (let ((_%t208200%_ _%t208197%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t208200%_ '4 '#f '#f))
                          (_%type-e207743%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t208200%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t208200%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp211071
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t208200%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp211071
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%lambda-type207870%_
                  (lambda (_%t208185%_)
                    (let ((_%t208188%_ _%t208185%_))
                      (_%__lambda-type207869%_ _%t208188%_))))
                 (_%__kw-lambda-type207992%_
                  (lambda (_%t208173%_)
                    (let ((_%t208176%_ _%t208173%_))
                      (_%type-e207743%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t208176%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-type207993%_
                  (lambda (_%t208161%_)
                    (let ((_%t208164%_ _%t208161%_))
                      (_%__kw-lambda-type207992%_ _%t208164%_))))
                 (_%__kw-lambda-primary-type208115%_
                  (lambda (_%t208149%_)
                    (let ((_%t208152%_ _%t208149%_))
                      (_%type-e207743%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t208152%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type208116%_
                  (lambda (_%t208137%_)
                    (let ((_%t208140%_ _%t208137%_))
                      (_%__kw-lambda-primary-type208115%_ _%t208140%_)))))
          (let* ((_%ht1208118%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2208120%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result208122%_
                  (if _%ht1208118%_
                      (let () (declare (not safe)) (hash->list _%ht1208118%_))
                      '()))
                 (_%result208124%_
                  (if _%ht2208120%_
                      (let ((__tmp211072
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2208120%_))))
                        (declare (not safe))
                        (foldl__0 cons _%result208122%_ __tmp211072))
                      _%result208122%_)))
            (for-each
             (lambda (_%p208127%_)
               (let* ((_%t208129%_ (cdr _%p208127%_))
                      (_%tr208131%_ (_%type-e207743%_ _%t208129%_)))
                 (set-cdr! _%p208127%_ _%tr208131%_)))
             _%result208124%_)
            (list-sort
             (lambda (_%a208134%_ _%b208135%_)
               (let ((__tmp211074 (symbol->string (car _%a208134%_)))
                     (__tmp211073 (symbol->string (car _%b208135%_))))
                 (declare (not safe))
                 (##string<? __tmp211074 __tmp211073)))
             _%result208124%_)))))))
