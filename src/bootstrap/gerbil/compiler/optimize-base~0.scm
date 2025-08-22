(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1755903078)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp156881 (list)) (__tmp156880 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp156881
         '(type classes ssxi methods)
         __tmp156880
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args156852%_
        (apply make-instance gxc#optimizer-info::t _%$args156852%_)))
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
      (lambda (_%self153993156837%_)
        (let* ((_%self156840%_ _%self153993156837%_)
               (_%self156842%_ _%self156840%_))
          (if (let ((__tmp156882
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self156842%_))))
                (declare (not safe))
                (##fx< '4 __tmp156882))
              (begin
                (let ((__tmp156883
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self156842%_
                   __tmp156883
                   '1
                   '#f
                   '#f))
                (let ((__tmp156884
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self156842%_
                   __tmp156884
                   '2
                   '#f
                   '#f))
                (let ((__tmp156885
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self156842%_
                   __tmp156885
                   '3
                   '#f
                   '#f))
                (let ((__tmp156886
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self156842%_
                   __tmp156886
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp156887
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self156842%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self156842%_
                       '4
                       __tmp156887))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp156889 (list))
            (__tmp156888
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp156889
         '(id)
         __tmp156888
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args156712%_
        (apply make-instance gxc#!type::t _%$args156712%_)))
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
      (let ((__tmp156891 (list gxc#!type::t))
            (__tmp156890 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp156891
         '()
         __tmp156890
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args156709%_
        (apply make-instance gxc#!abort::t _%$args156709%_)))
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
      (let ((__tmp156893 (list gxc#!type::t))
            (__tmp156892 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp156893
         '()
         __tmp156892
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args156706%_
        (apply make-instance gxc#!alias::t _%$args156706%_)))
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
      (let ((__tmp156895 (list))
            (__tmp156894
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp156895
         '(return effect arguments unchecked origin)
         __tmp156894
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args156703%_
        (apply make-instance gxc#!signature::t _%$args156703%_)))
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
      (let ((__tmp156897 (list gxc#!type::t))
            (__tmp156896
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp156897
         '(signature)
         __tmp156896
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
      (lambda (_%id156682%_ _%signature156683%_)
        (if ((lambda (_%$obj156686%_)
               (or (not _%$obj156686%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj156686%_
                      'gxc#!signature::t))))
             _%signature156683%_)
            (let ((_%signature156693%_ _%signature156683%_))
              (gxc#__make-!procedure _%id156682%_ _%signature156693%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature156683%_)
              '#!void))))
    (define gxc#__make-!procedure
      (lambda (_%id156668%_ _%signature156670%_)
        (let ((_%signature156673%_ _%signature156670%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id156668%_ _%signature156673%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj156637%_ _%signature156638%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj156637%_ 'gxc#!procedure::t))
            (let ((_%$obj156642%_ _%$obj156637%_))
              (if ((lambda (_%$obj156651%_)
                     (or (not _%$obj156651%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj156651%_
                            'gxc#!signature::t))))
                   _%signature156638%_)
                  (let ((_%signature156658%_ _%signature156638%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj156642%_
                     _%signature156658%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature156638%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj156637%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj156614%_ _%signature156616%_)
        (let* ((_%$obj156620%_ _%$obj156614%_)
               (_%signature156628%_ _%signature156616%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj156620%_
           _%signature156628%_
           '2
           '#f
           '#f))))
    (define gxc#!class-meta::t
      (let ((__tmp156899 (list gxc#!type::t))
            (__tmp156898 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp156899
         '(class)
         __tmp156898
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args156611%_
        (apply make-instance gxc#!class-meta::t _%$args156611%_)))
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
      (let ((__tmp156901 (list gxc#!type::t))
            (__tmp156900
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
         __tmp156901
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp156900
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args156608%_
        (apply make-instance gxc#!class::t _%$args156608%_)))
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
      (let ((__tmp156903 (list gxc#!procedure::t))
            (__tmp156902 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp156903
         '()
         __tmp156902
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args156605%_
        (apply make-instance gxc#!predicate::t _%$args156605%_)))
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
      (let ((__tmp156905 (list gxc#!procedure::t))
            (__tmp156904 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp156905
         '()
         __tmp156904
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args156602%_
        (apply make-instance gxc#!constructor::t _%$args156602%_)))
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
      (let ((__tmp156907 (list gxc#!procedure::t))
            (__tmp156906 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp156907
         '(slot checked?)
         __tmp156906
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args156599%_
        (apply make-instance gxc#!accessor::t _%$args156599%_)))
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
      (let ((__tmp156909 (list gxc#!procedure::t))
            (__tmp156908 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp156909
         '(slot checked?)
         __tmp156908
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args156596%_
        (apply make-instance gxc#!mutator::t _%$args156596%_)))
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
      (let ((__tmp156911 (list gxc#!type::t))
            (__tmp156910 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp156911
         '(methods)
         __tmp156910
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args156593%_
        (apply make-instance gxc#!interface::t _%$args156593%_)))
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
      (let ((__tmp156913 (list gxc#!procedure::t))
            (__tmp156912
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp156913
         '(arity dispatch inline inline-typedecl)
         __tmp156912
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args156590%_
        (apply make-instance gxc#!lambda::t _%$args156590%_)))
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
      (let ((__tmp156915 (list gxc#!procedure::t))
            (__tmp156914 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp156915
         '(clauses)
         __tmp156914
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args156587%_
        (apply make-instance gxc#!case-lambda::t _%$args156587%_)))
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
      (let ((__tmp156917 (list gxc#!procedure::t))
            (__tmp156916
             (cons (cons 'struct: '#t) '((equal: table dispatch)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp156917
         '(table dispatch)
         __tmp156916
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args156584%_
        (apply make-instance gxc#!kw-lambda::t _%$args156584%_)))
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
      (let ((__tmp156919 (list gxc#!procedure::t))
            (__tmp156918 (cons (cons 'struct: '#t) '((equal: keys main)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp156919
         '(keys main)
         __tmp156918
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args156581%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args156581%_)))
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
      (let ((__tmp156920 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp156920
         '()
         '((equal:))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args156578%_
        (apply make-instance gxc#!primitive::t _%$args156578%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp156922 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp156921 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp156922
         '()
         __tmp156921
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args156575%_
        (apply make-instance gxc#!primitive-predicate::t _%$args156575%_)))
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
      (let ((__tmp156924 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp156923 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp156924
         '()
         __tmp156923
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args156572%_
        (apply make-instance gxc#!primitive-lambda::t _%$args156572%_)))
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
      (let ((__tmp156926 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp156925 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp156926
         '()
         __tmp156925
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args156569%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args156569%_)))
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
      (lambda (_%self153994156554%_)
        (let* ((_%self156557%_ _%self153994156554%_)
               (_%self156559%_ _%self156557%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self156559%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self153995156416%_ _%klass156418%_)
        (let* ((_%self156420%_ _%self153995156416%_)
               (_%self156422%_ _%self156420%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self156422%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self156422%_
             _%klass156418%_
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
      (lambda (_%self153996156104%_
               _%id156106%_
               _%super156107%_
               _%slots156108%_
               _%ctor-method156109%_
               _%struct?156110%_
               _%final?156111%_
               _%system?156112%_
               _%metaclass156113%_)
        (let* ((_%self156115%_ _%self153996156104%_)
               (_%self156117%_ _%self156115%_))
          (let _%lp156127%_ ((_%rest156129%_ _%super156107%_))
            (let* ((_%rest156130156138%_ _%rest156129%_)
                   (_%else156132156146%_ (lambda () '#!void))
                   (_%K156134156152%_
                    (lambda (_%rest156149%_ _%super-id156150%_)
                      (if (let ((__tmp156927
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id156106%_ '()))
                                  _%super-id156150%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp156927 '8 '#f '#f))
                          (let ((__tmp156928
                                 (cons '!class (cons _%id156106%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp156928
                             _%super-id156150%_))
                          '#!void)
                      (_%lp156127%_ _%rest156149%_))))
              (if (pair? _%rest156130156138%_)
                  (let ((_%hd156135156155%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest156130156138%_)))
                        (_%tl156136156157%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest156130156138%_))))
                    (let* ((_%super-id156160%_ _%hd156135156155%_)
                           (_%rest156162%_ _%tl156136156157%_))
                      (_%K156134156152%_ _%rest156162%_ _%super-id156160%_)))
                  '#!void)))
          (let* ((_%ctor-method156213%_
                  (let ((_%$e156164%_ _%ctor-method156109%_))
                    (if _%$e156164%_
                        _%$e156164%_
                        (let _%lp156167%_ ((_%rest156169%_ _%super156107%_)
                                           (_%method156170%_ '#f))
                          (let* ((_%rest156171156179%_ _%rest156169%_)
                                 (_%else156173156187%_
                                  (lambda () _%method156170%_))
                                 (_%K156175156201%_
                                  (lambda (_%rest156190%_ _%super-id156191%_)
                                    (let* ((_%klass156193%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id156106%_ '()))
                                             _%super-id156191%_))
                                           (_%$e156195%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass156193%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e156195%_
                                          ((lambda (_%ctor-method156198%_)
                                             (if _%method156170%_
                                                 (if (eq? _%ctor-method156198%_
                                                          _%method156170%_)
                                                     (_%lp156167%_
                                                      _%rest156190%_
                                                      _%ctor-method156198%_)
                                                     (let ((__tmp156929
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id156106%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp156929
                _%method156170%_
                _%ctor-method156198%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp156167%_
                                                  _%rest156190%_
                                                  _%ctor-method156198%_)))
                                           _%$e156195%_)
                                          (_%lp156167%_
                                           _%rest156190%_
                                           _%method156170%_))))))
                            (if (pair? _%rest156171156179%_)
                                (let ((_%hd156176156204%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest156171156179%_)))
                                      (_%tl156177156206%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest156171156179%_))))
                                  (let* ((_%super-id156209%_
                                          _%hd156176156204%_)
                                         (_%rest156211%_ _%tl156177156206%_))
                                    (_%K156175156201%_
                                     _%rest156211%_
                                     _%super-id156209%_)))
                                (_%else156173156187%_)))))))
                 (_g156930_
                  (let ((__tmp156934
                         (lambda (_%klass-id156215%_)
                           (cons _%klass-id156215%_
                                 (let ((__tmp156935
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id156106%_ '()))
                                         _%klass-id156215%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp156935
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp156932
                         (lambda (_%klass-id156217%_)
                           (let ((__tmp156933
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id156106%_ '()))
                                   _%klass-id156217%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp156933
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp156934
                     __tmp156932
                     eq?
                     identity
                     '()
                     _%super156107%_))))
            (begin
              (let ((_g156931_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g156930_)
                           (##values-length _g156930_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g156931_ 2)))
                    (error "Context expects 2 values" _g156931_)))
              (let ((_%precedence-list156219%_
                     (let () (declare (not safe)) (##values-ref _g156930_ 0)))
                    (_%base-struct156220%_
                     (let () (declare (not safe)) (##values-ref _g156930_ 1))))
                (let* ((_%precedence-list156264%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id156106%_ '(t object class)))
                            _%precedence-list156219%_
                            (if (memq 'object::t _%precedence-list156219%_)
                                _%precedence-list156219%_
                                (if _%system?156112%_
                                    (if (memq 't::t _%precedence-list156219%_)
                                        _%precedence-list156219%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list156219%_
                                           '(t::t))))
                                    (let _%loop156226%_ ((_%tail156228%_
                                                          _%precedence-list156219%_)
                                                         (_%head156229%_ '()))
                                      (let* ((_%tail156230156238%_
                                              _%tail156228%_)
                                             (_%else156232156246%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head156229%_))))
                                             (_%K156234156252%_
                                              (lambda (_%rest156249%_
                                                       _%hd156250%_)
                                                (if (eq? _%hd156250%_ 't::t)
                                                    (let ((__tmp156936
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail156228%_)))
              (declare (not safe))
              (__foldl1 cons __tmp156936 _%head156229%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop156226%_
                                                     _%rest156249%_
                                                     (cons _%hd156250%_
                                                           _%head156229%_))))))
                                        (if (pair? _%tail156230156238%_)
                                            (let ((_%hd156235156255%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail156230156238%_)))
                                                  (_%tl156236156257%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail156230156238%_))))
                                              (let* ((_%hd156260%_
                                                      _%hd156235156255%_)
                                                     (_%rest156262%_
                                                      _%tl156236156257%_))
                                                (_%K156234156252%_
                                                 _%rest156262%_
                                                 _%hd156260%_)))
                                            (_%else156232156246%_))))))))
                       (_%fields156266%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id156106%_ '()))
                         _%base-struct156220%_
                         _%precedence-list156264%_
                         _%slots156108%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self156117%_
                     _%id156106%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self156117%_
                     _%super156107%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self156117%_
                     _%precedence-list156264%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self156117%_
                     _%slots156108%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self156117%_
                     _%fields156266%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self156117%_
                     _%ctor-method156213%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self156117%_
                     _%struct?156110%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self156117%_
                     _%final?156111%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self156117%_
                     _%metaclass156113%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self153997156269%_
               _%id156271%_
               _%super156272%_
               _%precedence-list156273%_
               _%slots156274%_
               _%fields156275%_
               _%constructor156276%_
               _%struct?156277%_
               _%final?156278%_
               _%system?156279%_
               _%metaclass156280%_
               _%methods156281%_)
        (let* ((_%self156283%_ _%self153997156269%_)
               (_%self156285%_ _%self156283%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self156285%_
             _%id156271%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self156285%_
             _%super156272%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self156285%_
             _%precedence-list156273%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self156285%_
             _%slots156274%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self156285%_
             _%fields156275%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self156285%_
             _%constructor156276%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self156285%_
             _%struct?156277%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self156285%_
             _%final?156278%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self156285%_
             _%metaclass156280%_
             '10
             '#f
             '#f))
          (if _%methods156281%_
              (let ((__tmp156937
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods156281%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self156285%_
                 __tmp156937
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g156938_
        (let ((_g156939_ (let () (declare (not safe)) (##length _g156938_))))
          (cond ((let () (declare (not safe)) (##fx= _g156939_ 9))
                 (apply gxc#!class:::init!__0 _g156938_))
                ((let () (declare (not safe)) (##fx= _g156939_ 12))
                 (apply gxc#!class:::init!__1 _g156938_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g156938_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where155956%_
               _%base-struct155957%_
               _%precedence-list155958%_
               _%direct-slots155959%_)
        (let* ((_%base-fields155961%_
                (if _%base-struct155957%_
                    (let ((__tmp156940
                           (gxc#optimizer-resolve-class
                            _%where155956%_
                            _%base-struct155957%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp156940 '5 '#f '#f))
                    '()))
               (_%r-fields155963%_ (reverse _%base-fields155961%_))
               (_%seen-slots155971%_
                (let ((_%tab155965%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g155966155968%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab155965%_ _%g155966155968%_ '#t)))
                   _%base-fields155961%_)
                  _%tab155965%_))
               (_%process-slot155975%_
                (lambda (_%slot155973%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots155971%_ _%slot155973%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots155971%_
                           _%slot155973%_
                           '#t))
                        (set! _%r-fields155963%_
                              (cons _%slot155973%_ _%r-fields155963%_)))))))
          (for-each
           (lambda (_%mixin155978%_)
             (let ((_%klass155980%_
                    (gxc#optimizer-resolve-class
                     _%where155956%_
                     _%mixin155978%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass155980%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot155975%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass155980%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list155958%_)
          (for-each _%process-slot155975%_ _%direct-slots155959%_)
          (let () (declare (not safe)) (##reverse _%r-fields155963%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass155915%_ _%slot155916%_)
        (let _%lp155918%_ ((_%rest155920%_
                            (##structure-ref
                             _%klass155915%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset155921%_ '1))
          (let* ((_%rest155922155930%_ _%rest155920%_)
                 (_%else155924155938%_
                  (lambda ()
                    (let ((__tmp156942
                           (##structure-ref
                            _%klass155915%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp156941
                           (##structure-ref
                            _%klass155915%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp156942
                       __tmp156941
                       _%slot155916%_))))
                 (_%K155926155944%_
                  (lambda (_%rest155941%_ _%s155942%_)
                    (if (eq? _%s155942%_ _%slot155916%_)
                        _%offset155921%_
                        (_%lp155918%_
                         _%rest155941%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset155921%_ '1)))))))
            (if (pair? _%rest155922155930%_)
                (let ((_%hd155927155947%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest155922155930%_)))
                      (_%tl155928155949%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest155922155930%_))))
                  (let* ((_%s155952%_ _%hd155927155947%_)
                         (_%rest155954%_ _%tl155928155949%_))
                    (_%K155926155944%_ _%rest155954%_ _%s155952%_)))
                (_%else155924155938%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass155873%_ _%slot155874%_)
        (if (gxc#!class-struct-slot? _%klass155873%_ _%slot155874%_)
            _%klass155873%_
            (let _%lp155876%_ ((_%rest155878%_
                                (##structure-ref
                                 _%klass155873%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest155879155887%_ _%rest155878%_)
                     (_%else155881155895%_ (lambda () '#f))
                     (_%K155883155903%_
                      (lambda (_%rest155898%_ _%super155899%_)
                        (let ((_%super-class155901%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass155873%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot155874%_ '())))
                                _%super155899%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class155901%_
                               _%slot155874%_)
                              _%super-class155901%_
                              (_%lp155876%_ _%rest155898%_))))))
                (if (pair? _%rest155879155887%_)
                    (let ((_%hd155884155906%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest155879155887%_)))
                          (_%tl155885155908%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest155879155887%_))))
                      (let* ((_%super155911%_ _%hd155884155906%_)
                             (_%rest155913%_ _%tl155885155908%_))
                        (_%K155883155903%_ _%rest155913%_ _%super155911%_)))
                    (_%else155881155895%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass155870%_ _%slot155871%_)
        (if (##structure-ref _%klass155870%_ '7 gxc#!class::t '#f)
            (memq _%slot155871%_
                  (##structure-ref _%klass155870%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self153998155854%_ _%id155856%_)
        (let* ((_%self155858%_ _%self153998155854%_)
               (_%self155860%_ _%self155858%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self155860%_
             _%id155856%_
             '1
             '#f
             '#f))
          (let ((__tmp156943
                 (let ((__obj156875
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
                      __obj156875
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj156875
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj156875
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj156875)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self155860%_
             __tmp156943
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self153999155716%_ _%id155718%_)
        (let* ((_%self155720%_ _%self153999155716%_)
               (_%self155722%_ _%self155720%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self155722%_
             _%id155718%_
             '1
             '#f
             '#f))
          (let ((__tmp156944
                 (let ((__obj156876
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
                      __obj156876
                      _%id155718%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj156876
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj156876)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self155722%_
             __tmp156944
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
      (lambda (_%self154000155576%_
               _%id155578%_
               _%slot155579%_
               _%checked?155580%_)
        (let* ((_%self155582%_ _%self154000155576%_)
               (_%self155584%_ _%self155582%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self155584%_
             _%id155578%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self155584%_
             _%slot155579%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self155584%_
             _%checked?155580%_
             '4
             '#f
             '#f))
          (let ((__tmp156945
                 (let ((__obj156877
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
                     (##unchecked-structure-set! __obj156877 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj156877
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp156946 (cons _%id155578%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj156877
                      __tmp156946
                      '3
                      '#f
                      '#f))
                   __obj156877)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self155584%_
             __tmp156945
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self154001155436%_
               _%id155438%_
               _%slot155439%_
               _%checked?155440%_)
        (let* ((_%self155442%_ _%self154001155436%_)
               (_%self155444%_ _%self155442%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self155444%_
             _%id155438%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self155444%_
             _%slot155439%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self155444%_
             _%checked?155440%_
             '4
             '#f
             '#f))
          (let ((__tmp156947
                 (let ((__obj156878
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
                      __obj156878
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj156878
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp156948 (cons _%id155438%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj156878
                      __tmp156948
                      '3
                      '#f
                      '#f))
                   __obj156878)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self155444%_
             __tmp156947
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords155278%_
               _%signature155275155279%_
               _%self154002155281%_
               _%arity155283%_
               _%dispatch155284%_)
        (let* ((_%signature155286%_
                (if (eq? _%signature155275155279%_ absent-value)
                    '#f
                    _%signature155275155279%_))
               (_%self155288%_ _%self154002155281%_)
               (_%self155290%_ _%self155288%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self155290%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self155290%_
             _%arity155283%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self155290%_
             _%dispatch155284%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self155290%_
             _%signature155286%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords155304%_ . _%args155305%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords155304%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords155304%_
                  'signature:
                  absent-value))
               _%args155305%_)))
    (define gxc#!lambda:::init!
      (lambda _%args155276155311%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args155276155311%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords155117%_
               _%signature155114155118%_
               _%self154003155120%_
               _%clauses155122%_)
        (let* ((_%signature155124%_
                (if (eq? _%signature155114155118%_ absent-value)
                    '#f
                    _%signature155114155118%_))
               (_%self155126%_ _%self154003155120%_)
               (_%self155128%_ _%self155126%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self155128%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self155128%_
             _%signature155124%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self155128%_
             _%clauses155122%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords155142%_ . _%args155143%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords155142%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords155142%_
                  'signature:
                  absent-value))
               _%args155143%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args155115155149%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args155115155149%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self154004154974%_ _%tab154976%_ _%dispatch154977%_)
        (let* ((_%self154979%_ _%self154004154974%_)
               (_%self154981%_ _%self154979%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self154981%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self154981%_
             _%tab154976%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self154981%_
             _%dispatch154977%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self154005154835%_ _%keys154837%_ _%main154838%_)
        (let* ((_%self154840%_ _%self154005154835%_)
               (_%self154842%_ _%self154840%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self154842%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self154842%_
             _%keys154837%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self154842%_
             _%main154838%_
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
      (lambda (_%self154006154453%_ _%id154455%_)
        (let* ((_%self154457%_ _%self154006154453%_)
               (_%self154459%_ _%self154457%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self154459%_
             _%id154455%_
             '1
             '#f
             '#f))
          (let ((__tmp156949
                 (let ((__obj156879
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
                      __obj156879
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj156879
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj156879
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj156879)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self154459%_
             __tmp156949
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
      (lambda (_%klass154322%_)
        (let ((_%$e154324%_
               (##structure-ref _%klass154322%_ '11 gxc#!class::t '#f)))
          (if _%$e154324%_
              _%$e154324%_
              (let ((_%tab154328%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass154322%_
                 _%tab154328%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab154328%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass154313%_ _%method154314%_)
        (let ((_%tab154315154317%_
               (##structure-ref _%klass154313%_ '11 gxc#!class::t '#f)))
          (if _%tab154315154317%_
              (let ((_%tab154320%_ _%tab154315154317%_))
                (declare (not safe))
                (hash-get _%tab154320%_ _%method154314%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a154301%_ _%type-b154302%_)
        (if _%type-a154301%_
            (if _%type-b154302%_
                (let ((_%$e154304%_ (eq? _%type-a154301%_ _%type-b154302%_)))
                  (if _%$e154304%_
                      _%$e154304%_
                      (let ((_%$e154307%_
                             (eq? (##structure-ref
                                   _%type-b154302%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e154307%_
                            _%$e154307%_
                            (let ((_%$e154310%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a154301%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b154302%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e154310%_
                                  _%$e154310%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a154301%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b154302%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a154301%_
                                           _%type-b154302%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a154252%_ _%klass-b154253%_)
        (let ((_%$e154255%_
               (eq? (##structure-ref _%klass-a154252%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b154253%_ '1 gxc#!type::t '#f))))
          (if _%$e154255%_
              _%$e154255%_
              (let ((_%klass-id-b154258%_
                     (##structure-ref _%klass-b154253%_ '1 gxc#!type::t '#f))
                    (_%precedence-list154259%_
                     (##structure-ref _%klass-a154252%_ '3 gxc#!class::t '#f)))
                (let _%loop154261%_ ((_%rest154263%_
                                      _%precedence-list154259%_))
                  (let* ((_%rest154264154272%_ _%rest154263%_)
                         (_%else154266154280%_ (lambda () '#f))
                         (_%K154268154289%_
                          (lambda (_%rest154283%_ _%klass-name154284%_)
                            (let ((_%$e154286%_
                                   (eq? (let ((__tmp156950
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a154252%_
                                                            (cons _%klass-b154253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name154284%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp156950
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b154258%_)))
                              (if _%$e154286%_
                                  _%$e154286%_
                                  (_%loop154261%_ _%rest154283%_))))))
                    (if (pair? _%rest154264154272%_)
                        (let ((_%hd154269154292%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest154264154272%_)))
                              (_%tl154270154294%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest154264154272%_))))
                          (let* ((_%klass-name154297%_ _%hd154269154292%_)
                                 (_%rest154299%_ _%tl154270154294%_))
                            (_%K154268154289%_
                             _%rest154299%_
                             _%klass-name154297%_)))
                        (_%else154266154280%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type154250%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type154250%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type154250%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc154239%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc154239%_ 'gxc#!procedure::t))
            (let ((_%proc154242%_ _%proc154239%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc154242%_ '2 '#f '#f))
                  (let ((__tmp156951
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc154242%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp156951 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@378.11-378.15"
               'contract:
               '!procedure?
               'value:
               _%proc154239%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym154221%_ _%type154222%_ _%local?154223%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type154222%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym154221%_
                     _%type154222%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym154221%_ '" " _%type154222%_))
        (let ((_%table154225%_
               (if _%local?154223%_
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
          (hash-put! _%table154225%_ _%sym154221%_ _%type154222%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym154230%_ _%type154231%_)
        (let ((_%local?154233%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym154230%_
           _%type154231%_
           _%local?154233%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g156952_
        (let ((_g156953_ (let () (declare (not safe)) (##length _g156952_))))
          (cond ((let () (declare (not safe)) (##fx= _g156953_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g156952_))
                ((let () (declare (not safe)) (##fx= _g156953_ 3))
                 (apply gxc#optimizer-declare-type!__% _g156952_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g156952_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym154215%_ _%type154216%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type154216%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym154215%_
                     _%type154216%_)))
        (let ((_%table154218%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp156954
                 (let () (declare (not safe)) (struct->list _%type154216%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym154215%_ '" " __tmp156954))
          (let ()
            (declare (not safe))
            (hash-put! _%table154218%_ _%sym154215%_ _%type154216%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table154218%_ _%type154216%_ _%sym154215%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym154210%_ _%type154211%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type154211%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym154210%_
                     _%type154211%_)))
        (let ((_%table154213%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table154213%_ _%sym154210%_))
              '#!void
              (begin
                (let ((__tmp156955
                       (let ()
                         (declare (not safe))
                         (struct->list _%type154211%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym154210%_
                   '" "
                   __tmp156955))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table154213%_ _%sym154210%_ _%type154211%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table154213%_
                   _%type154211%_
                   _%sym154210%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym154208%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym154208%_))
        (let ((__tmp156956
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp156956 _%sym154208%_))
        (let ((__tmp156957
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp156957 _%sym154208%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t154176%_
               _%method154177%_
               _%sym154178%_
               _%rebind?154179%_)
        (let ((__tmp156958
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp156958 _%sym154178%_ '#t))
        (let ((_%klass154181%_ (gxc#optimizer-lookup-class _%type-t154176%_)))
          (if _%klass154181%_
              (let* ((_%vtab154183%_ (gxc#!class-method-table _%klass154181%_))
                     (_%$e154185%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab154183%_ _%method154177%_))))
                (if _%$e154185%_
                    ((lambda (_%existing154188%_)
                       (if _%rebind?154179%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t154176%_
                                '" "
                                _%method154177%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab154183%_
                                _%method154177%_
                                _%sym154178%_)))
                           (if (eq? _%existing154188%_ _%sym154178%_)
                               '#!void
                               (let ((__tmp156959
                                      (cons 'bind-method!
                                            (cons _%type-t154176%_
                                                  (cons _%method154177%_
                                                        (cons _%sym154178%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp156959
                                  _%method154177%_)))))
                     _%$e154185%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t154176%_
                         '" "
                         _%method154177%_
                         '" => "
                         _%sym154178%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab154183%_
                         _%method154177%_
                         _%sym154178%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t154176%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t154197%_ _%method154198%_ _%sym154199%_)
        (let ((_%rebind?154201%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t154197%_
           _%method154198%_
           _%sym154199%_
           _%rebind?154201%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g156960_
        (let ((_g156961_ (let () (declare (not safe)) (##length _g156960_))))
          (cond ((let () (declare (not safe)) (##fx= _g156961_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g156960_))
                ((let () (declare (not safe)) (##fx= _g156961_ 4))
                 (apply gxc#optimizer-declare-method!__% _g156960_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g156960_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym154161%_)
        (let ((_%$e154163%_
               (let ((__tmp156962
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym154161%_ __tmp156962))))
          (if _%$e154163%_
              _%$e154163%_
              (let ((_%$e154172%_
                     (let ((_%ht154165154167%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht154165154167%_
                           (let ((_%ht154170%_ _%ht154165154167%_))
                             (declare (not safe))
                             (hash-get _%ht154170%_ _%sym154161%_))
                           '#f))))
                (if _%$e154172%_
                    _%$e154172%_
                    (let ((__tmp156963
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp156963 _%sym154161%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym154153%_)
        (let ((_%type154154154156%_ (gxc#optimizer-lookup-type _%sym154153%_)))
          (if _%type154154154156%_
              (let ((_%type154159%_ _%type154154154156%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type154159%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type154159%_ '1 '#f '#f)))
                    _%type154159%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym154149%_)
        (let ((_%table154151%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table154151%_ _%sym154149%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where154134%_ _%sym154135%_)
        (let ((_%$e154138%_ (gxc#optimizer-lookup-class _%sym154135%_)))
          (if _%$e154138%_
              ((lambda (_%g154140154142%_)
                 (let ((_%val154145%_ _%g154140154142%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val154145%_
                          'gxc#!class::t))
                       _%val154145%_
                       (let ()
                         (declare (not safe))
                         (error '"bad cast" gxc#!class::t _%val154145%_)))))
               _%$e154138%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where154134%_
                   _%sym154135%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass154132%_)
        (let ((__tmp156964
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp156964 _%klass154132%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t154129%_ _%method154130%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t154129%_)
         _%method154130%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym154127%_)
        (let ((__tmp156965
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp156965 _%sym154127%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e154009%_
                  (lambda (_%t154110%_)
                    (if (symbol? _%t154110%_)
                        (_%type-e154009%_
                         (gxc#optimizer-lookup-type _%t154110%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t154110%_
                               'gxc#!lambda::t))
                            (_%__lambda-type154011%_ _%t154110%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t154110%_
                                   'gxc#!kw-lambda::t))
                                (_%__kw-lambda-type154013%_ _%t154110%_)
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t154110%_
                                       'gxc#!kw-lambda-primary::t))
                                    (_%__kw-lambda-primary-type154015%_
                                     _%t154110%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t154110%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t154117%_ _%t154110%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t154117%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp156966
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t154117%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp156966
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t154110%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t154110%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%lambda-type154010%_
                  (lambda (_%t154098%_)
                    (let ((_%t154101%_ _%t154098%_))
                      (_%__lambda-type154011%_ _%t154101%_))))
                 (_%__lambda-type154011%_
                  (lambda (_%t154086%_)
                    (let ((_%t154089%_ _%t154086%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t154089%_ '4 '#f '#f))
                          (_%type-e154009%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t154089%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t154089%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp156967
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t154089%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp156967
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%kw-lambda-type154012%_
                  (lambda (_%t154074%_)
                    (let ((_%t154077%_ _%t154074%_))
                      (_%__kw-lambda-type154013%_ _%t154077%_))))
                 (_%__kw-lambda-type154013%_
                  (lambda (_%t154062%_)
                    (let ((_%t154065%_ _%t154062%_))
                      (_%type-e154009%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t154065%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type154014%_
                  (lambda (_%t154050%_)
                    (let ((_%t154053%_ _%t154050%_))
                      (_%__kw-lambda-primary-type154015%_ _%t154053%_))))
                 (_%__kw-lambda-primary-type154015%_
                  (lambda (_%t154036%_)
                    (let ((_%t154039%_ _%t154036%_))
                      (_%type-e154009%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t154039%_
                          '4
                          '#f
                          '#f)))))))
          (let* ((_%ht1154017%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2154019%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result154021%_
                  (if _%ht1154017%_
                      (let () (declare (not safe)) (hash->list _%ht1154017%_))
                      '()))
                 (_%result154023%_
                  (if _%ht2154019%_
                      (let ((__tmp156968
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2154019%_))))
                        (declare (not safe))
                        (__foldl1 cons _%result154021%_ __tmp156968))
                      _%result154021%_)))
            (for-each
             (lambda (_%p154026%_)
               (let* ((_%t154028%_ (cdr _%p154026%_))
                      (_%tr154030%_ (_%type-e154009%_ _%t154028%_)))
                 (set-cdr! _%p154026%_ _%tr154030%_)))
             _%result154023%_)
            (list-sort
             (lambda (_%a154033%_ _%b154034%_)
               (let ((__tmp156970 (symbol->string (car _%a154033%_)))
                     (__tmp156969 (symbol->string (car _%b154034%_))))
                 (declare (not safe))
                 (##string<? __tmp156970 __tmp156969)))
             _%result154023%_)))))))
