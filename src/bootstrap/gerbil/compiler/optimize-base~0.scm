(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1771022577)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp209052 (list)) (__tmp209051 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp209052
         '(type classes ssxi methods)
         __tmp209051
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args208971%_
        (apply make-instance gxc#optimizer-info::t _%$args208971%_)))
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
      (lambda (_%self208958%_)
        (let ((_%self208961%_ _%self208958%_))
          (if (let ((__tmp209053
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self208961%_))))
                (declare (not safe))
                (##fx< '4 __tmp209053))
              (begin
                (let ((__tmp209054
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self208961%_
                   __tmp209054
                   '1
                   '#f
                   '#f))
                (let ((__tmp209055
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self208961%_
                   __tmp209055
                   '2
                   '#f
                   '#f))
                (let ((__tmp209056
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self208961%_
                   __tmp209056
                   '3
                   '#f
                   '#f))
                (let ((__tmp209057
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self208961%_
                   __tmp209057
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp209058
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self208961%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self208961%_
                       '4
                       __tmp209058))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp209060 (list))
            (__tmp209059
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp209060
         '(id)
         __tmp209059
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args208833%_
        (apply make-instance gxc#!type::t _%$args208833%_)))
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
      (let ((__tmp209062 (list gxc#!type::t))
            (__tmp209061 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp209062
         '()
         __tmp209061
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args208830%_
        (apply make-instance gxc#!abort::t _%$args208830%_)))
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
      (let ((__tmp209064 (list gxc#!type::t))
            (__tmp209063 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp209064
         '()
         __tmp209063
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args208827%_
        (apply make-instance gxc#!alias::t _%$args208827%_)))
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
      (let ((__tmp209066 (list))
            (__tmp209065
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp209066
         '(return effect arguments unchecked origin)
         __tmp209065
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args208824%_
        (apply make-instance gxc#!signature::t _%$args208824%_)))
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
      (let ((__tmp209068 (list gxc#!type::t))
            (__tmp209067
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp209068
         '(signature)
         __tmp209067
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
      (lambda (_%id208811%_ _%signature208812%_)
        (let ((_%signature208815%_ _%signature208812%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id208811%_ _%signature208815%_))))
    (define gxc#make-!procedure
      (lambda (_%id205619%_ _%signature205621%_)
        (if ((lambda (_%$obj205625%_)
               (or (not _%$obj205625%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj205625%_
                      'gxc#!signature::t))))
             _%signature205621%_)
            (let ((_%signature205632%_ _%signature205621%_))
              (gxc#__make-!procedure _%id205619%_ _%signature205632%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature205621%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj208790%_ _%signature208791%_)
        (let* ((_%$obj208794%_ _%$obj208790%_)
               (_%signature208802%_ _%signature208791%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj208794%_
           _%signature208802%_
           '2
           '#f
           '#f))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj205762%_ _%signature205764%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj205762%_ 'gxc#!procedure::t))
            (let ((_%$obj205768%_ _%$obj205762%_))
              (if ((lambda (_%$obj205777%_)
                     (or (not _%$obj205777%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj205777%_
                            'gxc#!signature::t))))
                   _%signature205764%_)
                  (let ((_%signature205784%_ _%signature205764%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj205768%_
                     _%signature205784%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature205764%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj205762%_)
              '#!void))))
    (define gxc#!class-meta::t
      (let ((__tmp209070 (list gxc#!type::t))
            (__tmp209069 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp209070
         '(class)
         __tmp209069
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args208787%_
        (apply make-instance gxc#!class-meta::t _%$args208787%_)))
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
      (let ((__tmp209072 (list gxc#!type::t))
            (__tmp209071
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
         __tmp209072
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp209071
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args208784%_
        (apply make-instance gxc#!class::t _%$args208784%_)))
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
      (let ((__tmp209074 (list gxc#!procedure::t))
            (__tmp209073 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp209074
         '()
         __tmp209073
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args208781%_
        (apply make-instance gxc#!predicate::t _%$args208781%_)))
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
      (let ((__tmp209076 (list gxc#!procedure::t))
            (__tmp209075 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp209076
         '()
         __tmp209075
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args208778%_
        (apply make-instance gxc#!constructor::t _%$args208778%_)))
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
      (let ((__tmp209078 (list gxc#!procedure::t))
            (__tmp209077 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp209078
         '(slot checked?)
         __tmp209077
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args208775%_
        (apply make-instance gxc#!accessor::t _%$args208775%_)))
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
      (let ((__tmp209080 (list gxc#!procedure::t))
            (__tmp209079 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp209080
         '(slot checked?)
         __tmp209079
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args208772%_
        (apply make-instance gxc#!mutator::t _%$args208772%_)))
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
      (let ((__tmp209082 (list gxc#!type::t))
            (__tmp209081 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp209082
         '(methods)
         __tmp209081
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args208769%_
        (apply make-instance gxc#!interface::t _%$args208769%_)))
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
      (let ((__tmp209084 (list gxc#!procedure::t))
            (__tmp209083
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp209084
         '(arity dispatch inline inline-typedecl)
         __tmp209083
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args208766%_
        (apply make-instance gxc#!lambda::t _%$args208766%_)))
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
      (let ((__tmp209086 (list gxc#!procedure::t))
            (__tmp209085 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp209086
         '(clauses)
         __tmp209085
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args208763%_
        (apply make-instance gxc#!case-lambda::t _%$args208763%_)))
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
      (let ((__tmp209088 (list gxc#!procedure::t))
            (__tmp209087
             (cons (cons 'struct: '#t) '((equal: table dispatch)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp209088
         '(table dispatch)
         __tmp209087
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args208760%_
        (apply make-instance gxc#!kw-lambda::t _%$args208760%_)))
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
      (let ((__tmp209090 (list gxc#!procedure::t))
            (__tmp209089 (cons (cons 'struct: '#t) '((equal: keys main)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp209090
         '(keys main)
         __tmp209089
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args208757%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args208757%_)))
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
      (let ((__tmp209091 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp209091
         '()
         '((equal:))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args208754%_
        (apply make-instance gxc#!primitive::t _%$args208754%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp209093 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp209092 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp209093
         '()
         __tmp209092
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args208751%_
        (apply make-instance gxc#!primitive-predicate::t _%$args208751%_)))
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
      (let ((__tmp209095 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp209094 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp209095
         '()
         __tmp209094
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args208748%_
        (apply make-instance gxc#!primitive-lambda::t _%$args208748%_)))
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
      (let ((__tmp209097 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp209096 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp209097
         '()
         __tmp209096
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args208745%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args208745%_)))
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
      (lambda (_%self208732%_)
        (let ((_%self208735%_ _%self208732%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self208735%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self208595%_ _%klass208596%_)
        (let ((_%self208599%_ _%self208595%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self208599%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208599%_
             _%klass208596%_
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
      (lambda (_%self208285%_
               _%id208286%_
               _%super208287%_
               _%slots208288%_
               _%ctor-method208289%_
               _%struct?208290%_
               _%final?208291%_
               _%system?208292%_
               _%metaclass208293%_)
        (let ((_%self208296%_ _%self208285%_))
          (let _%lp208307%_ ((_%rest208309%_ _%super208287%_))
            (let* ((_%rest208310208318%_ _%rest208309%_)
                   (_%else208312208326%_ (lambda () '#!void))
                   (_%K208314208332%_
                    (lambda (_%rest208329%_ _%super-id208330%_)
                      (if (let ((__tmp209098
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id208286%_ '()))
                                  _%super-id208330%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp209098 '8 '#f '#f))
                          (let ((__tmp209099
                                 (cons '!class (cons _%id208286%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp209099
                             _%super-id208330%_))
                          '#!void)
                      (_%lp208307%_ _%rest208329%_))))
              (if (pair? _%rest208310208318%_)
                  (let ((_%hd208315208335%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest208310208318%_)))
                        (_%tl208316208337%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest208310208318%_))))
                    (let* ((_%super-id208340%_ _%hd208315208335%_)
                           (_%rest208342%_ _%tl208316208337%_))
                      (_%K208314208332%_ _%rest208342%_ _%super-id208340%_)))
                  '#!void)))
          (let* ((_%ctor-method208393%_
                  (let ((_%$e208344%_ _%ctor-method208289%_))
                    (if _%$e208344%_
                        _%$e208344%_
                        (let _%lp208347%_ ((_%rest208349%_ _%super208287%_)
                                           (_%method208350%_ '#f))
                          (let* ((_%rest208351208359%_ _%rest208349%_)
                                 (_%else208353208367%_
                                  (lambda () _%method208350%_))
                                 (_%K208355208381%_
                                  (lambda (_%rest208370%_ _%super-id208371%_)
                                    (let* ((_%klass208373%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id208286%_ '()))
                                             _%super-id208371%_))
                                           (_%$e208375%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass208373%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e208375%_
                                          ((lambda (_%ctor-method208378%_)
                                             (if _%method208350%_
                                                 (if (eq? _%ctor-method208378%_
                                                          _%method208350%_)
                                                     (_%lp208347%_
                                                      _%rest208370%_
                                                      _%ctor-method208378%_)
                                                     (let ((__tmp209100
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id208286%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp209100
                _%method208350%_
                _%ctor-method208378%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp208347%_
                                                  _%rest208370%_
                                                  _%ctor-method208378%_)))
                                           _%$e208375%_)
                                          (_%lp208347%_
                                           _%rest208370%_
                                           _%method208350%_))))))
                            (if (pair? _%rest208351208359%_)
                                (let ((_%hd208356208384%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest208351208359%_)))
                                      (_%tl208357208386%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest208351208359%_))))
                                  (let* ((_%super-id208389%_
                                          _%hd208356208384%_)
                                         (_%rest208391%_ _%tl208357208386%_))
                                    (_%K208355208381%_
                                     _%rest208391%_
                                     _%super-id208389%_)))
                                (_%else208353208367%_)))))))
                 (_g209101_
                  (let ((__tmp209105
                         (lambda (_%klass-id208395%_)
                           (cons _%klass-id208395%_
                                 (let ((__tmp209106
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id208286%_ '()))
                                         _%klass-id208395%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp209106
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp209103
                         (lambda (_%klass-id208397%_)
                           (let ((__tmp209104
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id208286%_ '()))
                                   _%klass-id208397%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp209104
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp209105
                     __tmp209103
                     eq?
                     identity
                     '()
                     _%super208287%_))))
            (begin
              (let ((_g209102_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g209101_)
                           (##values-length _g209101_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g209102_ 2)))
                    (error "Context expects 2 values" _g209102_)))
              (let ((_%precedence-list208399%_
                     (let () (declare (not safe)) (##values-ref _g209101_ 0)))
                    (_%base-struct208400%_
                     (let () (declare (not safe)) (##values-ref _g209101_ 1))))
                (let* ((_%precedence-list208444%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id208286%_ '(t object class)))
                            _%precedence-list208399%_
                            (if (memq 'object::t _%precedence-list208399%_)
                                _%precedence-list208399%_
                                (if _%system?208292%_
                                    (if (memq 't::t _%precedence-list208399%_)
                                        _%precedence-list208399%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list208399%_
                                           '(t::t))))
                                    (let _%loop208406%_ ((_%tail208408%_
                                                          _%precedence-list208399%_)
                                                         (_%head208409%_ '()))
                                      (let* ((_%tail208410208418%_
                                              _%tail208408%_)
                                             (_%else208412208426%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (foldl__0
                                                   cons
                                                   '(object::t t::t)
                                                   _%head208409%_))))
                                             (_%K208414208432%_
                                              (lambda (_%rest208429%_
                                                       _%hd208430%_)
                                                (if (eq? _%hd208430%_ 't::t)
                                                    (let ((__tmp209107
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail208408%_)))
              (declare (not safe))
              (foldl__0 cons __tmp209107 _%head208409%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop208406%_
                                                     _%rest208429%_
                                                     (cons _%hd208430%_
                                                           _%head208409%_))))))
                                        (if (pair? _%tail208410208418%_)
                                            (let ((_%hd208415208435%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail208410208418%_)))
                                                  (_%tl208416208437%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail208410208418%_))))
                                              (let* ((_%hd208440%_
                                                      _%hd208415208435%_)
                                                     (_%rest208442%_
                                                      _%tl208416208437%_))
                                                (_%K208414208432%_
                                                 _%rest208442%_
                                                 _%hd208440%_)))
                                            (_%else208412208426%_))))))))
                       (_%fields208446%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id208286%_ '()))
                         _%base-struct208400%_
                         _%precedence-list208444%_
                         _%slots208288%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self208296%_
                     _%id208286%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self208296%_
                     _%super208287%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self208296%_
                     _%precedence-list208444%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self208296%_
                     _%slots208288%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self208296%_
                     _%fields208446%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self208296%_
                     _%ctor-method208393%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self208296%_
                     _%struct?208290%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self208296%_
                     _%final?208291%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self208296%_
                     _%metaclass208293%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self208449%_
               _%id208450%_
               _%super208451%_
               _%precedence-list208452%_
               _%slots208453%_
               _%fields208454%_
               _%constructor208455%_
               _%struct?208456%_
               _%final?208457%_
               _%system?208458%_
               _%metaclass208459%_
               _%methods208460%_)
        (let ((_%self208463%_ _%self208449%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208463%_
             _%id208450%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208463%_
             _%super208451%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208463%_
             _%precedence-list208452%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208463%_
             _%slots208453%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208463%_
             _%fields208454%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208463%_
             _%constructor208455%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208463%_
             _%struct?208456%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208463%_
             _%final?208457%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208463%_
             _%metaclass208459%_
             '10
             '#f
             '#f))
          (if _%methods208460%_
              (let ((__tmp209108
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods208460%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self208463%_
                 __tmp209108
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g209109_
        (let ((_g209110_ (let () (declare (not safe)) (##length _g209109_))))
          (cond ((let () (declare (not safe)) (##fx= _g209110_ 9))
                 (apply gxc#!class:::init!__0 _g209109_))
                ((let () (declare (not safe)) (##fx= _g209110_ 12))
                 (apply gxc#!class:::init!__1 _g209109_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g209109_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where208137%_
               _%base-struct208138%_
               _%precedence-list208139%_
               _%direct-slots208140%_)
        (let* ((_%base-fields208142%_
                (if _%base-struct208138%_
                    (let ((__tmp209111
                           (gxc#optimizer-resolve-class
                            _%where208137%_
                            _%base-struct208138%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp209111 '5 '#f '#f))
                    '()))
               (_%r-fields208144%_ (reverse _%base-fields208142%_))
               (_%seen-slots208152%_
                (let ((_%tab208146%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g208147208149%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab208146%_ _%g208147208149%_ '#t)))
                   _%base-fields208142%_)
                  _%tab208146%_))
               (_%process-slot208156%_
                (lambda (_%slot208154%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots208152%_ _%slot208154%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots208152%_
                           _%slot208154%_
                           '#t))
                        (set! _%r-fields208144%_
                              (cons _%slot208154%_ _%r-fields208144%_)))))))
          (for-each
           (lambda (_%mixin208159%_)
             (let ((_%klass208161%_
                    (gxc#optimizer-resolve-class
                     _%where208137%_
                     _%mixin208159%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass208161%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot208156%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass208161%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list208139%_)
          (for-each _%process-slot208156%_ _%direct-slots208140%_)
          (let () (declare (not safe)) (##reverse _%r-fields208144%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass208096%_ _%slot208097%_)
        (let _%lp208099%_ ((_%rest208101%_
                            (##structure-ref
                             _%klass208096%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset208102%_ '1))
          (let* ((_%rest208103208111%_ _%rest208101%_)
                 (_%else208105208119%_
                  (lambda ()
                    (let ((__tmp209113
                           (##structure-ref
                            _%klass208096%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp209112
                           (##structure-ref
                            _%klass208096%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp209113
                       __tmp209112
                       _%slot208097%_))))
                 (_%K208107208125%_
                  (lambda (_%rest208122%_ _%s208123%_)
                    (if (eq? _%s208123%_ _%slot208097%_)
                        _%offset208102%_
                        (_%lp208099%_
                         _%rest208122%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset208102%_ '1)))))))
            (if (pair? _%rest208103208111%_)
                (let ((_%hd208108208128%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest208103208111%_)))
                      (_%tl208109208130%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest208103208111%_))))
                  (let* ((_%s208133%_ _%hd208108208128%_)
                         (_%rest208135%_ _%tl208109208130%_))
                    (_%K208107208125%_ _%rest208135%_ _%s208133%_)))
                (_%else208105208119%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass208054%_ _%slot208055%_)
        (if (gxc#!class-struct-slot? _%klass208054%_ _%slot208055%_)
            _%klass208054%_
            (let _%lp208057%_ ((_%rest208059%_
                                (##structure-ref
                                 _%klass208054%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest208060208068%_ _%rest208059%_)
                     (_%else208062208076%_ (lambda () '#f))
                     (_%K208064208084%_
                      (lambda (_%rest208079%_ _%super208080%_)
                        (let ((_%super-class208082%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass208054%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot208055%_ '())))
                                _%super208080%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class208082%_
                               _%slot208055%_)
                              _%super-class208082%_
                              (_%lp208057%_ _%rest208079%_))))))
                (if (pair? _%rest208060208068%_)
                    (let ((_%hd208065208087%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest208060208068%_)))
                          (_%tl208066208089%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest208060208068%_))))
                      (let* ((_%super208092%_ _%hd208065208087%_)
                             (_%rest208094%_ _%tl208066208089%_))
                        (_%K208064208084%_ _%rest208094%_ _%super208092%_)))
                    (_%else208062208076%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass208051%_ _%slot208052%_)
        (if (##structure-ref _%klass208051%_ '7 gxc#!class::t '#f)
            (memq _%slot208052%_
                  (##structure-ref _%klass208051%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self208036%_ _%id208037%_)
        (let ((_%self208040%_ _%self208036%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208040%_
             _%id208037%_
             '1
             '#f
             '#f))
          (let ((__tmp209114
                 (let ((__obj209046
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
                      __obj209046
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj209046
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj209046
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj209046)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208040%_
             __tmp209114
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self207899%_ _%id207900%_)
        (let ((_%self207903%_ _%self207899%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207903%_
             _%id207900%_
             '1
             '#f
             '#f))
          (let ((__tmp209115
                 (let ((__obj209047
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
                      __obj209047
                      _%id207900%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj209047
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj209047)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207903%_
             __tmp209115
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
      (lambda (_%self207760%_ _%id207761%_ _%slot207762%_ _%checked?207763%_)
        (let ((_%self207766%_ _%self207760%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207766%_
             _%id207761%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207766%_
             _%slot207762%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207766%_
             _%checked?207763%_
             '4
             '#f
             '#f))
          (let ((__tmp209116
                 (let ((__obj209048
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
                     (##unchecked-structure-set! __obj209048 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj209048
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp209117 (cons _%id207761%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj209048
                      __tmp209117
                      '3
                      '#f
                      '#f))
                   __obj209048)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207766%_
             __tmp209116
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self207621%_ _%id207622%_ _%slot207623%_ _%checked?207624%_)
        (let ((_%self207627%_ _%self207621%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207627%_
             _%id207622%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207627%_
             _%slot207623%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207627%_
             _%checked?207624%_
             '4
             '#f
             '#f))
          (let ((__tmp209118
                 (let ((__obj209049
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
                      __obj209049
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj209049
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp209119 (cons _%id207622%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj209049
                      __tmp209119
                      '3
                      '#f
                      '#f))
                   __obj209049)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207627%_
             __tmp209118
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords207465%_
               _%signature207462207466%_
               _%self207467%_
               _%arity207468%_
               _%dispatch207469%_)
        (let* ((_%signature207471%_
                (if (eq? _%signature207462207466%_ absent-value)
                    '#f
                    _%signature207462207466%_))
               (_%self207474%_ _%self207467%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self207474%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207474%_
             _%arity207468%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207474%_
             _%dispatch207469%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207474%_
             _%signature207471%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords207489%_ . _%args207490%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords207489%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords207489%_
                  'signature:
                  absent-value))
               _%args207490%_)))
    (define gxc#!lambda:::init!
      (lambda _%args207463207496%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args207463207496%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords207306%_
               _%signature207303207307%_
               _%self207308%_
               _%clauses207309%_)
        (let* ((_%signature207311%_
                (if (eq? _%signature207303207307%_ absent-value)
                    '#f
                    _%signature207303207307%_))
               (_%self207314%_ _%self207308%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self207314%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207314%_
             _%signature207311%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207314%_
             _%clauses207309%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords207329%_ . _%args207330%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords207329%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords207329%_
                  'signature:
                  absent-value))
               _%args207330%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args207304207336%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args207304207336%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self207164%_ _%tab207165%_ _%dispatch207166%_)
        (let ((_%self207169%_ _%self207164%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self207169%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207169%_
             _%tab207165%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207169%_
             _%dispatch207166%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self207026%_ _%keys207027%_ _%main207028%_)
        (let ((_%self207031%_ _%self207026%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self207031%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207031%_
             _%keys207027%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207031%_
             _%main207028%_
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
      (lambda (_%self206645%_ _%id206646%_)
        (let ((_%self206649%_ _%self206645%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self206649%_
             _%id206646%_
             '1
             '#f
             '#f))
          (let ((__tmp209120
                 (let ((__obj209050
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
                      __obj209050
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj209050
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj209050
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj209050)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self206649%_
             __tmp209120
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
      (lambda (_%klass206515%_)
        (let ((_%$e206517%_
               (##structure-ref _%klass206515%_ '11 gxc#!class::t '#f)))
          (if _%$e206517%_
              _%$e206517%_
              (let ((_%tab206521%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass206515%_
                 _%tab206521%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab206521%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass206507%_ _%method206508%_)
        (let ((_%tab206509206511%_
               (##structure-ref _%klass206507%_ '11 gxc#!class::t '#f)))
          (if _%tab206509206511%_
              (let ((_%tab206513%_ _%tab206509206511%_))
                (declare (not safe))
                (hash-get _%tab206513%_ _%method206508%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a206492%_ _%type-b206493%_)
        (if _%type-a206492%_
            (if _%type-b206493%_
                (let ((_%$e206495%_ (eq? _%type-a206492%_ _%type-b206493%_)))
                  (if _%$e206495%_
                      _%$e206495%_
                      (let ((_%$e206498%_
                             (eq? (##structure-ref
                                   _%type-b206493%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e206498%_
                            _%$e206498%_
                            (let ((_%$e206501%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a206492%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b206493%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e206501%_
                                  _%$e206501%_
                                  (let ((_%$e206504%_
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-instance-of?
                                                _%type-a206492%_
                                                'gxc#!class::t))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-instance-of?
                                                    _%type-b206493%_
                                                    'gxc#!class::t))
                                                 (gxc#!class-subclass?
                                                  _%type-a206492%_
                                                  _%type-b206493%_)
                                                 '#f)
                                             '#f)))
                                    (if _%$e206504%_
                                        _%$e206504%_
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%type-a206492%_
                                               'gxc#!interface::t))
                                            (eq? (##structure-ref
                                                  _%type-b206493%_
                                                  '1
                                                  gxc#!type::t
                                                  '#f)
                                                 'gerbil#interface-descriptor::t)
                                            '#f)))))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a206443%_ _%klass-b206444%_)
        (let ((_%$e206446%_
               (eq? (##structure-ref _%klass-a206443%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b206444%_ '1 gxc#!type::t '#f))))
          (if _%$e206446%_
              _%$e206446%_
              (let ((_%klass-id-b206449%_
                     (##structure-ref _%klass-b206444%_ '1 gxc#!type::t '#f))
                    (_%precedence-list206450%_
                     (##structure-ref _%klass-a206443%_ '3 gxc#!class::t '#f)))
                (let _%loop206452%_ ((_%rest206454%_
                                      _%precedence-list206450%_))
                  (let* ((_%rest206455206463%_ _%rest206454%_)
                         (_%else206457206471%_ (lambda () '#f))
                         (_%K206459206480%_
                          (lambda (_%rest206474%_ _%klass-name206475%_)
                            (let ((_%$e206477%_
                                   (eq? (let ((__tmp209121
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a206443%_
                                                            (cons _%klass-b206444%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name206475%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp209121
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b206449%_)))
                              (if _%$e206477%_
                                  _%$e206477%_
                                  (_%loop206452%_ _%rest206474%_))))))
                    (if (pair? _%rest206455206463%_)
                        (let ((_%hd206460206483%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest206455206463%_)))
                              (_%tl206461206485%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest206455206463%_))))
                          (let* ((_%klass-name206488%_ _%hd206460206483%_)
                                 (_%rest206490%_ _%tl206461206485%_))
                            (_%K206459206480%_
                             _%rest206490%_
                             _%klass-name206488%_)))
                        (_%else206457206471%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type206441%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type206441%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type206441%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc206430%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc206430%_ 'gxc#!procedure::t))
            (let ((_%proc206433%_ _%proc206430%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc206433%_ '2 '#f '#f))
                  (let ((__tmp209122
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc206433%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp209122 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@382.11-382.15"
               'contract:
               '!procedure?
               'value:
               _%proc206430%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym206412%_ _%type206413%_ _%local?206414%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type206413%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym206412%_
                     _%type206413%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym206412%_ '" " _%type206413%_))
        (let ((_%table206416%_
               (if _%local?206414%_
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
          (hash-put! _%table206416%_ _%sym206412%_ _%type206413%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym206421%_ _%type206422%_)
        (let ((_%local?206424%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym206421%_
           _%type206422%_
           _%local?206424%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g209123_
        (let ((_g209124_ (let () (declare (not safe)) (##length _g209123_))))
          (cond ((let () (declare (not safe)) (##fx= _g209124_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g209123_))
                ((let () (declare (not safe)) (##fx= _g209124_ 3))
                 (apply gxc#optimizer-declare-type!__% _g209123_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g209123_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym206406%_ _%type206407%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type206407%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym206406%_
                     _%type206407%_)))
        (let ((_%table206409%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp209125
                 (let () (declare (not safe)) (struct->list _%type206407%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym206406%_ '" " __tmp209125))
          (let ()
            (declare (not safe))
            (hash-put! _%table206409%_ _%sym206406%_ _%type206407%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table206409%_ _%type206407%_ _%sym206406%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym206401%_ _%type206402%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type206402%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym206401%_
                     _%type206402%_)))
        (let ((_%table206404%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table206404%_ _%sym206401%_))
              '#!void
              (begin
                (let ((__tmp209126
                       (let ()
                         (declare (not safe))
                         (struct->list _%type206402%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym206401%_
                   '" "
                   __tmp209126))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table206404%_ _%sym206401%_ _%type206402%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table206404%_
                   _%type206402%_
                   _%sym206401%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym206399%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym206399%_))
        (let ((__tmp209127
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp209127 _%sym206399%_))
        (let ((__tmp209128
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp209128 _%sym206399%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t206367%_
               _%method206368%_
               _%sym206369%_
               _%rebind?206370%_)
        (let ((__tmp209129
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp209129 _%sym206369%_ '#t))
        (let ((_%klass206372%_ (gxc#optimizer-lookup-class _%type-t206367%_)))
          (if _%klass206372%_
              (let* ((_%vtab206374%_ (gxc#!class-method-table _%klass206372%_))
                     (_%$e206376%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab206374%_ _%method206368%_))))
                (if _%$e206376%_
                    ((lambda (_%existing206379%_)
                       (if _%rebind?206370%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t206367%_
                                '" "
                                _%method206368%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab206374%_
                                _%method206368%_
                                _%sym206369%_)))
                           (if (eq? _%existing206379%_ _%sym206369%_)
                               '#!void
                               (let ((__tmp209130
                                      (cons 'bind-method!
                                            (cons _%type-t206367%_
                                                  (cons _%method206368%_
                                                        (cons _%sym206369%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp209130
                                  _%method206368%_)))))
                     _%$e206376%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t206367%_
                         '" "
                         _%method206368%_
                         '" => "
                         _%sym206369%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab206374%_
                         _%method206368%_
                         _%sym206369%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t206367%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t206388%_ _%method206389%_ _%sym206390%_)
        (let ((_%rebind?206392%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t206388%_
           _%method206389%_
           _%sym206390%_
           _%rebind?206392%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g209131_
        (let ((_g209132_ (let () (declare (not safe)) (##length _g209131_))))
          (cond ((let () (declare (not safe)) (##fx= _g209132_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g209131_))
                ((let () (declare (not safe)) (##fx= _g209132_ 4))
                 (apply gxc#optimizer-declare-method!__% _g209131_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g209131_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym206353%_)
        (let ((_%$e206355%_
               (let ((__tmp209133
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym206353%_ __tmp209133))))
          (if _%$e206355%_
              _%$e206355%_
              (let ((_%$e206363%_
                     (let ((_%ht206357206359%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht206357206359%_
                           (let ((_%ht206361%_ _%ht206357206359%_))
                             (declare (not safe))
                             (hash-get _%ht206361%_ _%sym206353%_))
                           '#f))))
                (if _%$e206363%_
                    _%$e206363%_
                    (let ((__tmp209134
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp209134 _%sym206353%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym206346%_)
        (let ((_%type206347206349%_ (gxc#optimizer-lookup-type _%sym206346%_)))
          (if _%type206347206349%_
              (let ((_%type206351%_ _%type206347206349%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type206351%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type206351%_ '1 '#f '#f)))
                    _%type206351%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym206342%_)
        (let ((_%table206344%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table206344%_ _%sym206342%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where206327%_ _%sym206328%_)
        (let ((_%$e206331%_ (gxc#optimizer-lookup-class _%sym206328%_)))
          (if _%$e206331%_
              ((lambda (_%g206333206335%_)
                 (let ((_%val206338%_ _%g206333206335%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val206338%_
                          'gxc#!class::t))
                       _%val206338%_
                       (begin
                         (raise-contract-violation-error
                          '"contract violation"
                          'context:
                          'gerbil/compiler/optimize-base
                          'contract:
                          '(!class? val)
                          'value:
                          _%val206338%_)
                         '#!void))))
               _%$e206331%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where206327%_
                   _%sym206328%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass206325%_)
        (let ((__tmp209135
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp209135 _%klass206325%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t206322%_ _%method206323%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t206322%_)
         _%method206323%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym206320%_)
        (let ((__tmp209136
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp209136 _%sym206320%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e205795%_
                  (lambda (_%t206261%_)
                    (if (symbol? _%t206261%_)
                        (_%type-e205795%_
                         (gxc#optimizer-lookup-type _%t206261%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t206261%_
                               'gxc#!lambda::t))
                            (let* ((_%t206265%_ _%t206261%_)
                                   (_%t206269%_ _%t206265%_))
                              (_%__lambda-type205921%_ _%t206269%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t206261%_
                                   'gxc#!kw-lambda::t))
                                (let* ((_%t206281%_ _%t206261%_)
                                       (_%t206285%_ _%t206281%_))
                                  (_%__kw-lambda-type206044%_ _%t206285%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t206261%_
                                       'gxc#!kw-lambda-primary::t))
                                    (let* ((_%t206296%_ _%t206261%_)
                                           (_%t206300%_ _%t206296%_))
                                      (_%__kw-lambda-primary-type206167%_
                                       _%t206300%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t206261%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t206311%_ _%t206261%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t206311%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp209137
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t206311%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp209137
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t206261%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t206261%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%__lambda-type205921%_
                  (lambda (_%t206249%_)
                    (let ((_%t206252%_ _%t206249%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t206252%_ '4 '#f '#f))
                          (_%type-e205795%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t206252%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t206252%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp209138
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t206252%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp209138
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%lambda-type205922%_
                  (lambda (_%t206237%_)
                    (let ((_%t206240%_ _%t206237%_))
                      (_%__lambda-type205921%_ _%t206240%_))))
                 (_%__kw-lambda-type206044%_
                  (lambda (_%t206225%_)
                    (let ((_%t206228%_ _%t206225%_))
                      (_%type-e205795%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t206228%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-type206045%_
                  (lambda (_%t206213%_)
                    (let ((_%t206216%_ _%t206213%_))
                      (_%__kw-lambda-type206044%_ _%t206216%_))))
                 (_%__kw-lambda-primary-type206167%_
                  (lambda (_%t206201%_)
                    (let ((_%t206204%_ _%t206201%_))
                      (_%type-e205795%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t206204%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type206168%_
                  (lambda (_%t206189%_)
                    (let ((_%t206192%_ _%t206189%_))
                      (_%__kw-lambda-primary-type206167%_ _%t206192%_)))))
          (let* ((_%ht1206170%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2206172%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result206174%_
                  (if _%ht1206170%_
                      (let () (declare (not safe)) (hash->list _%ht1206170%_))
                      '()))
                 (_%result206176%_
                  (if _%ht2206172%_
                      (let ((__tmp209139
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2206172%_))))
                        (declare (not safe))
                        (foldl__0 cons _%result206174%_ __tmp209139))
                      _%result206174%_)))
            (for-each
             (lambda (_%p206179%_)
               (let* ((_%t206181%_ (cdr _%p206179%_))
                      (_%tr206183%_ (_%type-e205795%_ _%t206181%_)))
                 (set-cdr! _%p206179%_ _%tr206183%_)))
             _%result206176%_)
            (list-sort
             (lambda (_%a206186%_ _%b206187%_)
               (let ((__tmp209141 (symbol->string (car _%a206186%_)))
                     (__tmp209140 (symbol->string (car _%b206187%_))))
                 (declare (not safe))
                 (##string<? __tmp209141 __tmp209140)))
             _%result206176%_)))))))
