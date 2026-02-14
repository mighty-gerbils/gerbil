(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1771037611)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp218649 (list)) (__tmp218648 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp218649
         '(type classes ssxi methods)
         __tmp218648
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args218568%_
        (apply make-instance gxc#optimizer-info::t _%$args218568%_)))
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
      (lambda (_%self218555%_)
        (let ((_%self218558%_ _%self218555%_))
          (if (let ((__tmp218650
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self218558%_))))
                (declare (not safe))
                (##fx< '4 __tmp218650))
              (begin
                (let ((__tmp218651
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self218558%_
                   __tmp218651
                   '1
                   '#f
                   '#f))
                (let ((__tmp218652
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self218558%_
                   __tmp218652
                   '2
                   '#f
                   '#f))
                (let ((__tmp218653
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self218558%_
                   __tmp218653
                   '3
                   '#f
                   '#f))
                (let ((__tmp218654
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self218558%_
                   __tmp218654
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp218655
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self218558%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self218558%_
                       '4
                       __tmp218655))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp218657 (list))
            (__tmp218656
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp218657
         '(id)
         __tmp218656
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args218430%_
        (apply make-instance gxc#!type::t _%$args218430%_)))
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
      (let ((__tmp218659 (list gxc#!type::t))
            (__tmp218658 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp218659
         '()
         __tmp218658
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args218427%_
        (apply make-instance gxc#!abort::t _%$args218427%_)))
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
      (let ((__tmp218661 (list gxc#!type::t))
            (__tmp218660 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp218661
         '()
         __tmp218660
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args218424%_
        (apply make-instance gxc#!alias::t _%$args218424%_)))
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
      (let ((__tmp218663 (list))
            (__tmp218662
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp218663
         '(return effect arguments unchecked origin)
         __tmp218662
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args218421%_
        (apply make-instance gxc#!signature::t _%$args218421%_)))
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
      (let ((__tmp218665 (list gxc#!type::t))
            (__tmp218664
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp218665
         '(signature)
         __tmp218664
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
      (lambda (_%id218408%_ _%signature218409%_)
        (let ((_%signature218412%_ _%signature218409%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id218408%_ _%signature218412%_))))
    (define gxc#make-!procedure
      (lambda (_%id215216%_ _%signature215218%_)
        (if ((lambda (_%$obj215222%_)
               (or (not _%$obj215222%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj215222%_
                      'gxc#!signature::t))))
             _%signature215218%_)
            (let ((_%signature215229%_ _%signature215218%_))
              (gxc#__make-!procedure _%id215216%_ _%signature215229%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature215218%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj218387%_ _%signature218388%_)
        (let* ((_%$obj218391%_ _%$obj218387%_)
               (_%signature218399%_ _%signature218388%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj218391%_
           _%signature218399%_
           '2
           '#f
           '#f))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj215359%_ _%signature215361%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj215359%_ 'gxc#!procedure::t))
            (let ((_%$obj215365%_ _%$obj215359%_))
              (if ((lambda (_%$obj215374%_)
                     (or (not _%$obj215374%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj215374%_
                            'gxc#!signature::t))))
                   _%signature215361%_)
                  (let ((_%signature215381%_ _%signature215361%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj215365%_
                     _%signature215381%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature215361%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj215359%_)
              '#!void))))
    (define gxc#!class-meta::t
      (let ((__tmp218667 (list gxc#!type::t))
            (__tmp218666 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp218667
         '(class)
         __tmp218666
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args218384%_
        (apply make-instance gxc#!class-meta::t _%$args218384%_)))
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
      (let ((__tmp218669 (list gxc#!type::t))
            (__tmp218668
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
         __tmp218669
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp218668
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args218381%_
        (apply make-instance gxc#!class::t _%$args218381%_)))
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
      (let ((__tmp218671 (list gxc#!procedure::t))
            (__tmp218670 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp218671
         '()
         __tmp218670
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args218378%_
        (apply make-instance gxc#!predicate::t _%$args218378%_)))
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
      (let ((__tmp218673 (list gxc#!procedure::t))
            (__tmp218672 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp218673
         '()
         __tmp218672
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args218375%_
        (apply make-instance gxc#!constructor::t _%$args218375%_)))
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
      (let ((__tmp218675 (list gxc#!procedure::t))
            (__tmp218674 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp218675
         '(slot checked?)
         __tmp218674
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args218372%_
        (apply make-instance gxc#!accessor::t _%$args218372%_)))
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
      (let ((__tmp218677 (list gxc#!procedure::t))
            (__tmp218676 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp218677
         '(slot checked?)
         __tmp218676
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args218369%_
        (apply make-instance gxc#!mutator::t _%$args218369%_)))
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
      (let ((__tmp218679 (list gxc#!type::t))
            (__tmp218678 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp218679
         '(methods)
         __tmp218678
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args218366%_
        (apply make-instance gxc#!interface::t _%$args218366%_)))
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
      (let ((__tmp218681 (list gxc#!procedure::t))
            (__tmp218680
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp218681
         '(arity dispatch inline inline-typedecl)
         __tmp218680
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args218363%_
        (apply make-instance gxc#!lambda::t _%$args218363%_)))
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
      (let ((__tmp218683 (list gxc#!procedure::t))
            (__tmp218682 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp218683
         '(clauses)
         __tmp218682
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args218360%_
        (apply make-instance gxc#!case-lambda::t _%$args218360%_)))
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
      (let ((__tmp218685 (list gxc#!procedure::t))
            (__tmp218684
             (cons (cons 'struct: '#t) '((equal: table dispatch)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp218685
         '(table dispatch)
         __tmp218684
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args218357%_
        (apply make-instance gxc#!kw-lambda::t _%$args218357%_)))
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
      (let ((__tmp218687 (list gxc#!procedure::t))
            (__tmp218686 (cons (cons 'struct: '#t) '((equal: keys main)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp218687
         '(keys main)
         __tmp218686
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args218354%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args218354%_)))
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
      (let ((__tmp218688 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp218688
         '()
         '((equal:))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args218351%_
        (apply make-instance gxc#!primitive::t _%$args218351%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp218690 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp218689 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp218690
         '()
         __tmp218689
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args218348%_
        (apply make-instance gxc#!primitive-predicate::t _%$args218348%_)))
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
      (let ((__tmp218692 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp218691 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp218692
         '()
         __tmp218691
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args218345%_
        (apply make-instance gxc#!primitive-lambda::t _%$args218345%_)))
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
      (let ((__tmp218694 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp218693 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp218694
         '()
         __tmp218693
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args218342%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args218342%_)))
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
      (lambda (_%self218329%_)
        (let ((_%self218332%_ _%self218329%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self218332%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self218192%_ _%klass218193%_)
        (let ((_%self218196%_ _%self218192%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self218196%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self218196%_
             _%klass218193%_
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
      (lambda (_%self217882%_
               _%id217883%_
               _%super217884%_
               _%slots217885%_
               _%ctor-method217886%_
               _%struct?217887%_
               _%final?217888%_
               _%system?217889%_
               _%metaclass217890%_)
        (let ((_%self217893%_ _%self217882%_))
          (let _%lp217904%_ ((_%rest217906%_ _%super217884%_))
            (let* ((_%rest217907217915%_ _%rest217906%_)
                   (_%else217909217923%_ (lambda () '#!void))
                   (_%K217911217929%_
                    (lambda (_%rest217926%_ _%super-id217927%_)
                      (if (let ((__tmp218695
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id217883%_ '()))
                                  _%super-id217927%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp218695 '8 '#f '#f))
                          (let ((__tmp218696
                                 (cons '!class (cons _%id217883%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp218696
                             _%super-id217927%_))
                          '#!void)
                      (_%lp217904%_ _%rest217926%_))))
              (if (pair? _%rest217907217915%_)
                  (let ((_%hd217912217932%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest217907217915%_)))
                        (_%tl217913217934%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest217907217915%_))))
                    (let* ((_%super-id217937%_ _%hd217912217932%_)
                           (_%rest217939%_ _%tl217913217934%_))
                      (_%K217911217929%_ _%rest217939%_ _%super-id217937%_)))
                  '#!void)))
          (let* ((_%ctor-method217990%_
                  (let ((_%$e217941%_ _%ctor-method217886%_))
                    (if _%$e217941%_
                        _%$e217941%_
                        (let _%lp217944%_ ((_%rest217946%_ _%super217884%_)
                                           (_%method217947%_ '#f))
                          (let* ((_%rest217948217956%_ _%rest217946%_)
                                 (_%else217950217964%_
                                  (lambda () _%method217947%_))
                                 (_%K217952217978%_
                                  (lambda (_%rest217967%_ _%super-id217968%_)
                                    (let* ((_%klass217970%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id217883%_ '()))
                                             _%super-id217968%_))
                                           (_%$e217972%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass217970%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e217972%_
                                          ((lambda (_%ctor-method217975%_)
                                             (if _%method217947%_
                                                 (if (eq? _%ctor-method217975%_
                                                          _%method217947%_)
                                                     (_%lp217944%_
                                                      _%rest217967%_
                                                      _%ctor-method217975%_)
                                                     (let ((__tmp218697
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id217883%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp218697
                _%method217947%_
                _%ctor-method217975%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp217944%_
                                                  _%rest217967%_
                                                  _%ctor-method217975%_)))
                                           _%$e217972%_)
                                          (_%lp217944%_
                                           _%rest217967%_
                                           _%method217947%_))))))
                            (if (pair? _%rest217948217956%_)
                                (let ((_%hd217953217981%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest217948217956%_)))
                                      (_%tl217954217983%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest217948217956%_))))
                                  (let* ((_%super-id217986%_
                                          _%hd217953217981%_)
                                         (_%rest217988%_ _%tl217954217983%_))
                                    (_%K217952217978%_
                                     _%rest217988%_
                                     _%super-id217986%_)))
                                (_%else217950217964%_)))))))
                 (_g218698_
                  (let ((__tmp218702
                         (lambda (_%klass-id217992%_)
                           (cons _%klass-id217992%_
                                 (let ((__tmp218703
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id217883%_ '()))
                                         _%klass-id217992%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp218703
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp218700
                         (lambda (_%klass-id217994%_)
                           (let ((__tmp218701
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id217883%_ '()))
                                   _%klass-id217994%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp218701
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp218702
                     __tmp218700
                     eq?
                     identity
                     '()
                     _%super217884%_))))
            (begin
              (let ((_g218699_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g218698_)
                           (##values-length _g218698_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g218699_ 2)))
                    (error "Context expects 2 values" _g218699_)))
              (let ((_%precedence-list217996%_
                     (let () (declare (not safe)) (##values-ref _g218698_ 0)))
                    (_%base-struct217997%_
                     (let () (declare (not safe)) (##values-ref _g218698_ 1))))
                (let* ((_%precedence-list218041%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id217883%_ '(t object class)))
                            _%precedence-list217996%_
                            (if (memq 'object::t _%precedence-list217996%_)
                                _%precedence-list217996%_
                                (if _%system?217889%_
                                    (if (memq 't::t _%precedence-list217996%_)
                                        _%precedence-list217996%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list217996%_
                                           '(t::t))))
                                    (let _%loop218003%_ ((_%tail218005%_
                                                          _%precedence-list217996%_)
                                                         (_%head218006%_ '()))
                                      (let* ((_%tail218007218015%_
                                              _%tail218005%_)
                                             (_%else218009218023%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (foldl__0
                                                   cons
                                                   '(object::t t::t)
                                                   _%head218006%_))))
                                             (_%K218011218029%_
                                              (lambda (_%rest218026%_
                                                       _%hd218027%_)
                                                (if (eq? _%hd218027%_ 't::t)
                                                    (let ((__tmp218704
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail218005%_)))
              (declare (not safe))
              (foldl__0 cons __tmp218704 _%head218006%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop218003%_
                                                     _%rest218026%_
                                                     (cons _%hd218027%_
                                                           _%head218006%_))))))
                                        (if (pair? _%tail218007218015%_)
                                            (let ((_%hd218012218032%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail218007218015%_)))
                                                  (_%tl218013218034%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail218007218015%_))))
                                              (let* ((_%hd218037%_
                                                      _%hd218012218032%_)
                                                     (_%rest218039%_
                                                      _%tl218013218034%_))
                                                (_%K218011218029%_
                                                 _%rest218039%_
                                                 _%hd218037%_)))
                                            (_%else218009218023%_))))))))
                       (_%fields218043%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id217883%_ '()))
                         _%base-struct217997%_
                         _%precedence-list218041%_
                         _%slots217885%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self217893%_
                     _%id217883%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self217893%_
                     _%super217884%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self217893%_
                     _%precedence-list218041%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self217893%_
                     _%slots217885%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self217893%_
                     _%fields218043%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self217893%_
                     _%ctor-method217990%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self217893%_
                     _%struct?217887%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self217893%_
                     _%final?217888%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self217893%_
                     _%metaclass217890%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self218046%_
               _%id218047%_
               _%super218048%_
               _%precedence-list218049%_
               _%slots218050%_
               _%fields218051%_
               _%constructor218052%_
               _%struct?218053%_
               _%final?218054%_
               _%system?218055%_
               _%metaclass218056%_
               _%methods218057%_)
        (let ((_%self218060%_ _%self218046%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self218060%_
             _%id218047%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self218060%_
             _%super218048%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self218060%_
             _%precedence-list218049%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self218060%_
             _%slots218050%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self218060%_
             _%fields218051%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self218060%_
             _%constructor218052%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self218060%_
             _%struct?218053%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self218060%_
             _%final?218054%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self218060%_
             _%metaclass218056%_
             '10
             '#f
             '#f))
          (if _%methods218057%_
              (let ((__tmp218705
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods218057%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self218060%_
                 __tmp218705
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g218706_
        (let ((_g218707_ (let () (declare (not safe)) (##length _g218706_))))
          (cond ((let () (declare (not safe)) (##fx= _g218707_ 9))
                 (apply gxc#!class:::init!__0 _g218706_))
                ((let () (declare (not safe)) (##fx= _g218707_ 12))
                 (apply gxc#!class:::init!__1 _g218706_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g218706_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where217734%_
               _%base-struct217735%_
               _%precedence-list217736%_
               _%direct-slots217737%_)
        (let* ((_%base-fields217739%_
                (if _%base-struct217735%_
                    (let ((__tmp218708
                           (gxc#optimizer-resolve-class
                            _%where217734%_
                            _%base-struct217735%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp218708 '5 '#f '#f))
                    '()))
               (_%r-fields217741%_ (reverse _%base-fields217739%_))
               (_%seen-slots217749%_
                (let ((_%tab217743%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g217744217746%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab217743%_ _%g217744217746%_ '#t)))
                   _%base-fields217739%_)
                  _%tab217743%_))
               (_%process-slot217753%_
                (lambda (_%slot217751%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots217749%_ _%slot217751%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots217749%_
                           _%slot217751%_
                           '#t))
                        (set! _%r-fields217741%_
                              (cons _%slot217751%_ _%r-fields217741%_)))))))
          (for-each
           (lambda (_%mixin217756%_)
             (let ((_%klass217758%_
                    (gxc#optimizer-resolve-class
                     _%where217734%_
                     _%mixin217756%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass217758%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot217753%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass217758%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list217736%_)
          (for-each _%process-slot217753%_ _%direct-slots217737%_)
          (let () (declare (not safe)) (##reverse _%r-fields217741%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass217693%_ _%slot217694%_)
        (let _%lp217696%_ ((_%rest217698%_
                            (##structure-ref
                             _%klass217693%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset217699%_ '1))
          (let* ((_%rest217700217708%_ _%rest217698%_)
                 (_%else217702217716%_
                  (lambda ()
                    (let ((__tmp218710
                           (##structure-ref
                            _%klass217693%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp218709
                           (##structure-ref
                            _%klass217693%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp218710
                       __tmp218709
                       _%slot217694%_))))
                 (_%K217704217722%_
                  (lambda (_%rest217719%_ _%s217720%_)
                    (if (eq? _%s217720%_ _%slot217694%_)
                        _%offset217699%_
                        (_%lp217696%_
                         _%rest217719%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset217699%_ '1)))))))
            (if (pair? _%rest217700217708%_)
                (let ((_%hd217705217725%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest217700217708%_)))
                      (_%tl217706217727%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest217700217708%_))))
                  (let* ((_%s217730%_ _%hd217705217725%_)
                         (_%rest217732%_ _%tl217706217727%_))
                    (_%K217704217722%_ _%rest217732%_ _%s217730%_)))
                (_%else217702217716%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass217651%_ _%slot217652%_)
        (if (gxc#!class-struct-slot? _%klass217651%_ _%slot217652%_)
            _%klass217651%_
            (let _%lp217654%_ ((_%rest217656%_
                                (##structure-ref
                                 _%klass217651%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest217657217665%_ _%rest217656%_)
                     (_%else217659217673%_ (lambda () '#f))
                     (_%K217661217681%_
                      (lambda (_%rest217676%_ _%super217677%_)
                        (let ((_%super-class217679%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass217651%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot217652%_ '())))
                                _%super217677%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class217679%_
                               _%slot217652%_)
                              _%super-class217679%_
                              (_%lp217654%_ _%rest217676%_))))))
                (if (pair? _%rest217657217665%_)
                    (let ((_%hd217662217684%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest217657217665%_)))
                          (_%tl217663217686%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest217657217665%_))))
                      (let* ((_%super217689%_ _%hd217662217684%_)
                             (_%rest217691%_ _%tl217663217686%_))
                        (_%K217661217681%_ _%rest217691%_ _%super217689%_)))
                    (_%else217659217673%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass217648%_ _%slot217649%_)
        (if (##structure-ref _%klass217648%_ '7 gxc#!class::t '#f)
            (memq _%slot217649%_
                  (##structure-ref _%klass217648%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self217633%_ _%id217634%_)
        (let ((_%self217637%_ _%self217633%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217637%_
             _%id217634%_
             '1
             '#f
             '#f))
          (let ((__tmp218711
                 (let ((__obj218643
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
                      __obj218643
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj218643
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj218643
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj218643)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217637%_
             __tmp218711
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self217496%_ _%id217497%_)
        (let ((_%self217500%_ _%self217496%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217500%_
             _%id217497%_
             '1
             '#f
             '#f))
          (let ((__tmp218712
                 (let ((__obj218644
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
                      __obj218644
                      _%id217497%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj218644
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj218644)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217500%_
             __tmp218712
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
      (lambda (_%self217357%_ _%id217358%_ _%slot217359%_ _%checked?217360%_)
        (let ((_%self217363%_ _%self217357%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217363%_
             _%id217358%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217363%_
             _%slot217359%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217363%_
             _%checked?217360%_
             '4
             '#f
             '#f))
          (let ((__tmp218713
                 (let ((__obj218645
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
                     (##unchecked-structure-set! __obj218645 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj218645
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp218714 (cons _%id217358%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj218645
                      __tmp218714
                      '3
                      '#f
                      '#f))
                   __obj218645)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217363%_
             __tmp218713
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self217218%_ _%id217219%_ _%slot217220%_ _%checked?217221%_)
        (let ((_%self217224%_ _%self217218%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217224%_
             _%id217219%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217224%_
             _%slot217220%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217224%_
             _%checked?217221%_
             '4
             '#f
             '#f))
          (let ((__tmp218715
                 (let ((__obj218646
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
                      __obj218646
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj218646
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp218716 (cons _%id217219%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj218646
                      __tmp218716
                      '3
                      '#f
                      '#f))
                   __obj218646)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217224%_
             __tmp218715
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords217062%_
               _%signature217059217063%_
               _%self217064%_
               _%arity217065%_
               _%dispatch217066%_)
        (let* ((_%signature217068%_
                (if (eq? _%signature217059217063%_ absent-value)
                    '#f
                    _%signature217059217063%_))
               (_%self217071%_ _%self217064%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self217071%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217071%_
             _%arity217065%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217071%_
             _%dispatch217066%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217071%_
             _%signature217068%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords217086%_ . _%args217087%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords217086%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords217086%_
                  'signature:
                  absent-value))
               _%args217087%_)))
    (define gxc#!lambda:::init!
      (lambda _%args217060217093%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args217060217093%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords216903%_
               _%signature216900216904%_
               _%self216905%_
               _%clauses216906%_)
        (let* ((_%signature216908%_
                (if (eq? _%signature216900216904%_ absent-value)
                    '#f
                    _%signature216900216904%_))
               (_%self216911%_ _%self216905%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self216911%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self216911%_
             _%signature216908%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self216911%_
             _%clauses216906%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords216926%_ . _%args216927%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords216926%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords216926%_
                  'signature:
                  absent-value))
               _%args216927%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args216901216933%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args216901216933%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self216761%_ _%tab216762%_ _%dispatch216763%_)
        (let ((_%self216766%_ _%self216761%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self216766%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self216766%_
             _%tab216762%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self216766%_
             _%dispatch216763%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self216623%_ _%keys216624%_ _%main216625%_)
        (let ((_%self216628%_ _%self216623%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self216628%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self216628%_
             _%keys216624%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self216628%_
             _%main216625%_
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
      (lambda (_%self216242%_ _%id216243%_)
        (let ((_%self216246%_ _%self216242%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self216246%_
             _%id216243%_
             '1
             '#f
             '#f))
          (let ((__tmp218717
                 (let ((__obj218647
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
                      __obj218647
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj218647
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj218647
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj218647)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self216246%_
             __tmp218717
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
      (lambda (_%klass216112%_)
        (let ((_%$e216114%_
               (##structure-ref _%klass216112%_ '11 gxc#!class::t '#f)))
          (if _%$e216114%_
              _%$e216114%_
              (let ((_%tab216118%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass216112%_
                 _%tab216118%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab216118%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass216104%_ _%method216105%_)
        (let ((_%tab216106216108%_
               (##structure-ref _%klass216104%_ '11 gxc#!class::t '#f)))
          (if _%tab216106216108%_
              (let ((_%tab216110%_ _%tab216106216108%_))
                (declare (not safe))
                (hash-get _%tab216110%_ _%method216105%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a216089%_ _%type-b216090%_)
        (if _%type-a216089%_
            (if _%type-b216090%_
                (let ((_%$e216092%_ (eq? _%type-a216089%_ _%type-b216090%_)))
                  (if _%$e216092%_
                      _%$e216092%_
                      (let ((_%$e216095%_
                             (eq? (##structure-ref
                                   _%type-b216090%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e216095%_
                            _%$e216095%_
                            (let ((_%$e216098%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a216089%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b216090%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e216098%_
                                  _%$e216098%_
                                  (let ((_%$e216101%_
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-instance-of?
                                                _%type-a216089%_
                                                'gxc#!class::t))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-instance-of?
                                                    _%type-b216090%_
                                                    'gxc#!class::t))
                                                 (gxc#!class-subclass?
                                                  _%type-a216089%_
                                                  _%type-b216090%_)
                                                 '#f)
                                             '#f)))
                                    (if _%$e216101%_
                                        _%$e216101%_
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%type-a216089%_
                                               'gxc#!interface::t))
                                            (eq? (##structure-ref
                                                  _%type-b216090%_
                                                  '1
                                                  gxc#!type::t
                                                  '#f)
                                                 'gerbil#interface-descriptor::t)
                                            '#f)))))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a216040%_ _%klass-b216041%_)
        (let ((_%$e216043%_
               (eq? (##structure-ref _%klass-a216040%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b216041%_ '1 gxc#!type::t '#f))))
          (if _%$e216043%_
              _%$e216043%_
              (let ((_%klass-id-b216046%_
                     (##structure-ref _%klass-b216041%_ '1 gxc#!type::t '#f))
                    (_%precedence-list216047%_
                     (##structure-ref _%klass-a216040%_ '3 gxc#!class::t '#f)))
                (let _%loop216049%_ ((_%rest216051%_
                                      _%precedence-list216047%_))
                  (let* ((_%rest216052216060%_ _%rest216051%_)
                         (_%else216054216068%_ (lambda () '#f))
                         (_%K216056216077%_
                          (lambda (_%rest216071%_ _%klass-name216072%_)
                            (let ((_%$e216074%_
                                   (eq? (let ((__tmp218718
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a216040%_
                                                            (cons _%klass-b216041%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name216072%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp218718
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b216046%_)))
                              (if _%$e216074%_
                                  _%$e216074%_
                                  (_%loop216049%_ _%rest216071%_))))))
                    (if (pair? _%rest216052216060%_)
                        (let ((_%hd216057216080%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest216052216060%_)))
                              (_%tl216058216082%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest216052216060%_))))
                          (let* ((_%klass-name216085%_ _%hd216057216080%_)
                                 (_%rest216087%_ _%tl216058216082%_))
                            (_%K216056216077%_
                             _%rest216087%_
                             _%klass-name216085%_)))
                        (_%else216054216068%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type216038%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type216038%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type216038%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc216027%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc216027%_ 'gxc#!procedure::t))
            (let ((_%proc216030%_ _%proc216027%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc216030%_ '2 '#f '#f))
                  (let ((__tmp218719
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc216030%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp218719 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@382.11-382.15"
               'contract:
               '!procedure?
               'value:
               _%proc216027%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym216009%_ _%type216010%_ _%local?216011%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type216010%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym216009%_
                     _%type216010%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym216009%_ '" " _%type216010%_))
        (let ((_%table216013%_
               (if _%local?216011%_
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
          (hash-put! _%table216013%_ _%sym216009%_ _%type216010%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym216018%_ _%type216019%_)
        (let ((_%local?216021%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym216018%_
           _%type216019%_
           _%local?216021%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g218720_
        (let ((_g218721_ (let () (declare (not safe)) (##length _g218720_))))
          (cond ((let () (declare (not safe)) (##fx= _g218721_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g218720_))
                ((let () (declare (not safe)) (##fx= _g218721_ 3))
                 (apply gxc#optimizer-declare-type!__% _g218720_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g218720_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym216003%_ _%type216004%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type216004%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym216003%_
                     _%type216004%_)))
        (let ((_%table216006%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp218722
                 (let () (declare (not safe)) (struct->list _%type216004%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym216003%_ '" " __tmp218722))
          (let ()
            (declare (not safe))
            (hash-put! _%table216006%_ _%sym216003%_ _%type216004%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table216006%_ _%type216004%_ _%sym216003%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym215998%_ _%type215999%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type215999%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym215998%_
                     _%type215999%_)))
        (let ((_%table216001%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table216001%_ _%sym215998%_))
              '#!void
              (begin
                (let ((__tmp218723
                       (let ()
                         (declare (not safe))
                         (struct->list _%type215999%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym215998%_
                   '" "
                   __tmp218723))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table216001%_ _%sym215998%_ _%type215999%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table216001%_
                   _%type215999%_
                   _%sym215998%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym215996%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym215996%_))
        (let ((__tmp218724
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp218724 _%sym215996%_))
        (let ((__tmp218725
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp218725 _%sym215996%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t215964%_
               _%method215965%_
               _%sym215966%_
               _%rebind?215967%_)
        (let ((__tmp218726
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp218726 _%sym215966%_ '#t))
        (let ((_%klass215969%_ (gxc#optimizer-lookup-class _%type-t215964%_)))
          (if _%klass215969%_
              (let* ((_%vtab215971%_ (gxc#!class-method-table _%klass215969%_))
                     (_%$e215973%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab215971%_ _%method215965%_))))
                (if _%$e215973%_
                    ((lambda (_%existing215976%_)
                       (if _%rebind?215967%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t215964%_
                                '" "
                                _%method215965%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab215971%_
                                _%method215965%_
                                _%sym215966%_)))
                           (if (eq? _%existing215976%_ _%sym215966%_)
                               '#!void
                               (let ((__tmp218727
                                      (cons 'bind-method!
                                            (cons _%type-t215964%_
                                                  (cons _%method215965%_
                                                        (cons _%sym215966%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp218727
                                  _%method215965%_)))))
                     _%$e215973%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t215964%_
                         '" "
                         _%method215965%_
                         '" => "
                         _%sym215966%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab215971%_
                         _%method215965%_
                         _%sym215966%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t215964%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t215985%_ _%method215986%_ _%sym215987%_)
        (let ((_%rebind?215989%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t215985%_
           _%method215986%_
           _%sym215987%_
           _%rebind?215989%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g218728_
        (let ((_g218729_ (let () (declare (not safe)) (##length _g218728_))))
          (cond ((let () (declare (not safe)) (##fx= _g218729_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g218728_))
                ((let () (declare (not safe)) (##fx= _g218729_ 4))
                 (apply gxc#optimizer-declare-method!__% _g218728_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g218728_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym215950%_)
        (let ((_%$e215952%_
               (let ((__tmp218730
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym215950%_ __tmp218730))))
          (if _%$e215952%_
              _%$e215952%_
              (let ((_%$e215960%_
                     (let ((_%ht215954215956%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht215954215956%_
                           (let ((_%ht215958%_ _%ht215954215956%_))
                             (declare (not safe))
                             (hash-get _%ht215958%_ _%sym215950%_))
                           '#f))))
                (if _%$e215960%_
                    _%$e215960%_
                    (let ((__tmp218731
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp218731 _%sym215950%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym215943%_)
        (let ((_%type215944215946%_ (gxc#optimizer-lookup-type _%sym215943%_)))
          (if _%type215944215946%_
              (let ((_%type215948%_ _%type215944215946%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type215948%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type215948%_ '1 '#f '#f)))
                    _%type215948%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym215939%_)
        (let ((_%table215941%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table215941%_ _%sym215939%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where215924%_ _%sym215925%_)
        (let ((_%$e215928%_ (gxc#optimizer-lookup-class _%sym215925%_)))
          (if _%$e215928%_
              ((lambda (_%g215930215932%_)
                 (let ((_%val215935%_ _%g215930215932%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val215935%_
                          'gxc#!class::t))
                       _%val215935%_
                       (begin
                         (raise-contract-violation-error
                          '"contract violation"
                          'context:
                          'gerbil/compiler/optimize-base
                          'contract:
                          '(!class? val)
                          'value:
                          _%val215935%_)
                         '#!void))))
               _%$e215928%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where215924%_
                   _%sym215925%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass215922%_)
        (let ((__tmp218732
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp218732 _%klass215922%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t215919%_ _%method215920%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t215919%_)
         _%method215920%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym215917%_)
        (let ((__tmp218733
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp218733 _%sym215917%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e215392%_
                  (lambda (_%t215858%_)
                    (if (symbol? _%t215858%_)
                        (_%type-e215392%_
                         (gxc#optimizer-lookup-type _%t215858%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t215858%_
                               'gxc#!lambda::t))
                            (let* ((_%t215862%_ _%t215858%_)
                                   (_%t215866%_ _%t215862%_))
                              (_%__lambda-type215518%_ _%t215866%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t215858%_
                                   'gxc#!kw-lambda::t))
                                (let* ((_%t215878%_ _%t215858%_)
                                       (_%t215882%_ _%t215878%_))
                                  (_%__kw-lambda-type215641%_ _%t215882%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t215858%_
                                       'gxc#!kw-lambda-primary::t))
                                    (let* ((_%t215893%_ _%t215858%_)
                                           (_%t215897%_ _%t215893%_))
                                      (_%__kw-lambda-primary-type215764%_
                                       _%t215897%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t215858%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t215908%_ _%t215858%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t215908%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp218734
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t215908%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp218734
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t215858%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t215858%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%__lambda-type215518%_
                  (lambda (_%t215846%_)
                    (let ((_%t215849%_ _%t215846%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t215849%_ '4 '#f '#f))
                          (_%type-e215392%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t215849%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t215849%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp218735
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t215849%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp218735
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%lambda-type215519%_
                  (lambda (_%t215834%_)
                    (let ((_%t215837%_ _%t215834%_))
                      (_%__lambda-type215518%_ _%t215837%_))))
                 (_%__kw-lambda-type215641%_
                  (lambda (_%t215822%_)
                    (let ((_%t215825%_ _%t215822%_))
                      (_%type-e215392%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t215825%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-type215642%_
                  (lambda (_%t215810%_)
                    (let ((_%t215813%_ _%t215810%_))
                      (_%__kw-lambda-type215641%_ _%t215813%_))))
                 (_%__kw-lambda-primary-type215764%_
                  (lambda (_%t215798%_)
                    (let ((_%t215801%_ _%t215798%_))
                      (_%type-e215392%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t215801%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type215765%_
                  (lambda (_%t215786%_)
                    (let ((_%t215789%_ _%t215786%_))
                      (_%__kw-lambda-primary-type215764%_ _%t215789%_)))))
          (let* ((_%ht1215767%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2215769%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result215771%_
                  (if _%ht1215767%_
                      (let () (declare (not safe)) (hash->list _%ht1215767%_))
                      '()))
                 (_%result215773%_
                  (if _%ht2215769%_
                      (let ((__tmp218736
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2215769%_))))
                        (declare (not safe))
                        (foldl__0 cons _%result215771%_ __tmp218736))
                      _%result215771%_)))
            (for-each
             (lambda (_%p215776%_)
               (let* ((_%t215778%_ (cdr _%p215776%_))
                      (_%tr215780%_ (_%type-e215392%_ _%t215778%_)))
                 (set-cdr! _%p215776%_ _%tr215780%_)))
             _%result215773%_)
            (list-sort
             (lambda (_%a215783%_ _%b215784%_)
               (let ((__tmp218738 (symbol->string (car _%a215783%_)))
                     (__tmp218737 (symbol->string (car _%b215784%_))))
                 (declare (not safe))
                 (##string<? __tmp218738 __tmp218737)))
             _%result215773%_)))))))
