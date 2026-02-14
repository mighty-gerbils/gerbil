(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1771104512)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp210173 (list)) (__tmp210172 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp210173
         '(type classes ssxi methods)
         __tmp210172
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args210092%_
        (apply make-instance gxc#optimizer-info::t _%$args210092%_)))
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
      (lambda (_%self210079%_)
        (let ((_%self210082%_ _%self210079%_))
          (if (let ((__tmp210174
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self210082%_))))
                (declare (not safe))
                (##fx< '4 __tmp210174))
              (begin
                (let ((__tmp210175
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self210082%_
                   __tmp210175
                   '1
                   '#f
                   '#f))
                (let ((__tmp210176
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self210082%_
                   __tmp210176
                   '2
                   '#f
                   '#f))
                (let ((__tmp210177
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self210082%_
                   __tmp210177
                   '3
                   '#f
                   '#f))
                (let ((__tmp210178
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self210082%_
                   __tmp210178
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp210179
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self210082%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self210082%_
                       '4
                       __tmp210179))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp210181 (list))
            (__tmp210180
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp210181
         '(id)
         __tmp210180
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args209954%_
        (apply make-instance gxc#!type::t _%$args209954%_)))
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
      (let ((__tmp210183 (list gxc#!type::t))
            (__tmp210182 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp210183
         '()
         __tmp210182
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args209951%_
        (apply make-instance gxc#!abort::t _%$args209951%_)))
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
      (let ((__tmp210185 (list gxc#!type::t))
            (__tmp210184 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp210185
         '()
         __tmp210184
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args209948%_
        (apply make-instance gxc#!alias::t _%$args209948%_)))
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
      (let ((__tmp210187 (list))
            (__tmp210186
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp210187
         '(return effect arguments unchecked origin)
         __tmp210186
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args209945%_
        (apply make-instance gxc#!signature::t _%$args209945%_)))
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
      (let ((__tmp210189 (list gxc#!type::t))
            (__tmp210188
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp210189
         '(signature)
         __tmp210188
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
      (lambda (_%id209932%_ _%signature209933%_)
        (let ((_%signature209936%_ _%signature209933%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id209932%_ _%signature209936%_))))
    (define gxc#make-!procedure
      (lambda (_%id206740%_ _%signature206742%_)
        (if ((lambda (_%$obj206746%_)
               (or (not _%$obj206746%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj206746%_
                      'gxc#!signature::t))))
             _%signature206742%_)
            (let ((_%signature206753%_ _%signature206742%_))
              (gxc#__make-!procedure _%id206740%_ _%signature206753%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature206742%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj209911%_ _%signature209912%_)
        (let* ((_%$obj209915%_ _%$obj209911%_)
               (_%signature209923%_ _%signature209912%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj209915%_
           _%signature209923%_
           '2
           '#f
           '#f))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj206883%_ _%signature206885%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj206883%_ 'gxc#!procedure::t))
            (let ((_%$obj206889%_ _%$obj206883%_))
              (if ((lambda (_%$obj206898%_)
                     (or (not _%$obj206898%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj206898%_
                            'gxc#!signature::t))))
                   _%signature206885%_)
                  (let ((_%signature206905%_ _%signature206885%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj206889%_
                     _%signature206905%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature206885%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj206883%_)
              '#!void))))
    (define gxc#!class-meta::t
      (let ((__tmp210191 (list gxc#!type::t))
            (__tmp210190 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp210191
         '(class)
         __tmp210190
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args209908%_
        (apply make-instance gxc#!class-meta::t _%$args209908%_)))
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
      (let ((__tmp210193 (list gxc#!type::t))
            (__tmp210192
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
         __tmp210193
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp210192
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args209905%_
        (apply make-instance gxc#!class::t _%$args209905%_)))
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
      (let ((__tmp210195 (list gxc#!procedure::t))
            (__tmp210194 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp210195
         '()
         __tmp210194
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args209902%_
        (apply make-instance gxc#!predicate::t _%$args209902%_)))
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
      (let ((__tmp210197 (list gxc#!procedure::t))
            (__tmp210196 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp210197
         '()
         __tmp210196
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args209899%_
        (apply make-instance gxc#!constructor::t _%$args209899%_)))
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
      (let ((__tmp210199 (list gxc#!procedure::t))
            (__tmp210198 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp210199
         '(slot checked?)
         __tmp210198
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args209896%_
        (apply make-instance gxc#!accessor::t _%$args209896%_)))
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
      (let ((__tmp210201 (list gxc#!procedure::t))
            (__tmp210200 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp210201
         '(slot checked?)
         __tmp210200
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args209893%_
        (apply make-instance gxc#!mutator::t _%$args209893%_)))
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
      (let ((__tmp210203 (list gxc#!type::t))
            (__tmp210202 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp210203
         '(methods)
         __tmp210202
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args209890%_
        (apply make-instance gxc#!interface::t _%$args209890%_)))
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
      (let ((__tmp210205 (list gxc#!procedure::t))
            (__tmp210204
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp210205
         '(arity dispatch inline inline-typedecl)
         __tmp210204
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args209887%_
        (apply make-instance gxc#!lambda::t _%$args209887%_)))
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
      (let ((__tmp210207 (list gxc#!procedure::t))
            (__tmp210206 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp210207
         '(clauses)
         __tmp210206
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args209884%_
        (apply make-instance gxc#!case-lambda::t _%$args209884%_)))
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
      (let ((__tmp210209 (list gxc#!procedure::t))
            (__tmp210208
             (cons (cons 'struct: '#t) '((equal: table dispatch)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp210209
         '(table dispatch)
         __tmp210208
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args209881%_
        (apply make-instance gxc#!kw-lambda::t _%$args209881%_)))
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
      (let ((__tmp210211 (list gxc#!procedure::t))
            (__tmp210210 (cons (cons 'struct: '#t) '((equal: keys main)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp210211
         '(keys main)
         __tmp210210
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args209878%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args209878%_)))
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
      (let ((__tmp210212 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp210212
         '()
         '((equal:))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args209875%_
        (apply make-instance gxc#!primitive::t _%$args209875%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp210214 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp210213 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp210214
         '()
         __tmp210213
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args209872%_
        (apply make-instance gxc#!primitive-predicate::t _%$args209872%_)))
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
      (let ((__tmp210216 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp210215 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp210216
         '()
         __tmp210215
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args209869%_
        (apply make-instance gxc#!primitive-lambda::t _%$args209869%_)))
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
      (let ((__tmp210218 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp210217 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp210218
         '()
         __tmp210217
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args209866%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args209866%_)))
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
      (lambda (_%self209853%_)
        (let ((_%self209856%_ _%self209853%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self209856%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self209716%_ _%klass209717%_)
        (let ((_%self209720%_ _%self209716%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self209720%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209720%_
             _%klass209717%_
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
      (lambda (_%self209406%_
               _%id209407%_
               _%super209408%_
               _%slots209409%_
               _%ctor-method209410%_
               _%struct?209411%_
               _%final?209412%_
               _%system?209413%_
               _%metaclass209414%_)
        (let ((_%self209417%_ _%self209406%_))
          (let _%lp209428%_ ((_%rest209430%_ _%super209408%_))
            (let* ((_%rest209431209439%_ _%rest209430%_)
                   (_%else209433209447%_ (lambda () '#!void))
                   (_%K209435209453%_
                    (lambda (_%rest209450%_ _%super-id209451%_)
                      (if (let ((__tmp210219
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id209407%_ '()))
                                  _%super-id209451%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp210219 '8 '#f '#f))
                          (let ((__tmp210220
                                 (cons '!class (cons _%id209407%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp210220
                             _%super-id209451%_))
                          '#!void)
                      (_%lp209428%_ _%rest209450%_))))
              (if (pair? _%rest209431209439%_)
                  (let ((_%hd209436209456%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest209431209439%_)))
                        (_%tl209437209458%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest209431209439%_))))
                    (let* ((_%super-id209461%_ _%hd209436209456%_)
                           (_%rest209463%_ _%tl209437209458%_))
                      (_%K209435209453%_ _%rest209463%_ _%super-id209461%_)))
                  '#!void)))
          (let* ((_%ctor-method209514%_
                  (let ((_%$e209465%_ _%ctor-method209410%_))
                    (if _%$e209465%_
                        _%$e209465%_
                        (let _%lp209468%_ ((_%rest209470%_ _%super209408%_)
                                           (_%method209471%_ '#f))
                          (let* ((_%rest209472209480%_ _%rest209470%_)
                                 (_%else209474209488%_
                                  (lambda () _%method209471%_))
                                 (_%K209476209502%_
                                  (lambda (_%rest209491%_ _%super-id209492%_)
                                    (let* ((_%klass209494%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id209407%_ '()))
                                             _%super-id209492%_))
                                           (_%$e209496%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass209494%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e209496%_
                                          ((lambda (_%ctor-method209499%_)
                                             (if _%method209471%_
                                                 (if (eq? _%ctor-method209499%_
                                                          _%method209471%_)
                                                     (_%lp209468%_
                                                      _%rest209491%_
                                                      _%ctor-method209499%_)
                                                     (let ((__tmp210221
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id209407%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp210221
                _%method209471%_
                _%ctor-method209499%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp209468%_
                                                  _%rest209491%_
                                                  _%ctor-method209499%_)))
                                           _%$e209496%_)
                                          (_%lp209468%_
                                           _%rest209491%_
                                           _%method209471%_))))))
                            (if (pair? _%rest209472209480%_)
                                (let ((_%hd209477209505%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest209472209480%_)))
                                      (_%tl209478209507%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest209472209480%_))))
                                  (let* ((_%super-id209510%_
                                          _%hd209477209505%_)
                                         (_%rest209512%_ _%tl209478209507%_))
                                    (_%K209476209502%_
                                     _%rest209512%_
                                     _%super-id209510%_)))
                                (_%else209474209488%_)))))))
                 (_g210222_
                  (let ((__tmp210226
                         (lambda (_%klass-id209516%_)
                           (cons _%klass-id209516%_
                                 (let ((__tmp210227
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id209407%_ '()))
                                         _%klass-id209516%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp210227
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp210224
                         (lambda (_%klass-id209518%_)
                           (let ((__tmp210225
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id209407%_ '()))
                                   _%klass-id209518%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp210225
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp210226
                     __tmp210224
                     eq?
                     identity
                     '()
                     _%super209408%_))))
            (begin
              (let ((_g210223_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g210222_)
                           (##values-length _g210222_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g210223_ 2)))
                    (error "Context expects 2 values" _g210223_)))
              (let ((_%precedence-list209520%_
                     (let () (declare (not safe)) (##values-ref _g210222_ 0)))
                    (_%base-struct209521%_
                     (let () (declare (not safe)) (##values-ref _g210222_ 1))))
                (let* ((_%precedence-list209565%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id209407%_ '(t object class)))
                            _%precedence-list209520%_
                            (if (memq 'object::t _%precedence-list209520%_)
                                _%precedence-list209520%_
                                (if _%system?209413%_
                                    (if (memq 't::t _%precedence-list209520%_)
                                        _%precedence-list209520%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list209520%_
                                           '(t::t))))
                                    (let _%loop209527%_ ((_%tail209529%_
                                                          _%precedence-list209520%_)
                                                         (_%head209530%_ '()))
                                      (let* ((_%tail209531209539%_
                                              _%tail209529%_)
                                             (_%else209533209547%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (foldl__0
                                                   cons
                                                   '(object::t t::t)
                                                   _%head209530%_))))
                                             (_%K209535209553%_
                                              (lambda (_%rest209550%_
                                                       _%hd209551%_)
                                                (if (eq? _%hd209551%_ 't::t)
                                                    (let ((__tmp210228
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail209529%_)))
              (declare (not safe))
              (foldl__0 cons __tmp210228 _%head209530%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop209527%_
                                                     _%rest209550%_
                                                     (cons _%hd209551%_
                                                           _%head209530%_))))))
                                        (if (pair? _%tail209531209539%_)
                                            (let ((_%hd209536209556%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail209531209539%_)))
                                                  (_%tl209537209558%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail209531209539%_))))
                                              (let* ((_%hd209561%_
                                                      _%hd209536209556%_)
                                                     (_%rest209563%_
                                                      _%tl209537209558%_))
                                                (_%K209535209553%_
                                                 _%rest209563%_
                                                 _%hd209561%_)))
                                            (_%else209533209547%_))))))))
                       (_%fields209567%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id209407%_ '()))
                         _%base-struct209521%_
                         _%precedence-list209565%_
                         _%slots209409%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self209417%_
                     _%id209407%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self209417%_
                     _%super209408%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self209417%_
                     _%precedence-list209565%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self209417%_
                     _%slots209409%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self209417%_
                     _%fields209567%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self209417%_
                     _%ctor-method209514%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self209417%_
                     _%struct?209411%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self209417%_
                     _%final?209412%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self209417%_
                     _%metaclass209414%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self209570%_
               _%id209571%_
               _%super209572%_
               _%precedence-list209573%_
               _%slots209574%_
               _%fields209575%_
               _%constructor209576%_
               _%struct?209577%_
               _%final?209578%_
               _%system?209579%_
               _%metaclass209580%_
               _%methods209581%_)
        (let ((_%self209584%_ _%self209570%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209584%_
             _%id209571%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209584%_
             _%super209572%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209584%_
             _%precedence-list209573%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209584%_
             _%slots209574%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209584%_
             _%fields209575%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209584%_
             _%constructor209576%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209584%_
             _%struct?209577%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209584%_
             _%final?209578%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209584%_
             _%metaclass209580%_
             '10
             '#f
             '#f))
          (if _%methods209581%_
              (let ((__tmp210229
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods209581%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self209584%_
                 __tmp210229
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g210230_
        (let ((_g210231_ (let () (declare (not safe)) (##length _g210230_))))
          (cond ((let () (declare (not safe)) (##fx= _g210231_ 9))
                 (apply gxc#!class:::init!__0 _g210230_))
                ((let () (declare (not safe)) (##fx= _g210231_ 12))
                 (apply gxc#!class:::init!__1 _g210230_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g210230_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where209258%_
               _%base-struct209259%_
               _%precedence-list209260%_
               _%direct-slots209261%_)
        (let* ((_%base-fields209263%_
                (if _%base-struct209259%_
                    (let ((__tmp210232
                           (gxc#optimizer-resolve-class
                            _%where209258%_
                            _%base-struct209259%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp210232 '5 '#f '#f))
                    '()))
               (_%r-fields209265%_ (reverse _%base-fields209263%_))
               (_%seen-slots209273%_
                (let ((_%tab209267%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g209268209270%_)
                     (let ()
                       (declare (not safe))
                       (__hash-put! _%tab209267%_ _%g209268209270%_ '#t)))
                   _%base-fields209263%_)
                  _%tab209267%_))
               (_%process-slot209277%_
                (lambda (_%slot209275%_)
                  (if (let ()
                        (declare (not safe))
                        (__hash-get _%seen-slots209273%_ _%slot209275%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%seen-slots209273%_
                           _%slot209275%_
                           '#t))
                        (set! _%r-fields209265%_
                              (cons _%slot209275%_ _%r-fields209265%_)))))))
          (for-each
           (lambda (_%mixin209280%_)
             (let ((_%klass209282%_
                    (gxc#optimizer-resolve-class
                     _%where209258%_
                     _%mixin209280%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass209282%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot209277%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass209282%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list209260%_)
          (for-each _%process-slot209277%_ _%direct-slots209261%_)
          (let () (declare (not safe)) (##reverse _%r-fields209265%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass209217%_ _%slot209218%_)
        (let _%lp209220%_ ((_%rest209222%_
                            (##structure-ref
                             _%klass209217%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset209223%_ '1))
          (let* ((_%rest209224209232%_ _%rest209222%_)
                 (_%else209226209240%_
                  (lambda ()
                    (let ((__tmp210234
                           (##structure-ref
                            _%klass209217%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp210233
                           (##structure-ref
                            _%klass209217%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp210234
                       __tmp210233
                       _%slot209218%_))))
                 (_%K209228209246%_
                  (lambda (_%rest209243%_ _%s209244%_)
                    (if (eq? _%s209244%_ _%slot209218%_)
                        _%offset209223%_
                        (_%lp209220%_
                         _%rest209243%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset209223%_ '1)))))))
            (if (pair? _%rest209224209232%_)
                (let ((_%hd209229209249%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest209224209232%_)))
                      (_%tl209230209251%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest209224209232%_))))
                  (let* ((_%s209254%_ _%hd209229209249%_)
                         (_%rest209256%_ _%tl209230209251%_))
                    (_%K209228209246%_ _%rest209256%_ _%s209254%_)))
                (_%else209226209240%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass209175%_ _%slot209176%_)
        (if (gxc#!class-struct-slot? _%klass209175%_ _%slot209176%_)
            _%klass209175%_
            (let _%lp209178%_ ((_%rest209180%_
                                (##structure-ref
                                 _%klass209175%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest209181209189%_ _%rest209180%_)
                     (_%else209183209197%_ (lambda () '#f))
                     (_%K209185209205%_
                      (lambda (_%rest209200%_ _%super209201%_)
                        (let ((_%super-class209203%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass209175%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot209176%_ '())))
                                _%super209201%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class209203%_
                               _%slot209176%_)
                              _%super-class209203%_
                              (_%lp209178%_ _%rest209200%_))))))
                (if (pair? _%rest209181209189%_)
                    (let ((_%hd209186209208%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest209181209189%_)))
                          (_%tl209187209210%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest209181209189%_))))
                      (let* ((_%super209213%_ _%hd209186209208%_)
                             (_%rest209215%_ _%tl209187209210%_))
                        (_%K209185209205%_ _%rest209215%_ _%super209213%_)))
                    (_%else209183209197%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass209172%_ _%slot209173%_)
        (if (##structure-ref _%klass209172%_ '7 gxc#!class::t '#f)
            (memq _%slot209173%_
                  (##structure-ref _%klass209172%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self209157%_ _%id209158%_)
        (let ((_%self209161%_ _%self209157%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209161%_
             _%id209158%_
             '1
             '#f
             '#f))
          (let ((__tmp210235
                 (let ((__obj210167
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
                      __obj210167
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210167
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210167
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj210167)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209161%_
             __tmp210235
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self209020%_ _%id209021%_)
        (let ((_%self209024%_ _%self209020%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209024%_
             _%id209021%_
             '1
             '#f
             '#f))
          (let ((__tmp210236
                 (let ((__obj210168
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
                      __obj210168
                      _%id209021%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210168
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj210168)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self209024%_
             __tmp210236
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
      (lambda (_%self208881%_ _%id208882%_ _%slot208883%_ _%checked?208884%_)
        (let ((_%self208887%_ _%self208881%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208887%_
             _%id208882%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208887%_
             _%slot208883%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208887%_
             _%checked?208884%_
             '4
             '#f
             '#f))
          (let ((__tmp210237
                 (let ((__obj210169
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
                     (##unchecked-structure-set! __obj210169 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210169
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp210238 (cons _%id208882%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210169
                      __tmp210238
                      '3
                      '#f
                      '#f))
                   __obj210169)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208887%_
             __tmp210237
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self208742%_ _%id208743%_ _%slot208744%_ _%checked?208745%_)
        (let ((_%self208748%_ _%self208742%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208748%_
             _%id208743%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208748%_
             _%slot208744%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208748%_
             _%checked?208745%_
             '4
             '#f
             '#f))
          (let ((__tmp210239
                 (let ((__obj210170
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
                      __obj210170
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210170
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp210240 (cons _%id208743%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210170
                      __tmp210240
                      '3
                      '#f
                      '#f))
                   __obj210170)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208748%_
             __tmp210239
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords208586%_
               _%signature208583208587%_
               _%self208588%_
               _%arity208589%_
               _%dispatch208590%_)
        (let* ((_%signature208592%_
                (if (eq? _%signature208583208587%_ absent-value)
                    '#f
                    _%signature208583208587%_))
               (_%self208595%_ _%self208588%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self208595%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208595%_
             _%arity208589%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208595%_
             _%dispatch208590%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208595%_
             _%signature208592%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords208610%_ . _%args208611%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords208610%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords208610%_
                  'signature:
                  absent-value))
               _%args208611%_)))
    (define gxc#!lambda:::init!
      (lambda _%args208584208617%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args208584208617%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords208427%_
               _%signature208424208428%_
               _%self208429%_
               _%clauses208430%_)
        (let* ((_%signature208432%_
                (if (eq? _%signature208424208428%_ absent-value)
                    '#f
                    _%signature208424208428%_))
               (_%self208435%_ _%self208429%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self208435%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208435%_
             _%signature208432%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208435%_
             _%clauses208430%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords208450%_ . _%args208451%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords208450%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords208450%_
                  'signature:
                  absent-value))
               _%args208451%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args208425208457%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args208425208457%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self208285%_ _%tab208286%_ _%dispatch208287%_)
        (let ((_%self208290%_ _%self208285%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self208290%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208290%_
             _%tab208286%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208290%_
             _%dispatch208287%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self208147%_ _%keys208148%_ _%main208149%_)
        (let ((_%self208152%_ _%self208147%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self208152%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208152%_
             _%keys208148%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self208152%_
             _%main208149%_
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
      (lambda (_%self207766%_ _%id207767%_)
        (let ((_%self207770%_ _%self207766%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207770%_
             _%id207767%_
             '1
             '#f
             '#f))
          (let ((__tmp210241
                 (let ((__obj210171
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
                      __obj210171
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210171
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj210171
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj210171)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self207770%_
             __tmp210241
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
      (lambda (_%klass207636%_)
        (let ((_%$e207638%_
               (##structure-ref _%klass207636%_ '11 gxc#!class::t '#f)))
          (if _%$e207638%_
              _%$e207638%_
              (let ((_%tab207642%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass207636%_
                 _%tab207642%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab207642%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass207628%_ _%method207629%_)
        (let ((_%tab207630207632%_
               (##structure-ref _%klass207628%_ '11 gxc#!class::t '#f)))
          (if _%tab207630207632%_
              (let ((_%tab207634%_ _%tab207630207632%_))
                (declare (not safe))
                (hash-get _%tab207634%_ _%method207629%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a207613%_ _%type-b207614%_)
        (if _%type-a207613%_
            (if _%type-b207614%_
                (let ((_%$e207616%_ (eq? _%type-a207613%_ _%type-b207614%_)))
                  (if _%$e207616%_
                      _%$e207616%_
                      (let ((_%$e207619%_
                             (eq? (##structure-ref
                                   _%type-b207614%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e207619%_
                            _%$e207619%_
                            (let ((_%$e207622%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a207613%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b207614%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e207622%_
                                  _%$e207622%_
                                  (let ((_%$e207625%_
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-instance-of?
                                                _%type-a207613%_
                                                'gxc#!class::t))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-instance-of?
                                                    _%type-b207614%_
                                                    'gxc#!class::t))
                                                 (gxc#!class-subclass?
                                                  _%type-a207613%_
                                                  _%type-b207614%_)
                                                 '#f)
                                             '#f)))
                                    (if _%$e207625%_
                                        _%$e207625%_
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%type-a207613%_
                                               'gxc#!interface::t))
                                            (eq? (##structure-ref
                                                  _%type-b207614%_
                                                  '1
                                                  gxc#!type::t
                                                  '#f)
                                                 'gerbil#interface-descriptor::t)
                                            '#f)))))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a207564%_ _%klass-b207565%_)
        (let ((_%$e207567%_
               (eq? (##structure-ref _%klass-a207564%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b207565%_ '1 gxc#!type::t '#f))))
          (if _%$e207567%_
              _%$e207567%_
              (let ((_%klass-id-b207570%_
                     (##structure-ref _%klass-b207565%_ '1 gxc#!type::t '#f))
                    (_%precedence-list207571%_
                     (##structure-ref _%klass-a207564%_ '3 gxc#!class::t '#f)))
                (let _%loop207573%_ ((_%rest207575%_
                                      _%precedence-list207571%_))
                  (let* ((_%rest207576207584%_ _%rest207575%_)
                         (_%else207578207592%_ (lambda () '#f))
                         (_%K207580207601%_
                          (lambda (_%rest207595%_ _%klass-name207596%_)
                            (let ((_%$e207598%_
                                   (eq? (let ((__tmp210242
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a207564%_
                                                            (cons _%klass-b207565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name207596%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp210242
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b207570%_)))
                              (if _%$e207598%_
                                  _%$e207598%_
                                  (_%loop207573%_ _%rest207595%_))))))
                    (if (pair? _%rest207576207584%_)
                        (let ((_%hd207581207604%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest207576207584%_)))
                              (_%tl207582207606%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest207576207584%_))))
                          (let* ((_%klass-name207609%_ _%hd207581207604%_)
                                 (_%rest207611%_ _%tl207582207606%_))
                            (_%K207580207601%_
                             _%rest207611%_
                             _%klass-name207609%_)))
                        (_%else207578207592%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type207562%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type207562%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type207562%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc207551%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc207551%_ 'gxc#!procedure::t))
            (let ((_%proc207554%_ _%proc207551%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc207554%_ '2 '#f '#f))
                  (let ((__tmp210243
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc207554%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp210243 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@382.11-382.15"
               'contract:
               '!procedure?
               'value:
               _%proc207551%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym207533%_ _%type207534%_ _%local?207535%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type207534%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym207533%_
                     _%type207534%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym207533%_ '" " _%type207534%_))
        (let ((_%table207537%_
               (if _%local?207535%_
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
          (hash-put! _%table207537%_ _%sym207533%_ _%type207534%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym207542%_ _%type207543%_)
        (let ((_%local?207545%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym207542%_
           _%type207543%_
           _%local?207545%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g210244_
        (let ((_g210245_ (let () (declare (not safe)) (##length _g210244_))))
          (cond ((let () (declare (not safe)) (##fx= _g210245_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g210244_))
                ((let () (declare (not safe)) (##fx= _g210245_ 3))
                 (apply gxc#optimizer-declare-type!__% _g210244_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g210244_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym207527%_ _%type207528%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type207528%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym207527%_
                     _%type207528%_)))
        (let ((_%table207530%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp210246
                 (let () (declare (not safe)) (struct->list _%type207528%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym207527%_ '" " __tmp210246))
          (let ()
            (declare (not safe))
            (hash-put! _%table207530%_ _%sym207527%_ _%type207528%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table207530%_ _%type207528%_ _%sym207527%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym207522%_ _%type207523%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type207523%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym207522%_
                     _%type207523%_)))
        (let ((_%table207525%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table207525%_ _%sym207522%_))
              '#!void
              (begin
                (let ((__tmp210247
                       (let ()
                         (declare (not safe))
                         (struct->list _%type207523%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym207522%_
                   '" "
                   __tmp210247))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table207525%_ _%sym207522%_ _%type207523%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table207525%_
                   _%type207523%_
                   _%sym207522%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym207520%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym207520%_))
        (let ((__tmp210248
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp210248 _%sym207520%_))
        (let ((__tmp210249
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp210249 _%sym207520%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t207488%_
               _%method207489%_
               _%sym207490%_
               _%rebind?207491%_)
        (let ((__tmp210250
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp210250 _%sym207490%_ '#t))
        (let ((_%klass207493%_ (gxc#optimizer-lookup-class _%type-t207488%_)))
          (if _%klass207493%_
              (let* ((_%vtab207495%_ (gxc#!class-method-table _%klass207493%_))
                     (_%$e207497%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab207495%_ _%method207489%_))))
                (if _%$e207497%_
                    ((lambda (_%existing207500%_)
                       (if _%rebind?207491%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t207488%_
                                '" "
                                _%method207489%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab207495%_
                                _%method207489%_
                                _%sym207490%_)))
                           (if (eq? _%existing207500%_ _%sym207490%_)
                               '#!void
                               (let ((__tmp210251
                                      (cons 'bind-method!
                                            (cons _%type-t207488%_
                                                  (cons _%method207489%_
                                                        (cons _%sym207490%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp210251
                                  _%method207489%_)))))
                     _%$e207497%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t207488%_
                         '" "
                         _%method207489%_
                         '" => "
                         _%sym207490%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab207495%_
                         _%method207489%_
                         _%sym207490%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t207488%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t207509%_ _%method207510%_ _%sym207511%_)
        (let ((_%rebind?207513%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t207509%_
           _%method207510%_
           _%sym207511%_
           _%rebind?207513%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g210252_
        (let ((_g210253_ (let () (declare (not safe)) (##length _g210252_))))
          (cond ((let () (declare (not safe)) (##fx= _g210253_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g210252_))
                ((let () (declare (not safe)) (##fx= _g210253_ 4))
                 (apply gxc#optimizer-declare-method!__% _g210252_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g210252_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym207474%_)
        (let ((_%$e207476%_
               (let ((__tmp210254
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym207474%_ __tmp210254))))
          (if _%$e207476%_
              _%$e207476%_
              (let ((_%$e207484%_
                     (let ((_%ht207478207480%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%ht207478207480%_
                           (let ((_%ht207482%_ _%ht207478207480%_))
                             (declare (not safe))
                             (hash-get _%ht207482%_ _%sym207474%_))
                           '#f))))
                (if _%$e207484%_
                    _%$e207484%_
                    (let ((__tmp210255
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp210255 _%sym207474%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym207467%_)
        (let ((_%type207468207470%_ (gxc#optimizer-lookup-type _%sym207467%_)))
          (if _%type207468207470%_
              (let ((_%type207472%_ _%type207468207470%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type207472%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type207472%_ '1 '#f '#f)))
                    _%type207472%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym207463%_)
        (let ((_%table207465%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table207465%_ _%sym207463%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where207448%_ _%sym207449%_)
        (let ((_%$e207452%_ (gxc#optimizer-lookup-class _%sym207449%_)))
          (if _%$e207452%_
              ((lambda (_%g207454207456%_)
                 (let ((_%val207459%_ _%g207454207456%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val207459%_
                          'gxc#!class::t))
                       _%val207459%_
                       (begin
                         (raise-contract-violation-error
                          '"contract violation"
                          'context:
                          'gerbil/compiler/optimize-base
                          'contract:
                          '(!class? val)
                          'value:
                          _%val207459%_)
                         '#!void))))
               _%$e207452%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where207448%_
                   _%sym207449%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass207446%_)
        (let ((__tmp210256
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp210256 _%klass207446%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t207443%_ _%method207444%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t207443%_)
         _%method207444%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym207441%_)
        (let ((__tmp210257
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp210257 _%sym207441%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e206916%_
                  (lambda (_%t207382%_)
                    (if (symbol? _%t207382%_)
                        (_%type-e206916%_
                         (gxc#optimizer-lookup-type _%t207382%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t207382%_
                               'gxc#!lambda::t))
                            (let* ((_%t207386%_ _%t207382%_)
                                   (_%t207390%_ _%t207386%_))
                              (_%__lambda-type207042%_ _%t207390%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t207382%_
                                   'gxc#!kw-lambda::t))
                                (let* ((_%t207402%_ _%t207382%_)
                                       (_%t207406%_ _%t207402%_))
                                  (_%__kw-lambda-type207165%_ _%t207406%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t207382%_
                                       'gxc#!kw-lambda-primary::t))
                                    (let* ((_%t207417%_ _%t207382%_)
                                           (_%t207421%_ _%t207417%_))
                                      (_%__kw-lambda-primary-type207288%_
                                       _%t207421%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t207382%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t207432%_ _%t207382%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t207432%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp210258
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t207432%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp210258
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t207382%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t207382%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%__lambda-type207042%_
                  (lambda (_%t207370%_)
                    (let ((_%t207373%_ _%t207370%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t207373%_ '4 '#f '#f))
                          (_%type-e206916%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t207373%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t207373%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp210259
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t207373%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp210259
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%lambda-type207043%_
                  (lambda (_%t207358%_)
                    (let ((_%t207361%_ _%t207358%_))
                      (_%__lambda-type207042%_ _%t207361%_))))
                 (_%__kw-lambda-type207165%_
                  (lambda (_%t207346%_)
                    (let ((_%t207349%_ _%t207346%_))
                      (_%type-e206916%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t207349%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-type207166%_
                  (lambda (_%t207334%_)
                    (let ((_%t207337%_ _%t207334%_))
                      (_%__kw-lambda-type207165%_ _%t207337%_))))
                 (_%__kw-lambda-primary-type207288%_
                  (lambda (_%t207322%_)
                    (let ((_%t207325%_ _%t207322%_))
                      (_%type-e206916%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t207325%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type207289%_
                  (lambda (_%t207310%_)
                    (let ((_%t207313%_ _%t207310%_))
                      (_%__kw-lambda-primary-type207288%_ _%t207313%_)))))
          (let* ((_%ht1207291%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2207293%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result207295%_
                  (if _%ht1207291%_
                      (let () (declare (not safe)) (hash->list _%ht1207291%_))
                      '()))
                 (_%result207297%_
                  (if _%ht2207293%_
                      (let ((__tmp210260
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2207293%_))))
                        (declare (not safe))
                        (foldl__0 cons _%result207295%_ __tmp210260))
                      _%result207295%_)))
            (for-each
             (lambda (_%p207300%_)
               (let* ((_%t207302%_ (cdr _%p207300%_))
                      (_%tr207304%_ (_%type-e206916%_ _%t207302%_)))
                 (set-cdr! _%p207300%_ _%tr207304%_)))
             _%result207297%_)
            (list-sort
             (lambda (_%a207307%_ _%b207308%_)
               (let ((__tmp210262 (symbol->string (car _%a207307%_)))
                     (__tmp210261 (symbol->string (car _%b207308%_))))
                 (declare (not safe))
                 (##string<? __tmp210262 __tmp210261)))
             _%result207297%_)))))))
