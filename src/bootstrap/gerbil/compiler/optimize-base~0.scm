(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1770513298)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp206671 (list)) (__tmp206670 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp206671
         '(type classes ssxi methods)
         __tmp206670
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args206590%_
        (apply make-instance gxc#optimizer-info::t _%$args206590%_)))
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
      (lambda (_%self206577%_)
        (let ((_%self206580%_ _%self206577%_))
          (if (let ((__tmp206672
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self206580%_))))
                (declare (not safe))
                (##fx< '4 __tmp206672))
              (begin
                (let ((__tmp206673
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self206580%_
                   __tmp206673
                   '1
                   '#f
                   '#f))
                (let ((__tmp206674
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self206580%_
                   __tmp206674
                   '2
                   '#f
                   '#f))
                (let ((__tmp206675
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self206580%_
                   __tmp206675
                   '3
                   '#f
                   '#f))
                (let ((__tmp206676
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self206580%_
                   __tmp206676
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp206677
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self206580%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self206580%_
                       '4
                       __tmp206677))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp206679 (list)) (__tmp206678 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp206679
         '(id)
         __tmp206678
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args206452%_
        (apply make-instance gxc#!type::t _%$args206452%_)))
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
      (let ((__tmp206681 (list gxc#!type::t))
            (__tmp206680 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp206681
         '()
         __tmp206680
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args206449%_
        (apply make-instance gxc#!abort::t _%$args206449%_)))
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
      (let ((__tmp206683 (list gxc#!type::t))
            (__tmp206682 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp206683
         '()
         __tmp206682
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args206446%_
        (apply make-instance gxc#!alias::t _%$args206446%_)))
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
      (let ((__tmp206685 (list)) (__tmp206684 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp206685
         '(return effect arguments unchecked origin)
         __tmp206684
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args206443%_
        (apply make-instance gxc#!signature::t _%$args206443%_)))
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
      (let ((__tmp206687 (list gxc#!type::t))
            (__tmp206686 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp206687
         '(signature)
         __tmp206686
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
      (lambda (_%id206430%_ _%signature206431%_)
        (let ((_%signature206434%_ _%signature206431%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id206430%_ _%signature206434%_))))
    (define gxc#make-!procedure
      (lambda (_%id203238%_ _%signature203240%_)
        (if ((lambda (_%$obj203244%_)
               (or (not _%$obj203244%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj203244%_
                      'gxc#!signature::t))))
             _%signature203240%_)
            (let ((_%signature203251%_ _%signature203240%_))
              (gxc#__make-!procedure _%id203238%_ _%signature203251%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature203240%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj206409%_ _%signature206410%_)
        (let* ((_%$obj206413%_ _%$obj206409%_)
               (_%signature206421%_ _%signature206410%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj206413%_
           _%signature206421%_
           '2
           '#f
           '#f))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj203381%_ _%signature203383%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj203381%_ 'gxc#!procedure::t))
            (let ((_%$obj203387%_ _%$obj203381%_))
              (if ((lambda (_%$obj203396%_)
                     (or (not _%$obj203396%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj203396%_
                            'gxc#!signature::t))))
                   _%signature203383%_)
                  (let ((_%signature203403%_ _%signature203383%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj203387%_
                     _%signature203403%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature203383%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj203381%_)
              '#!void))))
    (define gxc#!class-meta::t
      (let ((__tmp206689 (list gxc#!type::t))
            (__tmp206688 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp206689
         '(class)
         __tmp206688
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args206406%_
        (apply make-instance gxc#!class-meta::t _%$args206406%_)))
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
      (let ((__tmp206691 (list gxc#!type::t))
            (__tmp206690 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class::t
         '!class
         __tmp206691
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp206690
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args206403%_
        (apply make-instance gxc#!class::t _%$args206403%_)))
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
      (let ((__tmp206693 (list gxc#!procedure::t))
            (__tmp206692 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp206693
         '()
         __tmp206692
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args206400%_
        (apply make-instance gxc#!predicate::t _%$args206400%_)))
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
      (let ((__tmp206695 (list gxc#!procedure::t))
            (__tmp206694 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp206695
         '()
         __tmp206694
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args206397%_
        (apply make-instance gxc#!constructor::t _%$args206397%_)))
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
      (let ((__tmp206697 (list gxc#!procedure::t))
            (__tmp206696 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp206697
         '(slot checked?)
         __tmp206696
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args206394%_
        (apply make-instance gxc#!accessor::t _%$args206394%_)))
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
      (let ((__tmp206699 (list gxc#!procedure::t))
            (__tmp206698 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp206699
         '(slot checked?)
         __tmp206698
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args206391%_
        (apply make-instance gxc#!mutator::t _%$args206391%_)))
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
      (let ((__tmp206701 (list gxc#!type::t))
            (__tmp206700 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp206701
         '(methods)
         __tmp206700
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args206388%_
        (apply make-instance gxc#!interface::t _%$args206388%_)))
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
      (let ((__tmp206703 (list gxc#!procedure::t))
            (__tmp206702 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp206703
         '(arity dispatch inline inline-typedecl)
         __tmp206702
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args206385%_
        (apply make-instance gxc#!lambda::t _%$args206385%_)))
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
      (let ((__tmp206705 (list gxc#!procedure::t))
            (__tmp206704 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp206705
         '(clauses)
         __tmp206704
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args206382%_
        (apply make-instance gxc#!case-lambda::t _%$args206382%_)))
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
      (let ((__tmp206707 (list gxc#!procedure::t))
            (__tmp206706 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp206707
         '(table dispatch)
         __tmp206706
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args206379%_
        (apply make-instance gxc#!kw-lambda::t _%$args206379%_)))
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
      (let ((__tmp206709 (list gxc#!procedure::t))
            (__tmp206708 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp206709
         '(keys main)
         __tmp206708
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args206376%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args206376%_)))
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
      (let ((__tmp206710 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp206710
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args206373%_
        (apply make-instance gxc#!primitive::t _%$args206373%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp206712 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp206711 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp206712
         '()
         __tmp206711
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args206370%_
        (apply make-instance gxc#!primitive-predicate::t _%$args206370%_)))
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
      (let ((__tmp206714 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp206713 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp206714
         '()
         __tmp206713
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args206367%_
        (apply make-instance gxc#!primitive-lambda::t _%$args206367%_)))
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
      (let ((__tmp206716 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp206715 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp206716
         '()
         __tmp206715
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args206364%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args206364%_)))
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
      (lambda (_%self206351%_)
        (let ((_%self206354%_ _%self206351%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self206354%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self206214%_ _%klass206215%_)
        (let ((_%self206218%_ _%self206214%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self206218%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self206218%_
             _%klass206215%_
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
      (lambda (_%self205904%_
               _%id205905%_
               _%super205906%_
               _%slots205907%_
               _%ctor-method205908%_
               _%struct?205909%_
               _%final?205910%_
               _%system?205911%_
               _%metaclass205912%_)
        (let ((_%self205915%_ _%self205904%_))
          (let _%lp205926%_ ((_%rest205928%_ _%super205906%_))
            (let* ((_%rest205929205937%_ _%rest205928%_)
                   (_%else205931205945%_ (lambda () '#!void))
                   (_%K205933205951%_
                    (lambda (_%rest205948%_ _%super-id205949%_)
                      (if (let ((__tmp206717
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id205905%_ '()))
                                  _%super-id205949%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp206717 '8 '#f '#f))
                          (let ((__tmp206718
                                 (cons '!class (cons _%id205905%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp206718
                             _%super-id205949%_))
                          '#!void)
                      (_%lp205926%_ _%rest205948%_))))
              (if (pair? _%rest205929205937%_)
                  (let ((_%hd205934205954%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest205929205937%_)))
                        (_%tl205935205956%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest205929205937%_))))
                    (let* ((_%super-id205959%_ _%hd205934205954%_)
                           (_%rest205961%_ _%tl205935205956%_))
                      (_%K205933205951%_ _%rest205961%_ _%super-id205959%_)))
                  '#!void)))
          (let* ((_%ctor-method206012%_
                  (let ((_%$e205963%_ _%ctor-method205908%_))
                    (if _%$e205963%_
                        _%$e205963%_
                        (let _%lp205966%_ ((_%rest205968%_ _%super205906%_)
                                           (_%method205969%_ '#f))
                          (let* ((_%rest205970205978%_ _%rest205968%_)
                                 (_%else205972205986%_
                                  (lambda () _%method205969%_))
                                 (_%K205974206000%_
                                  (lambda (_%rest205989%_ _%super-id205990%_)
                                    (let* ((_%klass205992%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id205905%_ '()))
                                             _%super-id205990%_))
                                           (_%$e205994%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass205992%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e205994%_
                                          ((lambda (_%ctor-method205997%_)
                                             (if _%method205969%_
                                                 (if (eq? _%ctor-method205997%_
                                                          _%method205969%_)
                                                     (_%lp205966%_
                                                      _%rest205989%_
                                                      _%ctor-method205997%_)
                                                     (let ((__tmp206719
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id205905%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp206719
                _%method205969%_
                _%ctor-method205997%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp205966%_
                                                  _%rest205989%_
                                                  _%ctor-method205997%_)))
                                           _%$e205994%_)
                                          (_%lp205966%_
                                           _%rest205989%_
                                           _%method205969%_))))))
                            (if (pair? _%rest205970205978%_)
                                (let ((_%hd205975206003%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest205970205978%_)))
                                      (_%tl205976206005%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest205970205978%_))))
                                  (let* ((_%super-id206008%_
                                          _%hd205975206003%_)
                                         (_%rest206010%_ _%tl205976206005%_))
                                    (_%K205974206000%_
                                     _%rest206010%_
                                     _%super-id206008%_)))
                                (_%else205972205986%_)))))))
                 (_g206720_
                  (let ((__tmp206724
                         (lambda (_%klass-id206014%_)
                           (cons _%klass-id206014%_
                                 (let ((__tmp206725
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id205905%_ '()))
                                         _%klass-id206014%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp206725
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp206722
                         (lambda (_%klass-id206016%_)
                           (let ((__tmp206723
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id205905%_ '()))
                                   _%klass-id206016%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp206723
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp206724
                     __tmp206722
                     eq?
                     identity
                     '()
                     _%super205906%_))))
            (begin
              (let ((_g206721_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g206720_)
                           (##values-length _g206720_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g206721_ 2)))
                    (error "Context expects 2 values" _g206721_)))
              (let ((_%precedence-list206018%_
                     (let () (declare (not safe)) (##values-ref _g206720_ 0)))
                    (_%base-struct206019%_
                     (let () (declare (not safe)) (##values-ref _g206720_ 1))))
                (let* ((_%precedence-list206063%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id205905%_ '(t object class)))
                            _%precedence-list206018%_
                            (if (memq 'object::t _%precedence-list206018%_)
                                _%precedence-list206018%_
                                (if _%system?205911%_
                                    (if (memq 't::t _%precedence-list206018%_)
                                        _%precedence-list206018%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list206018%_
                                           '(t::t))))
                                    (let _%loop206025%_ ((_%tail206027%_
                                                          _%precedence-list206018%_)
                                                         (_%head206028%_ '()))
                                      (let* ((_%tail206029206037%_
                                              _%tail206027%_)
                                             (_%else206031206045%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (foldl__0
                                                   cons
                                                   '(object::t t::t)
                                                   _%head206028%_))))
                                             (_%K206033206051%_
                                              (lambda (_%rest206048%_
                                                       _%hd206049%_)
                                                (if (eq? _%hd206049%_ 't::t)
                                                    (let ((__tmp206726
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail206027%_)))
              (declare (not safe))
              (foldl__0 cons __tmp206726 _%head206028%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop206025%_
                                                     _%rest206048%_
                                                     (cons _%hd206049%_
                                                           _%head206028%_))))))
                                        (if (pair? _%tail206029206037%_)
                                            (let ((_%hd206034206054%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail206029206037%_)))
                                                  (_%tl206035206056%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail206029206037%_))))
                                              (let* ((_%hd206059%_
                                                      _%hd206034206054%_)
                                                     (_%rest206061%_
                                                      _%tl206035206056%_))
                                                (_%K206033206051%_
                                                 _%rest206061%_
                                                 _%hd206059%_)))
                                            (_%else206031206045%_))))))))
                       (_%fields206065%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id205905%_ '()))
                         _%base-struct206019%_
                         _%precedence-list206063%_
                         _%slots205907%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self205915%_
                     _%id205905%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self205915%_
                     _%super205906%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self205915%_
                     _%precedence-list206063%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self205915%_
                     _%slots205907%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self205915%_
                     _%fields206065%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self205915%_
                     _%ctor-method206012%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self205915%_
                     _%struct?205909%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self205915%_
                     _%final?205910%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self205915%_
                     _%metaclass205912%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self206068%_
               _%id206069%_
               _%super206070%_
               _%precedence-list206071%_
               _%slots206072%_
               _%fields206073%_
               _%constructor206074%_
               _%struct?206075%_
               _%final?206076%_
               _%system?206077%_
               _%metaclass206078%_
               _%methods206079%_)
        (let ((_%self206082%_ _%self206068%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self206082%_
             _%id206069%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self206082%_
             _%super206070%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self206082%_
             _%precedence-list206071%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self206082%_
             _%slots206072%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self206082%_
             _%fields206073%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self206082%_
             _%constructor206074%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self206082%_
             _%struct?206075%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self206082%_
             _%final?206076%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self206082%_
             _%metaclass206078%_
             '10
             '#f
             '#f))
          (if _%methods206079%_
              (let ((__tmp206727
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods206079%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self206082%_
                 __tmp206727
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g206728_
        (let ((_g206729_ (let () (declare (not safe)) (##length _g206728_))))
          (cond ((let () (declare (not safe)) (##fx= _g206729_ 9))
                 (apply gxc#!class:::init!__0 _g206728_))
                ((let () (declare (not safe)) (##fx= _g206729_ 12))
                 (apply gxc#!class:::init!__1 _g206728_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g206728_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where205756%_
               _%base-struct205757%_
               _%precedence-list205758%_
               _%direct-slots205759%_)
        (let* ((_%base-fields205761%_
                (if _%base-struct205757%_
                    (let ((__tmp206730
                           (gxc#optimizer-resolve-class
                            _%where205756%_
                            _%base-struct205757%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp206730 '5 '#f '#f))
                    '()))
               (_%r-fields205763%_ (reverse _%base-fields205761%_))
               (_%seen-slots205771%_
                (let ((_%tab205765%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g205766205768%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab205765%_ _%g205766205768%_ '#t)))
                   _%base-fields205761%_)
                  _%tab205765%_))
               (_%process-slot205775%_
                (lambda (_%slot205773%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots205771%_ _%slot205773%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots205771%_
                           _%slot205773%_
                           '#t))
                        (set! _%r-fields205763%_
                              (cons _%slot205773%_ _%r-fields205763%_)))))))
          (for-each
           (lambda (_%mixin205778%_)
             (let ((_%klass205780%_
                    (gxc#optimizer-resolve-class
                     _%where205756%_
                     _%mixin205778%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass205780%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot205775%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass205780%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list205758%_)
          (for-each _%process-slot205775%_ _%direct-slots205759%_)
          (let () (declare (not safe)) (##reverse _%r-fields205763%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass205715%_ _%slot205716%_)
        (let _%lp205718%_ ((_%rest205720%_
                            (##structure-ref
                             _%klass205715%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset205721%_ '1))
          (let* ((_%rest205722205730%_ _%rest205720%_)
                 (_%else205724205738%_
                  (lambda ()
                    (let ((__tmp206732
                           (##structure-ref
                            _%klass205715%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp206731
                           (##structure-ref
                            _%klass205715%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp206732
                       __tmp206731
                       _%slot205716%_))))
                 (_%K205726205744%_
                  (lambda (_%rest205741%_ _%s205742%_)
                    (if (eq? _%s205742%_ _%slot205716%_)
                        _%offset205721%_
                        (_%lp205718%_
                         _%rest205741%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset205721%_ '1)))))))
            (if (pair? _%rest205722205730%_)
                (let ((_%hd205727205747%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest205722205730%_)))
                      (_%tl205728205749%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest205722205730%_))))
                  (let* ((_%s205752%_ _%hd205727205747%_)
                         (_%rest205754%_ _%tl205728205749%_))
                    (_%K205726205744%_ _%rest205754%_ _%s205752%_)))
                (_%else205724205738%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass205673%_ _%slot205674%_)
        (if (gxc#!class-struct-slot? _%klass205673%_ _%slot205674%_)
            _%klass205673%_
            (let _%lp205676%_ ((_%rest205678%_
                                (##structure-ref
                                 _%klass205673%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest205679205687%_ _%rest205678%_)
                     (_%else205681205695%_ (lambda () '#f))
                     (_%K205683205703%_
                      (lambda (_%rest205698%_ _%super205699%_)
                        (let ((_%super-class205701%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass205673%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot205674%_ '())))
                                _%super205699%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class205701%_
                               _%slot205674%_)
                              _%super-class205701%_
                              (_%lp205676%_ _%rest205698%_))))))
                (if (pair? _%rest205679205687%_)
                    (let ((_%hd205684205706%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest205679205687%_)))
                          (_%tl205685205708%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest205679205687%_))))
                      (let* ((_%super205711%_ _%hd205684205706%_)
                             (_%rest205713%_ _%tl205685205708%_))
                        (_%K205683205703%_ _%rest205713%_ _%super205711%_)))
                    (_%else205681205695%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass205670%_ _%slot205671%_)
        (if (##structure-ref _%klass205670%_ '7 gxc#!class::t '#f)
            (memq _%slot205671%_
                  (##structure-ref _%klass205670%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self205655%_ _%id205656%_)
        (let ((_%self205659%_ _%self205655%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205659%_
             _%id205656%_
             '1
             '#f
             '#f))
          (let ((__tmp206733
                 (let ((__obj206665
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
                      __obj206665
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj206665
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj206665
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj206665)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205659%_
             __tmp206733
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self205518%_ _%id205519%_)
        (let ((_%self205522%_ _%self205518%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205522%_
             _%id205519%_
             '1
             '#f
             '#f))
          (let ((__tmp206734
                 (let ((__obj206666
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
                      __obj206666
                      _%id205519%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj206666
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj206666)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205522%_
             __tmp206734
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
      (lambda (_%self205379%_ _%id205380%_ _%slot205381%_ _%checked?205382%_)
        (let ((_%self205385%_ _%self205379%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205385%_
             _%id205380%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205385%_
             _%slot205381%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205385%_
             _%checked?205382%_
             '4
             '#f
             '#f))
          (let ((__tmp206735
                 (let ((__obj206667
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
                     (##unchecked-structure-set! __obj206667 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj206667
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp206736 (cons _%id205380%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj206667
                      __tmp206736
                      '3
                      '#f
                      '#f))
                   __obj206667)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205385%_
             __tmp206735
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self205240%_ _%id205241%_ _%slot205242%_ _%checked?205243%_)
        (let ((_%self205246%_ _%self205240%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205246%_
             _%id205241%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205246%_
             _%slot205242%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205246%_
             _%checked?205243%_
             '4
             '#f
             '#f))
          (let ((__tmp206737
                 (let ((__obj206668
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
                      __obj206668
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj206668
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp206738 (cons _%id205241%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj206668
                      __tmp206738
                      '3
                      '#f
                      '#f))
                   __obj206668)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205246%_
             __tmp206737
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords205084%_
               _%signature205081205085%_
               _%self205086%_
               _%arity205087%_
               _%dispatch205088%_)
        (let* ((_%signature205090%_
                (if (eq? _%signature205081205085%_ absent-value)
                    '#f
                    _%signature205081205085%_))
               (_%self205093%_ _%self205086%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self205093%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205093%_
             _%arity205087%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205093%_
             _%dispatch205088%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self205093%_
             _%signature205090%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords205108%_ . _%args205109%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords205108%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords205108%_
                  'signature:
                  absent-value))
               _%args205109%_)))
    (define gxc#!lambda:::init!
      (lambda _%args205082205115%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args205082205115%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords204925%_
               _%signature204922204926%_
               _%self204927%_
               _%clauses204928%_)
        (let* ((_%signature204930%_
                (if (eq? _%signature204922204926%_ absent-value)
                    '#f
                    _%signature204922204926%_))
               (_%self204933%_ _%self204927%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self204933%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self204933%_
             _%signature204930%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self204933%_
             _%clauses204928%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords204948%_ . _%args204949%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords204948%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords204948%_
                  'signature:
                  absent-value))
               _%args204949%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args204923204955%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args204923204955%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self204783%_ _%tab204784%_ _%dispatch204785%_)
        (let ((_%self204788%_ _%self204783%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self204788%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self204788%_
             _%tab204784%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self204788%_
             _%dispatch204785%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self204645%_ _%keys204646%_ _%main204647%_)
        (let ((_%self204650%_ _%self204645%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self204650%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self204650%_
             _%keys204646%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self204650%_
             _%main204647%_
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
      (lambda (_%self204264%_ _%id204265%_)
        (let ((_%self204268%_ _%self204264%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self204268%_
             _%id204265%_
             '1
             '#f
             '#f))
          (let ((__tmp206739
                 (let ((__obj206669
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
                      __obj206669
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj206669
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj206669
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj206669)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self204268%_
             __tmp206739
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
      (lambda (_%klass204134%_)
        (let ((_%$e204136%_
               (##structure-ref _%klass204134%_ '11 gxc#!class::t '#f)))
          (if _%$e204136%_
              _%$e204136%_
              (let ((_%tab204140%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass204134%_
                 _%tab204140%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab204140%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass204126%_ _%method204127%_)
        (let ((_%tab204128204130%_
               (##structure-ref _%klass204126%_ '11 gxc#!class::t '#f)))
          (if _%tab204128204130%_
              (let ((_%tab204132%_ _%tab204128204130%_))
                (declare (not safe))
                (hash-get _%tab204132%_ _%method204127%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a204111%_ _%type-b204112%_)
        (if _%type-a204111%_
            (if _%type-b204112%_
                (let ((_%$e204114%_ (eq? _%type-a204111%_ _%type-b204112%_)))
                  (if _%$e204114%_
                      _%$e204114%_
                      (let ((_%$e204117%_
                             (eq? (##structure-ref
                                   _%type-b204112%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e204117%_
                            _%$e204117%_
                            (let ((_%$e204120%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a204111%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b204112%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e204120%_
                                  _%$e204120%_
                                  (let ((_%$e204123%_
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-instance-of?
                                                _%type-a204111%_
                                                'gxc#!class::t))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-instance-of?
                                                    _%type-b204112%_
                                                    'gxc#!class::t))
                                                 (gxc#!class-subclass?
                                                  _%type-a204111%_
                                                  _%type-b204112%_)
                                                 '#f)
                                             '#f)))
                                    (if _%$e204123%_
                                        _%$e204123%_
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%type-a204111%_
                                               'gxc#!interface::t))
                                            (eq? (##structure-ref
                                                  _%type-b204112%_
                                                  '1
                                                  gxc#!type::t
                                                  '#f)
                                                 'gerbil#interface-descriptor::t)
                                            '#f)))))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a204062%_ _%klass-b204063%_)
        (let ((_%$e204065%_
               (eq? (##structure-ref _%klass-a204062%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b204063%_ '1 gxc#!type::t '#f))))
          (if _%$e204065%_
              _%$e204065%_
              (let ((_%klass-id-b204068%_
                     (##structure-ref _%klass-b204063%_ '1 gxc#!type::t '#f))
                    (_%precedence-list204069%_
                     (##structure-ref _%klass-a204062%_ '3 gxc#!class::t '#f)))
                (let _%loop204071%_ ((_%rest204073%_
                                      _%precedence-list204069%_))
                  (let* ((_%rest204074204082%_ _%rest204073%_)
                         (_%else204076204090%_ (lambda () '#f))
                         (_%K204078204099%_
                          (lambda (_%rest204093%_ _%klass-name204094%_)
                            (let ((_%$e204096%_
                                   (eq? (let ((__tmp206740
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a204062%_
                                                            (cons _%klass-b204063%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name204094%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp206740
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b204068%_)))
                              (if _%$e204096%_
                                  _%$e204096%_
                                  (_%loop204071%_ _%rest204093%_))))))
                    (if (pair? _%rest204074204082%_)
                        (let ((_%hd204079204102%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest204074204082%_)))
                              (_%tl204080204104%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest204074204082%_))))
                          (let* ((_%klass-name204107%_ _%hd204079204102%_)
                                 (_%rest204109%_ _%tl204080204104%_))
                            (_%K204078204099%_
                             _%rest204109%_
                             _%klass-name204107%_)))
                        (_%else204076204090%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type204060%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type204060%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type204060%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc204049%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc204049%_ 'gxc#!procedure::t))
            (let ((_%proc204052%_ _%proc204049%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc204052%_ '2 '#f '#f))
                  (let ((__tmp206741
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc204052%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp206741 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@382.11-382.15"
               'contract:
               '!procedure?
               'value:
               _%proc204049%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym204031%_ _%type204032%_ _%local?204033%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type204032%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym204031%_
                     _%type204032%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym204031%_ '" " _%type204032%_))
        (let ((_%table204035%_
               (if _%local?204033%_
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
          (hash-put! _%table204035%_ _%sym204031%_ _%type204032%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym204040%_ _%type204041%_)
        (let ((_%local?204043%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym204040%_
           _%type204041%_
           _%local?204043%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g206742_
        (let ((_g206743_ (let () (declare (not safe)) (##length _g206742_))))
          (cond ((let () (declare (not safe)) (##fx= _g206743_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g206742_))
                ((let () (declare (not safe)) (##fx= _g206743_ 3))
                 (apply gxc#optimizer-declare-type!__% _g206742_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g206742_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym204025%_ _%type204026%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type204026%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym204025%_
                     _%type204026%_)))
        (let ((_%table204028%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp206744
                 (let () (declare (not safe)) (struct->list _%type204026%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym204025%_ '" " __tmp206744))
          (let ()
            (declare (not safe))
            (hash-put! _%table204028%_ _%sym204025%_ _%type204026%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table204028%_ _%type204026%_ _%sym204025%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym204020%_ _%type204021%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type204021%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym204020%_
                     _%type204021%_)))
        (let ((_%table204023%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table204023%_ _%sym204020%_))
              '#!void
              (begin
                (let ((__tmp206745
                       (let ()
                         (declare (not safe))
                         (struct->list _%type204021%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym204020%_
                   '" "
                   __tmp206745))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table204023%_ _%sym204020%_ _%type204021%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table204023%_
                   _%type204021%_
                   _%sym204020%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym204018%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym204018%_))
        (let ((__tmp206746
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp206746 _%sym204018%_))
        (let ((__tmp206747
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp206747 _%sym204018%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t203986%_
               _%method203987%_
               _%sym203988%_
               _%rebind?203989%_)
        (let ((__tmp206748
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp206748 _%sym203988%_ '#t))
        (let ((_%klass203991%_ (gxc#optimizer-lookup-class _%type-t203986%_)))
          (if _%klass203991%_
              (let* ((_%vtab203993%_ (gxc#!class-method-table _%klass203991%_))
                     (_%$e203995%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab203993%_ _%method203987%_))))
                (if _%$e203995%_
                    ((lambda (_%existing203998%_)
                       (if _%rebind?203989%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t203986%_
                                '" "
                                _%method203987%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab203993%_
                                _%method203987%_
                                _%sym203988%_)))
                           (if (eq? _%existing203998%_ _%sym203988%_)
                               '#!void
                               (let ((__tmp206749
                                      (cons 'bind-method!
                                            (cons _%type-t203986%_
                                                  (cons _%method203987%_
                                                        (cons _%sym203988%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp206749
                                  _%method203987%_)))))
                     _%$e203995%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t203986%_
                         '" "
                         _%method203987%_
                         '" => "
                         _%sym203988%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab203993%_
                         _%method203987%_
                         _%sym203988%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t203986%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t204007%_ _%method204008%_ _%sym204009%_)
        (let ((_%rebind?204011%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t204007%_
           _%method204008%_
           _%sym204009%_
           _%rebind?204011%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g206750_
        (let ((_g206751_ (let () (declare (not safe)) (##length _g206750_))))
          (cond ((let () (declare (not safe)) (##fx= _g206751_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g206750_))
                ((let () (declare (not safe)) (##fx= _g206751_ 4))
                 (apply gxc#optimizer-declare-method!__% _g206750_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g206750_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym203972%_)
        (let ((_%$e203974%_
               (let ((__tmp206752
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym203972%_ __tmp206752))))
          (if _%$e203974%_
              _%$e203974%_
              (let ((_%$e203982%_
                     (let ((_%ht203976203978%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht203976203978%_
                           (let ((_%ht203980%_ _%ht203976203978%_))
                             (declare (not safe))
                             (hash-get _%ht203980%_ _%sym203972%_))
                           '#f))))
                (if _%$e203982%_
                    _%$e203982%_
                    (let ((__tmp206753
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp206753 _%sym203972%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym203965%_)
        (let ((_%type203966203968%_ (gxc#optimizer-lookup-type _%sym203965%_)))
          (if _%type203966203968%_
              (let ((_%type203970%_ _%type203966203968%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type203970%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type203970%_ '1 '#f '#f)))
                    _%type203970%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym203961%_)
        (let ((_%table203963%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table203963%_ _%sym203961%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where203946%_ _%sym203947%_)
        (let ((_%$e203950%_ (gxc#optimizer-lookup-class _%sym203947%_)))
          (if _%$e203950%_
              ((lambda (_%g203952203954%_)
                 (let ((_%val203957%_ _%g203952203954%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val203957%_
                          'gxc#!class::t))
                       _%val203957%_
                       (begin
                         (raise-contract-violation-error
                          '"contract violation"
                          'context:
                          'gerbil/compiler/optimize-base
                          'contract:
                          '(!class? val)
                          'value:
                          _%val203957%_)
                         '#!void))))
               _%$e203950%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where203946%_
                   _%sym203947%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass203944%_)
        (let ((__tmp206754
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp206754 _%klass203944%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t203941%_ _%method203942%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t203941%_)
         _%method203942%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym203939%_)
        (let ((__tmp206755
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp206755 _%sym203939%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e203414%_
                  (lambda (_%t203880%_)
                    (if (symbol? _%t203880%_)
                        (_%type-e203414%_
                         (gxc#optimizer-lookup-type _%t203880%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t203880%_
                               'gxc#!lambda::t))
                            (let* ((_%t203884%_ _%t203880%_)
                                   (_%t203888%_ _%t203884%_))
                              (_%__lambda-type203540%_ _%t203888%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t203880%_
                                   'gxc#!kw-lambda::t))
                                (let* ((_%t203900%_ _%t203880%_)
                                       (_%t203904%_ _%t203900%_))
                                  (_%__kw-lambda-type203663%_ _%t203904%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t203880%_
                                       'gxc#!kw-lambda-primary::t))
                                    (let* ((_%t203915%_ _%t203880%_)
                                           (_%t203919%_ _%t203915%_))
                                      (_%__kw-lambda-primary-type203786%_
                                       _%t203919%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t203880%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t203930%_ _%t203880%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t203930%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp206756
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t203930%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp206756
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t203880%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t203880%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%__lambda-type203540%_
                  (lambda (_%t203868%_)
                    (let ((_%t203871%_ _%t203868%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t203871%_ '4 '#f '#f))
                          (_%type-e203414%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t203871%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t203871%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp206757
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t203871%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp206757
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%lambda-type203541%_
                  (lambda (_%t203856%_)
                    (let ((_%t203859%_ _%t203856%_))
                      (_%__lambda-type203540%_ _%t203859%_))))
                 (_%__kw-lambda-type203663%_
                  (lambda (_%t203844%_)
                    (let ((_%t203847%_ _%t203844%_))
                      (_%type-e203414%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t203847%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-type203664%_
                  (lambda (_%t203832%_)
                    (let ((_%t203835%_ _%t203832%_))
                      (_%__kw-lambda-type203663%_ _%t203835%_))))
                 (_%__kw-lambda-primary-type203786%_
                  (lambda (_%t203820%_)
                    (let ((_%t203823%_ _%t203820%_))
                      (_%type-e203414%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t203823%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type203787%_
                  (lambda (_%t203808%_)
                    (let ((_%t203811%_ _%t203808%_))
                      (_%__kw-lambda-primary-type203786%_ _%t203811%_)))))
          (let* ((_%ht1203789%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2203791%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result203793%_
                  (if _%ht1203789%_
                      (let () (declare (not safe)) (hash->list _%ht1203789%_))
                      '()))
                 (_%result203795%_
                  (if _%ht2203791%_
                      (let ((__tmp206758
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2203791%_))))
                        (declare (not safe))
                        (foldl__0 cons _%result203793%_ __tmp206758))
                      _%result203793%_)))
            (for-each
             (lambda (_%p203798%_)
               (let* ((_%t203800%_ (cdr _%p203798%_))
                      (_%tr203802%_ (_%type-e203414%_ _%t203800%_)))
                 (set-cdr! _%p203798%_ _%tr203802%_)))
             _%result203795%_)
            (list-sort
             (lambda (_%a203805%_ _%b203806%_)
               (let ((__tmp206760 (symbol->string (car _%a203805%_)))
                     (__tmp206759 (symbol->string (car _%b203806%_))))
                 (declare (not safe))
                 (##string<? __tmp206760 __tmp206759)))
             _%result203795%_)))))))
