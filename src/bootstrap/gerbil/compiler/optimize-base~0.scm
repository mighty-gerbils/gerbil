(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1784471388)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp219124 (list)) (__tmp219123 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp219124
         '(type classes ssxi methods)
         __tmp219123
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args219043%_
        (apply make-instance gxc#optimizer-info::t _%$args219043%_)))
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
      (lambda (_%self219030%_)
        (let ((_%self219033%_ _%self219030%_))
          (if (let ((__tmp219125
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self219033%_))))
                (declare (not safe))
                (##fx< '4 __tmp219125))
              (begin
                (let ((__tmp219126
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self219033%_
                   __tmp219126
                   '1
                   '#f
                   '#f))
                (let ((__tmp219127
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self219033%_
                   __tmp219127
                   '2
                   '#f
                   '#f))
                (let ((__tmp219128
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self219033%_
                   __tmp219128
                   '3
                   '#f
                   '#f))
                (let ((__tmp219129
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self219033%_
                   __tmp219129
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp219130
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self219033%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self219033%_
                       '4
                       __tmp219130))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp219132 (list))
            (__tmp219131
             (cons (cons 'struct: '#t) '((equal: . #t) (print: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp219132
         '(id)
         __tmp219131
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args218905%_
        (apply make-instance gxc#!type::t _%$args218905%_)))
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
      (let ((__tmp219134 (list gxc#!type::t))
            (__tmp219133 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp219134
         '()
         __tmp219133
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args218902%_
        (apply make-instance gxc#!abort::t _%$args218902%_)))
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
      (let ((__tmp219136 (list gxc#!type::t))
            (__tmp219135 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp219136
         '()
         __tmp219135
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args218899%_
        (apply make-instance gxc#!alias::t _%$args218899%_)))
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
      (let ((__tmp219138 (list))
            (__tmp219137
             (cons (cons 'final: '#t) '((equal: . #t) (print: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp219138
         '(return effect arguments unchecked origin)
         __tmp219137
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args218896%_
        (apply make-instance gxc#!signature::t _%$args218896%_)))
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
      (let ((__tmp219140 (list gxc#!type::t))
            (__tmp219139
             (cons (cons 'struct: '#t) '((equal: . #t) (print: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp219140
         '(signature)
         __tmp219139
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
      (lambda (_%id218883%_ _%signature218884%_)
        (let ((_%signature218887%_ _%signature218884%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id218883%_ _%signature218887%_))))
    (define gxc#make-!procedure
      (lambda (_%id218861%_ _%signature218863%_)
        (if (or (not _%signature218863%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%signature218863%_
                   'gxc#!signature::t)))
            (let ((_%signature218873%_ _%signature218863%_))
              (gxc#__make-!procedure _%id218861%_ _%signature218873%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature218863%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj218840%_ _%signature218841%_)
        (let* ((_%$obj218844%_ _%$obj218840%_)
               (_%signature218852%_ _%signature218841%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj218844%_
           _%signature218852%_
           '2
           '#f
           '#f))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj218807%_ _%signature218809%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj218807%_ 'gxc#!procedure::t))
            (let ((_%$obj218814%_ _%$obj218807%_))
              (if (or (not _%signature218809%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature218809%_
                         'gxc#!signature::t)))
                  (let ((_%signature218830%_ _%signature218809%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj218814%_
                     _%signature218830%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature218809%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj218807%_)
              '#!void))))
    (define gxc#!class-meta::t
      (let ((__tmp219142 (list gxc#!type::t))
            (__tmp219141 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp219142
         '(class)
         __tmp219141
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args218804%_
        (apply make-instance gxc#!class-meta::t _%$args218804%_)))
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
      (let ((__tmp219144 (list gxc#!type::t))
            (__tmp219143
             (cons (cons 'struct: '#t)
                   '((equal: . #t) (print: super precedence-list)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!class::t
         '!class
         __tmp219144
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp219143
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args218801%_
        (apply make-instance gxc#!class::t _%$args218801%_)))
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
      (let ((__tmp219146 (list gxc#!procedure::t))
            (__tmp219145 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp219146
         '()
         __tmp219145
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args218798%_
        (apply make-instance gxc#!predicate::t _%$args218798%_)))
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
      (let ((__tmp219148 (list gxc#!procedure::t))
            (__tmp219147 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp219148
         '()
         __tmp219147
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args218795%_
        (apply make-instance gxc#!constructor::t _%$args218795%_)))
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
      (let ((__tmp219150 (list gxc#!procedure::t))
            (__tmp219149 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp219150
         '(slot checked?)
         __tmp219149
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args218792%_
        (apply make-instance gxc#!accessor::t _%$args218792%_)))
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
      (let ((__tmp219152 (list gxc#!procedure::t))
            (__tmp219151 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp219152
         '(slot checked?)
         __tmp219151
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args218789%_
        (apply make-instance gxc#!mutator::t _%$args218789%_)))
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
      (let ((__tmp219154 (list gxc#!type::t))
            (__tmp219153 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp219154
         '(methods)
         __tmp219153
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args218786%_
        (apply make-instance gxc#!interface::t _%$args218786%_)))
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
      (let ((__tmp219156 (list gxc#!procedure::t))
            (__tmp219155 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp219156
         '(arity dispatch inline inline-typedecl)
         __tmp219155
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args218783%_
        (apply make-instance gxc#!lambda::t _%$args218783%_)))
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
      (let ((__tmp219158 (list gxc#!procedure::t))
            (__tmp219157 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp219158
         '(clauses)
         __tmp219157
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args218780%_
        (apply make-instance gxc#!case-lambda::t _%$args218780%_)))
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
      (let ((__tmp219160 (list gxc#!procedure::t))
            (__tmp219159 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp219160
         '(table dispatch)
         __tmp219159
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args218777%_
        (apply make-instance gxc#!kw-lambda::t _%$args218777%_)))
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
      (let ((__tmp219162 (list gxc#!procedure::t))
            (__tmp219161 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp219162
         '(keys main)
         __tmp219161
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args218774%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args218774%_)))
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
      (let ((__tmp219163 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp219163
         '()
         '((equal: . #t))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args218771%_
        (apply make-instance gxc#!primitive::t _%$args218771%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp219165 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp219164 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp219165
         '()
         __tmp219164
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args218768%_
        (apply make-instance gxc#!primitive-predicate::t _%$args218768%_)))
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
      (let ((__tmp219167 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp219166 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp219167
         '()
         __tmp219166
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args218765%_
        (apply make-instance gxc#!primitive-lambda::t _%$args218765%_)))
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
      (let ((__tmp219169 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp219168 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp219169
         '()
         __tmp219168
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args218762%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args218762%_)))
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
      (lambda (_%self218749%_)
        (let ((_%self218752%_ _%self218749%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self218752%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self218612%_ _%klass218613%_)
        (let ((_%self218616%_ _%self218612%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self218616%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self218616%_
             _%klass218613%_
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
      (lambda (_%self218302%_
               _%id218303%_
               _%super218304%_
               _%slots218305%_
               _%ctor-method218306%_
               _%struct?218307%_
               _%final?218308%_
               _%system?218309%_
               _%metaclass218310%_)
        (let ((_%self218313%_ _%self218302%_))
          (let _%lp218324%_ ((_%rest218326%_ _%super218304%_))
            (let* ((_%$%rest218327218335%_ _%rest218326%_)
                   (_%$%else218329218343%_ (lambda () '#!void))
                   (_%$%K218331218349%_
                    (lambda (_%rest218346%_ _%super-id218347%_)
                      (if (let ((__tmp219170
                                 (gxc#optimizer-resolve-class
                                  (list '!class _%id218303%_)
                                  _%super-id218347%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp219170 '8 '#f '#f))
                          (let ((__tmp219171 (list '!class _%id218303%_)))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp219171
                             _%super-id218347%_))
                          '#!void)
                      (_%lp218324%_ _%rest218346%_))))
              (if (pair? _%$%rest218327218335%_)
                  (let ((_%$%hd218332218352%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest218327218335%_)))
                        (_%$%tl218333218354%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest218327218335%_))))
                    (let* ((_%super-id218357%_ _%$%hd218332218352%_)
                           (_%rest218359%_ _%$%tl218333218354%_))
                      (_%$%K218331218349%_ _%rest218359%_ _%super-id218357%_)))
                  '#!void)))
          (let* ((_%ctor-method218410%_
                  (let ((_%$e218361%_ _%ctor-method218306%_))
                    (if _%$e218361%_
                        _%$e218361%_
                        (let _%lp218364%_ ((_%rest218366%_ _%super218304%_)
                                           (_%method218367%_ '#f))
                          (let* ((_%$%rest218368218376%_ _%rest218366%_)
                                 (_%$%else218370218384%_
                                  (lambda () _%method218367%_))
                                 (_%$%K218372218398%_
                                  (lambda (_%rest218387%_ _%super-id218388%_)
                                    (let* ((_%klass218390%_
                                            (gxc#optimizer-resolve-class
                                             (list '!class _%id218303%_)
                                             _%super-id218388%_))
                                           (_%$e218392%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass218390%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e218392%_
                                          (if _%method218367%_
                                              (if (eq? _%$e218392%_
                                                       _%method218367%_)
                                                  (_%lp218364%_
                                                   _%rest218387%_
                                                   _%$e218392%_)
                                                  (let ((__tmp219172
                                                         (list '!class
                                                               _%id218303%_)))
                                                    (declare (not safe))
                                                    (gxc#raise-compile-error
                                                     '"conflicting implicit constructor methods"
                                                     __tmp219172
                                                     _%method218367%_
                                                     _%$e218392%_)))
                                              (_%lp218364%_
                                               _%rest218387%_
                                               _%$e218392%_))
                                          (_%lp218364%_
                                           _%rest218387%_
                                           _%method218367%_))))))
                            (if (pair? _%$%rest218368218376%_)
                                (let ((_%$%hd218373218401%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%rest218368218376%_)))
                                      (_%$%tl218374218403%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%rest218368218376%_))))
                                  (let* ((_%super-id218406%_
                                          _%$%hd218373218401%_)
                                         (_%rest218408%_ _%$%tl218374218403%_))
                                    (_%$%K218372218398%_
                                     _%rest218408%_
                                     _%super-id218406%_)))
                                (_%$%else218370218384%_)))))))
                 (_g219173_
                  (let ((__tmp219177
                         (lambda (_%klass-id218412%_)
                           (cons _%klass-id218412%_
                                 (let ((__tmp219178
                                        (gxc#optimizer-resolve-class
                                         (list '!class _%id218303%_)
                                         _%klass-id218412%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp219178
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp219175
                         (lambda (_%klass-id218414%_)
                           (let ((__tmp219176
                                  (gxc#optimizer-resolve-class
                                   (list '!class _%id218303%_)
                                   _%klass-id218414%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp219176
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp219177
                     __tmp219175
                     eq?
                     identity
                     '()
                     _%super218304%_))))
            (begin
              (let ((_g219174_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g219173_)
                           (##values-length _g219173_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g219174_ 2)))
                    (error "Context expects 2 values" _g219174_)))
              (let ((_%precedence-list218416%_
                     (let () (declare (not safe)) (##values-ref _g219173_ 0)))
                    (_%base-struct218417%_
                     (let () (declare (not safe)) (##values-ref _g219173_ 1))))
                (let* ((_%precedence-list218461%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id218303%_ '(t object class)))
                            _%precedence-list218416%_
                            (if (memq 'object::t _%precedence-list218416%_)
                                _%precedence-list218416%_
                                (if _%system?218309%_
                                    (if (memq 't::t _%precedence-list218416%_)
                                        _%precedence-list218416%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list218416%_
                                           '(t::t))))
                                    (let _%loop218423%_ ((_%tail218425%_
                                                          _%precedence-list218416%_)
                                                         (_%head218426%_ '()))
                                      (let* ((_%$%tail218427218435%_
                                              _%tail218425%_)
                                             (_%$%else218429218443%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (foldl__0
                                                   cons
                                                   '(object::t t::t)
                                                   _%head218426%_))))
                                             (_%$%K218431218449%_
                                              (lambda (_%rest218446%_
                                                       _%hd218447%_)
                                                (if (eq? _%hd218447%_ 't::t)
                                                    (let ((__tmp219179
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail218425%_)))
              (declare (not safe))
              (foldl__0 cons __tmp219179 _%head218426%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop218423%_
                                                     _%rest218446%_
                                                     (cons _%hd218447%_
                                                           _%head218426%_))))))
                                        (if (pair? _%$%tail218427218435%_)
                                            (let ((_%$%hd218432218452%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%tail218427218435%_)))
                                                  (_%$%tl218433218454%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%tail218427218435%_))))
                                              (let* ((_%hd218457%_
                                                      _%$%hd218432218452%_)
                                                     (_%rest218459%_
                                                      _%$%tl218433218454%_))
                                                (_%$%K218431218449%_
                                                 _%rest218459%_
                                                 _%hd218457%_)))
                                            (_%$%else218429218443%_))))))))
                       (_%fields218463%_
                        (gxc#compute-class-fields
                         (list '!class _%id218303%_)
                         _%precedence-list218461%_
                         _%slots218305%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self218313%_
                     _%id218303%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self218313%_
                     _%super218304%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self218313%_
                     _%precedence-list218461%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self218313%_
                     _%slots218305%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self218313%_
                     _%fields218463%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self218313%_
                     _%ctor-method218410%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self218313%_
                     _%struct?218307%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self218313%_
                     _%final?218308%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self218313%_
                     _%metaclass218310%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self218466%_
               _%id218467%_
               _%super218468%_
               _%precedence-list218469%_
               _%slots218470%_
               _%fields218471%_
               _%constructor218472%_
               _%struct?218473%_
               _%final?218474%_
               _%system?218475%_
               _%metaclass218476%_
               _%methods218477%_)
        (let ((_%self218480%_ _%self218466%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self218480%_
             _%id218467%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self218480%_
             _%super218468%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self218480%_
             _%precedence-list218469%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self218480%_
             _%slots218470%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self218480%_
             _%fields218471%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self218480%_
             _%constructor218472%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self218480%_
             _%struct?218473%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self218480%_
             _%final?218474%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self218480%_
             _%metaclass218476%_
             '10
             '#f
             '#f))
          (if _%methods218477%_
              (let ((__tmp219180
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods218477%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self218480%_
                 __tmp219180
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g219181_
        (let ((_g219182_ (let () (declare (not safe)) (##length _g219181_))))
          (cond ((let () (declare (not safe)) (##fx= _g219182_ 9))
                 (apply gxc#!class:::init!__0 _g219181_))
                ((let () (declare (not safe)) (##fx= _g219182_ 12))
                 (apply gxc#!class:::init!__1 _g219181_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g219181_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where218171%_
               _%precedence-list218172%_
               _%direct-slots218173%_)
        (let ((__tmp219184
               (lambda (_%mixin218175%_)
                 (let ((__tmp219185
                        (gxc#optimizer-resolve-class
                         _%where218171%_
                         _%mixin218175%_)))
                   (declare (not safe))
                   (##unchecked-structure-ref __tmp219185 '5 '#f '#f))))
              (__tmp219183
               (lambda (_%slot-list218177%_ _%slot-table218178%_)
                 (cdr _%slot-list218177%_))))
          (declare (not safe))
          (c4-compute-class-slots
           _%precedence-list218172%_
           _%direct-slots218173%_
           __tmp219184
           __tmp219183))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass218130%_ _%slot218131%_)
        (let _%lp218133%_ ((_%rest218135%_
                            (##structure-ref
                             _%klass218130%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset218136%_ '1))
          (let* ((_%$%rest218137218145%_ _%rest218135%_)
                 (_%$%else218139218153%_
                  (lambda ()
                    (let ((__tmp219187
                           (##structure-ref
                            _%klass218130%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp219186
                           (##structure-ref
                            _%klass218130%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp219187
                       __tmp219186
                       _%slot218131%_))))
                 (_%$%K218141218159%_
                  (lambda (_%rest218156%_ _%s218157%_)
                    (if (eq? _%s218157%_ _%slot218131%_)
                        _%offset218136%_
                        (_%lp218133%_
                         _%rest218156%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset218136%_ '1)))))))
            (if (pair? _%$%rest218137218145%_)
                (let ((_%$%hd218142218162%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest218137218145%_)))
                      (_%$%tl218143218164%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest218137218145%_))))
                  (let* ((_%s218167%_ _%$%hd218142218162%_)
                         (_%rest218169%_ _%$%tl218143218164%_))
                    (_%$%K218141218159%_ _%rest218169%_ _%s218167%_)))
                (_%$%else218139218153%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass218088%_ _%slot218089%_)
        (if (gxc#!class-struct-slot? _%klass218088%_ _%slot218089%_)
            _%klass218088%_
            (let _%lp218091%_ ((_%rest218093%_
                                (##structure-ref
                                 _%klass218088%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%$%rest218094218102%_ _%rest218093%_)
                     (_%$%else218096218110%_ (lambda () '#f))
                     (_%$%K218098218118%_
                      (lambda (_%rest218113%_ _%super218114%_)
                        (let ((_%super-class218116%_
                               (gxc#optimizer-resolve-class
                                (list '!class-slot-find-struct
                                      (##structure-ref
                                       _%klass218088%_
                                       '1
                                       gxc#!type::t
                                       '#f)
                                      _%slot218089%_)
                                _%super218114%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class218116%_
                               _%slot218089%_)
                              _%super-class218116%_
                              (_%lp218091%_ _%rest218113%_))))))
                (if (pair? _%$%rest218094218102%_)
                    (let ((_%$%hd218099218121%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest218094218102%_)))
                          (_%$%tl218100218123%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest218094218102%_))))
                      (let* ((_%super218126%_ _%$%hd218099218121%_)
                             (_%rest218128%_ _%$%tl218100218123%_))
                        (_%$%K218098218118%_ _%rest218128%_ _%super218126%_)))
                    (_%$%else218096218110%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass218085%_ _%slot218086%_)
        (if (##structure-ref _%klass218085%_ '7 gxc#!class::t '#f)
            (memq _%slot218086%_
                  (##structure-ref _%klass218085%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self218070%_ _%id218071%_)
        (let ((_%self218074%_ _%self218070%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self218074%_
             _%id218071%_
             '1
             '#f
             '#f))
          (let ((__tmp219188
                 (let ((__obj219118
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
                      __obj219118
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj219118
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj219118
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj219118)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self218074%_
             __tmp219188
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self217933%_ _%id217934%_)
        (let ((_%self217937%_ _%self217933%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217937%_
             _%id217934%_
             '1
             '#f
             '#f))
          (let ((__tmp219189
                 (let ((__obj219119
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
                      __obj219119
                      _%id217934%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj219119
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj219119)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217937%_
             __tmp219189
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
      (lambda (_%self217794%_ _%id217795%_ _%slot217796%_ _%checked?217797%_)
        (let ((_%self217800%_ _%self217794%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217800%_
             _%id217795%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217800%_
             _%slot217796%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217800%_
             _%checked?217797%_
             '4
             '#f
             '#f))
          (let ((__tmp219190
                 (let ((__obj219120
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
                     (##unchecked-structure-set! __obj219120 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj219120
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp219191 (cons _%id217795%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj219120
                      __tmp219191
                      '3
                      '#f
                      '#f))
                   __obj219120)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217800%_
             __tmp219190
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self217655%_ _%id217656%_ _%slot217657%_ _%checked?217658%_)
        (let ((_%self217661%_ _%self217655%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217661%_
             _%id217656%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217661%_
             _%slot217657%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217661%_
             _%checked?217658%_
             '4
             '#f
             '#f))
          (let ((__tmp219192
                 (let ((__obj219121
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
                      __obj219121
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj219121
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp219193 (cons _%id217656%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj219121
                      __tmp219193
                      '3
                      '#f
                      '#f))
                   __obj219121)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217661%_
             __tmp219192
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords217499%_
               _%$%signature217496217500%_
               _%self217501%_
               _%arity217502%_
               _%dispatch217503%_)
        (let* ((_%signature217505%_
                (if (eq? _%$%signature217496217500%_ absent-value)
                    '#f
                    _%$%signature217496217500%_))
               (_%self217508%_ _%self217501%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self217508%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217508%_
             _%arity217502%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217508%_
             _%dispatch217503%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217508%_
             _%signature217505%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords217523%_ . _%args217524%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords217523%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords217523%_
                  'signature:
                  absent-value))
               _%args217524%_)))
    (define gxc#!lambda:::init!
      (lambda _%$%args217497217530%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%$%args217497217530%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords217340%_
               _%$%signature217337217341%_
               _%self217342%_
               _%clauses217343%_)
        (let* ((_%signature217345%_
                (if (eq? _%$%signature217337217341%_ absent-value)
                    '#f
                    _%$%signature217337217341%_))
               (_%self217348%_ _%self217342%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self217348%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217348%_
             _%signature217345%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217348%_
             _%clauses217343%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords217363%_ . _%args217364%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords217363%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords217363%_
                  'signature:
                  absent-value))
               _%args217364%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%$%args217338217370%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%$%args217338217370%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self217198%_ _%tab217199%_ _%dispatch217200%_)
        (let ((_%self217203%_ _%self217198%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self217203%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217203%_
             _%tab217199%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217203%_
             _%dispatch217200%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self217060%_ _%keys217061%_ _%main217062%_)
        (let ((_%self217065%_ _%self217060%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self217065%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217065%_
             _%keys217061%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217065%_
             _%main217062%_
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
      (lambda (_%self216679%_ _%id216680%_)
        (let ((_%self216683%_ _%self216679%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self216683%_
             _%id216680%_
             '1
             '#f
             '#f))
          (let ((__tmp219194
                 (let ((__obj219122
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
                      __obj219122
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj219122
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj219122
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj219122)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self216683%_
             __tmp219194
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
      (lambda (_%klass216549%_)
        (let ((_%$e216551%_
               (##structure-ref _%klass216549%_ '11 gxc#!class::t '#f)))
          (if _%$e216551%_
              _%$e216551%_
              (let ((_%tab216555%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass216549%_
                 _%tab216555%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab216555%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass216541%_ _%method216542%_)
        (let ((_%$%tab216543216545%_
               (##structure-ref _%klass216541%_ '11 gxc#!class::t '#f)))
          (if _%$%tab216543216545%_
              (let ((_%tab216547%_ _%$%tab216543216545%_))
                (declare (not safe))
                (hash-get _%tab216547%_ _%method216542%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a216526%_ _%type-b216527%_)
        (if _%type-a216526%_
            (if _%type-b216527%_
                (let ((_%$e216529%_ (eq? _%type-a216526%_ _%type-b216527%_)))
                  (if _%$e216529%_
                      _%$e216529%_
                      (let ((_%$e216532%_
                             (eq? (##structure-ref
                                   _%type-b216527%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e216532%_
                            _%$e216532%_
                            (let ((_%$e216535%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a216526%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b216527%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e216535%_
                                  _%$e216535%_
                                  (let ((_%$e216538%_
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-instance-of?
                                                _%type-a216526%_
                                                'gxc#!class::t))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-instance-of?
                                                    _%type-b216527%_
                                                    'gxc#!class::t))
                                                 (gxc#!class-subclass?
                                                  _%type-a216526%_
                                                  _%type-b216527%_)
                                                 '#f)
                                             '#f)))
                                    (if _%$e216538%_
                                        _%$e216538%_
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%type-a216526%_
                                               'gxc#!interface::t))
                                            (eq? (##structure-ref
                                                  _%type-b216527%_
                                                  '1
                                                  gxc#!type::t
                                                  '#f)
                                                 'interface-descriptor::t)
                                            '#f)))))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a216477%_ _%klass-b216478%_)
        (let ((_%$e216480%_
               (eq? (##structure-ref _%klass-a216477%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b216478%_ '1 gxc#!type::t '#f))))
          (if _%$e216480%_
              _%$e216480%_
              (let ((_%klass-id-b216483%_
                     (##structure-ref _%klass-b216478%_ '1 gxc#!type::t '#f))
                    (_%precedence-list216484%_
                     (##structure-ref _%klass-a216477%_ '3 gxc#!class::t '#f)))
                (let _%loop216486%_ ((_%rest216488%_
                                      _%precedence-list216484%_))
                  (let* ((_%$%rest216489216497%_ _%rest216488%_)
                         (_%$%else216491216505%_ (lambda () '#f))
                         (_%$%K216493216514%_
                          (lambda (_%rest216508%_ _%klass-name216509%_)
                            (let ((_%$e216511%_
                                   (eq? (let ((__tmp219195
                                               (gxc#optimizer-resolve-class
                                                (list 'subclass?
                                                      _%klass-a216477%_
                                                      _%klass-b216478%_)
                                                _%klass-name216509%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp219195
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b216483%_)))
                              (if _%$e216511%_
                                  _%$e216511%_
                                  (_%loop216486%_ _%rest216508%_))))))
                    (if (pair? _%$%rest216489216497%_)
                        (let ((_%$%hd216494216517%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest216489216497%_)))
                              (_%$%tl216495216519%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest216489216497%_))))
                          (let* ((_%klass-name216522%_ _%$%hd216494216517%_)
                                 (_%rest216524%_ _%$%tl216495216519%_))
                            (_%$%K216493216514%_
                             _%rest216524%_
                             _%klass-name216522%_)))
                        (_%$%else216491216505%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type216475%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type216475%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type216475%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc216464%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc216464%_ 'gxc#!procedure::t))
            (let ((_%proc216467%_ _%proc216464%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc216467%_ '2 '#f '#f))
                  (let ((__tmp219196
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc216467%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp219196 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@365.11-365.15"
               'contract:
               '!procedure?
               'value:
               _%proc216464%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym216446%_ _%type216447%_ _%local?216448%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type216447%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym216446%_
                     _%type216447%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym216446%_ '" " _%type216447%_))
        (let ((_%table216450%_
               (if _%local?216448%_
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
          (hash-put! _%table216450%_ _%sym216446%_ _%type216447%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym216455%_ _%type216456%_)
        (let ((_%local?216458%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym216455%_
           _%type216456%_
           _%local?216458%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g219197_
        (let ((_g219198_ (let () (declare (not safe)) (##length _g219197_))))
          (cond ((let () (declare (not safe)) (##fx= _g219198_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g219197_))
                ((let () (declare (not safe)) (##fx= _g219198_ 3))
                 (apply gxc#optimizer-declare-type!__% _g219197_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g219197_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym216440%_ _%type216441%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type216441%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym216440%_
                     _%type216441%_)))
        (let ((_%table216443%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp219199
                 (let () (declare (not safe)) (struct->list _%type216441%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym216440%_ '" " __tmp219199))
          (let ()
            (declare (not safe))
            (hash-put! _%table216443%_ _%sym216440%_ _%type216441%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table216443%_ _%type216441%_ _%sym216440%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym216435%_ _%type216436%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type216436%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym216435%_
                     _%type216436%_)))
        (let ((_%table216438%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table216438%_ _%sym216435%_))
              '#!void
              (begin
                (let ((__tmp219200
                       (let ()
                         (declare (not safe))
                         (struct->list _%type216436%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym216435%_
                   '" "
                   __tmp219200))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table216438%_ _%sym216435%_ _%type216436%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table216438%_
                   _%type216436%_
                   _%sym216435%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym216433%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym216433%_))
        (let ((__tmp219201
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp219201 _%sym216433%_))
        (let ((__tmp219202
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp219202 _%sym216433%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t216401%_
               _%method216402%_
               _%sym216403%_
               _%rebind?216404%_)
        (let ((__tmp219203
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp219203 _%sym216403%_ '#t))
        (let ((_%klass216406%_ (gxc#optimizer-lookup-class _%type-t216401%_)))
          (if _%klass216406%_
              (let* ((_%vtab216408%_ (gxc#!class-method-table _%klass216406%_))
                     (_%$e216410%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab216408%_ _%method216402%_))))
                (if _%$e216410%_
                    (if _%rebind?216404%_
                        (let ()
                          (let ()
                            (declare (not safe))
                            (gxc#verbose
                             '"declare-method: rebind existing method"
                             _%type-t216401%_
                             '" "
                             _%method216402%_))
                          (let ()
                            (declare (not safe))
                            (hash-put!
                             _%vtab216408%_
                             _%method216402%_
                             _%sym216403%_)))
                        (if (eq? _%$e216410%_ _%sym216403%_)
                            '#!void
                            (let ((__tmp219204
                                   (list 'bind-method!
                                         _%type-t216401%_
                                         _%method216402%_
                                         _%sym216403%_)))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"declare-method: duplicate method declaration"
                               __tmp219204
                               _%method216402%_))))
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t216401%_
                         '" "
                         _%method216402%_
                         '" => "
                         _%sym216403%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab216408%_
                         _%method216402%_
                         _%sym216403%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t216401%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t216422%_ _%method216423%_ _%sym216424%_)
        (let ((_%rebind?216426%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t216422%_
           _%method216423%_
           _%sym216424%_
           _%rebind?216426%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g219205_
        (let ((_g219206_ (let () (declare (not safe)) (##length _g219205_))))
          (cond ((let () (declare (not safe)) (##fx= _g219206_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g219205_))
                ((let () (declare (not safe)) (##fx= _g219206_ 4))
                 (apply gxc#optimizer-declare-method!__% _g219205_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g219205_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym216387%_)
        (let ((_%$e216389%_
               (let ((__tmp219207
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym216387%_ __tmp219207))))
          (if _%$e216389%_
              _%$e216389%_
              (let ((_%$e216397%_
                     (let ((_%$%ht216391216393%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%$%ht216391216393%_
                           (let ((_%ht216395%_ _%$%ht216391216393%_))
                             (declare (not safe))
                             (hash-get _%ht216395%_ _%sym216387%_))
                           '#f))))
                (if _%$e216397%_
                    _%$e216397%_
                    (let ((__tmp219208
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp219208 _%sym216387%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym216380%_)
        (let ((_%$%type216381216383%_
               (gxc#optimizer-lookup-type _%sym216380%_)))
          (if _%$%type216381216383%_
              (let ((_%type216385%_ _%$%type216381216383%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type216385%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type216385%_ '1 '#f '#f)))
                    _%type216385%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym216376%_)
        (let ((_%table216378%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table216378%_ _%sym216376%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where216361%_ _%sym216362%_)
        (let ((_%$e216365%_ (gxc#optimizer-lookup-class _%sym216362%_)))
          (if _%$e216365%_
              (let ((_%val216372%_ _%$e216365%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%val216372%_ 'gxc#!class::t))
                    _%val216372%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/compiler/optimize-base
                       'contract:
                       '(!class? val)
                       'value:
                       _%val216372%_)
                      '#!void)))
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where216361%_
                   _%sym216362%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass216359%_)
        (let ((__tmp219209
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp219209 _%klass216359%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t216356%_ _%method216357%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t216356%_)
         _%method216357%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym216354%_)
        (let ((__tmp219210
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp219210 _%sym216354%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e215829%_
                  (lambda (_%t216295%_)
                    (if (symbol? _%t216295%_)
                        (_%type-e215829%_
                         (gxc#optimizer-lookup-type _%t216295%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t216295%_
                               'gxc#!lambda::t))
                            (let* ((_%t216299%_ _%t216295%_)
                                   (_%t216303%_ _%t216299%_))
                              (_%__lambda-type215955%_ _%t216303%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t216295%_
                                   'gxc#!kw-lambda::t))
                                (let* ((_%t216315%_ _%t216295%_)
                                       (_%t216319%_ _%t216315%_))
                                  (_%__kw-lambda-type216078%_ _%t216319%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t216295%_
                                       'gxc#!kw-lambda-primary::t))
                                    (let* ((_%t216330%_ _%t216295%_)
                                           (_%t216334%_ _%t216330%_))
                                      (_%__kw-lambda-primary-type216201%_
                                       _%t216334%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t216295%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t216345%_ _%t216295%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t216345%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp219211
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t216345%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp219211
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t216295%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t216295%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%__lambda-type215955%_
                  (lambda (_%t216283%_)
                    (let ((_%t216286%_ _%t216283%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t216286%_ '4 '#f '#f))
                          (_%type-e215829%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t216286%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t216286%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp219212
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t216286%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp219212
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%lambda-type215956%_
                  (lambda (_%t216271%_)
                    (let ((_%t216274%_ _%t216271%_))
                      (_%__lambda-type215955%_ _%t216274%_))))
                 (_%__kw-lambda-type216078%_
                  (lambda (_%t216259%_)
                    (let ((_%t216262%_ _%t216259%_))
                      (_%type-e215829%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t216262%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-type216079%_
                  (lambda (_%t216247%_)
                    (let ((_%t216250%_ _%t216247%_))
                      (_%__kw-lambda-type216078%_ _%t216250%_))))
                 (_%__kw-lambda-primary-type216201%_
                  (lambda (_%t216235%_)
                    (let ((_%t216238%_ _%t216235%_))
                      (_%type-e215829%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t216238%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type216202%_
                  (lambda (_%t216223%_)
                    (let ((_%t216226%_ _%t216223%_))
                      (_%__kw-lambda-primary-type216201%_ _%t216226%_)))))
          (let* ((_%ht1216204%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2216206%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result216208%_
                  (if _%ht1216204%_
                      (let () (declare (not safe)) (hash->list _%ht1216204%_))
                      '()))
                 (_%result216210%_
                  (if _%ht2216206%_
                      (let ((__tmp219213
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2216206%_))))
                        (declare (not safe))
                        (foldl__0 cons _%result216208%_ __tmp219213))
                      _%result216208%_)))
            (for-each
             (lambda (_%p216213%_)
               (let* ((_%t216215%_ (cdr _%p216213%_))
                      (_%tr216217%_ (_%type-e215829%_ _%t216215%_)))
                 (set-cdr! _%p216213%_ _%tr216217%_)))
             _%result216210%_)
            (list-sort
             (lambda (_%a216220%_ _%b216221%_)
               (let ((__tmp219215 (symbol->string (car _%a216220%_)))
                     (__tmp219214 (symbol->string (car _%b216221%_))))
                 (declare (not safe))
                 (##string<? __tmp219215 __tmp219214)))
             _%result216210%_)))))))
