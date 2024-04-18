(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1713454412)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp150972 (list)) (__tmp150971 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp150972
         '(type classes ssxi methods)
         __tmp150971
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args150943%_
        (apply make-instance gxc#optimizer-info::t _%$args150943%_)))
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
      (lambda (_%self148084150928%_)
        (let* ((_%self150931%_ _%self148084150928%_)
               (_%self150933%_ _%self150931%_))
          (if (let ((__tmp150973
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self150933%_))))
                (declare (not safe))
                (##fx< '4 __tmp150973))
              (begin
                (let ((__tmp150974
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self150933%_
                   __tmp150974
                   '1
                   '#f
                   '#f))
                (let ((__tmp150975
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self150933%_
                   __tmp150975
                   '2
                   '#f
                   '#f))
                (let ((__tmp150976
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self150933%_
                   __tmp150976
                   '3
                   '#f
                   '#f))
                (let ((__tmp150977
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self150933%_
                   __tmp150977
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp150978
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self150933%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self150933%_
                       '4
                       __tmp150978))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp150980 (list))
            (__tmp150979
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp150980
         '(id)
         __tmp150979
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args150803%_
        (apply make-instance gxc#!type::t _%$args150803%_)))
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
      (let ((__tmp150982 (list gxc#!type::t))
            (__tmp150981 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp150982
         '()
         __tmp150981
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args150800%_
        (apply make-instance gxc#!abort::t _%$args150800%_)))
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
      (let ((__tmp150984 (list gxc#!type::t))
            (__tmp150983 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp150984
         '()
         __tmp150983
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args150797%_
        (apply make-instance gxc#!alias::t _%$args150797%_)))
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
      (let ((__tmp150986 (list))
            (__tmp150985
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp150986
         '(return effect arguments unchecked origin)
         __tmp150985
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args150794%_
        (apply make-instance gxc#!signature::t _%$args150794%_)))
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
      (let ((__tmp150988 (list gxc#!type::t))
            (__tmp150987
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp150988
         '(signature)
         __tmp150987
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
      (lambda (_%id150773%_ _%signature150774%_)
        (if ((lambda (_%$obj150777%_)
               (or (not _%$obj150777%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj150777%_
                      'gxc#!signature::t))))
             _%signature150774%_)
            (let ((_%signature150784%_ _%signature150774%_))
              (gxc#__make-!procedure _%id150773%_ _%signature150784%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature150774%_)
              '#!void))))
    (define gxc#__make-!procedure
      (lambda (_%id150759%_ _%signature150761%_)
        (let ((_%signature150764%_ _%signature150761%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id150759%_ _%signature150764%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj150728%_ _%signature150729%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj150728%_ 'gxc#!procedure::t))
            (let ((_%$obj150733%_ _%$obj150728%_))
              (if ((lambda (_%$obj150742%_)
                     (or (not _%$obj150742%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj150742%_
                            'gxc#!signature::t))))
                   _%signature150729%_)
                  (let ((_%signature150749%_ _%signature150729%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj150733%_
                     _%signature150749%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature150729%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj150728%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj150705%_ _%signature150707%_)
        (let* ((_%$obj150711%_ _%$obj150705%_)
               (_%signature150719%_ _%signature150707%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj150711%_
           _%signature150719%_
           '2
           '#f
           '#f))))
    (define gxc#!class-meta::t
      (let ((__tmp150990 (list gxc#!type::t))
            (__tmp150989 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp150990
         '(class)
         __tmp150989
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args150702%_
        (apply make-instance gxc#!class-meta::t _%$args150702%_)))
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
      (let ((__tmp150992 (list gxc#!type::t))
            (__tmp150991
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
         __tmp150992
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp150991
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args150699%_
        (apply make-instance gxc#!class::t _%$args150699%_)))
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
      (let ((__tmp150994 (list gxc#!procedure::t))
            (__tmp150993 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp150994
         '()
         __tmp150993
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args150696%_
        (apply make-instance gxc#!predicate::t _%$args150696%_)))
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
      (let ((__tmp150996 (list gxc#!procedure::t))
            (__tmp150995 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp150996
         '()
         __tmp150995
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args150693%_
        (apply make-instance gxc#!constructor::t _%$args150693%_)))
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
      (let ((__tmp150998 (list gxc#!procedure::t))
            (__tmp150997 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp150998
         '(slot checked?)
         __tmp150997
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args150690%_
        (apply make-instance gxc#!accessor::t _%$args150690%_)))
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
      (let ((__tmp151000 (list gxc#!procedure::t))
            (__tmp150999 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp151000
         '(slot checked?)
         __tmp150999
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args150687%_
        (apply make-instance gxc#!mutator::t _%$args150687%_)))
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
      (let ((__tmp151002 (list gxc#!type::t))
            (__tmp151001 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp151002
         '(methods)
         __tmp151001
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args150684%_
        (apply make-instance gxc#!interface::t _%$args150684%_)))
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
      (let ((__tmp151004 (list gxc#!procedure::t))
            (__tmp151003
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp151004
         '(arity dispatch inline inline-typedecl)
         __tmp151003
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args150681%_
        (apply make-instance gxc#!lambda::t _%$args150681%_)))
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
      (let ((__tmp151006 (list gxc#!procedure::t))
            (__tmp151005 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp151006
         '(clauses)
         __tmp151005
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args150678%_
        (apply make-instance gxc#!case-lambda::t _%$args150678%_)))
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
      (let ((__tmp151008 (list gxc#!procedure::t))
            (__tmp151007
             (cons (cons 'struct: '#t) '((equal: table dispatch)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp151008
         '(table dispatch)
         __tmp151007
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args150675%_
        (apply make-instance gxc#!kw-lambda::t _%$args150675%_)))
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
      (let ((__tmp151010 (list gxc#!procedure::t))
            (__tmp151009 (cons (cons 'struct: '#t) '((equal: keys main)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp151010
         '(keys main)
         __tmp151009
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args150672%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args150672%_)))
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
      (let ((__tmp151011 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp151011
         '()
         '((equal:))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args150669%_
        (apply make-instance gxc#!primitive::t _%$args150669%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp151013 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp151012 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp151013
         '()
         __tmp151012
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args150666%_
        (apply make-instance gxc#!primitive-predicate::t _%$args150666%_)))
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
      (let ((__tmp151015 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp151014 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp151015
         '()
         __tmp151014
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args150663%_
        (apply make-instance gxc#!primitive-lambda::t _%$args150663%_)))
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
      (let ((__tmp151017 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp151016 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp151017
         '()
         __tmp151016
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args150660%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args150660%_)))
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
      (lambda (_%self148085150645%_)
        (let* ((_%self150648%_ _%self148085150645%_)
               (_%self150650%_ _%self150648%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self150650%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self148086150507%_ _%klass150509%_)
        (let* ((_%self150511%_ _%self148086150507%_)
               (_%self150513%_ _%self150511%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self150513%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150513%_
             _%klass150509%_
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
      (lambda (_%self148087150195%_
               _%id150197%_
               _%super150198%_
               _%slots150199%_
               _%ctor-method150200%_
               _%struct?150201%_
               _%final?150202%_
               _%system?150203%_
               _%metaclass150204%_)
        (let* ((_%self150206%_ _%self148087150195%_)
               (_%self150208%_ _%self150206%_))
          (let _%lp150218%_ ((_%rest150220%_ _%super150198%_))
            (let* ((_%rest150221150229%_ _%rest150220%_)
                   (_%else150223150237%_ (lambda () '#!void))
                   (_%K150225150243%_
                    (lambda (_%rest150240%_ _%super-id150241%_)
                      (if (let ((__tmp151018
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id150197%_ '()))
                                  _%super-id150241%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp151018 '8 '#f '#f))
                          (let ((__tmp151019
                                 (cons '!class (cons _%id150197%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp151019
                             _%super-id150241%_))
                          '#!void)
                      (_%lp150218%_ _%rest150240%_))))
              (if (let () (declare (not safe)) (##pair? _%rest150221150229%_))
                  (let ((_%hd150226150246%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest150221150229%_)))
                        (_%tl150227150248%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest150221150229%_))))
                    (let* ((_%super-id150251%_ _%hd150226150246%_)
                           (_%rest150253%_ _%tl150227150248%_))
                      (_%K150225150243%_ _%rest150253%_ _%super-id150251%_)))
                  '#!void)))
          (let* ((_%ctor-method150304%_
                  (let ((_%$e150255%_ _%ctor-method150200%_))
                    (if _%$e150255%_
                        _%$e150255%_
                        (let _%lp150258%_ ((_%rest150260%_ _%super150198%_)
                                           (_%method150261%_ '#f))
                          (let* ((_%rest150262150270%_ _%rest150260%_)
                                 (_%else150264150278%_
                                  (lambda () _%method150261%_))
                                 (_%K150266150292%_
                                  (lambda (_%rest150281%_ _%super-id150282%_)
                                    (let* ((_%klass150284%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id150197%_ '()))
                                             _%super-id150282%_))
                                           (_%$e150286%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass150284%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e150286%_
                                          ((lambda (_%ctor-method150289%_)
                                             (if _%method150261%_
                                                 (if (eq? _%ctor-method150289%_
                                                          _%method150261%_)
                                                     (_%lp150258%_
                                                      _%rest150281%_
                                                      _%ctor-method150289%_)
                                                     (let ((__tmp151020
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id150197%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp151020
                _%method150261%_
                _%ctor-method150289%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp150258%_
                                                  _%rest150281%_
                                                  _%ctor-method150289%_)))
                                           _%$e150286%_)
                                          (_%lp150258%_
                                           _%rest150281%_
                                           _%method150261%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest150262150270%_))
                                (let ((_%hd150267150295%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest150262150270%_)))
                                      (_%tl150268150297%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest150262150270%_))))
                                  (let* ((_%super-id150300%_
                                          _%hd150267150295%_)
                                         (_%rest150302%_ _%tl150268150297%_))
                                    (_%K150266150292%_
                                     _%rest150302%_
                                     _%super-id150300%_)))
                                (_%else150264150278%_)))))))
                 (_g151021_
                  (let ((__tmp151025
                         (lambda (_%klass-id150306%_)
                           (cons _%klass-id150306%_
                                 (let ((__tmp151026
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id150197%_ '()))
                                         _%klass-id150306%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp151026
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp151023
                         (lambda (_%klass-id150308%_)
                           (let ((__tmp151024
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id150197%_ '()))
                                   _%klass-id150308%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp151024
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp151025
                     __tmp151023
                     eq?
                     identity
                     '()
                     _%super150198%_))))
            (begin
              (let ((_g151022_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g151021_)
                           (##vector-length _g151021_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g151022_ 2)))
                    (error "Context expects 2 values" _g151022_)))
              (let ((_%precedence-list150310%_
                     (let () (declare (not safe)) (##vector-ref _g151021_ 0)))
                    (_%base-struct150311%_
                     (let () (declare (not safe)) (##vector-ref _g151021_ 1))))
                (let* ((_%precedence-list150355%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id150197%_ '(t object class)))
                            _%precedence-list150310%_
                            (if (memq 'object::t _%precedence-list150310%_)
                                _%precedence-list150310%_
                                (if _%system?150203%_
                                    (if (memq 't::t _%precedence-list150310%_)
                                        _%precedence-list150310%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list150310%_
                                           '(t::t))))
                                    (let _%loop150317%_ ((_%tail150319%_
                                                          _%precedence-list150310%_)
                                                         (_%head150320%_ '()))
                                      (let* ((_%tail150321150329%_
                                              _%tail150319%_)
                                             (_%else150323150337%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head150320%_))))
                                             (_%K150325150343%_
                                              (lambda (_%rest150340%_
                                                       _%hd150341%_)
                                                (if (eq? _%hd150341%_ 't::t)
                                                    (let ((__tmp151027
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail150319%_)))
              (declare (not safe))
              (__foldl1 cons __tmp151027 _%head150320%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop150317%_
                                                     _%rest150340%_
                                                     (cons _%hd150341%_
                                                           _%head150320%_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tail150321150329%_))
                                            (let ((_%hd150326150346%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail150321150329%_)))
                                                  (_%tl150327150348%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail150321150329%_))))
                                              (let* ((_%hd150351%_
                                                      _%hd150326150346%_)
                                                     (_%rest150353%_
                                                      _%tl150327150348%_))
                                                (_%K150325150343%_
                                                 _%rest150353%_
                                                 _%hd150351%_)))
                                            (_%else150323150337%_))))))))
                       (_%fields150357%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id150197%_ '()))
                         _%base-struct150311%_
                         _%precedence-list150355%_
                         _%slots150199%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self150208%_
                     _%id150197%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self150208%_
                     _%super150198%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self150208%_
                     _%precedence-list150355%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self150208%_
                     _%slots150199%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self150208%_
                     _%fields150357%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self150208%_
                     _%ctor-method150304%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self150208%_
                     _%struct?150201%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self150208%_
                     _%final?150202%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self150208%_
                     _%metaclass150204%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self148088150360%_
               _%id150362%_
               _%super150363%_
               _%precedence-list150364%_
               _%slots150365%_
               _%fields150366%_
               _%constructor150367%_
               _%struct?150368%_
               _%final?150369%_
               _%system?150370%_
               _%metaclass150371%_
               _%methods150372%_)
        (let* ((_%self150374%_ _%self148088150360%_)
               (_%self150376%_ _%self150374%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150376%_
             _%id150362%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150376%_
             _%super150363%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150376%_
             _%precedence-list150364%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150376%_
             _%slots150365%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150376%_
             _%fields150366%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150376%_
             _%constructor150367%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150376%_
             _%struct?150368%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150376%_
             _%final?150369%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self150376%_
             _%metaclass150371%_
             '10
             '#f
             '#f))
          (if _%methods150372%_
              (let ((__tmp151028
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods150372%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self150376%_
                 __tmp151028
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g151030_
        (let ((_g151029_ (let () (declare (not safe)) (##length _g151030_))))
          (cond ((let () (declare (not safe)) (##fx= _g151029_ 9))
                 (apply gxc#!class:::init!__0 _g151030_))
                ((let () (declare (not safe)) (##fx= _g151029_ 12))
                 (apply gxc#!class:::init!__1 _g151030_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g151030_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where150047%_
               _%base-struct150048%_
               _%precedence-list150049%_
               _%direct-slots150050%_)
        (let* ((_%base-fields150052%_
                (if _%base-struct150048%_
                    (let ((__tmp151031
                           (gxc#optimizer-resolve-class
                            _%where150047%_
                            _%base-struct150048%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp151031 '5 '#f '#f))
                    '()))
               (_%r-fields150054%_ (reverse _%base-fields150052%_))
               (_%seen-slots150062%_
                (let ((_%tab150056%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g150057150059%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab150056%_ _%g150057150059%_ '#t)))
                   _%base-fields150052%_)
                  _%tab150056%_))
               (_%process-slot150066%_
                (lambda (_%slot150064%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots150062%_ _%slot150064%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots150062%_
                           _%slot150064%_
                           '#t))
                        (set! _%r-fields150054%_
                              (cons _%slot150064%_ _%r-fields150054%_)))))))
          (for-each
           (lambda (_%mixin150069%_)
             (let ((_%klass150071%_
                    (gxc#optimizer-resolve-class
                     _%where150047%_
                     _%mixin150069%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass150071%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot150066%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass150071%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list150049%_)
          (for-each _%process-slot150066%_ _%direct-slots150050%_)
          (let () (declare (not safe)) (##reverse _%r-fields150054%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass150006%_ _%slot150007%_)
        (let _%lp150009%_ ((_%rest150011%_
                            (##structure-ref
                             _%klass150006%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset150012%_ '1))
          (let* ((_%rest150013150021%_ _%rest150011%_)
                 (_%else150015150029%_
                  (lambda ()
                    (let ((__tmp151033
                           (##structure-ref
                            _%klass150006%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp151032
                           (##structure-ref
                            _%klass150006%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp151033
                       __tmp151032
                       _%slot150007%_))))
                 (_%K150017150035%_
                  (lambda (_%rest150032%_ _%s150033%_)
                    (if (eq? _%s150033%_ _%slot150007%_)
                        _%offset150012%_
                        (_%lp150009%_
                         _%rest150032%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset150012%_ '1)))))))
            (if (let () (declare (not safe)) (##pair? _%rest150013150021%_))
                (let ((_%hd150018150038%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest150013150021%_)))
                      (_%tl150019150040%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest150013150021%_))))
                  (let* ((_%s150043%_ _%hd150018150038%_)
                         (_%rest150045%_ _%tl150019150040%_))
                    (_%K150017150035%_ _%rest150045%_ _%s150043%_)))
                (_%else150015150029%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass149964%_ _%slot149965%_)
        (if (gxc#!class-struct-slot? _%klass149964%_ _%slot149965%_)
            _%klass149964%_
            (let _%lp149967%_ ((_%rest149969%_
                                (##structure-ref
                                 _%klass149964%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest149970149978%_ _%rest149969%_)
                     (_%else149972149986%_ (lambda () '#f))
                     (_%K149974149994%_
                      (lambda (_%rest149989%_ _%super149990%_)
                        (let ((_%super-class149992%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass149964%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot149965%_ '())))
                                _%super149990%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class149992%_
                               _%slot149965%_)
                              _%super-class149992%_
                              (_%lp149967%_ _%rest149989%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest149970149978%_))
                    (let ((_%hd149975149997%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest149970149978%_)))
                          (_%tl149976149999%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest149970149978%_))))
                      (let* ((_%super150002%_ _%hd149975149997%_)
                             (_%rest150004%_ _%tl149976149999%_))
                        (_%K149974149994%_ _%rest150004%_ _%super150002%_)))
                    (_%else149972149986%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass149961%_ _%slot149962%_)
        (if (##structure-ref _%klass149961%_ '7 gxc#!class::t '#f)
            (memq _%slot149962%_
                  (##structure-ref _%klass149961%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self148089149945%_ _%id149947%_)
        (let* ((_%self149949%_ _%self148089149945%_)
               (_%self149951%_ _%self149949%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149951%_
             _%id149947%_
             '1
             '#f
             '#f))
          (let ((__tmp151034
                 (let ((__obj150966
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
                      __obj150966
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150966
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150966
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj150966)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149951%_
             __tmp151034
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self148090149807%_ _%id149809%_)
        (let* ((_%self149811%_ _%self148090149807%_)
               (_%self149813%_ _%self149811%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149813%_
             _%id149809%_
             '1
             '#f
             '#f))
          (let ((__tmp151035
                 (let ((__obj150967
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
                      __obj150967
                      _%id149809%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150967
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj150967)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149813%_
             __tmp151035
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
      (lambda (_%self148091149667%_
               _%id149669%_
               _%slot149670%_
               _%checked?149671%_)
        (let* ((_%self149673%_ _%self148091149667%_)
               (_%self149675%_ _%self149673%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149675%_
             _%id149669%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149675%_
             _%slot149670%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149675%_
             _%checked?149671%_
             '4
             '#f
             '#f))
          (let ((__tmp151036
                 (let ((__obj150968
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
                     (##unchecked-structure-set! __obj150968 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150968
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp151037 (cons _%id149669%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150968
                      __tmp151037
                      '3
                      '#f
                      '#f))
                   __obj150968)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149675%_
             __tmp151036
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self148092149527%_
               _%id149529%_
               _%slot149530%_
               _%checked?149531%_)
        (let* ((_%self149533%_ _%self148092149527%_)
               (_%self149535%_ _%self149533%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149535%_
             _%id149529%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149535%_
             _%slot149530%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149535%_
             _%checked?149531%_
             '4
             '#f
             '#f))
          (let ((__tmp151038
                 (let ((__obj150969
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
                      __obj150969
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150969
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp151039 (cons _%id149529%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150969
                      __tmp151039
                      '3
                      '#f
                      '#f))
                   __obj150969)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149535%_
             __tmp151038
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords149369%_
               _%signature149366149370%_
               _%self148093149372%_
               _%arity149374%_
               _%dispatch149375%_)
        (let* ((_%signature149377%_
                (if (eq? _%signature149366149370%_ absent-value)
                    '#f
                    _%signature149366149370%_))
               (_%self149379%_ _%self148093149372%_)
               (_%self149381%_ _%self149379%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self149381%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149381%_
             _%arity149374%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149381%_
             _%dispatch149375%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149381%_
             _%signature149377%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords149395%_ . _%args149396%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords149395%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords149395%_
                  'signature:
                  absent-value))
               _%args149396%_)))
    (define gxc#!lambda:::init!
      (lambda _%args149367149402%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args149367149402%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords149208%_
               _%signature149205149209%_
               _%self148094149211%_
               _%clauses149213%_)
        (let* ((_%signature149215%_
                (if (eq? _%signature149205149209%_ absent-value)
                    '#f
                    _%signature149205149209%_))
               (_%self149217%_ _%self148094149211%_)
               (_%self149219%_ _%self149217%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self149219%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149219%_
             _%signature149215%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149219%_
             _%clauses149213%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords149233%_ . _%args149234%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords149233%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords149233%_
                  'signature:
                  absent-value))
               _%args149234%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args149206149240%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args149206149240%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self148095149065%_ _%tab149067%_ _%dispatch149068%_)
        (let* ((_%self149070%_ _%self148095149065%_)
               (_%self149072%_ _%self149070%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self149072%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149072%_
             _%tab149067%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149072%_
             _%dispatch149068%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self148096148926%_ _%keys148928%_ _%main148929%_)
        (let* ((_%self148931%_ _%self148096148926%_)
               (_%self148933%_ _%self148931%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self148933%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148933%_
             _%keys148928%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148933%_
             _%main148929%_
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
      (lambda (_%self148097148544%_ _%id148546%_)
        (let* ((_%self148548%_ _%self148097148544%_)
               (_%self148550%_ _%self148548%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148550%_
             _%id148546%_
             '1
             '#f
             '#f))
          (let ((__tmp151040
                 (let ((__obj150970
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
                      __obj150970
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150970
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150970
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj150970)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148550%_
             __tmp151040
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
      (lambda (_%klass148413%_)
        (let ((_%$e148415%_
               (##structure-ref _%klass148413%_ '11 gxc#!class::t '#f)))
          (if _%$e148415%_
              _%$e148415%_
              (let ((_%tab148419%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass148413%_
                 _%tab148419%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab148419%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass148404%_ _%method148405%_)
        (let ((_%tab148406148408%_
               (##structure-ref _%klass148404%_ '11 gxc#!class::t '#f)))
          (if _%tab148406148408%_
              (let ((_%tab148411%_ _%tab148406148408%_))
                (declare (not safe))
                (hash-get _%tab148411%_ _%method148405%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a148392%_ _%type-b148393%_)
        (if _%type-a148392%_
            (if _%type-b148393%_
                (let ((_%$e148395%_ (eq? _%type-a148392%_ _%type-b148393%_)))
                  (if _%$e148395%_
                      _%$e148395%_
                      (let ((_%$e148398%_
                             (eq? (##structure-ref
                                   _%type-b148393%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e148398%_
                            _%$e148398%_
                            (let ((_%$e148401%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a148392%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b148393%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e148401%_
                                  _%$e148401%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a148392%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b148393%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a148392%_
                                           _%type-b148393%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a148343%_ _%klass-b148344%_)
        (let ((_%$e148346%_
               (eq? (##structure-ref _%klass-a148343%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b148344%_ '1 gxc#!type::t '#f))))
          (if _%$e148346%_
              _%$e148346%_
              (let ((_%klass-id-b148349%_
                     (##structure-ref _%klass-b148344%_ '1 gxc#!type::t '#f))
                    (_%precedence-list148350%_
                     (##structure-ref _%klass-a148343%_ '3 gxc#!class::t '#f)))
                (let _%loop148352%_ ((_%rest148354%_
                                      _%precedence-list148350%_))
                  (let* ((_%rest148355148363%_ _%rest148354%_)
                         (_%else148357148371%_ (lambda () '#f))
                         (_%K148359148380%_
                          (lambda (_%rest148374%_ _%klass-name148375%_)
                            (let ((_%$e148377%_
                                   (eq? (let ((__tmp151041
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a148343%_
                                                            (cons _%klass-b148344%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name148375%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp151041
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b148349%_)))
                              (if _%$e148377%_
                                  _%$e148377%_
                                  (_%loop148352%_ _%rest148374%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest148355148363%_))
                        (let ((_%hd148360148383%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest148355148363%_)))
                              (_%tl148361148385%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest148355148363%_))))
                          (let* ((_%klass-name148388%_ _%hd148360148383%_)
                                 (_%rest148390%_ _%tl148361148385%_))
                            (_%K148359148380%_
                             _%rest148390%_
                             _%klass-name148388%_)))
                        (_%else148357148371%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type148341%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type148341%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type148341%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc148330%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc148330%_ 'gxc#!procedure::t))
            (let ((_%proc148333%_ _%proc148330%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc148333%_ '2 '#f '#f))
                  (let ((__tmp151042
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc148333%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp151042 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@378.11-378.15"
               'contract:
               '!procedure?
               'value:
               _%proc148330%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym148312%_ _%type148313%_ _%local?148314%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type148313%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym148312%_
                     _%type148313%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym148312%_ '" " _%type148313%_))
        (let ((_%table148316%_
               (if _%local?148314%_
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
          (hash-put! _%table148316%_ _%sym148312%_ _%type148313%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym148321%_ _%type148322%_)
        (let ((_%local?148324%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym148321%_
           _%type148322%_
           _%local?148324%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g151044_
        (let ((_g151043_ (let () (declare (not safe)) (##length _g151044_))))
          (cond ((let () (declare (not safe)) (##fx= _g151043_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g151044_))
                ((let () (declare (not safe)) (##fx= _g151043_ 3))
                 (apply gxc#optimizer-declare-type!__% _g151044_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g151044_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym148306%_ _%type148307%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type148307%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym148306%_
                     _%type148307%_)))
        (let ((_%table148309%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp151045
                 (let () (declare (not safe)) (struct->list _%type148307%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym148306%_ '" " __tmp151045))
          (let ()
            (declare (not safe))
            (hash-put! _%table148309%_ _%sym148306%_ _%type148307%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table148309%_ _%type148307%_ _%sym148306%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym148301%_ _%type148302%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type148302%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym148301%_
                     _%type148302%_)))
        (let ((_%table148304%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table148304%_ _%sym148301%_))
              '#!void
              (begin
                (let ((__tmp151046
                       (let ()
                         (declare (not safe))
                         (struct->list _%type148302%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym148301%_
                   '" "
                   __tmp151046))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table148304%_ _%sym148301%_ _%type148302%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table148304%_
                   _%type148302%_
                   _%sym148301%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym148299%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym148299%_))
        (let ((__tmp151047
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp151047 _%sym148299%_))
        (let ((__tmp151048
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp151048 _%sym148299%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t148267%_
               _%method148268%_
               _%sym148269%_
               _%rebind?148270%_)
        (let ((__tmp151049
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp151049 _%sym148269%_ '#t))
        (let ((_%klass148272%_ (gxc#optimizer-lookup-class _%type-t148267%_)))
          (if _%klass148272%_
              (let* ((_%vtab148274%_ (gxc#!class-method-table _%klass148272%_))
                     (_%$e148276%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab148274%_ _%method148268%_))))
                (if _%$e148276%_
                    ((lambda (_%existing148279%_)
                       (if _%rebind?148270%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t148267%_
                                '" "
                                _%method148268%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab148274%_
                                _%method148268%_
                                _%sym148269%_)))
                           (if (eq? _%existing148279%_ _%sym148269%_)
                               '#!void
                               (let ((__tmp151050
                                      (cons 'bind-method!
                                            (cons _%type-t148267%_
                                                  (cons _%method148268%_
                                                        (cons _%sym148269%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp151050
                                  _%method148268%_)))))
                     _%$e148276%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t148267%_
                         '" "
                         _%method148268%_
                         '" => "
                         _%sym148269%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab148274%_
                         _%method148268%_
                         _%sym148269%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t148267%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t148288%_ _%method148289%_ _%sym148290%_)
        (let ((_%rebind?148292%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t148288%_
           _%method148289%_
           _%sym148290%_
           _%rebind?148292%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g151052_
        (let ((_g151051_ (let () (declare (not safe)) (##length _g151052_))))
          (cond ((let () (declare (not safe)) (##fx= _g151051_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g151052_))
                ((let () (declare (not safe)) (##fx= _g151051_ 4))
                 (apply gxc#optimizer-declare-method!__% _g151052_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g151052_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym148252%_)
        (let ((_%$e148254%_
               (let ((__tmp151053
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym148252%_ __tmp151053))))
          (if _%$e148254%_
              _%$e148254%_
              (let ((_%$e148263%_
                     (let ((_%ht148256148258%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht148256148258%_
                           (let ((_%ht148261%_ _%ht148256148258%_))
                             (declare (not safe))
                             (hash-get _%ht148261%_ _%sym148252%_))
                           '#f))))
                (if _%$e148263%_
                    _%$e148263%_
                    (let ((__tmp151054
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp151054 _%sym148252%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym148244%_)
        (let ((_%type148245148247%_ (gxc#optimizer-lookup-type _%sym148244%_)))
          (if _%type148245148247%_
              (let ((_%type148250%_ _%type148245148247%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type148250%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type148250%_ '1 '#f '#f)))
                    _%type148250%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym148240%_)
        (let ((_%table148242%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table148242%_ _%sym148240%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where148225%_ _%sym148226%_)
        (let ((_%$e148229%_ (gxc#optimizer-lookup-class _%sym148226%_)))
          (if _%$e148229%_
              ((lambda (_%g148231148233%_)
                 (let ((_%val148236%_ _%g148231148233%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val148236%_
                          'gxc#!class::t))
                       _%val148236%_
                       (let ()
                         (declare (not safe))
                         (error '"bad cast" gxc#!class::t _%val148236%_)))))
               _%$e148229%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where148225%_
                   _%sym148226%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass148223%_)
        (let ((__tmp151055
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp151055 _%klass148223%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t148220%_ _%method148221%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t148220%_)
         _%method148221%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym148218%_)
        (let ((__tmp151056
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp151056 _%sym148218%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e148100%_
                  (lambda (_%t148201%_)
                    (if (symbol? _%t148201%_)
                        (_%type-e148100%_
                         (gxc#optimizer-lookup-type _%t148201%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t148201%_
                               'gxc#!lambda::t))
                            (_%__lambda-type148102%_ _%t148201%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t148201%_
                                   'gxc#!kw-lambda::t))
                                (_%__kw-lambda-type148104%_ _%t148201%_)
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t148201%_
                                       'gxc#!kw-lambda-primary::t))
                                    (_%__kw-lambda-primary-type148106%_
                                     _%t148201%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t148201%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t148208%_ _%t148201%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t148208%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp151057
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t148208%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp151057
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t148201%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t148201%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%lambda-type148101%_
                  (lambda (_%t148189%_)
                    (let ((_%t148192%_ _%t148189%_))
                      (_%__lambda-type148102%_ _%t148192%_))))
                 (_%__lambda-type148102%_
                  (lambda (_%t148177%_)
                    (let ((_%t148180%_ _%t148177%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t148180%_ '4 '#f '#f))
                          (_%type-e148100%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t148180%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t148180%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp151058
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t148180%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp151058
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%kw-lambda-type148103%_
                  (lambda (_%t148165%_)
                    (let ((_%t148168%_ _%t148165%_))
                      (_%__kw-lambda-type148104%_ _%t148168%_))))
                 (_%__kw-lambda-type148104%_
                  (lambda (_%t148153%_)
                    (let ((_%t148156%_ _%t148153%_))
                      (_%type-e148100%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t148156%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type148105%_
                  (lambda (_%t148141%_)
                    (let ((_%t148144%_ _%t148141%_))
                      (_%__kw-lambda-primary-type148106%_ _%t148144%_))))
                 (_%__kw-lambda-primary-type148106%_
                  (lambda (_%t148127%_)
                    (let ((_%t148130%_ _%t148127%_))
                      (_%type-e148100%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t148130%_
                          '4
                          '#f
                          '#f)))))))
          (let* ((_%ht1148108%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2148110%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result148112%_
                  (if _%ht1148108%_
                      (let () (declare (not safe)) (hash->list _%ht1148108%_))
                      '()))
                 (_%result148114%_
                  (if _%ht2148110%_
                      (let ((__tmp151059
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2148110%_))))
                        (declare (not safe))
                        (__foldl1 cons _%result148112%_ __tmp151059))
                      _%result148112%_)))
            (for-each
             (lambda (_%p148117%_)
               (let* ((_%t148119%_ (cdr _%p148117%_))
                      (_%tr148121%_ (_%type-e148100%_ _%t148119%_)))
                 (set-cdr! _%p148117%_ _%tr148121%_)))
             _%result148114%_)
            (list-sort
             (lambda (_%a148124%_ _%b148125%_)
               (let ((__tmp151061 (symbol->string (car _%a148124%_)))
                     (__tmp151060 (symbol->string (car _%b148125%_))))
                 (declare (not safe))
                 (##string<? __tmp151061 __tmp151060)))
             _%result148114%_)))))))
