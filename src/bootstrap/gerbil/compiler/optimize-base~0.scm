(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1773012987)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp210704 (list)) (__tmp210703 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp210704
         '(type classes ssxi methods)
         __tmp210703
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args210623%_
        (apply make-instance gxc#optimizer-info::t _%$args210623%_)))
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
      (lambda (_%self210610%_)
        (let ((_%self210613%_ _%self210610%_))
          (if (let ((__tmp210705
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self210613%_))))
                (declare (not safe))
                (##fx< '4 __tmp210705))
              (begin
                (let ((__tmp210706
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self210613%_
                   __tmp210706
                   '1
                   '#f
                   '#f))
                (let ((__tmp210707
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self210613%_
                   __tmp210707
                   '2
                   '#f
                   '#f))
                (let ((__tmp210708
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self210613%_
                   __tmp210708
                   '3
                   '#f
                   '#f))
                (let ((__tmp210709
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self210613%_
                   __tmp210709
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp210710
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self210613%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self210613%_
                       '4
                       __tmp210710))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp210712 (list))
            (__tmp210711
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp210712
         '(id)
         __tmp210711
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args210485%_
        (apply make-instance gxc#!type::t _%$args210485%_)))
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
      (let ((__tmp210714 (list gxc#!type::t))
            (__tmp210713 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp210714
         '()
         __tmp210713
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args210482%_
        (apply make-instance gxc#!abort::t _%$args210482%_)))
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
      (let ((__tmp210716 (list gxc#!type::t))
            (__tmp210715 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp210716
         '()
         __tmp210715
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args210479%_
        (apply make-instance gxc#!alias::t _%$args210479%_)))
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
      (let ((__tmp210718 (list))
            (__tmp210717
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp210718
         '(return effect arguments unchecked origin)
         __tmp210717
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args210476%_
        (apply make-instance gxc#!signature::t _%$args210476%_)))
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
      (let ((__tmp210720 (list gxc#!type::t))
            (__tmp210719
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp210720
         '(signature)
         __tmp210719
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
      (lambda (_%id210463%_ _%signature210464%_)
        (let ((_%signature210467%_ _%signature210464%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id210463%_ _%signature210467%_))))
    (define gxc#make-!procedure
      (lambda (_%id207288%_ _%signature207290%_)
        (if ((lambda (_%$obj207294%_)
               (or (not _%$obj207294%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj207294%_
                      'gxc#!signature::t))))
             _%signature207290%_)
            (let ((_%signature207301%_ _%signature207290%_))
              (gxc#__make-!procedure _%id207288%_ _%signature207301%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature207290%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj210442%_ _%signature210443%_)
        (let* ((_%$obj210446%_ _%$obj210442%_)
               (_%signature210454%_ _%signature210443%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj210446%_
           _%signature210454%_
           '2
           '#f
           '#f))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj207431%_ _%signature207433%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj207431%_ 'gxc#!procedure::t))
            (let ((_%$obj207437%_ _%$obj207431%_))
              (if ((lambda (_%$obj207446%_)
                     (or (not _%$obj207446%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj207446%_
                            'gxc#!signature::t))))
                   _%signature207433%_)
                  (let ((_%signature207453%_ _%signature207433%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj207437%_
                     _%signature207453%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature207433%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj207431%_)
              '#!void))))
    (define gxc#!class-meta::t
      (let ((__tmp210722 (list gxc#!type::t))
            (__tmp210721 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp210722
         '(class)
         __tmp210721
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args210439%_
        (apply make-instance gxc#!class-meta::t _%$args210439%_)))
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
      (let ((__tmp210724 (list gxc#!type::t))
            (__tmp210723
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
         __tmp210724
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp210723
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args210436%_
        (apply make-instance gxc#!class::t _%$args210436%_)))
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
      (let ((__tmp210726 (list gxc#!procedure::t))
            (__tmp210725 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp210726
         '()
         __tmp210725
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args210433%_
        (apply make-instance gxc#!predicate::t _%$args210433%_)))
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
      (let ((__tmp210728 (list gxc#!procedure::t))
            (__tmp210727 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp210728
         '()
         __tmp210727
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args210430%_
        (apply make-instance gxc#!constructor::t _%$args210430%_)))
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
      (let ((__tmp210730 (list gxc#!procedure::t))
            (__tmp210729 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp210730
         '(slot checked?)
         __tmp210729
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args210427%_
        (apply make-instance gxc#!accessor::t _%$args210427%_)))
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
      (let ((__tmp210732 (list gxc#!procedure::t))
            (__tmp210731 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp210732
         '(slot checked?)
         __tmp210731
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args210424%_
        (apply make-instance gxc#!mutator::t _%$args210424%_)))
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
      (let ((__tmp210734 (list gxc#!type::t))
            (__tmp210733 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp210734
         '(methods)
         __tmp210733
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args210421%_
        (apply make-instance gxc#!interface::t _%$args210421%_)))
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
      (let ((__tmp210736 (list gxc#!procedure::t))
            (__tmp210735
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp210736
         '(arity dispatch inline inline-typedecl)
         __tmp210735
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args210418%_
        (apply make-instance gxc#!lambda::t _%$args210418%_)))
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
      (let ((__tmp210738 (list gxc#!procedure::t))
            (__tmp210737 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp210738
         '(clauses)
         __tmp210737
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args210415%_
        (apply make-instance gxc#!case-lambda::t _%$args210415%_)))
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
      (let ((__tmp210740 (list gxc#!procedure::t))
            (__tmp210739
             (cons (cons 'struct: '#t) '((equal: table dispatch)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp210740
         '(table dispatch)
         __tmp210739
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args210412%_
        (apply make-instance gxc#!kw-lambda::t _%$args210412%_)))
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
      (let ((__tmp210742 (list gxc#!procedure::t))
            (__tmp210741 (cons (cons 'struct: '#t) '((equal: keys main)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp210742
         '(keys main)
         __tmp210741
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args210409%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args210409%_)))
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
      (let ((__tmp210743 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp210743
         '()
         '((equal:))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args210406%_
        (apply make-instance gxc#!primitive::t _%$args210406%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp210745 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp210744 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp210745
         '()
         __tmp210744
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args210403%_
        (apply make-instance gxc#!primitive-predicate::t _%$args210403%_)))
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
      (let ((__tmp210747 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp210746 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp210747
         '()
         __tmp210746
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args210400%_
        (apply make-instance gxc#!primitive-lambda::t _%$args210400%_)))
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
      (let ((__tmp210749 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp210748 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp210749
         '()
         __tmp210748
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args210397%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args210397%_)))
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
      (lambda (_%self210384%_)
        (let ((_%self210387%_ _%self210384%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self210387%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self210247%_ _%klass210248%_)
        (let ((_%self210251%_ _%self210247%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self210251%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210251%_
             _%klass210248%_
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
      (lambda (_%self209937%_
               _%id209938%_
               _%super209939%_
               _%slots209940%_
               _%ctor-method209941%_
               _%struct?209942%_
               _%final?209943%_
               _%system?209944%_
               _%metaclass209945%_)
        (let ((_%self209948%_ _%self209937%_))
          (let _%lp209959%_ ((_%rest209961%_ _%super209939%_))
            (let* ((_%rest209962209970%_ _%rest209961%_)
                   (_%else209964209978%_ (lambda () '#!void))
                   (_%K209966209984%_
                    (lambda (_%rest209981%_ _%super-id209982%_)
                      (if (let ((__tmp210750
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id209938%_ '()))
                                  _%super-id209982%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp210750 '8 '#f '#f))
                          (let ((__tmp210751
                                 (cons '!class (cons _%id209938%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp210751
                             _%super-id209982%_))
                          '#!void)
                      (_%lp209959%_ _%rest209981%_))))
              (if (pair? _%rest209962209970%_)
                  (let ((_%hd209967209987%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest209962209970%_)))
                        (_%tl209968209989%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest209962209970%_))))
                    (let* ((_%super-id209992%_ _%hd209967209987%_)
                           (_%rest209994%_ _%tl209968209989%_))
                      (_%K209966209984%_ _%rest209994%_ _%super-id209992%_)))
                  '#!void)))
          (let* ((_%ctor-method210045%_
                  (let ((_%$e209996%_ _%ctor-method209941%_))
                    (if _%$e209996%_
                        _%$e209996%_
                        (let _%lp209999%_ ((_%rest210001%_ _%super209939%_)
                                           (_%method210002%_ '#f))
                          (let* ((_%rest210003210011%_ _%rest210001%_)
                                 (_%else210005210019%_
                                  (lambda () _%method210002%_))
                                 (_%K210007210033%_
                                  (lambda (_%rest210022%_ _%super-id210023%_)
                                    (let* ((_%klass210025%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id209938%_ '()))
                                             _%super-id210023%_))
                                           (_%$e210027%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass210025%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e210027%_
                                          ((lambda (_%ctor-method210030%_)
                                             (if _%method210002%_
                                                 (if (eq? _%ctor-method210030%_
                                                          _%method210002%_)
                                                     (_%lp209999%_
                                                      _%rest210022%_
                                                      _%ctor-method210030%_)
                                                     (let ((__tmp210752
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id209938%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp210752
                _%method210002%_
                _%ctor-method210030%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp209999%_
                                                  _%rest210022%_
                                                  _%ctor-method210030%_)))
                                           _%$e210027%_)
                                          (_%lp209999%_
                                           _%rest210022%_
                                           _%method210002%_))))))
                            (if (pair? _%rest210003210011%_)
                                (let ((_%hd210008210036%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest210003210011%_)))
                                      (_%tl210009210038%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest210003210011%_))))
                                  (let* ((_%super-id210041%_
                                          _%hd210008210036%_)
                                         (_%rest210043%_ _%tl210009210038%_))
                                    (_%K210007210033%_
                                     _%rest210043%_
                                     _%super-id210041%_)))
                                (_%else210005210019%_)))))))
                 (_g210753_
                  (let ((__tmp210757
                         (lambda (_%klass-id210047%_)
                           (cons _%klass-id210047%_
                                 (let ((__tmp210758
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id209938%_ '()))
                                         _%klass-id210047%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp210758
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp210755
                         (lambda (_%klass-id210049%_)
                           (let ((__tmp210756
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id209938%_ '()))
                                   _%klass-id210049%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp210756
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp210757
                     __tmp210755
                     eq?
                     identity
                     '()
                     _%super209939%_))))
            (begin
              (let ((_g210754_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g210753_)
                           (##values-length _g210753_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g210754_ 2)))
                    (error "Context expects 2 values" _g210754_)))
              (let ((_%precedence-list210051%_
                     (let () (declare (not safe)) (##values-ref _g210753_ 0)))
                    (_%base-struct210052%_
                     (let () (declare (not safe)) (##values-ref _g210753_ 1))))
                (let* ((_%precedence-list210096%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id209938%_ '(t object class)))
                            _%precedence-list210051%_
                            (if (memq 'object::t _%precedence-list210051%_)
                                _%precedence-list210051%_
                                (if _%system?209944%_
                                    (if (memq 't::t _%precedence-list210051%_)
                                        _%precedence-list210051%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list210051%_
                                           '(t::t))))
                                    (let _%loop210058%_ ((_%tail210060%_
                                                          _%precedence-list210051%_)
                                                         (_%head210061%_ '()))
                                      (let* ((_%tail210062210070%_
                                              _%tail210060%_)
                                             (_%else210064210078%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (foldl__0
                                                   cons
                                                   '(object::t t::t)
                                                   _%head210061%_))))
                                             (_%K210066210084%_
                                              (lambda (_%rest210081%_
                                                       _%hd210082%_)
                                                (if (eq? _%hd210082%_ 't::t)
                                                    (let ((__tmp210759
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail210060%_)))
              (declare (not safe))
              (foldl__0 cons __tmp210759 _%head210061%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop210058%_
                                                     _%rest210081%_
                                                     (cons _%hd210082%_
                                                           _%head210061%_))))))
                                        (if (pair? _%tail210062210070%_)
                                            (let ((_%hd210067210087%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail210062210070%_)))
                                                  (_%tl210068210089%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail210062210070%_))))
                                              (let* ((_%hd210092%_
                                                      _%hd210067210087%_)
                                                     (_%rest210094%_
                                                      _%tl210068210089%_))
                                                (_%K210066210084%_
                                                 _%rest210094%_
                                                 _%hd210092%_)))
                                            (_%else210064210078%_))))))))
                       (_%fields210098%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id209938%_ '()))
                         _%precedence-list210096%_
                         _%slots209940%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self209948%_
                     _%id209938%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self209948%_
                     _%super209939%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self209948%_
                     _%precedence-list210096%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self209948%_
                     _%slots209940%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self209948%_
                     _%fields210098%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self209948%_
                     _%ctor-method210045%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self209948%_
                     _%struct?209942%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self209948%_
                     _%final?209943%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self209948%_
                     _%metaclass209945%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self210101%_
               _%id210102%_
               _%super210103%_
               _%precedence-list210104%_
               _%slots210105%_
               _%fields210106%_
               _%constructor210107%_
               _%struct?210108%_
               _%final?210109%_
               _%system?210110%_
               _%metaclass210111%_
               _%methods210112%_)
        (let ((_%self210115%_ _%self210101%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210115%_
             _%id210102%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210115%_
             _%super210103%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210115%_
             _%precedence-list210104%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210115%_
             _%slots210105%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210115%_
             _%fields210106%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210115%_
             _%constructor210107%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210115%_
             _%struct?210108%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210115%_
             _%final?210109%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self210115%_
             _%metaclass210111%_
             '10
             '#f
             '#f))
          (if _%methods210112%_
              (let ((__tmp210760
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods210112%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self210115%_
                 __tmp210760
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g210761_
        (let ((_g210762_ (let () (declare (not safe)) (##length _g210761_))))
          (cond ((let () (declare (not safe)) (##fx= _g210762_ 9))
                 (apply gxc#!class:::init!__0 _g210761_))
                ((let () (declare (not safe)) (##fx= _g210762_ 12))
                 (apply gxc#!class:::init!__1 _g210761_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g210761_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where209806%_
               _%precedence-list209807%_
               _%direct-slots209808%_)
        (let ((__tmp210764
               (lambda (_%mixin209810%_)
                 (let ((__tmp210765
                        (gxc#optimizer-resolve-class
                         _%where209806%_
                         _%mixin209810%_)))
                   (declare (not safe))
                   (##unchecked-structure-ref __tmp210765 '5 '#f '#f))))
              (__tmp210763
               (lambda (_%slot-list209812%_ _%slot-table209813%_)
                 (cdr _%slot-list209812%_))))
          (declare (not safe))
          (c4-compute-class-slots
           _%precedence-list209807%_
           _%direct-slots209808%_
           __tmp210764
           __tmp210763))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass209765%_ _%slot209766%_)
        (let _%lp209768%_ ((_%rest209770%_
                            (##structure-ref
                             _%klass209765%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset209771%_ '1))
          (let* ((_%rest209772209780%_ _%rest209770%_)
                 (_%else209774209788%_
                  (lambda ()
                    (let ((__tmp210767
                           (##structure-ref
                            _%klass209765%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp210766
                           (##structure-ref
                            _%klass209765%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp210767
                       __tmp210766
                       _%slot209766%_))))
                 (_%K209776209794%_
                  (lambda (_%rest209791%_ _%s209792%_)
                    (if (eq? _%s209792%_ _%slot209766%_)
                        _%offset209771%_
                        (_%lp209768%_
                         _%rest209791%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset209771%_ '1)))))))
            (if (pair? _%rest209772209780%_)
                (let ((_%hd209777209797%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest209772209780%_)))
                      (_%tl209778209799%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest209772209780%_))))
                  (let* ((_%s209802%_ _%hd209777209797%_)
                         (_%rest209804%_ _%tl209778209799%_))
                    (_%K209776209794%_ _%rest209804%_ _%s209802%_)))
                (_%else209774209788%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass209723%_ _%slot209724%_)
        (if (gxc#!class-struct-slot? _%klass209723%_ _%slot209724%_)
            _%klass209723%_
            (let _%lp209726%_ ((_%rest209728%_
                                (##structure-ref
                                 _%klass209723%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest209729209737%_ _%rest209728%_)
                     (_%else209731209745%_ (lambda () '#f))
                     (_%K209733209753%_
                      (lambda (_%rest209748%_ _%super209749%_)
                        (let ((_%super-class209751%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass209723%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot209724%_ '())))
                                _%super209749%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class209751%_
                               _%slot209724%_)
                              _%super-class209751%_
                              (_%lp209726%_ _%rest209748%_))))))
                (if (pair? _%rest209729209737%_)
                    (let ((_%hd209734209756%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest209729209737%_)))
                          (_%tl209735209758%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest209729209737%_))))
                      (let* ((_%super209761%_ _%hd209734209756%_)
                             (_%rest209763%_ _%tl209735209758%_))
                        (_%K209733209753%_ _%rest209763%_ _%super209761%_)))
                    (_%else209731209745%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass209720%_ _%slot209721%_)
        (if (##structure-ref _%klass209720%_ '7 gxc#!class::t '#f)
            (memq _%slot209721%_
                  (##structure-ref _%klass209720%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self209705%_ _%id209706%_)
        (let ((_%self209709%_ _%self209705%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209709%_
             _%id209706%_
             '1
             '#f
             '#f))
          (let ((__tmp210768
                 (let ((__obj210698
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
                      __obj210698
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210698
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210698
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj210698)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209709%_
             __tmp210768
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self209568%_ _%id209569%_)
        (let ((_%self209572%_ _%self209568%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209572%_
             _%id209569%_
             '1
             '#f
             '#f))
          (let ((__tmp210769
                 (let ((__obj210699
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
                      __obj210699
                      _%id209569%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210699
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj210699)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209572%_
             __tmp210769
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
      (lambda (_%self209429%_ _%id209430%_ _%slot209431%_ _%checked?209432%_)
        (let ((_%self209435%_ _%self209429%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209435%_
             _%id209430%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209435%_
             _%slot209431%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209435%_
             _%checked?209432%_
             '4
             '#f
             '#f))
          (let ((__tmp210770
                 (let ((__obj210700
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
                     (##unchecked-structure-set! __obj210700 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210700
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp210771 (cons _%id209430%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210700
                      __tmp210771
                      '3
                      '#f
                      '#f))
                   __obj210700)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209435%_
             __tmp210770
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self209290%_ _%id209291%_ _%slot209292%_ _%checked?209293%_)
        (let ((_%self209296%_ _%self209290%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209296%_
             _%id209291%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209296%_
             _%slot209292%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209296%_
             _%checked?209293%_
             '4
             '#f
             '#f))
          (let ((__tmp210772
                 (let ((__obj210701
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
                      __obj210701
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210701
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp210773 (cons _%id209291%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210701
                      __tmp210773
                      '3
                      '#f
                      '#f))
                   __obj210701)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209296%_
             __tmp210772
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords209134%_
               _%signature209131209135%_
               _%self209136%_
               _%arity209137%_
               _%dispatch209138%_)
        (let* ((_%signature209140%_
                (if (eq? _%signature209131209135%_ absent-value)
                    '#f
                    _%signature209131209135%_))
               (_%self209143%_ _%self209136%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self209143%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209143%_
             _%arity209137%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209143%_
             _%dispatch209138%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209143%_
             _%signature209140%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords209158%_ . _%args209159%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords209158%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords209158%_
                  'signature:
                  absent-value))
               _%args209159%_)))
    (define gxc#!lambda:::init!
      (lambda _%args209132209165%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args209132209165%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords208975%_
               _%signature208972208976%_
               _%self208977%_
               _%clauses208978%_)
        (let* ((_%signature208980%_
                (if (eq? _%signature208972208976%_ absent-value)
                    '#f
                    _%signature208972208976%_))
               (_%self208983%_ _%self208977%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self208983%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208983%_
             _%signature208980%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208983%_
             _%clauses208978%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords208998%_ . _%args208999%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords208998%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords208998%_
                  'signature:
                  absent-value))
               _%args208999%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args208973209005%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args208973209005%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self208833%_ _%tab208834%_ _%dispatch208835%_)
        (let ((_%self208838%_ _%self208833%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self208838%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208838%_
             _%tab208834%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208838%_
             _%dispatch208835%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self208695%_ _%keys208696%_ _%main208697%_)
        (let ((_%self208700%_ _%self208695%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self208700%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208700%_
             _%keys208696%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208700%_
             _%main208697%_
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
      (lambda (_%self208314%_ _%id208315%_)
        (let ((_%self208318%_ _%self208314%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208318%_
             _%id208315%_
             '1
             '#f
             '#f))
          (let ((__tmp210774
                 (let ((__obj210702
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
                      __obj210702
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210702
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210702
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj210702)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208318%_
             __tmp210774
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
      (lambda (_%klass208184%_)
        (let ((_%$e208186%_
               (##structure-ref _%klass208184%_ '11 gxc#!class::t '#f)))
          (if _%$e208186%_
              _%$e208186%_
              (let ((_%tab208190%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass208184%_
                 _%tab208190%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab208190%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass208176%_ _%method208177%_)
        (let ((_%tab208178208180%_
               (##structure-ref _%klass208176%_ '11 gxc#!class::t '#f)))
          (if _%tab208178208180%_
              (let ((_%tab208182%_ _%tab208178208180%_))
                (declare (not safe))
                (hash-get _%tab208182%_ _%method208177%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a208161%_ _%type-b208162%_)
        (if _%type-a208161%_
            (if _%type-b208162%_
                (let ((_%$e208164%_ (eq? _%type-a208161%_ _%type-b208162%_)))
                  (if _%$e208164%_
                      _%$e208164%_
                      (let ((_%$e208167%_
                             (eq? (##structure-ref
                                   _%type-b208162%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e208167%_
                            _%$e208167%_
                            (let ((_%$e208170%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a208161%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b208162%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e208170%_
                                  _%$e208170%_
                                  (let ((_%$e208173%_
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-instance-of?
                                                _%type-a208161%_
                                                'gxc#!class::t))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-instance-of?
                                                    _%type-b208162%_
                                                    'gxc#!class::t))
                                                 (gxc#!class-subclass?
                                                  _%type-a208161%_
                                                  _%type-b208162%_)
                                                 '#f)
                                             '#f)))
                                    (if _%$e208173%_
                                        _%$e208173%_
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%type-a208161%_
                                               'gxc#!interface::t))
                                            (eq? (##structure-ref
                                                  _%type-b208162%_
                                                  '1
                                                  gxc#!type::t
                                                  '#f)
                                                 'gerbil#interface-descriptor::t)
                                            '#f)))))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a208112%_ _%klass-b208113%_)
        (let ((_%$e208115%_
               (eq? (##structure-ref _%klass-a208112%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b208113%_ '1 gxc#!type::t '#f))))
          (if _%$e208115%_
              _%$e208115%_
              (let ((_%klass-id-b208118%_
                     (##structure-ref _%klass-b208113%_ '1 gxc#!type::t '#f))
                    (_%precedence-list208119%_
                     (##structure-ref _%klass-a208112%_ '3 gxc#!class::t '#f)))
                (let _%loop208121%_ ((_%rest208123%_
                                      _%precedence-list208119%_))
                  (let* ((_%rest208124208132%_ _%rest208123%_)
                         (_%else208126208140%_ (lambda () '#f))
                         (_%K208128208149%_
                          (lambda (_%rest208143%_ _%klass-name208144%_)
                            (let ((_%$e208146%_
                                   (eq? (let ((__tmp210775
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a208112%_
                                                            (cons _%klass-b208113%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name208144%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp210775
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b208118%_)))
                              (if _%$e208146%_
                                  _%$e208146%_
                                  (_%loop208121%_ _%rest208143%_))))))
                    (if (pair? _%rest208124208132%_)
                        (let ((_%hd208129208152%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest208124208132%_)))
                              (_%tl208130208154%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest208124208132%_))))
                          (let* ((_%klass-name208157%_ _%hd208129208152%_)
                                 (_%rest208159%_ _%tl208130208154%_))
                            (_%K208128208149%_
                             _%rest208159%_
                             _%klass-name208157%_)))
                        (_%else208126208140%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type208110%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type208110%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type208110%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc208099%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc208099%_ 'gxc#!procedure::t))
            (let ((_%proc208102%_ _%proc208099%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc208102%_ '2 '#f '#f))
                  (let ((__tmp210776
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc208102%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp210776 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@365.11-365.15"
               'contract:
               '!procedure?
               'value:
               _%proc208099%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym208081%_ _%type208082%_ _%local?208083%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type208082%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym208081%_
                     _%type208082%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym208081%_ '" " _%type208082%_))
        (let ((_%table208085%_
               (if _%local?208083%_
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
          (hash-put! _%table208085%_ _%sym208081%_ _%type208082%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym208090%_ _%type208091%_)
        (let ((_%local?208093%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym208090%_
           _%type208091%_
           _%local?208093%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g210777_
        (let ((_g210778_ (let () (declare (not safe)) (##length _g210777_))))
          (cond ((let () (declare (not safe)) (##fx= _g210778_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g210777_))
                ((let () (declare (not safe)) (##fx= _g210778_ 3))
                 (apply gxc#optimizer-declare-type!__% _g210777_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g210777_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym208075%_ _%type208076%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type208076%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym208075%_
                     _%type208076%_)))
        (let ((_%table208078%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp210779
                 (let () (declare (not safe)) (struct->list _%type208076%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym208075%_ '" " __tmp210779))
          (let ()
            (declare (not safe))
            (hash-put! _%table208078%_ _%sym208075%_ _%type208076%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table208078%_ _%type208076%_ _%sym208075%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym208070%_ _%type208071%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type208071%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym208070%_
                     _%type208071%_)))
        (let ((_%table208073%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table208073%_ _%sym208070%_))
              '#!void
              (begin
                (let ((__tmp210780
                       (let ()
                         (declare (not safe))
                         (struct->list _%type208071%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym208070%_
                   '" "
                   __tmp210780))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table208073%_ _%sym208070%_ _%type208071%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table208073%_
                   _%type208071%_
                   _%sym208070%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym208068%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym208068%_))
        (let ((__tmp210781
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp210781 _%sym208068%_))
        (let ((__tmp210782
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp210782 _%sym208068%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t208036%_
               _%method208037%_
               _%sym208038%_
               _%rebind?208039%_)
        (let ((__tmp210783
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp210783 _%sym208038%_ '#t))
        (let ((_%klass208041%_ (gxc#optimizer-lookup-class _%type-t208036%_)))
          (if _%klass208041%_
              (let* ((_%vtab208043%_ (gxc#!class-method-table _%klass208041%_))
                     (_%$e208045%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab208043%_ _%method208037%_))))
                (if _%$e208045%_
                    ((lambda (_%existing208048%_)
                       (if _%rebind?208039%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t208036%_
                                '" "
                                _%method208037%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab208043%_
                                _%method208037%_
                                _%sym208038%_)))
                           (if (eq? _%existing208048%_ _%sym208038%_)
                               '#!void
                               (let ((__tmp210784
                                      (cons 'bind-method!
                                            (cons _%type-t208036%_
                                                  (cons _%method208037%_
                                                        (cons _%sym208038%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp210784
                                  _%method208037%_)))))
                     _%$e208045%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t208036%_
                         '" "
                         _%method208037%_
                         '" => "
                         _%sym208038%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab208043%_
                         _%method208037%_
                         _%sym208038%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t208036%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t208057%_ _%method208058%_ _%sym208059%_)
        (let ((_%rebind?208061%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t208057%_
           _%method208058%_
           _%sym208059%_
           _%rebind?208061%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g210785_
        (let ((_g210786_ (let () (declare (not safe)) (##length _g210785_))))
          (cond ((let () (declare (not safe)) (##fx= _g210786_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g210785_))
                ((let () (declare (not safe)) (##fx= _g210786_ 4))
                 (apply gxc#optimizer-declare-method!__% _g210785_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g210785_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym208022%_)
        (let ((_%$e208024%_
               (let ((__tmp210787
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym208022%_ __tmp210787))))
          (if _%$e208024%_
              _%$e208024%_
              (let ((_%$e208032%_
                     (let ((_%ht208026208028%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht208026208028%_
                           (let ((_%ht208030%_ _%ht208026208028%_))
                             (declare (not safe))
                             (hash-get _%ht208030%_ _%sym208022%_))
                           '#f))))
                (if _%$e208032%_
                    _%$e208032%_
                    (let ((__tmp210788
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp210788 _%sym208022%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym208015%_)
        (let ((_%type208016208018%_ (gxc#optimizer-lookup-type _%sym208015%_)))
          (if _%type208016208018%_
              (let ((_%type208020%_ _%type208016208018%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type208020%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type208020%_ '1 '#f '#f)))
                    _%type208020%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym208011%_)
        (let ((_%table208013%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table208013%_ _%sym208011%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where207996%_ _%sym207997%_)
        (let ((_%$e208000%_ (gxc#optimizer-lookup-class _%sym207997%_)))
          (if _%$e208000%_
              ((lambda (_%g208002208004%_)
                 (let ((_%val208007%_ _%g208002208004%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val208007%_
                          'gxc#!class::t))
                       _%val208007%_
                       (begin
                         (raise-contract-violation-error
                          '"contract violation"
                          'context:
                          'gerbil/compiler/optimize-base
                          'contract:
                          '(!class? val)
                          'value:
                          _%val208007%_)
                         '#!void))))
               _%$e208000%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where207996%_
                   _%sym207997%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass207994%_)
        (let ((__tmp210789
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp210789 _%klass207994%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t207991%_ _%method207992%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t207991%_)
         _%method207992%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym207989%_)
        (let ((__tmp210790
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp210790 _%sym207989%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e207464%_
                  (lambda (_%t207930%_)
                    (if (symbol? _%t207930%_)
                        (_%type-e207464%_
                         (gxc#optimizer-lookup-type _%t207930%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t207930%_
                               'gxc#!lambda::t))
                            (let* ((_%t207934%_ _%t207930%_)
                                   (_%t207938%_ _%t207934%_))
                              (_%__lambda-type207590%_ _%t207938%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t207930%_
                                   'gxc#!kw-lambda::t))
                                (let* ((_%t207950%_ _%t207930%_)
                                       (_%t207954%_ _%t207950%_))
                                  (_%__kw-lambda-type207713%_ _%t207954%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t207930%_
                                       'gxc#!kw-lambda-primary::t))
                                    (let* ((_%t207965%_ _%t207930%_)
                                           (_%t207969%_ _%t207965%_))
                                      (_%__kw-lambda-primary-type207836%_
                                       _%t207969%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t207930%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t207980%_ _%t207930%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t207980%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp210791
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t207980%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp210791
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t207930%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t207930%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%__lambda-type207590%_
                  (lambda (_%t207918%_)
                    (let ((_%t207921%_ _%t207918%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t207921%_ '4 '#f '#f))
                          (_%type-e207464%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t207921%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t207921%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp210792
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t207921%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp210792
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%lambda-type207591%_
                  (lambda (_%t207906%_)
                    (let ((_%t207909%_ _%t207906%_))
                      (_%__lambda-type207590%_ _%t207909%_))))
                 (_%__kw-lambda-type207713%_
                  (lambda (_%t207894%_)
                    (let ((_%t207897%_ _%t207894%_))
                      (_%type-e207464%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t207897%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-type207714%_
                  (lambda (_%t207882%_)
                    (let ((_%t207885%_ _%t207882%_))
                      (_%__kw-lambda-type207713%_ _%t207885%_))))
                 (_%__kw-lambda-primary-type207836%_
                  (lambda (_%t207870%_)
                    (let ((_%t207873%_ _%t207870%_))
                      (_%type-e207464%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t207873%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type207837%_
                  (lambda (_%t207858%_)
                    (let ((_%t207861%_ _%t207858%_))
                      (_%__kw-lambda-primary-type207836%_ _%t207861%_)))))
          (let* ((_%ht1207839%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2207841%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result207843%_
                  (if _%ht1207839%_
                      (let () (declare (not safe)) (hash->list _%ht1207839%_))
                      '()))
                 (_%result207845%_
                  (if _%ht2207841%_
                      (let ((__tmp210793
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2207841%_))))
                        (declare (not safe))
                        (foldl__0 cons _%result207843%_ __tmp210793))
                      _%result207843%_)))
            (for-each
             (lambda (_%p207848%_)
               (let* ((_%t207850%_ (cdr _%p207848%_))
                      (_%tr207852%_ (_%type-e207464%_ _%t207850%_)))
                 (set-cdr! _%p207848%_ _%tr207852%_)))
             _%result207845%_)
            (list-sort
             (lambda (_%a207855%_ _%b207856%_)
               (let ((__tmp210795 (symbol->string (car _%a207855%_)))
                     (__tmp210794 (symbol->string (car _%b207856%_))))
                 (declare (not safe))
                 (##string<? __tmp210795 __tmp210794)))
             _%result207845%_)))))))
