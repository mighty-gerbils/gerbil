(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1771101406)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp210069 (list)) (__tmp210068 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp210069
         '(type classes ssxi methods)
         __tmp210068
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args209988%_
        (apply make-instance gxc#optimizer-info::t _%$args209988%_)))
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
      (lambda (_%self209975%_)
        (let ((_%self209978%_ _%self209975%_))
          (if (let ((__tmp210070
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self209978%_))))
                (declare (not safe))
                (##fx< '4 __tmp210070))
              (begin
                (let ((__tmp210071
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self209978%_
                   __tmp210071
                   '1
                   '#f
                   '#f))
                (let ((__tmp210072
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self209978%_
                   __tmp210072
                   '2
                   '#f
                   '#f))
                (let ((__tmp210073
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self209978%_
                   __tmp210073
                   '3
                   '#f
                   '#f))
                (let ((__tmp210074
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self209978%_
                   __tmp210074
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp210075
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self209978%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self209978%_
                       '4
                       __tmp210075))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp210077 (list))
            (__tmp210076
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp210077
         '(id)
         __tmp210076
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args209850%_
        (apply make-instance gxc#!type::t _%$args209850%_)))
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
      (let ((__tmp210079 (list gxc#!type::t))
            (__tmp210078 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp210079
         '()
         __tmp210078
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args209847%_
        (apply make-instance gxc#!abort::t _%$args209847%_)))
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
      (let ((__tmp210081 (list gxc#!type::t))
            (__tmp210080 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp210081
         '()
         __tmp210080
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args209844%_
        (apply make-instance gxc#!alias::t _%$args209844%_)))
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
      (let ((__tmp210083 (list))
            (__tmp210082
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp210083
         '(return effect arguments unchecked origin)
         __tmp210082
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args209841%_
        (apply make-instance gxc#!signature::t _%$args209841%_)))
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
      (let ((__tmp210085 (list gxc#!type::t))
            (__tmp210084
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp210085
         '(signature)
         __tmp210084
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
      (lambda (_%id209828%_ _%signature209829%_)
        (let ((_%signature209832%_ _%signature209829%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id209828%_ _%signature209832%_))))
    (define gxc#make-!procedure
      (lambda (_%id206636%_ _%signature206638%_)
        (if ((lambda (_%$obj206642%_)
               (or (not _%$obj206642%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj206642%_
                      'gxc#!signature::t))))
             _%signature206638%_)
            (let ((_%signature206649%_ _%signature206638%_))
              (gxc#__make-!procedure _%id206636%_ _%signature206649%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature206638%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj209807%_ _%signature209808%_)
        (let* ((_%$obj209811%_ _%$obj209807%_)
               (_%signature209819%_ _%signature209808%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj209811%_
           _%signature209819%_
           '2
           '#f
           '#f))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj206779%_ _%signature206781%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj206779%_ 'gxc#!procedure::t))
            (let ((_%$obj206785%_ _%$obj206779%_))
              (if ((lambda (_%$obj206794%_)
                     (or (not _%$obj206794%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj206794%_
                            'gxc#!signature::t))))
                   _%signature206781%_)
                  (let ((_%signature206801%_ _%signature206781%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj206785%_
                     _%signature206801%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature206781%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj206779%_)
              '#!void))))
    (define gxc#!class-meta::t
      (let ((__tmp210087 (list gxc#!type::t))
            (__tmp210086 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp210087
         '(class)
         __tmp210086
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args209804%_
        (apply make-instance gxc#!class-meta::t _%$args209804%_)))
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
      (let ((__tmp210089 (list gxc#!type::t))
            (__tmp210088
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
         __tmp210089
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp210088
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args209801%_
        (apply make-instance gxc#!class::t _%$args209801%_)))
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
      (let ((__tmp210091 (list gxc#!procedure::t))
            (__tmp210090 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp210091
         '()
         __tmp210090
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args209798%_
        (apply make-instance gxc#!predicate::t _%$args209798%_)))
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
      (let ((__tmp210093 (list gxc#!procedure::t))
            (__tmp210092 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp210093
         '()
         __tmp210092
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args209795%_
        (apply make-instance gxc#!constructor::t _%$args209795%_)))
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
      (let ((__tmp210095 (list gxc#!procedure::t))
            (__tmp210094 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp210095
         '(slot checked?)
         __tmp210094
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args209792%_
        (apply make-instance gxc#!accessor::t _%$args209792%_)))
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
      (let ((__tmp210097 (list gxc#!procedure::t))
            (__tmp210096 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp210097
         '(slot checked?)
         __tmp210096
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args209789%_
        (apply make-instance gxc#!mutator::t _%$args209789%_)))
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
      (let ((__tmp210099 (list gxc#!type::t))
            (__tmp210098 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp210099
         '(methods)
         __tmp210098
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args209786%_
        (apply make-instance gxc#!interface::t _%$args209786%_)))
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
      (let ((__tmp210101 (list gxc#!procedure::t))
            (__tmp210100
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp210101
         '(arity dispatch inline inline-typedecl)
         __tmp210100
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args209783%_
        (apply make-instance gxc#!lambda::t _%$args209783%_)))
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
      (let ((__tmp210103 (list gxc#!procedure::t))
            (__tmp210102 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp210103
         '(clauses)
         __tmp210102
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args209780%_
        (apply make-instance gxc#!case-lambda::t _%$args209780%_)))
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
      (let ((__tmp210105 (list gxc#!procedure::t))
            (__tmp210104
             (cons (cons 'struct: '#t) '((equal: table dispatch)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp210105
         '(table dispatch)
         __tmp210104
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args209777%_
        (apply make-instance gxc#!kw-lambda::t _%$args209777%_)))
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
      (let ((__tmp210107 (list gxc#!procedure::t))
            (__tmp210106 (cons (cons 'struct: '#t) '((equal: keys main)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp210107
         '(keys main)
         __tmp210106
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args209774%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args209774%_)))
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
      (let ((__tmp210108 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp210108
         '()
         '((equal:))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args209771%_
        (apply make-instance gxc#!primitive::t _%$args209771%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp210110 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp210109 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp210110
         '()
         __tmp210109
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args209768%_
        (apply make-instance gxc#!primitive-predicate::t _%$args209768%_)))
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
      (let ((__tmp210112 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp210111 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp210112
         '()
         __tmp210111
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args209765%_
        (apply make-instance gxc#!primitive-lambda::t _%$args209765%_)))
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
      (let ((__tmp210114 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp210113 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp210114
         '()
         __tmp210113
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args209762%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args209762%_)))
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
      (lambda (_%self209749%_)
        (let ((_%self209752%_ _%self209749%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self209752%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self209612%_ _%klass209613%_)
        (let ((_%self209616%_ _%self209612%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self209616%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209616%_
             _%klass209613%_
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
      (lambda (_%self209302%_
               _%id209303%_
               _%super209304%_
               _%slots209305%_
               _%ctor-method209306%_
               _%struct?209307%_
               _%final?209308%_
               _%system?209309%_
               _%metaclass209310%_)
        (let ((_%self209313%_ _%self209302%_))
          (let _%lp209324%_ ((_%rest209326%_ _%super209304%_))
            (let* ((_%rest209327209335%_ _%rest209326%_)
                   (_%else209329209343%_ (lambda () '#!void))
                   (_%K209331209349%_
                    (lambda (_%rest209346%_ _%super-id209347%_)
                      (if (let ((__tmp210115
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id209303%_ '()))
                                  _%super-id209347%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp210115 '8 '#f '#f))
                          (let ((__tmp210116
                                 (cons '!class (cons _%id209303%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp210116
                             _%super-id209347%_))
                          '#!void)
                      (_%lp209324%_ _%rest209346%_))))
              (if (pair? _%rest209327209335%_)
                  (let ((_%hd209332209352%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest209327209335%_)))
                        (_%tl209333209354%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest209327209335%_))))
                    (let* ((_%super-id209357%_ _%hd209332209352%_)
                           (_%rest209359%_ _%tl209333209354%_))
                      (_%K209331209349%_ _%rest209359%_ _%super-id209357%_)))
                  '#!void)))
          (let* ((_%ctor-method209410%_
                  (let ((_%$e209361%_ _%ctor-method209306%_))
                    (if _%$e209361%_
                        _%$e209361%_
                        (let _%lp209364%_ ((_%rest209366%_ _%super209304%_)
                                           (_%method209367%_ '#f))
                          (let* ((_%rest209368209376%_ _%rest209366%_)
                                 (_%else209370209384%_
                                  (lambda () _%method209367%_))
                                 (_%K209372209398%_
                                  (lambda (_%rest209387%_ _%super-id209388%_)
                                    (let* ((_%klass209390%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id209303%_ '()))
                                             _%super-id209388%_))
                                           (_%$e209392%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass209390%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e209392%_
                                          ((lambda (_%ctor-method209395%_)
                                             (if _%method209367%_
                                                 (if (eq? _%ctor-method209395%_
                                                          _%method209367%_)
                                                     (_%lp209364%_
                                                      _%rest209387%_
                                                      _%ctor-method209395%_)
                                                     (let ((__tmp210117
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id209303%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp210117
                _%method209367%_
                _%ctor-method209395%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp209364%_
                                                  _%rest209387%_
                                                  _%ctor-method209395%_)))
                                           _%$e209392%_)
                                          (_%lp209364%_
                                           _%rest209387%_
                                           _%method209367%_))))))
                            (if (pair? _%rest209368209376%_)
                                (let ((_%hd209373209401%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest209368209376%_)))
                                      (_%tl209374209403%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest209368209376%_))))
                                  (let* ((_%super-id209406%_
                                          _%hd209373209401%_)
                                         (_%rest209408%_ _%tl209374209403%_))
                                    (_%K209372209398%_
                                     _%rest209408%_
                                     _%super-id209406%_)))
                                (_%else209370209384%_)))))))
                 (_g210118_
                  (let ((__tmp210122
                         (lambda (_%klass-id209412%_)
                           (cons _%klass-id209412%_
                                 (let ((__tmp210123
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id209303%_ '()))
                                         _%klass-id209412%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp210123
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp210120
                         (lambda (_%klass-id209414%_)
                           (let ((__tmp210121
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id209303%_ '()))
                                   _%klass-id209414%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp210121
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp210122
                     __tmp210120
                     eq?
                     identity
                     '()
                     _%super209304%_))))
            (begin
              (let ((_g210119_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g210118_)
                           (##values-length _g210118_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g210119_ 2)))
                    (error "Context expects 2 values" _g210119_)))
              (let ((_%precedence-list209416%_
                     (let () (declare (not safe)) (##values-ref _g210118_ 0)))
                    (_%base-struct209417%_
                     (let () (declare (not safe)) (##values-ref _g210118_ 1))))
                (let* ((_%precedence-list209461%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id209303%_ '(t object class)))
                            _%precedence-list209416%_
                            (if (memq 'object::t _%precedence-list209416%_)
                                _%precedence-list209416%_
                                (if _%system?209309%_
                                    (if (memq 't::t _%precedence-list209416%_)
                                        _%precedence-list209416%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list209416%_
                                           '(t::t))))
                                    (let _%loop209423%_ ((_%tail209425%_
                                                          _%precedence-list209416%_)
                                                         (_%head209426%_ '()))
                                      (let* ((_%tail209427209435%_
                                              _%tail209425%_)
                                             (_%else209429209443%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (foldl__0
                                                   cons
                                                   '(object::t t::t)
                                                   _%head209426%_))))
                                             (_%K209431209449%_
                                              (lambda (_%rest209446%_
                                                       _%hd209447%_)
                                                (if (eq? _%hd209447%_ 't::t)
                                                    (let ((__tmp210124
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail209425%_)))
              (declare (not safe))
              (foldl__0 cons __tmp210124 _%head209426%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop209423%_
                                                     _%rest209446%_
                                                     (cons _%hd209447%_
                                                           _%head209426%_))))))
                                        (if (pair? _%tail209427209435%_)
                                            (let ((_%hd209432209452%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail209427209435%_)))
                                                  (_%tl209433209454%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail209427209435%_))))
                                              (let* ((_%hd209457%_
                                                      _%hd209432209452%_)
                                                     (_%rest209459%_
                                                      _%tl209433209454%_))
                                                (_%K209431209449%_
                                                 _%rest209459%_
                                                 _%hd209457%_)))
                                            (_%else209429209443%_))))))))
                       (_%fields209463%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id209303%_ '()))
                         _%base-struct209417%_
                         _%precedence-list209461%_
                         _%slots209305%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self209313%_
                     _%id209303%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self209313%_
                     _%super209304%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self209313%_
                     _%precedence-list209461%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self209313%_
                     _%slots209305%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self209313%_
                     _%fields209463%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self209313%_
                     _%ctor-method209410%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self209313%_
                     _%struct?209307%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self209313%_
                     _%final?209308%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self209313%_
                     _%metaclass209310%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self209466%_
               _%id209467%_
               _%super209468%_
               _%precedence-list209469%_
               _%slots209470%_
               _%fields209471%_
               _%constructor209472%_
               _%struct?209473%_
               _%final?209474%_
               _%system?209475%_
               _%metaclass209476%_
               _%methods209477%_)
        (let ((_%self209480%_ _%self209466%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209480%_
             _%id209467%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209480%_
             _%super209468%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209480%_
             _%precedence-list209469%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209480%_
             _%slots209470%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209480%_
             _%fields209471%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209480%_
             _%constructor209472%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209480%_
             _%struct?209473%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209480%_
             _%final?209474%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209480%_
             _%metaclass209476%_
             '10
             '#f
             '#f))
          (if _%methods209477%_
              (let ((__tmp210125
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods209477%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self209480%_
                 __tmp210125
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g210126_
        (let ((_g210127_ (let () (declare (not safe)) (##length _g210126_))))
          (cond ((let () (declare (not safe)) (##fx= _g210127_ 9))
                 (apply gxc#!class:::init!__0 _g210126_))
                ((let () (declare (not safe)) (##fx= _g210127_ 12))
                 (apply gxc#!class:::init!__1 _g210126_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g210126_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where209154%_
               _%base-struct209155%_
               _%precedence-list209156%_
               _%direct-slots209157%_)
        (let* ((_%base-fields209159%_
                (if _%base-struct209155%_
                    (let ((__tmp210128
                           (gxc#optimizer-resolve-class
                            _%where209154%_
                            _%base-struct209155%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp210128 '5 '#f '#f))
                    '()))
               (_%r-fields209161%_ (reverse _%base-fields209159%_))
               (_%seen-slots209169%_
                (let ((_%tab209163%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g209164209166%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab209163%_ _%g209164209166%_ '#t)))
                   _%base-fields209159%_)
                  _%tab209163%_))
               (_%process-slot209173%_
                (lambda (_%slot209171%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots209169%_ _%slot209171%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots209169%_
                           _%slot209171%_
                           '#t))
                        (set! _%r-fields209161%_
                              (cons _%slot209171%_ _%r-fields209161%_)))))))
          (for-each
           (lambda (_%mixin209176%_)
             (let ((_%klass209178%_
                    (gxc#optimizer-resolve-class
                     _%where209154%_
                     _%mixin209176%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass209178%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot209173%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass209178%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list209156%_)
          (for-each _%process-slot209173%_ _%direct-slots209157%_)
          (let () (declare (not safe)) (##reverse _%r-fields209161%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass209113%_ _%slot209114%_)
        (let _%lp209116%_ ((_%rest209118%_
                            (##structure-ref
                             _%klass209113%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset209119%_ '1))
          (let* ((_%rest209120209128%_ _%rest209118%_)
                 (_%else209122209136%_
                  (lambda ()
                    (let ((__tmp210130
                           (##structure-ref
                            _%klass209113%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp210129
                           (##structure-ref
                            _%klass209113%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp210130
                       __tmp210129
                       _%slot209114%_))))
                 (_%K209124209142%_
                  (lambda (_%rest209139%_ _%s209140%_)
                    (if (eq? _%s209140%_ _%slot209114%_)
                        _%offset209119%_
                        (_%lp209116%_
                         _%rest209139%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset209119%_ '1)))))))
            (if (pair? _%rest209120209128%_)
                (let ((_%hd209125209145%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest209120209128%_)))
                      (_%tl209126209147%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest209120209128%_))))
                  (let* ((_%s209150%_ _%hd209125209145%_)
                         (_%rest209152%_ _%tl209126209147%_))
                    (_%K209124209142%_ _%rest209152%_ _%s209150%_)))
                (_%else209122209136%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass209071%_ _%slot209072%_)
        (if (gxc#!class-struct-slot? _%klass209071%_ _%slot209072%_)
            _%klass209071%_
            (let _%lp209074%_ ((_%rest209076%_
                                (##structure-ref
                                 _%klass209071%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest209077209085%_ _%rest209076%_)
                     (_%else209079209093%_ (lambda () '#f))
                     (_%K209081209101%_
                      (lambda (_%rest209096%_ _%super209097%_)
                        (let ((_%super-class209099%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass209071%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot209072%_ '())))
                                _%super209097%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class209099%_
                               _%slot209072%_)
                              _%super-class209099%_
                              (_%lp209074%_ _%rest209096%_))))))
                (if (pair? _%rest209077209085%_)
                    (let ((_%hd209082209104%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest209077209085%_)))
                          (_%tl209083209106%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest209077209085%_))))
                      (let* ((_%super209109%_ _%hd209082209104%_)
                             (_%rest209111%_ _%tl209083209106%_))
                        (_%K209081209101%_ _%rest209111%_ _%super209109%_)))
                    (_%else209079209093%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass209068%_ _%slot209069%_)
        (if (##structure-ref _%klass209068%_ '7 gxc#!class::t '#f)
            (memq _%slot209069%_
                  (##structure-ref _%klass209068%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self209053%_ _%id209054%_)
        (let ((_%self209057%_ _%self209053%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209057%_
             _%id209054%_
             '1
             '#f
             '#f))
          (let ((__tmp210131
                 (let ((__obj210063
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
                      __obj210063
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210063
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210063
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj210063)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209057%_
             __tmp210131
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self208916%_ _%id208917%_)
        (let ((_%self208920%_ _%self208916%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208920%_
             _%id208917%_
             '1
             '#f
             '#f))
          (let ((__tmp210132
                 (let ((__obj210064
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
                      __obj210064
                      _%id208917%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210064
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj210064)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208920%_
             __tmp210132
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
      (lambda (_%self208777%_ _%id208778%_ _%slot208779%_ _%checked?208780%_)
        (let ((_%self208783%_ _%self208777%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208783%_
             _%id208778%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208783%_
             _%slot208779%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208783%_
             _%checked?208780%_
             '4
             '#f
             '#f))
          (let ((__tmp210133
                 (let ((__obj210065
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
                     (##unchecked-structure-set! __obj210065 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210065
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp210134 (cons _%id208778%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210065
                      __tmp210134
                      '3
                      '#f
                      '#f))
                   __obj210065)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208783%_
             __tmp210133
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self208638%_ _%id208639%_ _%slot208640%_ _%checked?208641%_)
        (let ((_%self208644%_ _%self208638%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208644%_
             _%id208639%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208644%_
             _%slot208640%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208644%_
             _%checked?208641%_
             '4
             '#f
             '#f))
          (let ((__tmp210135
                 (let ((__obj210066
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
                      __obj210066
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210066
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp210136 (cons _%id208639%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210066
                      __tmp210136
                      '3
                      '#f
                      '#f))
                   __obj210066)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208644%_
             __tmp210135
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords208482%_
               _%signature208479208483%_
               _%self208484%_
               _%arity208485%_
               _%dispatch208486%_)
        (let* ((_%signature208488%_
                (if (eq? _%signature208479208483%_ absent-value)
                    '#f
                    _%signature208479208483%_))
               (_%self208491%_ _%self208484%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self208491%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208491%_
             _%arity208485%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208491%_
             _%dispatch208486%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208491%_
             _%signature208488%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords208506%_ . _%args208507%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords208506%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords208506%_
                  'signature:
                  absent-value))
               _%args208507%_)))
    (define gxc#!lambda:::init!
      (lambda _%args208480208513%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args208480208513%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords208323%_
               _%signature208320208324%_
               _%self208325%_
               _%clauses208326%_)
        (let* ((_%signature208328%_
                (if (eq? _%signature208320208324%_ absent-value)
                    '#f
                    _%signature208320208324%_))
               (_%self208331%_ _%self208325%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self208331%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208331%_
             _%signature208328%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208331%_
             _%clauses208326%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords208346%_ . _%args208347%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords208346%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords208346%_
                  'signature:
                  absent-value))
               _%args208347%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args208321208353%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args208321208353%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self208181%_ _%tab208182%_ _%dispatch208183%_)
        (let ((_%self208186%_ _%self208181%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self208186%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208186%_
             _%tab208182%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208186%_
             _%dispatch208183%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self208043%_ _%keys208044%_ _%main208045%_)
        (let ((_%self208048%_ _%self208043%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self208048%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208048%_
             _%keys208044%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208048%_
             _%main208045%_
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
      (lambda (_%self207662%_ _%id207663%_)
        (let ((_%self207666%_ _%self207662%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207666%_
             _%id207663%_
             '1
             '#f
             '#f))
          (let ((__tmp210137
                 (let ((__obj210067
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
                      __obj210067
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210067
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210067
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj210067)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207666%_
             __tmp210137
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
      (lambda (_%klass207532%_)
        (let ((_%$e207534%_
               (##structure-ref _%klass207532%_ '11 gxc#!class::t '#f)))
          (if _%$e207534%_
              _%$e207534%_
              (let ((_%tab207538%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass207532%_
                 _%tab207538%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab207538%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass207524%_ _%method207525%_)
        (let ((_%tab207526207528%_
               (##structure-ref _%klass207524%_ '11 gxc#!class::t '#f)))
          (if _%tab207526207528%_
              (let ((_%tab207530%_ _%tab207526207528%_))
                (declare (not safe))
                (hash-get _%tab207530%_ _%method207525%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a207509%_ _%type-b207510%_)
        (if _%type-a207509%_
            (if _%type-b207510%_
                (let ((_%$e207512%_ (eq? _%type-a207509%_ _%type-b207510%_)))
                  (if _%$e207512%_
                      _%$e207512%_
                      (let ((_%$e207515%_
                             (eq? (##structure-ref
                                   _%type-b207510%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e207515%_
                            _%$e207515%_
                            (let ((_%$e207518%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a207509%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b207510%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e207518%_
                                  _%$e207518%_
                                  (let ((_%$e207521%_
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-instance-of?
                                                _%type-a207509%_
                                                'gxc#!class::t))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-instance-of?
                                                    _%type-b207510%_
                                                    'gxc#!class::t))
                                                 (gxc#!class-subclass?
                                                  _%type-a207509%_
                                                  _%type-b207510%_)
                                                 '#f)
                                             '#f)))
                                    (if _%$e207521%_
                                        _%$e207521%_
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%type-a207509%_
                                               'gxc#!interface::t))
                                            (eq? (##structure-ref
                                                  _%type-b207510%_
                                                  '1
                                                  gxc#!type::t
                                                  '#f)
                                                 'gerbil#interface-descriptor::t)
                                            '#f)))))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a207460%_ _%klass-b207461%_)
        (let ((_%$e207463%_
               (eq? (##structure-ref _%klass-a207460%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b207461%_ '1 gxc#!type::t '#f))))
          (if _%$e207463%_
              _%$e207463%_
              (let ((_%klass-id-b207466%_
                     (##structure-ref _%klass-b207461%_ '1 gxc#!type::t '#f))
                    (_%precedence-list207467%_
                     (##structure-ref _%klass-a207460%_ '3 gxc#!class::t '#f)))
                (let _%loop207469%_ ((_%rest207471%_
                                      _%precedence-list207467%_))
                  (let* ((_%rest207472207480%_ _%rest207471%_)
                         (_%else207474207488%_ (lambda () '#f))
                         (_%K207476207497%_
                          (lambda (_%rest207491%_ _%klass-name207492%_)
                            (let ((_%$e207494%_
                                   (eq? (let ((__tmp210138
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a207460%_
                                                            (cons _%klass-b207461%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name207492%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp210138
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b207466%_)))
                              (if _%$e207494%_
                                  _%$e207494%_
                                  (_%loop207469%_ _%rest207491%_))))))
                    (if (pair? _%rest207472207480%_)
                        (let ((_%hd207477207500%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest207472207480%_)))
                              (_%tl207478207502%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest207472207480%_))))
                          (let* ((_%klass-name207505%_ _%hd207477207500%_)
                                 (_%rest207507%_ _%tl207478207502%_))
                            (_%K207476207497%_
                             _%rest207507%_
                             _%klass-name207505%_)))
                        (_%else207474207488%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type207458%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type207458%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type207458%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc207447%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc207447%_ 'gxc#!procedure::t))
            (let ((_%proc207450%_ _%proc207447%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc207450%_ '2 '#f '#f))
                  (let ((__tmp210139
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc207450%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp210139 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@382.11-382.15"
               'contract:
               '!procedure?
               'value:
               _%proc207447%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym207429%_ _%type207430%_ _%local?207431%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type207430%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym207429%_
                     _%type207430%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym207429%_ '" " _%type207430%_))
        (let ((_%table207433%_
               (if _%local?207431%_
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
          (hash-put! _%table207433%_ _%sym207429%_ _%type207430%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym207438%_ _%type207439%_)
        (let ((_%local?207441%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym207438%_
           _%type207439%_
           _%local?207441%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g210140_
        (let ((_g210141_ (let () (declare (not safe)) (##length _g210140_))))
          (cond ((let () (declare (not safe)) (##fx= _g210141_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g210140_))
                ((let () (declare (not safe)) (##fx= _g210141_ 3))
                 (apply gxc#optimizer-declare-type!__% _g210140_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g210140_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym207423%_ _%type207424%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type207424%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym207423%_
                     _%type207424%_)))
        (let ((_%table207426%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp210142
                 (let () (declare (not safe)) (struct->list _%type207424%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym207423%_ '" " __tmp210142))
          (let ()
            (declare (not safe))
            (hash-put! _%table207426%_ _%sym207423%_ _%type207424%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table207426%_ _%type207424%_ _%sym207423%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym207418%_ _%type207419%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type207419%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym207418%_
                     _%type207419%_)))
        (let ((_%table207421%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table207421%_ _%sym207418%_))
              '#!void
              (begin
                (let ((__tmp210143
                       (let ()
                         (declare (not safe))
                         (struct->list _%type207419%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym207418%_
                   '" "
                   __tmp210143))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table207421%_ _%sym207418%_ _%type207419%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table207421%_
                   _%type207419%_
                   _%sym207418%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym207416%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym207416%_))
        (let ((__tmp210144
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp210144 _%sym207416%_))
        (let ((__tmp210145
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp210145 _%sym207416%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t207384%_
               _%method207385%_
               _%sym207386%_
               _%rebind?207387%_)
        (let ((__tmp210146
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp210146 _%sym207386%_ '#t))
        (let ((_%klass207389%_ (gxc#optimizer-lookup-class _%type-t207384%_)))
          (if _%klass207389%_
              (let* ((_%vtab207391%_ (gxc#!class-method-table _%klass207389%_))
                     (_%$e207393%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab207391%_ _%method207385%_))))
                (if _%$e207393%_
                    ((lambda (_%existing207396%_)
                       (if _%rebind?207387%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t207384%_
                                '" "
                                _%method207385%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab207391%_
                                _%method207385%_
                                _%sym207386%_)))
                           (if (eq? _%existing207396%_ _%sym207386%_)
                               '#!void
                               (let ((__tmp210147
                                      (cons 'bind-method!
                                            (cons _%type-t207384%_
                                                  (cons _%method207385%_
                                                        (cons _%sym207386%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp210147
                                  _%method207385%_)))))
                     _%$e207393%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t207384%_
                         '" "
                         _%method207385%_
                         '" => "
                         _%sym207386%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab207391%_
                         _%method207385%_
                         _%sym207386%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t207384%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t207405%_ _%method207406%_ _%sym207407%_)
        (let ((_%rebind?207409%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t207405%_
           _%method207406%_
           _%sym207407%_
           _%rebind?207409%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g210148_
        (let ((_g210149_ (let () (declare (not safe)) (##length _g210148_))))
          (cond ((let () (declare (not safe)) (##fx= _g210149_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g210148_))
                ((let () (declare (not safe)) (##fx= _g210149_ 4))
                 (apply gxc#optimizer-declare-method!__% _g210148_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g210148_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym207370%_)
        (let ((_%$e207372%_
               (let ((__tmp210150
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym207370%_ __tmp210150))))
          (if _%$e207372%_
              _%$e207372%_
              (let ((_%$e207380%_
                     (let ((_%ht207374207376%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht207374207376%_
                           (let ((_%ht207378%_ _%ht207374207376%_))
                             (declare (not safe))
                             (hash-get _%ht207378%_ _%sym207370%_))
                           '#f))))
                (if _%$e207380%_
                    _%$e207380%_
                    (let ((__tmp210151
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp210151 _%sym207370%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym207363%_)
        (let ((_%type207364207366%_ (gxc#optimizer-lookup-type _%sym207363%_)))
          (if _%type207364207366%_
              (let ((_%type207368%_ _%type207364207366%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type207368%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type207368%_ '1 '#f '#f)))
                    _%type207368%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym207359%_)
        (let ((_%table207361%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table207361%_ _%sym207359%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where207344%_ _%sym207345%_)
        (let ((_%$e207348%_ (gxc#optimizer-lookup-class _%sym207345%_)))
          (if _%$e207348%_
              ((lambda (_%g207350207352%_)
                 (let ((_%val207355%_ _%g207350207352%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val207355%_
                          'gxc#!class::t))
                       _%val207355%_
                       (begin
                         (raise-contract-violation-error
                          '"contract violation"
                          'context:
                          'gerbil/compiler/optimize-base
                          'contract:
                          '(!class? val)
                          'value:
                          _%val207355%_)
                         '#!void))))
               _%$e207348%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where207344%_
                   _%sym207345%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass207342%_)
        (let ((__tmp210152
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp210152 _%klass207342%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t207339%_ _%method207340%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t207339%_)
         _%method207340%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym207337%_)
        (let ((__tmp210153
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp210153 _%sym207337%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e206812%_
                  (lambda (_%t207278%_)
                    (if (symbol? _%t207278%_)
                        (_%type-e206812%_
                         (gxc#optimizer-lookup-type _%t207278%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t207278%_
                               'gxc#!lambda::t))
                            (let* ((_%t207282%_ _%t207278%_)
                                   (_%t207286%_ _%t207282%_))
                              (_%__lambda-type206938%_ _%t207286%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t207278%_
                                   'gxc#!kw-lambda::t))
                                (let* ((_%t207298%_ _%t207278%_)
                                       (_%t207302%_ _%t207298%_))
                                  (_%__kw-lambda-type207061%_ _%t207302%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t207278%_
                                       'gxc#!kw-lambda-primary::t))
                                    (let* ((_%t207313%_ _%t207278%_)
                                           (_%t207317%_ _%t207313%_))
                                      (_%__kw-lambda-primary-type207184%_
                                       _%t207317%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t207278%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t207328%_ _%t207278%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t207328%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp210154
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t207328%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp210154
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t207278%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t207278%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%__lambda-type206938%_
                  (lambda (_%t207266%_)
                    (let ((_%t207269%_ _%t207266%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t207269%_ '4 '#f '#f))
                          (_%type-e206812%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t207269%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t207269%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp210155
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t207269%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp210155
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%lambda-type206939%_
                  (lambda (_%t207254%_)
                    (let ((_%t207257%_ _%t207254%_))
                      (_%__lambda-type206938%_ _%t207257%_))))
                 (_%__kw-lambda-type207061%_
                  (lambda (_%t207242%_)
                    (let ((_%t207245%_ _%t207242%_))
                      (_%type-e206812%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t207245%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-type207062%_
                  (lambda (_%t207230%_)
                    (let ((_%t207233%_ _%t207230%_))
                      (_%__kw-lambda-type207061%_ _%t207233%_))))
                 (_%__kw-lambda-primary-type207184%_
                  (lambda (_%t207218%_)
                    (let ((_%t207221%_ _%t207218%_))
                      (_%type-e206812%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t207221%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type207185%_
                  (lambda (_%t207206%_)
                    (let ((_%t207209%_ _%t207206%_))
                      (_%__kw-lambda-primary-type207184%_ _%t207209%_)))))
          (let* ((_%ht1207187%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2207189%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result207191%_
                  (if _%ht1207187%_
                      (let () (declare (not safe)) (hash->list _%ht1207187%_))
                      '()))
                 (_%result207193%_
                  (if _%ht2207189%_
                      (let ((__tmp210156
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2207189%_))))
                        (declare (not safe))
                        (foldl__0 cons _%result207191%_ __tmp210156))
                      _%result207191%_)))
            (for-each
             (lambda (_%p207196%_)
               (let* ((_%t207198%_ (cdr _%p207196%_))
                      (_%tr207200%_ (_%type-e206812%_ _%t207198%_)))
                 (set-cdr! _%p207196%_ _%tr207200%_)))
             _%result207193%_)
            (list-sort
             (lambda (_%a207203%_ _%b207204%_)
               (let ((__tmp210158 (symbol->string (car _%a207203%_)))
                     (__tmp210157 (symbol->string (car _%b207204%_))))
                 (declare (not safe))
                 (##string<? __tmp210158 __tmp210157)))
             _%result207193%_)))))))
