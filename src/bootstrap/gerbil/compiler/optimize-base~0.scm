(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1712823028)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp150169 (list)) (__tmp150168 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp150169
         '(type classes ssxi methods)
         __tmp150168
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args150140%_
        (apply make-instance gxc#optimizer-info::t _%$args150140%_)))
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
      (lambda (_%self147403150125%_)
        (let* ((_%self150128%_ _%self147403150125%_)
               (_%self150130%_ _%self150128%_))
          (if (let ((__tmp150170
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self150130%_))))
                (declare (not safe))
                (##fx< '4 __tmp150170))
              (begin
                (let ((__tmp150171
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self150130%_
                   __tmp150171
                   '1
                   '#f
                   '#f))
                (let ((__tmp150172
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self150130%_
                   __tmp150172
                   '2
                   '#f
                   '#f))
                (let ((__tmp150173
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self150130%_
                   __tmp150173
                   '3
                   '#f
                   '#f))
                (let ((__tmp150174
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self150130%_
                   __tmp150174
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp150175
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self150130%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self150130%_
                       '4
                       __tmp150175))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp150177 (list))
            (__tmp150176
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp150177
         '(id)
         __tmp150176
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args150000%_
        (apply make-instance gxc#!type::t _%$args150000%_)))
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
      (let ((__tmp150179 (list gxc#!type::t))
            (__tmp150178 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp150179
         '()
         __tmp150178
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args149997%_
        (apply make-instance gxc#!abort::t _%$args149997%_)))
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
      (let ((__tmp150181 (list gxc#!type::t))
            (__tmp150180 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp150181
         '()
         __tmp150180
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args149994%_
        (apply make-instance gxc#!alias::t _%$args149994%_)))
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
      (let ((__tmp150183 (list))
            (__tmp150182
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp150183
         '(return effect arguments unchecked origin)
         __tmp150182
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args149991%_
        (apply make-instance gxc#!signature::t _%$args149991%_)))
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
      (let ((__tmp150185 (list gxc#!type::t))
            (__tmp150184
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp150185
         '(signature)
         __tmp150184
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
      (lambda (_%id149970%_ _%signature149971%_)
        (if ((lambda (_%$obj149974%_)
               (or (not _%$obj149974%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj149974%_
                      'gxc#!signature::t))))
             _%signature149971%_)
            (let ((_%signature149981%_ _%signature149971%_))
              (gxc#__make-!procedure _%id149970%_ _%signature149981%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature149971%_)
              '#!void))))
    (define gxc#__make-!procedure
      (lambda (_%id149956%_ _%signature149958%_)
        (let ((_%signature149961%_ _%signature149958%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id149956%_ _%signature149961%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj149925%_ _%signature149926%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj149925%_ 'gxc#!procedure::t))
            (let ((_%$obj149930%_ _%$obj149925%_))
              (if ((lambda (_%$obj149939%_)
                     (or (not _%$obj149939%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj149939%_
                            'gxc#!signature::t))))
                   _%signature149926%_)
                  (let ((_%signature149946%_ _%signature149926%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj149930%_
                     _%signature149946%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature149926%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj149925%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj149902%_ _%signature149904%_)
        (let* ((_%$obj149908%_ _%$obj149902%_)
               (_%signature149916%_ _%signature149904%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj149908%_
           _%signature149916%_
           '2
           '#f
           '#f))))
    (define gxc#!class-meta::t
      (let ((__tmp150187 (list gxc#!type::t))
            (__tmp150186 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp150187
         '(class)
         __tmp150186
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args149899%_
        (apply make-instance gxc#!class-meta::t _%$args149899%_)))
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
      (let ((__tmp150189 (list gxc#!type::t))
            (__tmp150188
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
         __tmp150189
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp150188
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args149896%_
        (apply make-instance gxc#!class::t _%$args149896%_)))
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
      (let ((__tmp150191 (list gxc#!procedure::t))
            (__tmp150190 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp150191
         '()
         __tmp150190
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args149893%_
        (apply make-instance gxc#!predicate::t _%$args149893%_)))
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
      (let ((__tmp150193 (list gxc#!procedure::t))
            (__tmp150192 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp150193
         '()
         __tmp150192
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args149890%_
        (apply make-instance gxc#!constructor::t _%$args149890%_)))
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
      (let ((__tmp150195 (list gxc#!procedure::t))
            (__tmp150194 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp150195
         '(slot checked?)
         __tmp150194
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args149887%_
        (apply make-instance gxc#!accessor::t _%$args149887%_)))
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
      (let ((__tmp150197 (list gxc#!procedure::t))
            (__tmp150196 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp150197
         '(slot checked?)
         __tmp150196
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args149884%_
        (apply make-instance gxc#!mutator::t _%$args149884%_)))
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
      (let ((__tmp150199 (list gxc#!type::t))
            (__tmp150198 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp150199
         '(methods)
         __tmp150198
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args149881%_
        (apply make-instance gxc#!interface::t _%$args149881%_)))
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
      (let ((__tmp150201 (list gxc#!procedure::t))
            (__tmp150200
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp150201
         '(arity dispatch inline inline-typedecl)
         __tmp150200
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args149878%_
        (apply make-instance gxc#!lambda::t _%$args149878%_)))
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
      (let ((__tmp150203 (list gxc#!procedure::t))
            (__tmp150202 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp150203
         '(clauses)
         __tmp150202
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args149875%_
        (apply make-instance gxc#!case-lambda::t _%$args149875%_)))
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
      (let ((__tmp150205 (list gxc#!procedure::t))
            (__tmp150204 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp150205
         '(table dispatch)
         __tmp150204
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args149872%_
        (apply make-instance gxc#!kw-lambda::t _%$args149872%_)))
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
      (let ((__tmp150207 (list gxc#!procedure::t))
            (__tmp150206 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp150207
         '(keys main)
         __tmp150206
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args149869%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args149869%_)))
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
      (let ((__tmp150208 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp150208
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args149866%_
        (apply make-instance gxc#!primitive::t _%$args149866%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp150210 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp150209 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp150210
         '()
         __tmp150209
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args149863%_
        (apply make-instance gxc#!primitive-predicate::t _%$args149863%_)))
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
      (let ((__tmp150212 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp150211 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp150212
         '()
         __tmp150211
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args149860%_
        (apply make-instance gxc#!primitive-lambda::t _%$args149860%_)))
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
      (let ((__tmp150214 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp150213 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp150214
         '()
         __tmp150213
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args149857%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args149857%_)))
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
      (lambda (_%self147404149842%_)
        (let* ((_%self149845%_ _%self147404149842%_)
               (_%self149847%_ _%self149845%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self149847%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self147405149704%_ _%klass149706%_)
        (let* ((_%self149708%_ _%self147405149704%_)
               (_%self149710%_ _%self149708%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self149710%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149710%_
             _%klass149706%_
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
      (lambda (_%self147406149392%_
               _%id149394%_
               _%super149395%_
               _%slots149396%_
               _%ctor-method149397%_
               _%struct?149398%_
               _%final?149399%_
               _%system?149400%_
               _%metaclass149401%_)
        (let* ((_%self149403%_ _%self147406149392%_)
               (_%self149405%_ _%self149403%_))
          (let _%lp149415%_ ((_%rest149417%_ _%super149395%_))
            (let* ((_%rest149418149426%_ _%rest149417%_)
                   (_%else149420149434%_ (lambda () '#!void))
                   (_%K149422149440%_
                    (lambda (_%rest149437%_ _%super-id149438%_)
                      (if (let ((__tmp150215
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id149394%_ '()))
                                  _%super-id149438%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp150215 '8 '#f '#f))
                          (let ((__tmp150216
                                 (cons '!class (cons _%id149394%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp150216
                             _%super-id149438%_))
                          '#!void)
                      (_%lp149415%_ _%rest149437%_))))
              (if (let () (declare (not safe)) (##pair? _%rest149418149426%_))
                  (let ((_%hd149423149443%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest149418149426%_)))
                        (_%tl149424149445%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest149418149426%_))))
                    (let* ((_%super-id149448%_ _%hd149423149443%_)
                           (_%rest149450%_ _%tl149424149445%_))
                      (_%K149422149440%_ _%rest149450%_ _%super-id149448%_)))
                  '#!void)))
          (let* ((_%ctor-method149501%_
                  (let ((_%$e149452%_ _%ctor-method149397%_))
                    (if _%$e149452%_
                        _%$e149452%_
                        (let _%lp149455%_ ((_%rest149457%_ _%super149395%_)
                                           (_%method149458%_ '#f))
                          (let* ((_%rest149459149467%_ _%rest149457%_)
                                 (_%else149461149475%_
                                  (lambda () _%method149458%_))
                                 (_%K149463149489%_
                                  (lambda (_%rest149478%_ _%super-id149479%_)
                                    (let* ((_%klass149481%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id149394%_ '()))
                                             _%super-id149479%_))
                                           (_%$e149483%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass149481%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e149483%_
                                          ((lambda (_%ctor-method149486%_)
                                             (if _%method149458%_
                                                 (if (eq? _%ctor-method149486%_
                                                          _%method149458%_)
                                                     (_%lp149455%_
                                                      _%rest149478%_
                                                      _%ctor-method149486%_)
                                                     (let ((__tmp150217
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id149394%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp150217
                _%method149458%_
                _%ctor-method149486%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp149455%_
                                                  _%rest149478%_
                                                  _%ctor-method149486%_)))
                                           _%$e149483%_)
                                          (_%lp149455%_
                                           _%rest149478%_
                                           _%method149458%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest149459149467%_))
                                (let ((_%hd149464149492%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest149459149467%_)))
                                      (_%tl149465149494%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest149459149467%_))))
                                  (let* ((_%super-id149497%_
                                          _%hd149464149492%_)
                                         (_%rest149499%_ _%tl149465149494%_))
                                    (_%K149463149489%_
                                     _%rest149499%_
                                     _%super-id149497%_)))
                                (_%else149461149475%_)))))))
                 (_g150218_
                  (let ((__tmp150222
                         (lambda (_%klass-id149503%_)
                           (cons _%klass-id149503%_
                                 (let ((__tmp150223
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id149394%_ '()))
                                         _%klass-id149503%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp150223
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp150220
                         (lambda (_%klass-id149505%_)
                           (let ((__tmp150221
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id149394%_ '()))
                                   _%klass-id149505%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp150221
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp150222
                     __tmp150220
                     eq?
                     identity
                     '()
                     _%super149395%_))))
            (begin
              (let ((_g150219_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g150218_)
                           (##vector-length _g150218_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g150219_ 2)))
                    (error "Context expects 2 values" _g150219_)))
              (let ((_%precedence-list149507%_
                     (let () (declare (not safe)) (##vector-ref _g150218_ 0)))
                    (_%base-struct149508%_
                     (let () (declare (not safe)) (##vector-ref _g150218_ 1))))
                (let* ((_%precedence-list149552%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id149394%_ '(t object class)))
                            _%precedence-list149507%_
                            (if (memq 'object::t _%precedence-list149507%_)
                                _%precedence-list149507%_
                                (if _%system?149400%_
                                    (if (memq 't::t _%precedence-list149507%_)
                                        _%precedence-list149507%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list149507%_
                                           '(t::t))))
                                    (let _%loop149514%_ ((_%tail149516%_
                                                          _%precedence-list149507%_)
                                                         (_%head149517%_ '()))
                                      (let* ((_%tail149518149526%_
                                              _%tail149516%_)
                                             (_%else149520149534%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head149517%_))))
                                             (_%K149522149540%_
                                              (lambda (_%rest149537%_
                                                       _%hd149538%_)
                                                (if (eq? _%hd149538%_ 't::t)
                                                    (let ((__tmp150224
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail149516%_)))
              (declare (not safe))
              (__foldl1 cons __tmp150224 _%head149517%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop149514%_
                                                     _%rest149537%_
                                                     (cons _%hd149538%_
                                                           _%head149517%_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tail149518149526%_))
                                            (let ((_%hd149523149543%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail149518149526%_)))
                                                  (_%tl149524149545%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail149518149526%_))))
                                              (let* ((_%hd149548%_
                                                      _%hd149523149543%_)
                                                     (_%rest149550%_
                                                      _%tl149524149545%_))
                                                (_%K149522149540%_
                                                 _%rest149550%_
                                                 _%hd149548%_)))
                                            (_%else149520149534%_))))))))
                       (_%fields149554%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id149394%_ '()))
                         _%base-struct149508%_
                         _%precedence-list149552%_
                         _%slots149396%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149405%_
                     _%id149394%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149405%_
                     _%super149395%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149405%_
                     _%precedence-list149552%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149405%_
                     _%slots149396%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149405%_
                     _%fields149554%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149405%_
                     _%ctor-method149501%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149405%_
                     _%struct?149398%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149405%_
                     _%final?149399%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149405%_
                     _%metaclass149401%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self147407149557%_
               _%id149559%_
               _%super149560%_
               _%precedence-list149561%_
               _%slots149562%_
               _%fields149563%_
               _%constructor149564%_
               _%struct?149565%_
               _%final?149566%_
               _%system?149567%_
               _%metaclass149568%_
               _%methods149569%_)
        (let* ((_%self149571%_ _%self147407149557%_)
               (_%self149573%_ _%self149571%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149573%_
             _%id149559%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149573%_
             _%super149560%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149573%_
             _%precedence-list149561%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149573%_
             _%slots149562%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149573%_
             _%fields149563%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149573%_
             _%constructor149564%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149573%_
             _%struct?149565%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149573%_
             _%final?149566%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149573%_
             _%metaclass149568%_
             '10
             '#f
             '#f))
          (if _%methods149569%_
              (let ((__tmp150225
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods149569%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self149573%_
                 __tmp150225
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g150227_
        (let ((_g150226_ (let () (declare (not safe)) (##length _g150227_))))
          (cond ((let () (declare (not safe)) (##fx= _g150226_ 9))
                 (apply gxc#!class:::init!__0 _g150227_))
                ((let () (declare (not safe)) (##fx= _g150226_ 12))
                 (apply gxc#!class:::init!__1 _g150227_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g150227_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where149244%_
               _%base-struct149245%_
               _%precedence-list149246%_
               _%direct-slots149247%_)
        (let* ((_%base-fields149249%_
                (if _%base-struct149245%_
                    (let ((__tmp150228
                           (gxc#optimizer-resolve-class
                            _%where149244%_
                            _%base-struct149245%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp150228 '5 '#f '#f))
                    '()))
               (_%r-fields149251%_ (reverse _%base-fields149249%_))
               (_%seen-slots149259%_
                (let ((_%tab149253%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g149254149256%_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _%tab149253%_ _%g149254149256%_ '#t)))
                   _%base-fields149249%_)
                  _%tab149253%_))
               (_%process-slot149263%_
                (lambda (_%slot149261%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%seen-slots149259%_ _%slot149261%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _%seen-slots149259%_ _%slot149261%_ '#t))
                        (set! _%r-fields149251%_
                              (cons _%slot149261%_ _%r-fields149251%_)))))))
          (for-each
           (lambda (_%mixin149266%_)
             (let ((_%klass149268%_
                    (gxc#optimizer-resolve-class
                     _%where149244%_
                     _%mixin149266%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass149268%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot149263%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass149268%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list149246%_)
          (for-each _%process-slot149263%_ _%direct-slots149247%_)
          (let () (declare (not safe)) (##reverse _%r-fields149251%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass149203%_ _%slot149204%_)
        (let _%lp149206%_ ((_%rest149208%_
                            (##structure-ref
                             _%klass149203%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset149209%_ '1))
          (let* ((_%rest149210149218%_ _%rest149208%_)
                 (_%else149212149226%_
                  (lambda ()
                    (let ((__tmp150230
                           (##structure-ref
                            _%klass149203%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp150229
                           (##structure-ref
                            _%klass149203%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp150230
                       __tmp150229
                       _%slot149204%_))))
                 (_%K149214149232%_
                  (lambda (_%rest149229%_ _%s149230%_)
                    (if (eq? _%s149230%_ _%slot149204%_)
                        _%offset149209%_
                        (_%lp149206%_
                         _%rest149229%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset149209%_ '1)))))))
            (if (let () (declare (not safe)) (##pair? _%rest149210149218%_))
                (let ((_%hd149215149235%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest149210149218%_)))
                      (_%tl149216149237%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest149210149218%_))))
                  (let* ((_%s149240%_ _%hd149215149235%_)
                         (_%rest149242%_ _%tl149216149237%_))
                    (_%K149214149232%_ _%rest149242%_ _%s149240%_)))
                (_%else149212149226%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass149161%_ _%slot149162%_)
        (if (gxc#!class-struct-slot? _%klass149161%_ _%slot149162%_)
            _%klass149161%_
            (let _%lp149164%_ ((_%rest149166%_
                                (##structure-ref
                                 _%klass149161%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest149167149175%_ _%rest149166%_)
                     (_%else149169149183%_ (lambda () '#f))
                     (_%K149171149191%_
                      (lambda (_%rest149186%_ _%super149187%_)
                        (let ((_%super-class149189%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass149161%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot149162%_ '())))
                                _%super149187%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class149189%_
                               _%slot149162%_)
                              _%super-class149189%_
                              (_%lp149164%_ _%rest149186%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest149167149175%_))
                    (let ((_%hd149172149194%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest149167149175%_)))
                          (_%tl149173149196%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest149167149175%_))))
                      (let* ((_%super149199%_ _%hd149172149194%_)
                             (_%rest149201%_ _%tl149173149196%_))
                        (_%K149171149191%_ _%rest149201%_ _%super149199%_)))
                    (_%else149169149183%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass149158%_ _%slot149159%_)
        (if (##structure-ref _%klass149158%_ '7 gxc#!class::t '#f)
            (memq _%slot149159%_
                  (##structure-ref _%klass149158%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self147408149142%_ _%id149144%_)
        (let* ((_%self149146%_ _%self147408149142%_)
               (_%self149148%_ _%self149146%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149148%_
             _%id149144%_
             '1
             '#f
             '#f))
          (let ((__tmp150231
                 (let ((__obj150163
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
                      __obj150163
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150163
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150163
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj150163)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149148%_
             __tmp150231
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self147409149004%_ _%id149006%_)
        (let* ((_%self149008%_ _%self147409149004%_)
               (_%self149010%_ _%self149008%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149010%_
             _%id149006%_
             '1
             '#f
             '#f))
          (let ((__tmp150232
                 (let ((__obj150164
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
                      __obj150164
                      _%id149006%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150164
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj150164)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149010%_
             __tmp150232
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
      (lambda (_%self147410148864%_
               _%id148866%_
               _%slot148867%_
               _%checked?148868%_)
        (let* ((_%self148870%_ _%self147410148864%_)
               (_%self148872%_ _%self148870%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148872%_
             _%id148866%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148872%_
             _%slot148867%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148872%_
             _%checked?148868%_
             '4
             '#f
             '#f))
          (let ((__tmp150233
                 (let ((__obj150165
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
                     (##unchecked-structure-set! __obj150165 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150165
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp150234 (cons _%id148866%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150165
                      __tmp150234
                      '3
                      '#f
                      '#f))
                   __obj150165)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148872%_
             __tmp150233
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self147411148724%_
               _%id148726%_
               _%slot148727%_
               _%checked?148728%_)
        (let* ((_%self148730%_ _%self147411148724%_)
               (_%self148732%_ _%self148730%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148732%_
             _%id148726%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148732%_
             _%slot148727%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148732%_
             _%checked?148728%_
             '4
             '#f
             '#f))
          (let ((__tmp150235
                 (let ((__obj150166
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
                      __obj150166
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150166
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp150236 (cons _%id148726%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150166
                      __tmp150236
                      '3
                      '#f
                      '#f))
                   __obj150166)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148732%_
             __tmp150235
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords148566%_
               _%signature148563148567%_
               _%self147412148569%_
               _%arity148571%_
               _%dispatch148572%_)
        (let* ((_%signature148574%_
                (if (eq? _%signature148563148567%_ absent-value)
                    '#f
                    _%signature148563148567%_))
               (_%self148576%_ _%self147412148569%_)
               (_%self148578%_ _%self148576%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self148578%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148578%_
             _%arity148571%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148578%_
             _%dispatch148572%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148578%_
             _%signature148574%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords148592%_ . _%args148593%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords148592%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords148592%_
                  'signature:
                  absent-value))
               _%args148593%_)))
    (define gxc#!lambda:::init!
      (lambda _%args148564148599%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args148564148599%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords148405%_
               _%signature148402148406%_
               _%self147413148408%_
               _%clauses148410%_)
        (let* ((_%signature148412%_
                (if (eq? _%signature148402148406%_ absent-value)
                    '#f
                    _%signature148402148406%_))
               (_%self148414%_ _%self147413148408%_)
               (_%self148416%_ _%self148414%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self148416%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148416%_
             _%signature148412%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148416%_
             _%clauses148410%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords148430%_ . _%args148431%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords148430%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords148430%_
                  'signature:
                  absent-value))
               _%args148431%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args148403148437%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args148403148437%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self147414148262%_ _%tab148264%_ _%dispatch148265%_)
        (let* ((_%self148267%_ _%self147414148262%_)
               (_%self148269%_ _%self148267%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self148269%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148269%_
             _%tab148264%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148269%_
             _%dispatch148265%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self147415148123%_ _%keys148125%_ _%main148126%_)
        (let* ((_%self148128%_ _%self147415148123%_)
               (_%self148130%_ _%self148128%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self148130%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148130%_
             _%keys148125%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148130%_
             _%main148126%_
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
      (lambda (_%self147416147741%_ _%id147743%_)
        (let* ((_%self147745%_ _%self147416147741%_)
               (_%self147747%_ _%self147745%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147747%_
             _%id147743%_
             '1
             '#f
             '#f))
          (let ((__tmp150237
                 (let ((__obj150167
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
                      __obj150167
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150167
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150167
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj150167)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147747%_
             __tmp150237
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
      (lambda (_%klass147610%_)
        (let ((_%$e147612%_
               (##structure-ref _%klass147610%_ '11 gxc#!class::t '#f)))
          (if _%$e147612%_
              _%$e147612%_
              (let ((_%tab147616%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass147610%_
                 _%tab147616%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab147616%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass147601%_ _%method147602%_)
        (let ((_%tab147603147605%_
               (##structure-ref _%klass147601%_ '11 gxc#!class::t '#f)))
          (if _%tab147603147605%_
              (let ((_%tab147608%_ _%tab147603147605%_))
                (declare (not safe))
                (hash-get _%tab147608%_ _%method147602%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a147589%_ _%type-b147590%_)
        (if _%type-a147589%_
            (if _%type-b147590%_
                (let ((_%$e147592%_ (eq? _%type-a147589%_ _%type-b147590%_)))
                  (if _%$e147592%_
                      _%$e147592%_
                      (let ((_%$e147595%_
                             (eq? (##structure-ref
                                   _%type-b147590%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e147595%_
                            _%$e147595%_
                            (let ((_%$e147598%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a147589%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b147590%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e147598%_
                                  _%$e147598%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a147589%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b147590%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a147589%_
                                           _%type-b147590%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a147540%_ _%klass-b147541%_)
        (let ((_%$e147543%_
               (eq? (##structure-ref _%klass-a147540%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b147541%_ '1 gxc#!type::t '#f))))
          (if _%$e147543%_
              _%$e147543%_
              (let ((_%klass-id-b147546%_
                     (##structure-ref _%klass-b147541%_ '1 gxc#!type::t '#f))
                    (_%precedence-list147547%_
                     (##structure-ref _%klass-a147540%_ '3 gxc#!class::t '#f)))
                (let _%loop147549%_ ((_%rest147551%_
                                      _%precedence-list147547%_))
                  (let* ((_%rest147552147560%_ _%rest147551%_)
                         (_%else147554147568%_ (lambda () '#f))
                         (_%K147556147577%_
                          (lambda (_%rest147571%_ _%klass-name147572%_)
                            (let ((_%$e147574%_
                                   (eq? (let ((__tmp150238
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a147540%_
                                                            (cons _%klass-b147541%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name147572%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp150238
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b147546%_)))
                              (if _%$e147574%_
                                  _%$e147574%_
                                  (_%loop147549%_ _%rest147571%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest147552147560%_))
                        (let ((_%hd147557147580%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest147552147560%_)))
                              (_%tl147558147582%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest147552147560%_))))
                          (let* ((_%klass-name147585%_ _%hd147557147580%_)
                                 (_%rest147587%_ _%tl147558147582%_))
                            (_%K147556147577%_
                             _%rest147587%_
                             _%klass-name147585%_)))
                        (_%else147554147568%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type147538%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type147538%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (##structure-ref _%type147538%_ '3 gxc#!class::t '#f))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc147527%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc147527%_ 'gxc#!procedure::t))
            (let ((_%proc147530%_ _%proc147527%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc147530%_ '2 '#f '#f))
                  (let ((__tmp150239
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc147530%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp150239 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@374.11-374.15"
               'contract:
               '!procedure?
               'value:
               _%proc147527%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym147509%_ _%type147510%_ _%local?147511%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type147510%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym147509%_
                     _%type147510%_)))
        (let ((__tmp150240
               (let () (declare (not safe)) (struct->list _%type147510%_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym147509%_ '" " __tmp150240))
        (let ((_%table147513%_
               (if _%local?147511%_
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
          (hash-put! _%table147513%_ _%sym147509%_ _%type147510%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym147518%_ _%type147519%_)
        (let ((_%local?147521%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym147518%_
           _%type147519%_
           _%local?147521%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g150242_
        (let ((_g150241_ (let () (declare (not safe)) (##length _g150242_))))
          (cond ((let () (declare (not safe)) (##fx= _g150241_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g150242_))
                ((let () (declare (not safe)) (##fx= _g150241_ 3))
                 (apply gxc#optimizer-declare-type!__% _g150242_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g150242_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym147503%_ _%type147504%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type147504%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym147503%_
                     _%type147504%_)))
        (let ((_%table147506%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp150243
                 (let () (declare (not safe)) (struct->list _%type147504%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym147503%_ '" " __tmp150243))
          (let ()
            (declare (not safe))
            (hash-put! _%table147506%_ _%sym147503%_ _%type147504%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table147506%_ _%type147504%_ _%sym147503%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym147498%_ _%type147499%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type147499%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym147498%_
                     _%type147499%_)))
        (let ((_%table147501%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table147501%_ _%sym147498%_))
              '#!void
              (begin
                (let ((__tmp150244
                       (let ()
                         (declare (not safe))
                         (struct->list _%type147499%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym147498%_
                   '" "
                   __tmp150244))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table147501%_ _%sym147498%_ _%type147499%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table147501%_
                   _%type147499%_
                   _%sym147498%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym147496%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym147496%_))
        (let ((__tmp150245
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp150245 _%sym147496%_))
        (let ((__tmp150246
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp150246 _%sym147496%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t147464%_
               _%method147465%_
               _%sym147466%_
               _%rebind?147467%_)
        (let ((__tmp150247
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp150247 _%sym147466%_ '#t))
        (let ((_%klass147469%_ (gxc#optimizer-lookup-class _%type-t147464%_)))
          (if _%klass147469%_
              (let* ((_%vtab147471%_ (gxc#!class-method-table _%klass147469%_))
                     (_%$e147473%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab147471%_ _%method147465%_))))
                (if _%$e147473%_
                    ((lambda (_%existing147476%_)
                       (if _%rebind?147467%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t147464%_
                                '" "
                                _%method147465%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab147471%_
                                _%method147465%_
                                _%sym147466%_)))
                           (if (eq? _%existing147476%_ _%sym147466%_)
                               '#!void
                               (let ((__tmp150248
                                      (cons 'bind-method!
                                            (cons _%type-t147464%_
                                                  (cons _%method147465%_
                                                        (cons _%sym147466%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp150248
                                  _%method147465%_)))))
                     _%$e147473%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t147464%_
                         '" "
                         _%method147465%_
                         '" => "
                         _%sym147466%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab147471%_
                         _%method147465%_
                         _%sym147466%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t147464%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t147485%_ _%method147486%_ _%sym147487%_)
        (let ((_%rebind?147489%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t147485%_
           _%method147486%_
           _%sym147487%_
           _%rebind?147489%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g150250_
        (let ((_g150249_ (let () (declare (not safe)) (##length _g150250_))))
          (cond ((let () (declare (not safe)) (##fx= _g150249_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g150250_))
                ((let () (declare (not safe)) (##fx= _g150249_ 4))
                 (apply gxc#optimizer-declare-method!__% _g150250_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g150250_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym147452%_)
        (let ((_%$e147460%_
               (let ((_%ht147453147455%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-local-type))))
                 (if _%ht147453147455%_
                     (let ((_%ht147458%_ _%ht147453147455%_))
                       (declare (not safe))
                       (hash-get _%ht147458%_ _%sym147452%_))
                     '#f))))
          (if _%$e147460%_
              _%$e147460%_
              (let ((__tmp150251
                     (##structure-ref
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-optimizer-info))
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp150251 _%sym147452%_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym147444%_)
        (let ((_%type147445147447%_ (gxc#optimizer-lookup-type _%sym147444%_)))
          (if _%type147445147447%_
              (let ((_%type147450%_ _%type147445147447%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type147450%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (##structure-ref _%type147450%_ '1 gxc#!type::t '#f))
                    _%type147450%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym147440%_)
        (let ((_%table147442%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table147442%_ _%sym147440%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where147425%_ _%sym147426%_)
        (let ((_%$e147429%_ (gxc#optimizer-lookup-class _%sym147426%_)))
          (if _%$e147429%_
              ((lambda (_%g147431147433%_)
                 (let ((_%val147436%_ _%g147431147433%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val147436%_
                          'gxc#!class::t))
                       _%val147436%_
                       (let ()
                         (declare (not safe))
                         (error '"bad cast" gxc#!class::t _%val147436%_)))))
               _%$e147429%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where147425%_
                   _%sym147426%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass147423%_)
        (let ((__tmp150252
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp150252 _%klass147423%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t147420%_ _%method147421%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t147420%_)
         _%method147421%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym147418%_)
        (let ((__tmp150253
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp150253 _%sym147418%_))))))
