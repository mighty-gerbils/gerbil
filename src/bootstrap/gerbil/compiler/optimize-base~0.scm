(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1712643209)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp147972 (list)) (__tmp147971 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp147972
         '(type classes ssxi methods)
         __tmp147971
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args147943%_
        (apply make-instance gxc#optimizer-info::t _%$args147943%_)))
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
      (lambda (_%self147930%_)
        (let ((_%self147933%_ _%self147930%_))
          (if (let ((__tmp147973
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self147933%_))))
                (declare (not safe))
                (##fx< '4 __tmp147973))
              (begin
                (let ((__tmp147974
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self147933%_
                   __tmp147974
                   '1
                   '#f
                   '#f))
                (let ((__tmp147975
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self147933%_
                   __tmp147975
                   '2
                   '#f
                   '#f))
                (let ((__tmp147976
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self147933%_
                   __tmp147976
                   '3
                   '#f
                   '#f))
                (let ((__tmp147977
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self147933%_
                   __tmp147977
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp147978
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self147933%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self147933%_
                       '4
                       __tmp147978))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp147980 (list))
            (__tmp147979
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp147980
         '(id)
         __tmp147979
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args147805%_
        (apply make-instance gxc#!type::t _%$args147805%_)))
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
      (let ((__tmp147982 (list gxc#!type::t))
            (__tmp147981 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp147982
         '()
         __tmp147981
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args147802%_
        (apply make-instance gxc#!abort::t _%$args147802%_)))
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
      (let ((__tmp147984 (list gxc#!type::t))
            (__tmp147983 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp147984
         '()
         __tmp147983
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args147799%_
        (apply make-instance gxc#!alias::t _%$args147799%_)))
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
      (let ((__tmp147986 (list))
            (__tmp147985
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp147986
         '(return effect arguments unchecked origin)
         __tmp147985
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args147796%_
        (apply make-instance gxc#!signature::t _%$args147796%_)))
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
      (let ((__tmp147988 (list gxc#!type::t))
            (__tmp147987
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp147988
         '(signature)
         __tmp147987
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
      (lambda (_%id147775%_ _%signature147776%_)
        (if ((lambda (_%$obj147779%_)
               (or (not _%$obj147779%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj147779%_
                      'gxc#!signature::t))))
             _%signature147776%_)
            (let ((_%signature147786%_ _%signature147776%_))
              (gxc#__make-!procedure _%id147775%_ _%signature147786%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature147776%_)
              '#!void))))
    (define gxc#__make-!procedure
      (lambda (_%id147761%_ _%signature147763%_)
        (let ((_%signature147766%_ _%signature147763%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id147761%_ _%signature147766%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj147730%_ _%signature147731%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj147730%_ 'gxc#!procedure::t))
            (let ((_%$obj147735%_ _%$obj147730%_))
              (if ((lambda (_%$obj147744%_)
                     (or (not _%$obj147744%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj147744%_
                            'gxc#!signature::t))))
                   _%signature147731%_)
                  (let ((_%signature147751%_ _%signature147731%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj147735%_
                     _%signature147751%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature147731%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj147730%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj147707%_ _%signature147709%_)
        (let* ((_%$obj147713%_ _%$obj147707%_)
               (_%signature147721%_ _%signature147709%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj147713%_
           _%signature147721%_
           '2
           '#f
           '#f))))
    (define gxc#!class-meta::t
      (let ((__tmp147990 (list gxc#!type::t))
            (__tmp147989 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp147990
         '(class)
         __tmp147989
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args147704%_
        (apply make-instance gxc#!class-meta::t _%$args147704%_)))
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
      (let ((__tmp147992 (list gxc#!type::t))
            (__tmp147991
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
         __tmp147992
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp147991
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args147701%_
        (apply make-instance gxc#!class::t _%$args147701%_)))
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
      (let ((__tmp147994 (list gxc#!procedure::t))
            (__tmp147993 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp147994
         '()
         __tmp147993
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args147698%_
        (apply make-instance gxc#!predicate::t _%$args147698%_)))
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
      (let ((__tmp147996 (list gxc#!procedure::t))
            (__tmp147995 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp147996
         '()
         __tmp147995
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args147695%_
        (apply make-instance gxc#!constructor::t _%$args147695%_)))
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
      (let ((__tmp147998 (list gxc#!procedure::t))
            (__tmp147997 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp147998
         '(slot checked?)
         __tmp147997
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args147692%_
        (apply make-instance gxc#!accessor::t _%$args147692%_)))
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
      (let ((__tmp148000 (list gxc#!procedure::t))
            (__tmp147999 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp148000
         '(slot checked?)
         __tmp147999
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args147689%_
        (apply make-instance gxc#!mutator::t _%$args147689%_)))
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
      (let ((__tmp148002 (list gxc#!type::t))
            (__tmp148001 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp148002
         '(methods)
         __tmp148001
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args147686%_
        (apply make-instance gxc#!interface::t _%$args147686%_)))
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
      (let ((__tmp148004 (list gxc#!procedure::t))
            (__tmp148003
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp148004
         '(arity dispatch inline inline-typedecl)
         __tmp148003
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args147683%_
        (apply make-instance gxc#!lambda::t _%$args147683%_)))
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
      (let ((__tmp148006 (list gxc#!procedure::t))
            (__tmp148005 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp148006
         '(clauses)
         __tmp148005
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args147680%_
        (apply make-instance gxc#!case-lambda::t _%$args147680%_)))
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
      (let ((__tmp148008 (list gxc#!procedure::t))
            (__tmp148007 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp148008
         '(table dispatch)
         __tmp148007
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args147677%_
        (apply make-instance gxc#!kw-lambda::t _%$args147677%_)))
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
      (let ((__tmp148010 (list gxc#!procedure::t))
            (__tmp148009 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp148010
         '(keys main)
         __tmp148009
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args147674%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args147674%_)))
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
      (let ((__tmp148011 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp148011
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args147671%_
        (apply make-instance gxc#!primitive::t _%$args147671%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp148013 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp148012 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp148013
         '()
         __tmp148012
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args147668%_
        (apply make-instance gxc#!primitive-predicate::t _%$args147668%_)))
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
      (let ((__tmp148015 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp148014 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp148015
         '()
         __tmp148014
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args147665%_
        (apply make-instance gxc#!primitive-lambda::t _%$args147665%_)))
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
      (let ((__tmp148017 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp148016 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp148017
         '()
         __tmp148016
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args147662%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args147662%_)))
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
      (lambda (_%self147649%_)
        (let ((_%self147652%_ _%self147649%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self147652%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self147513%_ _%klass147514%_)
        (let ((_%self147517%_ _%self147513%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self147517%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147517%_
             _%klass147514%_
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class-meta::t ':init! gxc#!class-meta:::init! '#f))
    (define gxc#!class:::init!__0
      (lambda (_%self147205%_
               _%id147206%_
               _%super147207%_
               _%slots147208%_
               _%ctor-method147209%_
               _%struct?147210%_
               _%final?147211%_
               _%system?147212%_
               _%metaclass147213%_)
        (let ((_%self147216%_ _%self147205%_))
          (let _%lp147226%_ ((_%rest147228%_ _%super147207%_))
            (let* ((_%rest147229147237%_ _%rest147228%_)
                   (_%else147231147245%_ (lambda () '#!void))
                   (_%K147233147251%_
                    (lambda (_%rest147248%_ _%super-id147249%_)
                      (if (let ((__tmp148018
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id147206%_ '()))
                                  _%super-id147249%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp148018 '8 '#f '#f))
                          (let ((__tmp148019
                                 (cons '!class (cons _%id147206%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp148019
                             _%super-id147249%_))
                          '#!void)
                      (_%lp147226%_ _%rest147248%_))))
              (if (let () (declare (not safe)) (##pair? _%rest147229147237%_))
                  (let ((_%hd147234147254%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest147229147237%_)))
                        (_%tl147235147256%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest147229147237%_))))
                    (let* ((_%super-id147259%_ _%hd147234147254%_)
                           (_%rest147261%_ _%tl147235147256%_))
                      (_%K147233147251%_ _%rest147261%_ _%super-id147259%_)))
                  '#!void)))
          (let* ((_%ctor-method147312%_
                  (let ((_%$e147263%_ _%ctor-method147209%_))
                    (if _%$e147263%_
                        _%$e147263%_
                        (let _%lp147266%_ ((_%rest147268%_ _%super147207%_)
                                           (_%method147269%_ '#f))
                          (let* ((_%rest147270147278%_ _%rest147268%_)
                                 (_%else147272147286%_
                                  (lambda () _%method147269%_))
                                 (_%K147274147300%_
                                  (lambda (_%rest147289%_ _%super-id147290%_)
                                    (let* ((_%klass147292%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id147206%_ '()))
                                             _%super-id147290%_))
                                           (_%$e147294%_
                                            (##structure-ref
                                             _%klass147292%_
                                             '6
                                             gxc#!class::t
                                             '#f)))
                                      (if _%$e147294%_
                                          ((lambda (_%ctor-method147297%_)
                                             (if _%method147269%_
                                                 (if (eq? _%ctor-method147297%_
                                                          _%method147269%_)
                                                     (_%lp147266%_
                                                      _%rest147289%_
                                                      _%ctor-method147297%_)
                                                     (let ((__tmp148020
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id147206%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp148020
                _%method147269%_
                _%ctor-method147297%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp147266%_
                                                  _%rest147289%_
                                                  _%ctor-method147297%_)))
                                           _%$e147294%_)
                                          (_%lp147266%_
                                           _%rest147289%_
                                           _%method147269%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest147270147278%_))
                                (let ((_%hd147275147303%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest147270147278%_)))
                                      (_%tl147276147305%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest147270147278%_))))
                                  (let* ((_%super-id147308%_
                                          _%hd147275147303%_)
                                         (_%rest147310%_ _%tl147276147305%_))
                                    (_%K147274147300%_
                                     _%rest147310%_
                                     _%super-id147308%_)))
                                (_%else147272147286%_)))))))
                 (_g148021_
                  (let ((__tmp148025
                         (lambda (_%klass-id147314%_)
                           (cons _%klass-id147314%_
                                 (let ((__tmp148026
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id147206%_ '()))
                                         _%klass-id147314%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp148026
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp148023
                         (lambda (_%klass-id147316%_)
                           (let ((__tmp148024
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id147206%_ '()))
                                   _%klass-id147316%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp148024
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp148025
                     __tmp148023
                     eq?
                     identity
                     '()
                     _%super147207%_))))
            (begin
              (let ((_g148022_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g148021_)
                           (##vector-length _g148021_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g148022_ 2)))
                    (error "Context expects 2 values" _g148022_)))
              (let ((_%precedence-list147318%_
                     (let () (declare (not safe)) (##vector-ref _g148021_ 0)))
                    (_%base-struct147319%_
                     (let () (declare (not safe)) (##vector-ref _g148021_ 1))))
                (let* ((_%precedence-list147363%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id147206%_ '(t object class)))
                            _%precedence-list147318%_
                            (if (memq 'object::t _%precedence-list147318%_)
                                _%precedence-list147318%_
                                (if _%system?147212%_
                                    (if (memq 't::t _%precedence-list147318%_)
                                        _%precedence-list147318%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list147318%_
                                           '(t::t))))
                                    (let _%loop147325%_ ((_%tail147327%_
                                                          _%precedence-list147318%_)
                                                         (_%head147328%_ '()))
                                      (let* ((_%tail147329147337%_
                                              _%tail147327%_)
                                             (_%else147331147345%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head147328%_))))
                                             (_%K147333147351%_
                                              (lambda (_%rest147348%_
                                                       _%hd147349%_)
                                                (if (eq? _%hd147349%_ 't::t)
                                                    (let ((__tmp148027
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail147327%_)))
              (declare (not safe))
              (__foldl1 cons __tmp148027 _%head147328%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop147325%_
                                                     _%rest147348%_
                                                     (cons _%hd147349%_
                                                           _%head147328%_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tail147329147337%_))
                                            (let ((_%hd147334147354%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail147329147337%_)))
                                                  (_%tl147335147356%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail147329147337%_))))
                                              (let* ((_%hd147359%_
                                                      _%hd147334147354%_)
                                                     (_%rest147361%_
                                                      _%tl147335147356%_))
                                                (_%K147333147351%_
                                                 _%rest147361%_
                                                 _%hd147359%_)))
                                            (_%else147331147345%_))))))))
                       (_%fields147365%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id147206%_ '()))
                         _%base-struct147319%_
                         _%precedence-list147363%_
                         _%slots147208%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147216%_
                     _%id147206%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147216%_
                     _%super147207%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147216%_
                     _%precedence-list147363%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147216%_
                     _%slots147208%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147216%_
                     _%fields147365%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147216%_
                     _%ctor-method147312%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147216%_
                     _%struct?147210%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147216%_
                     _%final?147211%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147216%_
                     _%metaclass147213%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self147368%_
               _%id147369%_
               _%super147370%_
               _%precedence-list147371%_
               _%slots147372%_
               _%fields147373%_
               _%constructor147374%_
               _%struct?147375%_
               _%final?147376%_
               _%system?147377%_
               _%metaclass147378%_
               _%methods147379%_)
        (let ((_%self147382%_ _%self147368%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147382%_
             _%id147369%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147382%_
             _%super147370%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147382%_
             _%precedence-list147371%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147382%_
             _%slots147372%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147382%_
             _%fields147373%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147382%_
             _%constructor147374%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147382%_
             _%struct?147375%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147382%_
             _%final?147376%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147382%_
             _%metaclass147378%_
             '10
             '#f
             '#f))
          (if _%methods147379%_
              (let ((__tmp148028
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods147379%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147382%_
                 __tmp148028
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g148030_
        (let ((_g148029_ (let () (declare (not safe)) (##length _g148030_))))
          (cond ((let () (declare (not safe)) (##fx= _g148029_ 9))
                 (apply gxc#!class:::init!__0 _g148030_))
                ((let () (declare (not safe)) (##fx= _g148029_ 12))
                 (apply gxc#!class:::init!__1 _g148030_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g148030_))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where147057%_
               _%base-struct147058%_
               _%precedence-list147059%_
               _%direct-slots147060%_)
        (let* ((_%base-fields147062%_
                (if _%base-struct147058%_
                    (let ((__tmp148031
                           (gxc#optimizer-resolve-class
                            _%where147057%_
                            _%base-struct147058%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp148031 '5 '#f '#f))
                    '()))
               (_%r-fields147064%_ (reverse _%base-fields147062%_))
               (_%seen-slots147072%_
                (let ((_%tab147066%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g147067147069%_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _%tab147066%_ _%g147067147069%_ '#t)))
                   _%base-fields147062%_)
                  _%tab147066%_))
               (_%process-slot147076%_
                (lambda (_%slot147074%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%seen-slots147072%_ _%slot147074%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _%seen-slots147072%_ _%slot147074%_ '#t))
                        (set! _%r-fields147064%_
                              (cons _%slot147074%_ _%r-fields147064%_)))))))
          (for-each
           (lambda (_%mixin147079%_)
             (let ((_%klass147081%_
                    (gxc#optimizer-resolve-class
                     _%where147057%_
                     _%mixin147079%_)))
               (if (##structure-ref _%klass147081%_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _%process-slot147076%_
                    (##structure-ref _%klass147081%_ '5 gxc#!class::t '#f)))))
           _%precedence-list147059%_)
          (for-each _%process-slot147076%_ _%direct-slots147060%_)
          (let () (declare (not safe)) (##reverse _%r-fields147064%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass147016%_ _%slot147017%_)
        (let _%lp147019%_ ((_%rest147021%_
                            (##structure-ref
                             _%klass147016%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset147022%_ '1))
          (let* ((_%rest147023147031%_ _%rest147021%_)
                 (_%else147025147039%_
                  (lambda ()
                    (let ((__tmp148033
                           (##structure-ref
                            _%klass147016%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp148032
                           (##structure-ref
                            _%klass147016%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp148033
                       __tmp148032
                       _%slot147017%_))))
                 (_%K147027147045%_
                  (lambda (_%rest147042%_ _%s147043%_)
                    (if (eq? _%s147043%_ _%slot147017%_)
                        _%offset147022%_
                        (_%lp147019%_
                         _%rest147042%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset147022%_ '1)))))))
            (if (let () (declare (not safe)) (##pair? _%rest147023147031%_))
                (let ((_%hd147028147048%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest147023147031%_)))
                      (_%tl147029147050%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest147023147031%_))))
                  (let* ((_%s147053%_ _%hd147028147048%_)
                         (_%rest147055%_ _%tl147029147050%_))
                    (_%K147027147045%_ _%rest147055%_ _%s147053%_)))
                (_%else147025147039%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass146974%_ _%slot146975%_)
        (if (gxc#!class-struct-slot? _%klass146974%_ _%slot146975%_)
            _%klass146974%_
            (let _%lp146977%_ ((_%rest146979%_
                                (##structure-ref
                                 _%klass146974%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest146980146988%_ _%rest146979%_)
                     (_%else146982146996%_ (lambda () '#f))
                     (_%K146984147004%_
                      (lambda (_%rest146999%_ _%super147000%_)
                        (let ((_%super-class147002%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass146974%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot146975%_ '())))
                                _%super147000%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class147002%_
                               _%slot146975%_)
                              _%super-class147002%_
                              (_%lp146977%_ _%rest146999%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest146980146988%_))
                    (let ((_%hd146985147007%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest146980146988%_)))
                          (_%tl146986147009%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest146980146988%_))))
                      (let* ((_%super147012%_ _%hd146985147007%_)
                             (_%rest147014%_ _%tl146986147009%_))
                        (_%K146984147004%_ _%rest147014%_ _%super147012%_)))
                    (_%else146982146996%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass146971%_ _%slot146972%_)
        (if (##structure-ref _%klass146971%_ '7 gxc#!class::t '#f)
            (memq _%slot146972%_
                  (##structure-ref _%klass146971%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self146957%_ _%id146958%_)
        (let ((_%self146961%_ _%self146957%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146961%_
             _%id146958%_
             '1
             '#f
             '#f))
          (let ((__tmp148034
                 (let ((__obj147966
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
                      __obj147966
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj147966
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj147966
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj147966)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146961%_
             __tmp148034
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self146821%_ _%id146822%_)
        (let ((_%self146825%_ _%self146821%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146825%_
             _%id146822%_
             '1
             '#f
             '#f))
          (let ((__tmp148035
                 (let ((__obj147967
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
                      __obj147967
                      _%id146822%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj147967
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj147967)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146825%_
             __tmp148035
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!constructor::t
       ':init!
       gxc#!constructor:::init!
       '#f))
    (define gxc#!accessor:::init!
      (lambda (_%self146683%_ _%id146684%_ _%slot146685%_ _%checked?146686%_)
        (let ((_%self146689%_ _%self146683%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146689%_
             _%id146684%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146689%_
             _%slot146685%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146689%_
             _%checked?146686%_
             '4
             '#f
             '#f))
          (let ((__tmp148036
                 (let ((__obj147968
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
                     (##unchecked-structure-set! __obj147968 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj147968
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp148037 (cons _%id146684%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj147968
                      __tmp148037
                      '3
                      '#f
                      '#f))
                   __obj147968)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146689%_
             __tmp148036
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self146545%_ _%id146546%_ _%slot146547%_ _%checked?146548%_)
        (let ((_%self146551%_ _%self146545%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146551%_
             _%id146546%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146551%_
             _%slot146547%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146551%_
             _%checked?146548%_
             '4
             '#f
             '#f))
          (let ((__tmp148038
                 (let ((__obj147969
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
                      __obj147969
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj147969
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp148039 (cons _%id146546%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj147969
                      __tmp148039
                      '3
                      '#f
                      '#f))
                   __obj147969)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146551%_
             __tmp148038
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords146389%_
               _%signature146386146390%_
               _%self146392%_
               _%arity146393%_
               _%dispatch146394%_)
        (let* ((_%signature146396%_
                (if (eq? _%signature146386146390%_ absent-value)
                    '#f
                    _%signature146386146390%_))
               (_%self146399%_ _%self146392%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self146399%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146399%_
             _%arity146393%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146399%_
             _%dispatch146394%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146399%_
             _%signature146396%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords146413%_ . _%args146414%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords146413%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords146413%_
                  'signature:
                  absent-value))
               _%args146414%_)))
    (define gxc#!lambda:::init!
      (lambda _%args146387146420%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args146387146420%_)))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords146230%_
               _%signature146227146231%_
               _%self146233%_
               _%clauses146234%_)
        (let* ((_%signature146236%_
                (if (eq? _%signature146227146231%_ absent-value)
                    '#f
                    _%signature146227146231%_))
               (_%self146239%_ _%self146233%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self146239%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146239%_
             _%signature146236%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146239%_
             _%clauses146234%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords146253%_ . _%args146254%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords146253%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords146253%_
                  'signature:
                  absent-value))
               _%args146254%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args146228146260%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args146228146260%_)))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self146089%_ _%tab146090%_ _%dispatch146091%_)
        (let ((_%self146094%_ _%self146089%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self146094%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146094%_
             _%tab146090%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146094%_
             _%dispatch146091%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self145952%_ _%keys145953%_ _%main145954%_)
        (let ((_%self145957%_ _%self145952%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self145957%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self145957%_
             _%keys145953%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self145957%_
             _%main145954%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!kw-lambda-primary::t
       ':init!
       gxc#!kw-lambda-primary:::init!
       '#f))
    (define gxc#!primitive-lambda:::init! gxc#!lambda:::init!)
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-lambda::t
       ':init!
       gxc#!primitive-lambda:::init!
       '#f))
    (define gxc#!primitive-case-lambda:::init! gxc#!case-lambda:::init!)
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!primitive-predicate:::init!
      (lambda (_%self145572%_ _%id145573%_)
        (let ((_%self145576%_ _%self145572%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self145576%_
             _%id145573%_
             '1
             '#f
             '#f))
          (let ((__tmp148040
                 (let ((__obj147970
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
                      __obj147970
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj147970
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj147970
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj147970)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self145576%_
             __tmp148040
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!primitive-predicate::t
       ':init!
       gxc#!primitive-predicate:::init!
       '#f))
    (define gxc#!class-method-table
      (lambda (_%klass145441%_)
        (let ((_%$e145443%_
               (##structure-ref _%klass145441%_ '11 gxc#!class::t '#f)))
          (if _%$e145443%_
              _%$e145443%_
              (let ((_%tab145447%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass145441%_
                 _%tab145447%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab145447%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass145432%_ _%method145433%_)
        (let ((_%tab145434145436%_
               (##structure-ref _%klass145432%_ '11 gxc#!class::t '#f)))
          (if _%tab145434145436%_
              (let ((_%tab145439%_ _%tab145434145436%_))
                (declare (not safe))
                (hash-get _%tab145439%_ _%method145433%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a145420%_ _%type-b145421%_)
        (if _%type-a145420%_
            (if _%type-b145421%_
                (let ((_%$e145423%_ (eq? _%type-a145420%_ _%type-b145421%_)))
                  (if _%$e145423%_
                      _%$e145423%_
                      (let ((_%$e145426%_
                             (eq? (##structure-ref
                                   _%type-b145421%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e145426%_
                            _%$e145426%_
                            (let ((_%$e145429%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a145420%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b145421%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e145429%_
                                  _%$e145429%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a145420%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b145421%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a145420%_
                                           _%type-b145421%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a145371%_ _%klass-b145372%_)
        (let ((_%$e145374%_
               (eq? (##structure-ref _%klass-a145371%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b145372%_ '1 gxc#!type::t '#f))))
          (if _%$e145374%_
              _%$e145374%_
              (let ((_%klass-id-b145377%_
                     (##structure-ref _%klass-b145372%_ '1 gxc#!type::t '#f))
                    (_%precedence-list145378%_
                     (##structure-ref _%klass-a145371%_ '3 gxc#!class::t '#f)))
                (let _%loop145380%_ ((_%rest145382%_
                                      _%precedence-list145378%_))
                  (let* ((_%rest145383145391%_ _%rest145382%_)
                         (_%else145385145399%_ (lambda () '#f))
                         (_%K145387145408%_
                          (lambda (_%rest145402%_ _%klass-name145403%_)
                            (let ((_%$e145405%_
                                   (eq? (let ((__tmp148041
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a145371%_
                                                            (cons _%klass-b145372%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name145403%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp148041
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b145377%_)))
                              (if _%$e145405%_
                                  _%$e145405%_
                                  (_%loop145380%_ _%rest145402%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest145383145391%_))
                        (let ((_%hd145388145411%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest145383145391%_)))
                              (_%tl145389145413%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest145383145391%_))))
                          (let* ((_%klass-name145416%_ _%hd145388145411%_)
                                 (_%rest145418%_ _%tl145389145413%_))
                            (_%K145387145408%_
                             _%rest145418%_
                             _%klass-name145416%_)))
                        (_%else145385145399%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type145369%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145369%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (##structure-ref _%type145369%_ '3 gxc#!class::t '#f))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc145358%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc145358%_ 'gxc#!procedure::t))
            (let ((_%proc145361%_ _%proc145358%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc145361%_ '2 '#f '#f))
                  (let ((__tmp148042
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc145361%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp148042 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@374.11-374.15"
               'contract:
               '!procedure?
               'value:
               _%proc145358%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym145340%_ _%type145341%_ _%local?145342%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145341%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym145340%_
                     _%type145341%_)))
        (let ((__tmp148043
               (let () (declare (not safe)) (struct->list _%type145341%_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym145340%_ '" " __tmp148043))
        (let ((_%table145344%_
               (if _%local?145342%_
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
          (hash-put! _%table145344%_ _%sym145340%_ _%type145341%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym145349%_ _%type145350%_)
        (let ((_%local?145352%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym145349%_
           _%type145350%_
           _%local?145352%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g148045_
        (let ((_g148044_ (let () (declare (not safe)) (##length _g148045_))))
          (cond ((let () (declare (not safe)) (##fx= _g148044_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g148045_))
                ((let () (declare (not safe)) (##fx= _g148044_ 3))
                 (apply gxc#optimizer-declare-type!__% _g148045_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g148045_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym145334%_ _%type145335%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145335%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym145334%_
                     _%type145335%_)))
        (let ((_%table145337%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp148046
                 (let () (declare (not safe)) (struct->list _%type145335%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym145334%_ '" " __tmp148046))
          (let ()
            (declare (not safe))
            (hash-put! _%table145337%_ _%sym145334%_ _%type145335%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table145337%_ _%type145335%_ _%sym145334%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym145329%_ _%type145330%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145330%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym145329%_
                     _%type145330%_)))
        (let ((_%table145332%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table145332%_ _%sym145329%_))
              '#!void
              (begin
                (let ((__tmp148047
                       (let ()
                         (declare (not safe))
                         (struct->list _%type145330%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym145329%_
                   '" "
                   __tmp148047))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table145332%_ _%sym145329%_ _%type145330%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table145332%_
                   _%type145330%_
                   _%sym145329%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym145327%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym145327%_))
        (let ((__tmp148048
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp148048 _%sym145327%_))
        (let ((__tmp148049
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp148049 _%sym145327%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t145295%_
               _%method145296%_
               _%sym145297%_
               _%rebind?145298%_)
        (let ((_%klass145300%_ (gxc#optimizer-lookup-class _%type-t145295%_)))
          (if _%klass145300%_
              (let* ((_%vtab145302%_ (gxc#!class-method-table _%klass145300%_))
                     (_%$e145304%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab145302%_ _%method145296%_))))
                (if _%$e145304%_
                    ((lambda (_%existing145307%_)
                       (if _%rebind?145298%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t145295%_
                                '" "
                                _%method145296%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab145302%_
                                _%method145296%_
                                _%sym145297%_)))
                           (if (eq? _%existing145307%_ _%sym145297%_)
                               '#!void
                               (let ((__tmp148050
                                      (cons 'bind-method!
                                            (cons _%type-t145295%_
                                                  (cons _%method145296%_
                                                        (cons _%sym145297%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp148050
                                  _%method145296%_)))))
                     _%$e145304%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t145295%_
                         '" "
                         _%method145296%_
                         '" => "
                         _%sym145297%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab145302%_
                         _%method145296%_
                         _%sym145297%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t145295%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t145316%_ _%method145317%_ _%sym145318%_)
        (let ((_%rebind?145320%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t145316%_
           _%method145317%_
           _%sym145318%_
           _%rebind?145320%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g148052_
        (let ((_g148051_ (let () (declare (not safe)) (##length _g148052_))))
          (cond ((let () (declare (not safe)) (##fx= _g148051_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g148052_))
                ((let () (declare (not safe)) (##fx= _g148051_ 4))
                 (apply gxc#optimizer-declare-method!__% _g148052_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g148052_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym145283%_)
        (let ((_%$e145291%_
               (let ((_%ht145284145286%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-local-type))))
                 (if _%ht145284145286%_
                     (let ((_%ht145289%_ _%ht145284145286%_))
                       (declare (not safe))
                       (hash-get _%ht145289%_ _%sym145283%_))
                     '#f))))
          (if _%$e145291%_
              _%$e145291%_
              (let ((__tmp148053
                     (##structure-ref
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-optimizer-info))
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp148053 _%sym145283%_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym145275%_)
        (let ((_%type145276145278%_ (gxc#optimizer-lookup-type _%sym145275%_)))
          (if _%type145276145278%_
              (let ((_%type145281%_ _%type145276145278%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type145281%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (##structure-ref _%type145281%_ '1 gxc#!type::t '#f))
                    _%type145281%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym145271%_)
        (let ((_%table145273%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table145273%_ _%sym145271%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where145256%_ _%sym145257%_)
        (let ((_%$e145260%_ (gxc#optimizer-lookup-class _%sym145257%_)))
          (if _%$e145260%_
              ((lambda (_%g145262145264%_)
                 (let ((_%val145267%_ _%g145262145264%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val145267%_
                          'gxc#!class::t))
                       _%val145267%_
                       (let ()
                         (declare (not safe))
                         (error '"bad cast" gxc#!class::t _%val145267%_)))))
               _%$e145260%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where145256%_
                   _%sym145257%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass145254%_)
        (let ((__tmp148054
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp148054 _%klass145254%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t145251%_ _%method145252%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t145251%_)
         _%method145252%_)))
    (define gxc#optimizer-top-level-method!
      (lambda (_%sym145249%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _%sym145249%_))
        (let ((__tmp148055
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp148055 _%sym145249%_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym145247%_)
        (let ((__tmp148056
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp148056 _%sym145247%_))))))
