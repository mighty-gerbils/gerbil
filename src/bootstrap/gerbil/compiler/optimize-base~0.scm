(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1712573432)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp147861 (list)) (__tmp147860 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp147861
         '(type classes ssxi methods)
         __tmp147860
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args147832%_
        (apply make-instance gxc#optimizer-info::t _%$args147832%_)))
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
      (lambda (_%self147819%_)
        (let ((_%self147822%_ _%self147819%_))
          (if (let ((__tmp147862
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self147822%_))))
                (declare (not safe))
                (##fx< '4 __tmp147862))
              (begin
                (let ((__tmp147863
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self147822%_
                   __tmp147863
                   '1
                   '#f
                   '#f))
                (let ((__tmp147864
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self147822%_
                   __tmp147864
                   '2
                   '#f
                   '#f))
                (let ((__tmp147865
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self147822%_
                   __tmp147865
                   '3
                   '#f
                   '#f))
                (let ((__tmp147866
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self147822%_
                   __tmp147866
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp147867
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self147822%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self147822%_
                       '4
                       __tmp147867))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp147869 (list))
            (__tmp147868
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp147869
         '(id)
         __tmp147868
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args147694%_
        (apply make-instance gxc#!type::t _%$args147694%_)))
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
      (let ((__tmp147871 (list gxc#!type::t))
            (__tmp147870 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp147871
         '()
         __tmp147870
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args147691%_
        (apply make-instance gxc#!abort::t _%$args147691%_)))
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
      (let ((__tmp147873 (list gxc#!type::t))
            (__tmp147872 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp147873
         '()
         __tmp147872
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args147688%_
        (apply make-instance gxc#!alias::t _%$args147688%_)))
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
      (let ((__tmp147875 (list))
            (__tmp147874
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp147875
         '(return effect arguments unchecked origin)
         __tmp147874
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args147685%_
        (apply make-instance gxc#!signature::t _%$args147685%_)))
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
      (let ((__tmp147877 (list gxc#!type::t))
            (__tmp147876
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp147877
         '(signature)
         __tmp147876
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
      (lambda (_%id147664%_ _%signature147665%_)
        (if ((lambda (_%$obj147668%_)
               (or (not _%$obj147668%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj147668%_
                      'gxc#!signature::t))))
             _%signature147665%_)
            (let ((_%signature147675%_ _%signature147665%_))
              (gxc#__make-!procedure _%id147664%_ _%signature147675%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature147665%_)
              '#!void))))
    (define gxc#__make-!procedure
      (lambda (_%id147650%_ _%signature147652%_)
        (let ((_%signature147655%_ _%signature147652%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id147650%_ _%signature147655%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj147619%_ _%signature147620%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj147619%_ 'gxc#!procedure::t))
            (let ((_%$obj147624%_ _%$obj147619%_))
              (if ((lambda (_%$obj147633%_)
                     (or (not _%$obj147633%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj147633%_
                            'gxc#!signature::t))))
                   _%signature147620%_)
                  (let ((_%signature147640%_ _%signature147620%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj147624%_
                     _%signature147640%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature147620%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj147619%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj147596%_ _%signature147598%_)
        (let* ((_%$obj147602%_ _%$obj147596%_)
               (_%signature147610%_ _%signature147598%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj147602%_
           _%signature147610%_
           '2
           '#f
           '#f))))
    (define gxc#!class-meta::t
      (let ((__tmp147879 (list gxc#!type::t))
            (__tmp147878 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp147879
         '(class)
         __tmp147878
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args147593%_
        (apply make-instance gxc#!class-meta::t _%$args147593%_)))
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
      (let ((__tmp147881 (list gxc#!type::t))
            (__tmp147880
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
         __tmp147881
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp147880
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args147590%_
        (apply make-instance gxc#!class::t _%$args147590%_)))
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
      (let ((__tmp147883 (list gxc#!procedure::t))
            (__tmp147882 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp147883
         '()
         __tmp147882
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args147587%_
        (apply make-instance gxc#!predicate::t _%$args147587%_)))
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
      (let ((__tmp147885 (list gxc#!procedure::t))
            (__tmp147884 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp147885
         '()
         __tmp147884
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args147584%_
        (apply make-instance gxc#!constructor::t _%$args147584%_)))
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
      (let ((__tmp147887 (list gxc#!procedure::t))
            (__tmp147886 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp147887
         '(slot checked?)
         __tmp147886
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args147581%_
        (apply make-instance gxc#!accessor::t _%$args147581%_)))
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
      (let ((__tmp147889 (list gxc#!procedure::t))
            (__tmp147888 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp147889
         '(slot checked?)
         __tmp147888
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args147578%_
        (apply make-instance gxc#!mutator::t _%$args147578%_)))
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
      (let ((__tmp147891 (list gxc#!type::t))
            (__tmp147890 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp147891
         '(methods)
         __tmp147890
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args147575%_
        (apply make-instance gxc#!interface::t _%$args147575%_)))
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
      (let ((__tmp147893 (list gxc#!procedure::t))
            (__tmp147892
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp147893
         '(arity dispatch inline inline-typedecl)
         __tmp147892
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args147572%_
        (apply make-instance gxc#!lambda::t _%$args147572%_)))
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
      (let ((__tmp147895 (list gxc#!procedure::t))
            (__tmp147894 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp147895
         '(clauses)
         __tmp147894
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args147569%_
        (apply make-instance gxc#!case-lambda::t _%$args147569%_)))
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
      (let ((__tmp147897 (list gxc#!procedure::t))
            (__tmp147896 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp147897
         '(table dispatch)
         __tmp147896
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args147566%_
        (apply make-instance gxc#!kw-lambda::t _%$args147566%_)))
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
      (let ((__tmp147899 (list gxc#!procedure::t))
            (__tmp147898 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp147899
         '(keys main)
         __tmp147898
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args147563%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args147563%_)))
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
      (let ((__tmp147900 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp147900
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args147560%_
        (apply make-instance gxc#!primitive::t _%$args147560%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp147902 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp147901 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp147902
         '()
         __tmp147901
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args147557%_
        (apply make-instance gxc#!primitive-predicate::t _%$args147557%_)))
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
      (let ((__tmp147904 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp147903 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp147904
         '()
         __tmp147903
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args147554%_
        (apply make-instance gxc#!primitive-lambda::t _%$args147554%_)))
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
      (let ((__tmp147906 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp147905 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp147906
         '()
         __tmp147905
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args147551%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args147551%_)))
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
      (lambda (_%self147538%_)
        (let ((_%self147541%_ _%self147538%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self147541%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self147402%_ _%klass147403%_)
        (let ((_%self147406%_ _%self147402%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self147406%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147406%_
             _%klass147403%_
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class-meta::t ':init! gxc#!class-meta:::init! '#f))
    (define gxc#!class:::init!__0
      (lambda (_%self147094%_
               _%id147095%_
               _%super147096%_
               _%slots147097%_
               _%ctor-method147098%_
               _%struct?147099%_
               _%final?147100%_
               _%system?147101%_
               _%metaclass147102%_)
        (let ((_%self147105%_ _%self147094%_))
          (let _%lp147115%_ ((_%rest147117%_ _%super147096%_))
            (let* ((_%rest147118147126%_ _%rest147117%_)
                   (_%else147120147134%_ (lambda () '#!void))
                   (_%K147122147140%_
                    (lambda (_%rest147137%_ _%super-id147138%_)
                      (if (let ((__tmp147907
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id147095%_ '()))
                                  _%super-id147138%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp147907 '8 '#f '#f))
                          (let ((__tmp147908
                                 (cons '!class (cons _%id147095%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp147908
                             _%super-id147138%_))
                          '#!void)
                      (_%lp147115%_ _%rest147137%_))))
              (if (let () (declare (not safe)) (##pair? _%rest147118147126%_))
                  (let ((_%hd147123147143%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest147118147126%_)))
                        (_%tl147124147145%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest147118147126%_))))
                    (let* ((_%super-id147148%_ _%hd147123147143%_)
                           (_%rest147150%_ _%tl147124147145%_))
                      (_%K147122147140%_ _%rest147150%_ _%super-id147148%_)))
                  '#!void)))
          (let* ((_%ctor-method147201%_
                  (let ((_%$e147152%_ _%ctor-method147098%_))
                    (if _%$e147152%_
                        _%$e147152%_
                        (let _%lp147155%_ ((_%rest147157%_ _%super147096%_)
                                           (_%method147158%_ '#f))
                          (let* ((_%rest147159147167%_ _%rest147157%_)
                                 (_%else147161147175%_
                                  (lambda () _%method147158%_))
                                 (_%K147163147189%_
                                  (lambda (_%rest147178%_ _%super-id147179%_)
                                    (let* ((_%klass147181%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id147095%_ '()))
                                             _%super-id147179%_))
                                           (_%$e147183%_
                                            (##structure-ref
                                             _%klass147181%_
                                             '6
                                             gxc#!class::t
                                             '#f)))
                                      (if _%$e147183%_
                                          ((lambda (_%ctor-method147186%_)
                                             (if _%method147158%_
                                                 (if (eq? _%ctor-method147186%_
                                                          _%method147158%_)
                                                     (_%lp147155%_
                                                      _%rest147178%_
                                                      _%ctor-method147186%_)
                                                     (let ((__tmp147909
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id147095%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp147909
                _%method147158%_
                _%ctor-method147186%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp147155%_
                                                  _%rest147178%_
                                                  _%ctor-method147186%_)))
                                           _%$e147183%_)
                                          (_%lp147155%_
                                           _%rest147178%_
                                           _%method147158%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest147159147167%_))
                                (let ((_%hd147164147192%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest147159147167%_)))
                                      (_%tl147165147194%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest147159147167%_))))
                                  (let* ((_%super-id147197%_
                                          _%hd147164147192%_)
                                         (_%rest147199%_ _%tl147165147194%_))
                                    (_%K147163147189%_
                                     _%rest147199%_
                                     _%super-id147197%_)))
                                (_%else147161147175%_)))))))
                 (_g147910_
                  (let ((__tmp147914
                         (lambda (_%klass-id147203%_)
                           (cons _%klass-id147203%_
                                 (let ((__tmp147915
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id147095%_ '()))
                                         _%klass-id147203%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp147915
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp147912
                         (lambda (_%klass-id147205%_)
                           (let ((__tmp147913
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id147095%_ '()))
                                   _%klass-id147205%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp147913
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp147914
                     __tmp147912
                     eq?
                     identity
                     '()
                     _%super147096%_))))
            (begin
              (let ((_g147911_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g147910_)
                           (##vector-length _g147910_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g147911_ 2)))
                    (error "Context expects 2 values" _g147911_)))
              (let ((_%precedence-list147207%_
                     (let () (declare (not safe)) (##vector-ref _g147910_ 0)))
                    (_%base-struct147208%_
                     (let () (declare (not safe)) (##vector-ref _g147910_ 1))))
                (let* ((_%precedence-list147252%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id147095%_ '(t object class)))
                            _%precedence-list147207%_
                            (if (memq 'object::t _%precedence-list147207%_)
                                _%precedence-list147207%_
                                (if _%system?147101%_
                                    (if (memq 't::t _%precedence-list147207%_)
                                        _%precedence-list147207%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list147207%_
                                           '(t::t))))
                                    (let _%loop147214%_ ((_%tail147216%_
                                                          _%precedence-list147207%_)
                                                         (_%head147217%_ '()))
                                      (let* ((_%tail147218147226%_
                                              _%tail147216%_)
                                             (_%else147220147234%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head147217%_))))
                                             (_%K147222147240%_
                                              (lambda (_%rest147237%_
                                                       _%hd147238%_)
                                                (if (eq? _%hd147238%_ 't::t)
                                                    (let ((__tmp147916
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail147216%_)))
              (declare (not safe))
              (__foldl1 cons __tmp147916 _%head147217%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop147214%_
                                                     _%rest147237%_
                                                     (cons _%hd147238%_
                                                           _%head147217%_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tail147218147226%_))
                                            (let ((_%hd147223147243%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail147218147226%_)))
                                                  (_%tl147224147245%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail147218147226%_))))
                                              (let* ((_%hd147248%_
                                                      _%hd147223147243%_)
                                                     (_%rest147250%_
                                                      _%tl147224147245%_))
                                                (_%K147222147240%_
                                                 _%rest147250%_
                                                 _%hd147248%_)))
                                            (_%else147220147234%_))))))))
                       (_%fields147254%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id147095%_ '()))
                         _%base-struct147208%_
                         _%precedence-list147252%_
                         _%slots147097%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147105%_
                     _%id147095%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147105%_
                     _%super147096%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147105%_
                     _%precedence-list147252%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147105%_
                     _%slots147097%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147105%_
                     _%fields147254%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147105%_
                     _%ctor-method147201%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147105%_
                     _%struct?147099%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147105%_
                     _%final?147100%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147105%_
                     _%metaclass147102%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self147257%_
               _%id147258%_
               _%super147259%_
               _%precedence-list147260%_
               _%slots147261%_
               _%fields147262%_
               _%constructor147263%_
               _%struct?147264%_
               _%final?147265%_
               _%system?147266%_
               _%metaclass147267%_
               _%methods147268%_)
        (let ((_%self147271%_ _%self147257%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147271%_
             _%id147258%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147271%_
             _%super147259%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147271%_
             _%precedence-list147260%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147271%_
             _%slots147261%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147271%_
             _%fields147262%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147271%_
             _%constructor147263%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147271%_
             _%struct?147264%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147271%_
             _%final?147265%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147271%_
             _%metaclass147267%_
             '10
             '#f
             '#f))
          (if _%methods147268%_
              (let ((__tmp147917
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods147268%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147271%_
                 __tmp147917
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g147919_
        (let ((_g147918_ (let () (declare (not safe)) (##length _g147919_))))
          (cond ((let () (declare (not safe)) (##fx= _g147918_ 9))
                 (apply gxc#!class:::init!__0 _g147919_))
                ((let () (declare (not safe)) (##fx= _g147918_ 12))
                 (apply gxc#!class:::init!__1 _g147919_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g147919_))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where146946%_
               _%base-struct146947%_
               _%precedence-list146948%_
               _%direct-slots146949%_)
        (let* ((_%base-fields146951%_
                (if _%base-struct146947%_
                    (let ((__tmp147920
                           (gxc#optimizer-resolve-class
                            _%where146946%_
                            _%base-struct146947%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp147920 '5 '#f '#f))
                    '()))
               (_%r-fields146953%_ (reverse _%base-fields146951%_))
               (_%seen-slots146961%_
                (let ((_%tab146955%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g146956146958%_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _%tab146955%_ _%g146956146958%_ '#t)))
                   _%base-fields146951%_)
                  _%tab146955%_))
               (_%process-slot146965%_
                (lambda (_%slot146963%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%seen-slots146961%_ _%slot146963%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _%seen-slots146961%_ _%slot146963%_ '#t))
                        (set! _%r-fields146953%_
                              (cons _%slot146963%_ _%r-fields146953%_)))))))
          (for-each
           (lambda (_%mixin146968%_)
             (let ((_%klass146970%_
                    (gxc#optimizer-resolve-class
                     _%where146946%_
                     _%mixin146968%_)))
               (if (##structure-ref _%klass146970%_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _%process-slot146965%_
                    (##structure-ref _%klass146970%_ '5 gxc#!class::t '#f)))))
           _%precedence-list146948%_)
          (for-each _%process-slot146965%_ _%direct-slots146949%_)
          (let () (declare (not safe)) (##reverse _%r-fields146953%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass146905%_ _%slot146906%_)
        (let _%lp146908%_ ((_%rest146910%_
                            (##structure-ref
                             _%klass146905%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset146911%_ '1))
          (let* ((_%rest146912146920%_ _%rest146910%_)
                 (_%else146914146928%_
                  (lambda ()
                    (let ((__tmp147922
                           (##structure-ref
                            _%klass146905%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp147921
                           (##structure-ref
                            _%klass146905%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp147922
                       __tmp147921
                       _%slot146906%_))))
                 (_%K146916146934%_
                  (lambda (_%rest146931%_ _%s146932%_)
                    (if (eq? _%s146932%_ _%slot146906%_)
                        _%offset146911%_
                        (_%lp146908%_
                         _%rest146931%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset146911%_ '1)))))))
            (if (let () (declare (not safe)) (##pair? _%rest146912146920%_))
                (let ((_%hd146917146937%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest146912146920%_)))
                      (_%tl146918146939%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest146912146920%_))))
                  (let* ((_%s146942%_ _%hd146917146937%_)
                         (_%rest146944%_ _%tl146918146939%_))
                    (_%K146916146934%_ _%rest146944%_ _%s146942%_)))
                (_%else146914146928%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass146863%_ _%slot146864%_)
        (if (gxc#!class-struct-slot? _%klass146863%_ _%slot146864%_)
            _%klass146863%_
            (let _%lp146866%_ ((_%rest146868%_
                                (##structure-ref
                                 _%klass146863%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest146869146877%_ _%rest146868%_)
                     (_%else146871146885%_ (lambda () '#f))
                     (_%K146873146893%_
                      (lambda (_%rest146888%_ _%super146889%_)
                        (let ((_%super-class146891%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass146863%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot146864%_ '())))
                                _%super146889%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class146891%_
                               _%slot146864%_)
                              _%super-class146891%_
                              (_%lp146866%_ _%rest146888%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest146869146877%_))
                    (let ((_%hd146874146896%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest146869146877%_)))
                          (_%tl146875146898%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest146869146877%_))))
                      (let* ((_%super146901%_ _%hd146874146896%_)
                             (_%rest146903%_ _%tl146875146898%_))
                        (_%K146873146893%_ _%rest146903%_ _%super146901%_)))
                    (_%else146871146885%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass146860%_ _%slot146861%_)
        (if (##structure-ref _%klass146860%_ '7 gxc#!class::t '#f)
            (memq _%slot146861%_
                  (##structure-ref _%klass146860%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self146846%_ _%id146847%_)
        (let ((_%self146850%_ _%self146846%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146850%_
             _%id146847%_
             '1
             '#f
             '#f))
          (let ((__tmp147923
                 (let ((__obj147855
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
                      __obj147855
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj147855
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj147855
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj147855)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146850%_
             __tmp147923
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self146710%_ _%id146711%_)
        (let ((_%self146714%_ _%self146710%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146714%_
             _%id146711%_
             '1
             '#f
             '#f))
          (let ((__tmp147924
                 (let ((__obj147856
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
                      __obj147856
                      _%id146711%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj147856
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj147856)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146714%_
             __tmp147924
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
      (lambda (_%self146572%_ _%id146573%_ _%slot146574%_ _%checked?146575%_)
        (let ((_%self146578%_ _%self146572%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146578%_
             _%id146573%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146578%_
             _%slot146574%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146578%_
             _%checked?146575%_
             '4
             '#f
             '#f))
          (let ((__tmp147925
                 (let ((__obj147857
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
                     (##unchecked-structure-set! __obj147857 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj147857
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp147926 (cons _%id146573%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj147857
                      __tmp147926
                      '3
                      '#f
                      '#f))
                   __obj147857)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146578%_
             __tmp147925
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self146434%_ _%id146435%_ _%slot146436%_ _%checked?146437%_)
        (let ((_%self146440%_ _%self146434%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146440%_
             _%id146435%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146440%_
             _%slot146436%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146440%_
             _%checked?146437%_
             '4
             '#f
             '#f))
          (let ((__tmp147927
                 (let ((__obj147858
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
                      __obj147858
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj147858
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp147928 (cons _%id146435%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj147858
                      __tmp147928
                      '3
                      '#f
                      '#f))
                   __obj147858)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146440%_
             __tmp147927
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords146278%_
               _%signature146275146279%_
               _%self146281%_
               _%arity146282%_
               _%dispatch146283%_)
        (let* ((_%signature146285%_
                (if (eq? _%signature146275146279%_ absent-value)
                    '#f
                    _%signature146275146279%_))
               (_%self146288%_ _%self146281%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self146288%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146288%_
             _%arity146282%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146288%_
             _%dispatch146283%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146288%_
             _%signature146285%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords146302%_ . _%args146303%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords146302%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords146302%_
                  'signature:
                  absent-value))
               _%args146303%_)))
    (define gxc#!lambda:::init!
      (lambda _%args146276146309%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args146276146309%_)))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords146119%_
               _%signature146116146120%_
               _%self146122%_
               _%clauses146123%_)
        (let* ((_%signature146125%_
                (if (eq? _%signature146116146120%_ absent-value)
                    '#f
                    _%signature146116146120%_))
               (_%self146128%_ _%self146122%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self146128%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146128%_
             _%signature146125%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146128%_
             _%clauses146123%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords146142%_ . _%args146143%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords146142%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords146142%_
                  'signature:
                  absent-value))
               _%args146143%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args146117146149%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args146117146149%_)))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self145978%_ _%tab145979%_ _%dispatch145980%_)
        (let ((_%self145983%_ _%self145978%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self145983%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self145983%_
             _%tab145979%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self145983%_
             _%dispatch145980%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self145841%_ _%keys145842%_ _%main145843%_)
        (let ((_%self145846%_ _%self145841%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self145846%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self145846%_
             _%keys145842%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self145846%_
             _%main145843%_
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
      (lambda (_%self145461%_ _%id145462%_)
        (let ((_%self145465%_ _%self145461%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self145465%_
             _%id145462%_
             '1
             '#f
             '#f))
          (let ((__tmp147929
                 (let ((__obj147859
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
                      __obj147859
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj147859
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj147859
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj147859)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self145465%_
             __tmp147929
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
      (lambda (_%klass145330%_)
        (let ((_%$e145332%_
               (##structure-ref _%klass145330%_ '11 gxc#!class::t '#f)))
          (if _%$e145332%_
              _%$e145332%_
              (let ((_%tab145336%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass145330%_
                 _%tab145336%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab145336%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass145321%_ _%method145322%_)
        (let ((_%tab145323145325%_
               (##structure-ref _%klass145321%_ '11 gxc#!class::t '#f)))
          (if _%tab145323145325%_
              (let ((_%tab145328%_ _%tab145323145325%_))
                (declare (not safe))
                (hash-get _%tab145328%_ _%method145322%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a145309%_ _%type-b145310%_)
        (if _%type-a145309%_
            (if _%type-b145310%_
                (let ((_%$e145312%_ (eq? _%type-a145309%_ _%type-b145310%_)))
                  (if _%$e145312%_
                      _%$e145312%_
                      (let ((_%$e145315%_
                             (eq? (##structure-ref
                                   _%type-b145310%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e145315%_
                            _%$e145315%_
                            (let ((_%$e145318%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a145309%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b145310%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e145318%_
                                  _%$e145318%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a145309%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b145310%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a145309%_
                                           _%type-b145310%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a145260%_ _%klass-b145261%_)
        (let ((_%$e145263%_
               (eq? (##structure-ref _%klass-a145260%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b145261%_ '1 gxc#!type::t '#f))))
          (if _%$e145263%_
              _%$e145263%_
              (let ((_%klass-id-b145266%_
                     (##structure-ref _%klass-b145261%_ '1 gxc#!type::t '#f))
                    (_%precedence-list145267%_
                     (##structure-ref _%klass-a145260%_ '3 gxc#!class::t '#f)))
                (let _%loop145269%_ ((_%rest145271%_
                                      _%precedence-list145267%_))
                  (let* ((_%rest145272145280%_ _%rest145271%_)
                         (_%else145274145288%_ (lambda () '#f))
                         (_%K145276145297%_
                          (lambda (_%rest145291%_ _%klass-name145292%_)
                            (let ((_%$e145294%_
                                   (eq? (let ((__tmp147930
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a145260%_
                                                            (cons _%klass-b145261%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name145292%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp147930
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b145266%_)))
                              (if _%$e145294%_
                                  _%$e145294%_
                                  (_%loop145269%_ _%rest145291%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest145272145280%_))
                        (let ((_%hd145277145300%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest145272145280%_)))
                              (_%tl145278145302%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest145272145280%_))))
                          (let* ((_%klass-name145305%_ _%hd145277145300%_)
                                 (_%rest145307%_ _%tl145278145302%_))
                            (_%K145276145297%_
                             _%rest145307%_
                             _%klass-name145305%_)))
                        (_%else145274145288%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type145258%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145258%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (##structure-ref _%type145258%_ '3 gxc#!class::t '#f))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc145247%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc145247%_ 'gxc#!procedure::t))
            (let ((_%proc145250%_ _%proc145247%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc145250%_ '2 '#f '#f))
                  (let ((__tmp147931
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc145250%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp147931 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@374.11-374.15"
               'contract:
               '!procedure?
               'value:
               _%proc145247%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym145229%_ _%type145230%_ _%local?145231%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145230%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym145229%_
                     _%type145230%_)))
        (let ((__tmp147932
               (let () (declare (not safe)) (struct->list _%type145230%_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym145229%_ '" " __tmp147932))
        (let ((_%table145233%_
               (if _%local?145231%_
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
          (hash-put! _%table145233%_ _%sym145229%_ _%type145230%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym145238%_ _%type145239%_)
        (let ((_%local?145241%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym145238%_
           _%type145239%_
           _%local?145241%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g147934_
        (let ((_g147933_ (let () (declare (not safe)) (##length _g147934_))))
          (cond ((let () (declare (not safe)) (##fx= _g147933_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g147934_))
                ((let () (declare (not safe)) (##fx= _g147933_ 3))
                 (apply gxc#optimizer-declare-type!__% _g147934_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g147934_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym145223%_ _%type145224%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145224%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym145223%_
                     _%type145224%_)))
        (let ((_%table145226%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp147935
                 (let () (declare (not safe)) (struct->list _%type145224%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym145223%_ '" " __tmp147935))
          (let ()
            (declare (not safe))
            (hash-put! _%table145226%_ _%sym145223%_ _%type145224%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table145226%_ _%type145224%_ _%sym145223%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym145218%_ _%type145219%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145219%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym145218%_
                     _%type145219%_)))
        (let ((_%table145221%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table145221%_ _%sym145218%_))
              '#!void
              (begin
                (let ((__tmp147936
                       (let ()
                         (declare (not safe))
                         (struct->list _%type145219%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym145218%_
                   '" "
                   __tmp147936))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table145221%_ _%sym145218%_ _%type145219%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table145221%_
                   _%type145219%_
                   _%sym145218%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym145216%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym145216%_))
        (let ((__tmp147937
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp147937 _%sym145216%_))
        (let ((__tmp147938
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp147938 _%sym145216%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t145184%_
               _%method145185%_
               _%sym145186%_
               _%rebind?145187%_)
        (let ((_%klass145189%_ (gxc#optimizer-lookup-class _%type-t145184%_)))
          (if _%klass145189%_
              (let* ((_%vtab145191%_ (gxc#!class-method-table _%klass145189%_))
                     (_%$e145193%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab145191%_ _%method145185%_))))
                (if _%$e145193%_
                    ((lambda (_%existing145196%_)
                       (if _%rebind?145187%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t145184%_
                                '" "
                                _%method145185%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab145191%_
                                _%method145185%_
                                _%sym145186%_)))
                           (if (eq? _%existing145196%_ _%sym145186%_)
                               '#!void
                               (let ((__tmp147939
                                      (cons 'bind-method!
                                            (cons _%type-t145184%_
                                                  (cons _%method145185%_
                                                        (cons _%sym145186%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp147939
                                  _%method145185%_)))))
                     _%$e145193%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t145184%_
                         '" "
                         _%method145185%_
                         '" => "
                         _%sym145186%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab145191%_
                         _%method145185%_
                         _%sym145186%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t145184%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t145205%_ _%method145206%_ _%sym145207%_)
        (let ((_%rebind?145209%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t145205%_
           _%method145206%_
           _%sym145207%_
           _%rebind?145209%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g147941_
        (let ((_g147940_ (let () (declare (not safe)) (##length _g147941_))))
          (cond ((let () (declare (not safe)) (##fx= _g147940_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g147941_))
                ((let () (declare (not safe)) (##fx= _g147940_ 4))
                 (apply gxc#optimizer-declare-method!__% _g147941_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g147941_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym145172%_)
        (let ((_%$e145180%_
               (let ((_%ht145173145175%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-local-type))))
                 (if _%ht145173145175%_
                     (let ((_%ht145178%_ _%ht145173145175%_))
                       (declare (not safe))
                       (hash-get _%ht145178%_ _%sym145172%_))
                     '#f))))
          (if _%$e145180%_
              _%$e145180%_
              (let ((__tmp147942
                     (##structure-ref
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-optimizer-info))
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp147942 _%sym145172%_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym145164%_)
        (let ((_%type145165145167%_ (gxc#optimizer-lookup-type _%sym145164%_)))
          (if _%type145165145167%_
              (let ((_%type145170%_ _%type145165145167%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type145170%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (##structure-ref _%type145170%_ '1 gxc#!type::t '#f))
                    _%type145170%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym145160%_)
        (let ((_%table145162%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table145162%_ _%sym145160%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where145145%_ _%sym145146%_)
        (let ((_%$e145149%_ (gxc#optimizer-lookup-class _%sym145146%_)))
          (if _%$e145149%_
              ((lambda (_%g145151145153%_)
                 (let ((_%val145156%_ _%g145151145153%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val145156%_
                          'gxc#!class::t))
                       _%val145156%_
                       (let ()
                         (declare (not safe))
                         (error '"bad cast" gxc#!class::t _%val145156%_)))))
               _%$e145149%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where145145%_
                   _%sym145146%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass145143%_)
        (let ((__tmp147943
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp147943 _%klass145143%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t145140%_ _%method145141%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t145140%_)
         _%method145141%_)))
    (define gxc#optimizer-top-level-method!
      (lambda (_%sym145138%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _%sym145138%_))
        (let ((__tmp147944
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp147944 _%sym145138%_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym145136%_)
        (let ((__tmp147945
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp147945 _%sym145136%_))))))
