(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1712773527)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp149012 (list)) (__tmp149011 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp149012
         '(type classes ssxi methods)
         __tmp149011
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args148983%_
        (apply make-instance gxc#optimizer-info::t _%$args148983%_)))
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
      (lambda (_%self146246148968%_)
        (let* ((_%self148971%_ _%self146246148968%_)
               (_%self148973%_ _%self148971%_))
          (if (let ((__tmp149013
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self148973%_))))
                (declare (not safe))
                (##fx< '4 __tmp149013))
              (begin
                (let ((__tmp149014
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self148973%_
                   __tmp149014
                   '1
                   '#f
                   '#f))
                (let ((__tmp149015
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self148973%_
                   __tmp149015
                   '2
                   '#f
                   '#f))
                (let ((__tmp149016
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self148973%_
                   __tmp149016
                   '3
                   '#f
                   '#f))
                (let ((__tmp149017
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self148973%_
                   __tmp149017
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp149018
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self148973%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self148973%_
                       '4
                       __tmp149018))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp149020 (list))
            (__tmp149019
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp149020
         '(id)
         __tmp149019
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args148843%_
        (apply make-instance gxc#!type::t _%$args148843%_)))
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
      (let ((__tmp149022 (list gxc#!type::t))
            (__tmp149021 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp149022
         '()
         __tmp149021
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args148840%_
        (apply make-instance gxc#!abort::t _%$args148840%_)))
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
      (let ((__tmp149024 (list gxc#!type::t))
            (__tmp149023 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp149024
         '()
         __tmp149023
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args148837%_
        (apply make-instance gxc#!alias::t _%$args148837%_)))
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
      (let ((__tmp149026 (list))
            (__tmp149025
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp149026
         '(return effect arguments unchecked origin)
         __tmp149025
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args148834%_
        (apply make-instance gxc#!signature::t _%$args148834%_)))
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
      (let ((__tmp149028 (list gxc#!type::t))
            (__tmp149027
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp149028
         '(signature)
         __tmp149027
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
      (lambda (_%id148813%_ _%signature148814%_)
        (if ((lambda (_%$obj148817%_)
               (or (not _%$obj148817%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj148817%_
                      'gxc#!signature::t))))
             _%signature148814%_)
            (let ((_%signature148824%_ _%signature148814%_))
              (gxc#__make-!procedure _%id148813%_ _%signature148824%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature148814%_)
              '#!void))))
    (define gxc#__make-!procedure
      (lambda (_%id148799%_ _%signature148801%_)
        (let ((_%signature148804%_ _%signature148801%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id148799%_ _%signature148804%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj148768%_ _%signature148769%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj148768%_ 'gxc#!procedure::t))
            (let ((_%$obj148773%_ _%$obj148768%_))
              (if ((lambda (_%$obj148782%_)
                     (or (not _%$obj148782%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj148782%_
                            'gxc#!signature::t))))
                   _%signature148769%_)
                  (let ((_%signature148789%_ _%signature148769%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj148773%_
                     _%signature148789%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature148769%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj148768%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj148745%_ _%signature148747%_)
        (let* ((_%$obj148751%_ _%$obj148745%_)
               (_%signature148759%_ _%signature148747%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj148751%_
           _%signature148759%_
           '2
           '#f
           '#f))))
    (define gxc#!class-meta::t
      (let ((__tmp149030 (list gxc#!type::t))
            (__tmp149029 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp149030
         '(class)
         __tmp149029
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args148742%_
        (apply make-instance gxc#!class-meta::t _%$args148742%_)))
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
      (let ((__tmp149032 (list gxc#!type::t))
            (__tmp149031
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
         __tmp149032
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp149031
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args148739%_
        (apply make-instance gxc#!class::t _%$args148739%_)))
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
      (let ((__tmp149034 (list gxc#!procedure::t))
            (__tmp149033 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp149034
         '()
         __tmp149033
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args148736%_
        (apply make-instance gxc#!predicate::t _%$args148736%_)))
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
      (let ((__tmp149036 (list gxc#!procedure::t))
            (__tmp149035 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp149036
         '()
         __tmp149035
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args148733%_
        (apply make-instance gxc#!constructor::t _%$args148733%_)))
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
      (let ((__tmp149038 (list gxc#!procedure::t))
            (__tmp149037 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp149038
         '(slot checked?)
         __tmp149037
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args148730%_
        (apply make-instance gxc#!accessor::t _%$args148730%_)))
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
      (let ((__tmp149040 (list gxc#!procedure::t))
            (__tmp149039 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp149040
         '(slot checked?)
         __tmp149039
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args148727%_
        (apply make-instance gxc#!mutator::t _%$args148727%_)))
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
      (let ((__tmp149042 (list gxc#!type::t))
            (__tmp149041 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp149042
         '(methods)
         __tmp149041
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args148724%_
        (apply make-instance gxc#!interface::t _%$args148724%_)))
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
      (let ((__tmp149044 (list gxc#!procedure::t))
            (__tmp149043
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp149044
         '(arity dispatch inline inline-typedecl)
         __tmp149043
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args148721%_
        (apply make-instance gxc#!lambda::t _%$args148721%_)))
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
      (let ((__tmp149046 (list gxc#!procedure::t))
            (__tmp149045 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp149046
         '(clauses)
         __tmp149045
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args148718%_
        (apply make-instance gxc#!case-lambda::t _%$args148718%_)))
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
      (let ((__tmp149048 (list gxc#!procedure::t))
            (__tmp149047 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp149048
         '(table dispatch)
         __tmp149047
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args148715%_
        (apply make-instance gxc#!kw-lambda::t _%$args148715%_)))
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
      (let ((__tmp149050 (list gxc#!procedure::t))
            (__tmp149049 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp149050
         '(keys main)
         __tmp149049
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args148712%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args148712%_)))
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
      (let ((__tmp149051 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp149051
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args148709%_
        (apply make-instance gxc#!primitive::t _%$args148709%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp149053 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp149052 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp149053
         '()
         __tmp149052
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args148706%_
        (apply make-instance gxc#!primitive-predicate::t _%$args148706%_)))
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
      (let ((__tmp149055 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp149054 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp149055
         '()
         __tmp149054
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args148703%_
        (apply make-instance gxc#!primitive-lambda::t _%$args148703%_)))
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
      (let ((__tmp149057 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp149056 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp149057
         '()
         __tmp149056
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args148700%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args148700%_)))
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
      (lambda (_%self146247148685%_)
        (let* ((_%self148688%_ _%self146247148685%_)
               (_%self148690%_ _%self148688%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self148690%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self146248148547%_ _%klass148549%_)
        (let* ((_%self148551%_ _%self146248148547%_)
               (_%self148553%_ _%self148551%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self148553%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148553%_
             _%klass148549%_
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class-meta::t ':init! gxc#!class-meta:::init! '#f))
    (define gxc#!class:::init!__0
      (lambda (_%self146249148235%_
               _%id148237%_
               _%super148238%_
               _%slots148239%_
               _%ctor-method148240%_
               _%struct?148241%_
               _%final?148242%_
               _%system?148243%_
               _%metaclass148244%_)
        (let* ((_%self148246%_ _%self146249148235%_)
               (_%self148248%_ _%self148246%_))
          (let _%lp148258%_ ((_%rest148260%_ _%super148238%_))
            (let* ((_%rest148261148269%_ _%rest148260%_)
                   (_%else148263148277%_ (lambda () '#!void))
                   (_%K148265148283%_
                    (lambda (_%rest148280%_ _%super-id148281%_)
                      (if (let ((__tmp149058
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id148237%_ '()))
                                  _%super-id148281%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp149058 '8 '#f '#f))
                          (let ((__tmp149059
                                 (cons '!class (cons _%id148237%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp149059
                             _%super-id148281%_))
                          '#!void)
                      (_%lp148258%_ _%rest148280%_))))
              (if (let () (declare (not safe)) (##pair? _%rest148261148269%_))
                  (let ((_%hd148266148286%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest148261148269%_)))
                        (_%tl148267148288%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest148261148269%_))))
                    (let* ((_%super-id148291%_ _%hd148266148286%_)
                           (_%rest148293%_ _%tl148267148288%_))
                      (_%K148265148283%_ _%rest148293%_ _%super-id148291%_)))
                  '#!void)))
          (let* ((_%ctor-method148344%_
                  (let ((_%$e148295%_ _%ctor-method148240%_))
                    (if _%$e148295%_
                        _%$e148295%_
                        (let _%lp148298%_ ((_%rest148300%_ _%super148238%_)
                                           (_%method148301%_ '#f))
                          (let* ((_%rest148302148310%_ _%rest148300%_)
                                 (_%else148304148318%_
                                  (lambda () _%method148301%_))
                                 (_%K148306148332%_
                                  (lambda (_%rest148321%_ _%super-id148322%_)
                                    (let* ((_%klass148324%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id148237%_ '()))
                                             _%super-id148322%_))
                                           (_%$e148326%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass148324%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e148326%_
                                          ((lambda (_%ctor-method148329%_)
                                             (if _%method148301%_
                                                 (if (eq? _%ctor-method148329%_
                                                          _%method148301%_)
                                                     (_%lp148298%_
                                                      _%rest148321%_
                                                      _%ctor-method148329%_)
                                                     (let ((__tmp149060
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id148237%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp149060
                _%method148301%_
                _%ctor-method148329%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp148298%_
                                                  _%rest148321%_
                                                  _%ctor-method148329%_)))
                                           _%$e148326%_)
                                          (_%lp148298%_
                                           _%rest148321%_
                                           _%method148301%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest148302148310%_))
                                (let ((_%hd148307148335%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest148302148310%_)))
                                      (_%tl148308148337%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest148302148310%_))))
                                  (let* ((_%super-id148340%_
                                          _%hd148307148335%_)
                                         (_%rest148342%_ _%tl148308148337%_))
                                    (_%K148306148332%_
                                     _%rest148342%_
                                     _%super-id148340%_)))
                                (_%else148304148318%_)))))))
                 (_g149061_
                  (let ((__tmp149065
                         (lambda (_%klass-id148346%_)
                           (cons _%klass-id148346%_
                                 (let ((__tmp149066
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id148237%_ '()))
                                         _%klass-id148346%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp149066
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp149063
                         (lambda (_%klass-id148348%_)
                           (let ((__tmp149064
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id148237%_ '()))
                                   _%klass-id148348%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp149064
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp149065
                     __tmp149063
                     eq?
                     identity
                     '()
                     _%super148238%_))))
            (begin
              (let ((_g149062_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g149061_)
                           (##vector-length _g149061_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g149062_ 2)))
                    (error "Context expects 2 values" _g149062_)))
              (let ((_%precedence-list148350%_
                     (let () (declare (not safe)) (##vector-ref _g149061_ 0)))
                    (_%base-struct148351%_
                     (let () (declare (not safe)) (##vector-ref _g149061_ 1))))
                (let* ((_%precedence-list148395%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id148237%_ '(t object class)))
                            _%precedence-list148350%_
                            (if (memq 'object::t _%precedence-list148350%_)
                                _%precedence-list148350%_
                                (if _%system?148243%_
                                    (if (memq 't::t _%precedence-list148350%_)
                                        _%precedence-list148350%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list148350%_
                                           '(t::t))))
                                    (let _%loop148357%_ ((_%tail148359%_
                                                          _%precedence-list148350%_)
                                                         (_%head148360%_ '()))
                                      (let* ((_%tail148361148369%_
                                              _%tail148359%_)
                                             (_%else148363148377%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head148360%_))))
                                             (_%K148365148383%_
                                              (lambda (_%rest148380%_
                                                       _%hd148381%_)
                                                (if (eq? _%hd148381%_ 't::t)
                                                    (let ((__tmp149067
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail148359%_)))
              (declare (not safe))
              (__foldl1 cons __tmp149067 _%head148360%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop148357%_
                                                     _%rest148380%_
                                                     (cons _%hd148381%_
                                                           _%head148360%_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tail148361148369%_))
                                            (let ((_%hd148366148386%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail148361148369%_)))
                                                  (_%tl148367148388%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail148361148369%_))))
                                              (let* ((_%hd148391%_
                                                      _%hd148366148386%_)
                                                     (_%rest148393%_
                                                      _%tl148367148388%_))
                                                (_%K148365148383%_
                                                 _%rest148393%_
                                                 _%hd148391%_)))
                                            (_%else148363148377%_))))))))
                       (_%fields148397%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id148237%_ '()))
                         _%base-struct148351%_
                         _%precedence-list148395%_
                         _%slots148239%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148248%_
                     _%id148237%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148248%_
                     _%super148238%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148248%_
                     _%precedence-list148395%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148248%_
                     _%slots148239%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148248%_
                     _%fields148397%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148248%_
                     _%ctor-method148344%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148248%_
                     _%struct?148241%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148248%_
                     _%final?148242%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self148248%_
                     _%metaclass148244%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self146250148400%_
               _%id148402%_
               _%super148403%_
               _%precedence-list148404%_
               _%slots148405%_
               _%fields148406%_
               _%constructor148407%_
               _%struct?148408%_
               _%final?148409%_
               _%system?148410%_
               _%metaclass148411%_
               _%methods148412%_)
        (let* ((_%self148414%_ _%self146250148400%_)
               (_%self148416%_ _%self148414%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148416%_
             _%id148402%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148416%_
             _%super148403%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148416%_
             _%precedence-list148404%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148416%_
             _%slots148405%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148416%_
             _%fields148406%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148416%_
             _%constructor148407%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148416%_
             _%struct?148408%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148416%_
             _%final?148409%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148416%_
             _%metaclass148411%_
             '10
             '#f
             '#f))
          (if _%methods148412%_
              (let ((__tmp149068
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods148412%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self148416%_
                 __tmp149068
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g149070_
        (let ((_g149069_ (let () (declare (not safe)) (##length _g149070_))))
          (cond ((let () (declare (not safe)) (##fx= _g149069_ 9))
                 (apply gxc#!class:::init!__0 _g149070_))
                ((let () (declare (not safe)) (##fx= _g149069_ 12))
                 (apply gxc#!class:::init!__1 _g149070_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g149070_))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where148087%_
               _%base-struct148088%_
               _%precedence-list148089%_
               _%direct-slots148090%_)
        (let* ((_%base-fields148092%_
                (if _%base-struct148088%_
                    (let ((__tmp149071
                           (gxc#optimizer-resolve-class
                            _%where148087%_
                            _%base-struct148088%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp149071 '5 '#f '#f))
                    '()))
               (_%r-fields148094%_ (reverse _%base-fields148092%_))
               (_%seen-slots148102%_
                (let ((_%tab148096%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g148097148099%_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _%tab148096%_ _%g148097148099%_ '#t)))
                   _%base-fields148092%_)
                  _%tab148096%_))
               (_%process-slot148106%_
                (lambda (_%slot148104%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%seen-slots148102%_ _%slot148104%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _%seen-slots148102%_ _%slot148104%_ '#t))
                        (set! _%r-fields148094%_
                              (cons _%slot148104%_ _%r-fields148094%_)))))))
          (for-each
           (lambda (_%mixin148109%_)
             (let ((_%klass148111%_
                    (gxc#optimizer-resolve-class
                     _%where148087%_
                     _%mixin148109%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass148111%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot148106%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass148111%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list148089%_)
          (for-each _%process-slot148106%_ _%direct-slots148090%_)
          (let () (declare (not safe)) (##reverse _%r-fields148094%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass148046%_ _%slot148047%_)
        (let _%lp148049%_ ((_%rest148051%_
                            (##structure-ref
                             _%klass148046%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset148052%_ '1))
          (let* ((_%rest148053148061%_ _%rest148051%_)
                 (_%else148055148069%_
                  (lambda ()
                    (let ((__tmp149073
                           (##structure-ref
                            _%klass148046%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp149072
                           (##structure-ref
                            _%klass148046%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp149073
                       __tmp149072
                       _%slot148047%_))))
                 (_%K148057148075%_
                  (lambda (_%rest148072%_ _%s148073%_)
                    (if (eq? _%s148073%_ _%slot148047%_)
                        _%offset148052%_
                        (_%lp148049%_
                         _%rest148072%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset148052%_ '1)))))))
            (if (let () (declare (not safe)) (##pair? _%rest148053148061%_))
                (let ((_%hd148058148078%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest148053148061%_)))
                      (_%tl148059148080%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest148053148061%_))))
                  (let* ((_%s148083%_ _%hd148058148078%_)
                         (_%rest148085%_ _%tl148059148080%_))
                    (_%K148057148075%_ _%rest148085%_ _%s148083%_)))
                (_%else148055148069%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass148004%_ _%slot148005%_)
        (if (gxc#!class-struct-slot? _%klass148004%_ _%slot148005%_)
            _%klass148004%_
            (let _%lp148007%_ ((_%rest148009%_
                                (##structure-ref
                                 _%klass148004%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest148010148018%_ _%rest148009%_)
                     (_%else148012148026%_ (lambda () '#f))
                     (_%K148014148034%_
                      (lambda (_%rest148029%_ _%super148030%_)
                        (let ((_%super-class148032%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass148004%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot148005%_ '())))
                                _%super148030%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class148032%_
                               _%slot148005%_)
                              _%super-class148032%_
                              (_%lp148007%_ _%rest148029%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest148010148018%_))
                    (let ((_%hd148015148037%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest148010148018%_)))
                          (_%tl148016148039%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest148010148018%_))))
                      (let* ((_%super148042%_ _%hd148015148037%_)
                             (_%rest148044%_ _%tl148016148039%_))
                        (_%K148014148034%_ _%rest148044%_ _%super148042%_)))
                    (_%else148012148026%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass148001%_ _%slot148002%_)
        (if (##structure-ref _%klass148001%_ '7 gxc#!class::t '#f)
            (memq _%slot148002%_
                  (##structure-ref _%klass148001%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self146251147985%_ _%id147987%_)
        (let* ((_%self147989%_ _%self146251147985%_)
               (_%self147991%_ _%self147989%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147991%_
             _%id147987%_
             '1
             '#f
             '#f))
          (let ((__tmp149074
                 (let ((__obj149006
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
                      __obj149006
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj149006
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj149006
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj149006)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147991%_
             __tmp149074
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self146252147847%_ _%id147849%_)
        (let* ((_%self147851%_ _%self146252147847%_)
               (_%self147853%_ _%self147851%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147853%_
             _%id147849%_
             '1
             '#f
             '#f))
          (let ((__tmp149075
                 (let ((__obj149007
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
                      __obj149007
                      _%id147849%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj149007
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj149007)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147853%_
             __tmp149075
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
      (lambda (_%self146253147707%_
               _%id147709%_
               _%slot147710%_
               _%checked?147711%_)
        (let* ((_%self147713%_ _%self146253147707%_)
               (_%self147715%_ _%self147713%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147715%_
             _%id147709%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147715%_
             _%slot147710%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147715%_
             _%checked?147711%_
             '4
             '#f
             '#f))
          (let ((__tmp149076
                 (let ((__obj149008
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
                     (##unchecked-structure-set! __obj149008 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj149008
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp149077 (cons _%id147709%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj149008
                      __tmp149077
                      '3
                      '#f
                      '#f))
                   __obj149008)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147715%_
             __tmp149076
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self146254147567%_
               _%id147569%_
               _%slot147570%_
               _%checked?147571%_)
        (let* ((_%self147573%_ _%self146254147567%_)
               (_%self147575%_ _%self147573%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147575%_
             _%id147569%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147575%_
             _%slot147570%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147575%_
             _%checked?147571%_
             '4
             '#f
             '#f))
          (let ((__tmp149078
                 (let ((__obj149009
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
                      __obj149009
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj149009
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp149079 (cons _%id147569%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj149009
                      __tmp149079
                      '3
                      '#f
                      '#f))
                   __obj149009)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147575%_
             __tmp149078
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords147409%_
               _%signature147406147410%_
               _%self146255147412%_
               _%arity147414%_
               _%dispatch147415%_)
        (let* ((_%signature147417%_
                (if (eq? _%signature147406147410%_ absent-value)
                    '#f
                    _%signature147406147410%_))
               (_%self147419%_ _%self146255147412%_)
               (_%self147421%_ _%self147419%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self147421%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147421%_
             _%arity147414%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147421%_
             _%dispatch147415%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147421%_
             _%signature147417%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords147435%_ . _%args147436%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords147435%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords147435%_
                  'signature:
                  absent-value))
               _%args147436%_)))
    (define gxc#!lambda:::init!
      (lambda _%args147407147442%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args147407147442%_)))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords147248%_
               _%signature147245147249%_
               _%self146256147251%_
               _%clauses147253%_)
        (let* ((_%signature147255%_
                (if (eq? _%signature147245147249%_ absent-value)
                    '#f
                    _%signature147245147249%_))
               (_%self147257%_ _%self146256147251%_)
               (_%self147259%_ _%self147257%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self147259%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147259%_
             _%signature147255%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147259%_
             _%clauses147253%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords147273%_ . _%args147274%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords147273%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords147273%_
                  'signature:
                  absent-value))
               _%args147274%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args147246147280%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args147246147280%_)))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self146257147105%_ _%tab147107%_ _%dispatch147108%_)
        (let* ((_%self147110%_ _%self146257147105%_)
               (_%self147112%_ _%self147110%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self147112%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147112%_
             _%tab147107%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147112%_
             _%dispatch147108%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self146258146966%_ _%keys146968%_ _%main146969%_)
        (let* ((_%self146971%_ _%self146258146966%_)
               (_%self146973%_ _%self146971%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self146973%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146973%_
             _%keys146968%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146973%_
             _%main146969%_
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
      (lambda (_%self146259146584%_ _%id146586%_)
        (let* ((_%self146588%_ _%self146259146584%_)
               (_%self146590%_ _%self146588%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146590%_
             _%id146586%_
             '1
             '#f
             '#f))
          (let ((__tmp149080
                 (let ((__obj149010
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
                      __obj149010
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj149010
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj149010
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj149010)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146590%_
             __tmp149080
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
      (lambda (_%klass146453%_)
        (let ((_%$e146455%_
               (##structure-ref _%klass146453%_ '11 gxc#!class::t '#f)))
          (if _%$e146455%_
              _%$e146455%_
              (let ((_%tab146459%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass146453%_
                 _%tab146459%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab146459%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass146444%_ _%method146445%_)
        (let ((_%tab146446146448%_
               (##structure-ref _%klass146444%_ '11 gxc#!class::t '#f)))
          (if _%tab146446146448%_
              (let ((_%tab146451%_ _%tab146446146448%_))
                (declare (not safe))
                (hash-get _%tab146451%_ _%method146445%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a146432%_ _%type-b146433%_)
        (if _%type-a146432%_
            (if _%type-b146433%_
                (let ((_%$e146435%_ (eq? _%type-a146432%_ _%type-b146433%_)))
                  (if _%$e146435%_
                      _%$e146435%_
                      (let ((_%$e146438%_
                             (eq? (##structure-ref
                                   _%type-b146433%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e146438%_
                            _%$e146438%_
                            (let ((_%$e146441%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a146432%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b146433%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e146441%_
                                  _%$e146441%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a146432%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b146433%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a146432%_
                                           _%type-b146433%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a146383%_ _%klass-b146384%_)
        (let ((_%$e146386%_
               (eq? (##structure-ref _%klass-a146383%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b146384%_ '1 gxc#!type::t '#f))))
          (if _%$e146386%_
              _%$e146386%_
              (let ((_%klass-id-b146389%_
                     (##structure-ref _%klass-b146384%_ '1 gxc#!type::t '#f))
                    (_%precedence-list146390%_
                     (##structure-ref _%klass-a146383%_ '3 gxc#!class::t '#f)))
                (let _%loop146392%_ ((_%rest146394%_
                                      _%precedence-list146390%_))
                  (let* ((_%rest146395146403%_ _%rest146394%_)
                         (_%else146397146411%_ (lambda () '#f))
                         (_%K146399146420%_
                          (lambda (_%rest146414%_ _%klass-name146415%_)
                            (let ((_%$e146417%_
                                   (eq? (let ((__tmp149081
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a146383%_
                                                            (cons _%klass-b146384%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name146415%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp149081
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b146389%_)))
                              (if _%$e146417%_
                                  _%$e146417%_
                                  (_%loop146392%_ _%rest146414%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest146395146403%_))
                        (let ((_%hd146400146423%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest146395146403%_)))
                              (_%tl146401146425%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest146395146403%_))))
                          (let* ((_%klass-name146428%_ _%hd146400146423%_)
                                 (_%rest146430%_ _%tl146401146425%_))
                            (_%K146399146420%_
                             _%rest146430%_
                             _%klass-name146428%_)))
                        (_%else146397146411%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type146381%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type146381%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (##structure-ref _%type146381%_ '3 gxc#!class::t '#f))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc146370%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc146370%_ 'gxc#!procedure::t))
            (let ((_%proc146373%_ _%proc146370%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc146373%_ '2 '#f '#f))
                  (let ((__tmp149082
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc146373%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp149082 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@374.11-374.15"
               'contract:
               '!procedure?
               'value:
               _%proc146370%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym146352%_ _%type146353%_ _%local?146354%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type146353%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym146352%_
                     _%type146353%_)))
        (let ((__tmp149083
               (let () (declare (not safe)) (struct->list _%type146353%_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym146352%_ '" " __tmp149083))
        (let ((_%table146356%_
               (if _%local?146354%_
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
          (hash-put! _%table146356%_ _%sym146352%_ _%type146353%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym146361%_ _%type146362%_)
        (let ((_%local?146364%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym146361%_
           _%type146362%_
           _%local?146364%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g149085_
        (let ((_g149084_ (let () (declare (not safe)) (##length _g149085_))))
          (cond ((let () (declare (not safe)) (##fx= _g149084_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g149085_))
                ((let () (declare (not safe)) (##fx= _g149084_ 3))
                 (apply gxc#optimizer-declare-type!__% _g149085_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g149085_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym146346%_ _%type146347%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type146347%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym146346%_
                     _%type146347%_)))
        (let ((_%table146349%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp149086
                 (let () (declare (not safe)) (struct->list _%type146347%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym146346%_ '" " __tmp149086))
          (let ()
            (declare (not safe))
            (hash-put! _%table146349%_ _%sym146346%_ _%type146347%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table146349%_ _%type146347%_ _%sym146346%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym146341%_ _%type146342%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type146342%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym146341%_
                     _%type146342%_)))
        (let ((_%table146344%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table146344%_ _%sym146341%_))
              '#!void
              (begin
                (let ((__tmp149087
                       (let ()
                         (declare (not safe))
                         (struct->list _%type146342%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym146341%_
                   '" "
                   __tmp149087))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table146344%_ _%sym146341%_ _%type146342%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table146344%_
                   _%type146342%_
                   _%sym146341%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym146339%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym146339%_))
        (let ((__tmp149088
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp149088 _%sym146339%_))
        (let ((__tmp149089
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp149089 _%sym146339%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t146307%_
               _%method146308%_
               _%sym146309%_
               _%rebind?146310%_)
        (let ((__tmp149090
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp149090 _%sym146309%_ '#t))
        (let ((_%klass146312%_ (gxc#optimizer-lookup-class _%type-t146307%_)))
          (if _%klass146312%_
              (let* ((_%vtab146314%_ (gxc#!class-method-table _%klass146312%_))
                     (_%$e146316%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab146314%_ _%method146308%_))))
                (if _%$e146316%_
                    ((lambda (_%existing146319%_)
                       (if _%rebind?146310%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t146307%_
                                '" "
                                _%method146308%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab146314%_
                                _%method146308%_
                                _%sym146309%_)))
                           (if (eq? _%existing146319%_ _%sym146309%_)
                               '#!void
                               (let ((__tmp149091
                                      (cons 'bind-method!
                                            (cons _%type-t146307%_
                                                  (cons _%method146308%_
                                                        (cons _%sym146309%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp149091
                                  _%method146308%_)))))
                     _%$e146316%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t146307%_
                         '" "
                         _%method146308%_
                         '" => "
                         _%sym146309%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab146314%_
                         _%method146308%_
                         _%sym146309%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t146307%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t146328%_ _%method146329%_ _%sym146330%_)
        (let ((_%rebind?146332%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t146328%_
           _%method146329%_
           _%sym146330%_
           _%rebind?146332%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g149093_
        (let ((_g149092_ (let () (declare (not safe)) (##length _g149093_))))
          (cond ((let () (declare (not safe)) (##fx= _g149092_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g149093_))
                ((let () (declare (not safe)) (##fx= _g149092_ 4))
                 (apply gxc#optimizer-declare-method!__% _g149093_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g149093_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym146295%_)
        (let ((_%$e146303%_
               (let ((_%ht146296146298%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-local-type))))
                 (if _%ht146296146298%_
                     (let ((_%ht146301%_ _%ht146296146298%_))
                       (declare (not safe))
                       (hash-get _%ht146301%_ _%sym146295%_))
                     '#f))))
          (if _%$e146303%_
              _%$e146303%_
              (let ((__tmp149094
                     (##structure-ref
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-optimizer-info))
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp149094 _%sym146295%_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym146287%_)
        (let ((_%type146288146290%_ (gxc#optimizer-lookup-type _%sym146287%_)))
          (if _%type146288146290%_
              (let ((_%type146293%_ _%type146288146290%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type146293%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (##structure-ref _%type146293%_ '1 gxc#!type::t '#f))
                    _%type146293%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym146283%_)
        (let ((_%table146285%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table146285%_ _%sym146283%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where146268%_ _%sym146269%_)
        (let ((_%$e146272%_ (gxc#optimizer-lookup-class _%sym146269%_)))
          (if _%$e146272%_
              ((lambda (_%g146274146276%_)
                 (let ((_%val146279%_ _%g146274146276%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val146279%_
                          'gxc#!class::t))
                       _%val146279%_
                       (let ()
                         (declare (not safe))
                         (error '"bad cast" gxc#!class::t _%val146279%_)))))
               _%$e146272%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where146268%_
                   _%sym146269%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass146266%_)
        (let ((__tmp149095
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp149095 _%klass146266%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t146263%_ _%method146264%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t146263%_)
         _%method146264%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym146261%_)
        (let ((__tmp149096
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp149096 _%sym146261%_))))))
