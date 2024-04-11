(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1712786280)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp150167 (list)) (__tmp150166 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp150167
         '(type classes ssxi methods)
         __tmp150166
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args150138%_
        (apply make-instance gxc#optimizer-info::t _%$args150138%_)))
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
      (lambda (_%self147401150123%_)
        (let* ((_%self150126%_ _%self147401150123%_)
               (_%self150128%_ _%self150126%_))
          (if (let ((__tmp150168
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self150128%_))))
                (declare (not safe))
                (##fx< '4 __tmp150168))
              (begin
                (let ((__tmp150169
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self150128%_
                   __tmp150169
                   '1
                   '#f
                   '#f))
                (let ((__tmp150170
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self150128%_
                   __tmp150170
                   '2
                   '#f
                   '#f))
                (let ((__tmp150171
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self150128%_
                   __tmp150171
                   '3
                   '#f
                   '#f))
                (let ((__tmp150172
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self150128%_
                   __tmp150172
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp150173
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self150128%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self150128%_
                       '4
                       __tmp150173))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp150175 (list))
            (__tmp150174
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp150175
         '(id)
         __tmp150174
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args149998%_
        (apply make-instance gxc#!type::t _%$args149998%_)))
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
      (let ((__tmp150177 (list gxc#!type::t))
            (__tmp150176 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp150177
         '()
         __tmp150176
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args149995%_
        (apply make-instance gxc#!abort::t _%$args149995%_)))
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
      (let ((__tmp150179 (list gxc#!type::t))
            (__tmp150178 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp150179
         '()
         __tmp150178
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args149992%_
        (apply make-instance gxc#!alias::t _%$args149992%_)))
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
      (let ((__tmp150181 (list))
            (__tmp150180
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp150181
         '(return effect arguments unchecked origin)
         __tmp150180
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args149989%_
        (apply make-instance gxc#!signature::t _%$args149989%_)))
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
      (let ((__tmp150183 (list gxc#!type::t))
            (__tmp150182
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp150183
         '(signature)
         __tmp150182
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
      (lambda (_%id149968%_ _%signature149969%_)
        (if ((lambda (_%$obj149972%_)
               (or (not _%$obj149972%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj149972%_
                      'gxc#!signature::t))))
             _%signature149969%_)
            (let ((_%signature149979%_ _%signature149969%_))
              (gxc#__make-!procedure _%id149968%_ _%signature149979%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature149969%_)
              '#!void))))
    (define gxc#__make-!procedure
      (lambda (_%id149954%_ _%signature149956%_)
        (let ((_%signature149959%_ _%signature149956%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id149954%_ _%signature149959%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj149923%_ _%signature149924%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj149923%_ 'gxc#!procedure::t))
            (let ((_%$obj149928%_ _%$obj149923%_))
              (if ((lambda (_%$obj149937%_)
                     (or (not _%$obj149937%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj149937%_
                            'gxc#!signature::t))))
                   _%signature149924%_)
                  (let ((_%signature149944%_ _%signature149924%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj149928%_
                     _%signature149944%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature149924%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj149923%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj149900%_ _%signature149902%_)
        (let* ((_%$obj149906%_ _%$obj149900%_)
               (_%signature149914%_ _%signature149902%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj149906%_
           _%signature149914%_
           '2
           '#f
           '#f))))
    (define gxc#!class-meta::t
      (let ((__tmp150185 (list gxc#!type::t))
            (__tmp150184 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp150185
         '(class)
         __tmp150184
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args149897%_
        (apply make-instance gxc#!class-meta::t _%$args149897%_)))
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
      (let ((__tmp150187 (list gxc#!type::t))
            (__tmp150186
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
         __tmp150187
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp150186
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args149894%_
        (apply make-instance gxc#!class::t _%$args149894%_)))
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
      (let ((__tmp150189 (list gxc#!procedure::t))
            (__tmp150188 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp150189
         '()
         __tmp150188
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args149891%_
        (apply make-instance gxc#!predicate::t _%$args149891%_)))
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
      (let ((__tmp150191 (list gxc#!procedure::t))
            (__tmp150190 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp150191
         '()
         __tmp150190
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args149888%_
        (apply make-instance gxc#!constructor::t _%$args149888%_)))
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
      (let ((__tmp150193 (list gxc#!procedure::t))
            (__tmp150192 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp150193
         '(slot checked?)
         __tmp150192
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args149885%_
        (apply make-instance gxc#!accessor::t _%$args149885%_)))
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
      (let ((__tmp150195 (list gxc#!procedure::t))
            (__tmp150194 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp150195
         '(slot checked?)
         __tmp150194
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args149882%_
        (apply make-instance gxc#!mutator::t _%$args149882%_)))
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
      (let ((__tmp150197 (list gxc#!type::t))
            (__tmp150196 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp150197
         '(methods)
         __tmp150196
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args149879%_
        (apply make-instance gxc#!interface::t _%$args149879%_)))
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
      (let ((__tmp150199 (list gxc#!procedure::t))
            (__tmp150198
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp150199
         '(arity dispatch inline inline-typedecl)
         __tmp150198
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args149876%_
        (apply make-instance gxc#!lambda::t _%$args149876%_)))
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
      (let ((__tmp150201 (list gxc#!procedure::t))
            (__tmp150200 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp150201
         '(clauses)
         __tmp150200
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args149873%_
        (apply make-instance gxc#!case-lambda::t _%$args149873%_)))
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
      (let ((__tmp150203 (list gxc#!procedure::t))
            (__tmp150202 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp150203
         '(table dispatch)
         __tmp150202
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args149870%_
        (apply make-instance gxc#!kw-lambda::t _%$args149870%_)))
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
      (let ((__tmp150205 (list gxc#!procedure::t))
            (__tmp150204 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp150205
         '(keys main)
         __tmp150204
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args149867%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args149867%_)))
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
      (let ((__tmp150206 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp150206
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args149864%_
        (apply make-instance gxc#!primitive::t _%$args149864%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp150208 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp150207 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp150208
         '()
         __tmp150207
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args149861%_
        (apply make-instance gxc#!primitive-predicate::t _%$args149861%_)))
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
      (let ((__tmp150210 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp150209 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp150210
         '()
         __tmp150209
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args149858%_
        (apply make-instance gxc#!primitive-lambda::t _%$args149858%_)))
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
      (let ((__tmp150212 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp150211 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp150212
         '()
         __tmp150211
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args149855%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args149855%_)))
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
      (lambda (_%self147402149840%_)
        (let* ((_%self149843%_ _%self147402149840%_)
               (_%self149845%_ _%self149843%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self149845%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self147403149702%_ _%klass149704%_)
        (let* ((_%self149706%_ _%self147403149702%_)
               (_%self149708%_ _%self149706%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self149708%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149708%_
             _%klass149704%_
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class-meta::t ':init! gxc#!class-meta:::init! '#f))
    (define gxc#!class:::init!__0
      (lambda (_%self147404149390%_
               _%id149392%_
               _%super149393%_
               _%slots149394%_
               _%ctor-method149395%_
               _%struct?149396%_
               _%final?149397%_
               _%system?149398%_
               _%metaclass149399%_)
        (let* ((_%self149401%_ _%self147404149390%_)
               (_%self149403%_ _%self149401%_))
          (let _%lp149413%_ ((_%rest149415%_ _%super149393%_))
            (let* ((_%rest149416149424%_ _%rest149415%_)
                   (_%else149418149432%_ (lambda () '#!void))
                   (_%K149420149438%_
                    (lambda (_%rest149435%_ _%super-id149436%_)
                      (if (let ((__tmp150213
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id149392%_ '()))
                                  _%super-id149436%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp150213 '8 '#f '#f))
                          (let ((__tmp150214
                                 (cons '!class (cons _%id149392%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp150214
                             _%super-id149436%_))
                          '#!void)
                      (_%lp149413%_ _%rest149435%_))))
              (if (let () (declare (not safe)) (##pair? _%rest149416149424%_))
                  (let ((_%hd149421149441%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest149416149424%_)))
                        (_%tl149422149443%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest149416149424%_))))
                    (let* ((_%super-id149446%_ _%hd149421149441%_)
                           (_%rest149448%_ _%tl149422149443%_))
                      (_%K149420149438%_ _%rest149448%_ _%super-id149446%_)))
                  '#!void)))
          (let* ((_%ctor-method149499%_
                  (let ((_%$e149450%_ _%ctor-method149395%_))
                    (if _%$e149450%_
                        _%$e149450%_
                        (let _%lp149453%_ ((_%rest149455%_ _%super149393%_)
                                           (_%method149456%_ '#f))
                          (let* ((_%rest149457149465%_ _%rest149455%_)
                                 (_%else149459149473%_
                                  (lambda () _%method149456%_))
                                 (_%K149461149487%_
                                  (lambda (_%rest149476%_ _%super-id149477%_)
                                    (let* ((_%klass149479%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id149392%_ '()))
                                             _%super-id149477%_))
                                           (_%$e149481%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass149479%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e149481%_
                                          ((lambda (_%ctor-method149484%_)
                                             (if _%method149456%_
                                                 (if (eq? _%ctor-method149484%_
                                                          _%method149456%_)
                                                     (_%lp149453%_
                                                      _%rest149476%_
                                                      _%ctor-method149484%_)
                                                     (let ((__tmp150215
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id149392%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp150215
                _%method149456%_
                _%ctor-method149484%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp149453%_
                                                  _%rest149476%_
                                                  _%ctor-method149484%_)))
                                           _%$e149481%_)
                                          (_%lp149453%_
                                           _%rest149476%_
                                           _%method149456%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest149457149465%_))
                                (let ((_%hd149462149490%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest149457149465%_)))
                                      (_%tl149463149492%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest149457149465%_))))
                                  (let* ((_%super-id149495%_
                                          _%hd149462149490%_)
                                         (_%rest149497%_ _%tl149463149492%_))
                                    (_%K149461149487%_
                                     _%rest149497%_
                                     _%super-id149495%_)))
                                (_%else149459149473%_)))))))
                 (_g150216_
                  (let ((__tmp150220
                         (lambda (_%klass-id149501%_)
                           (cons _%klass-id149501%_
                                 (let ((__tmp150221
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id149392%_ '()))
                                         _%klass-id149501%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp150221
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp150218
                         (lambda (_%klass-id149503%_)
                           (let ((__tmp150219
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id149392%_ '()))
                                   _%klass-id149503%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp150219
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp150220
                     __tmp150218
                     eq?
                     identity
                     '()
                     _%super149393%_))))
            (begin
              (let ((_g150217_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g150216_)
                           (##vector-length _g150216_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g150217_ 2)))
                    (error "Context expects 2 values" _g150217_)))
              (let ((_%precedence-list149505%_
                     (let () (declare (not safe)) (##vector-ref _g150216_ 0)))
                    (_%base-struct149506%_
                     (let () (declare (not safe)) (##vector-ref _g150216_ 1))))
                (let* ((_%precedence-list149550%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id149392%_ '(t object class)))
                            _%precedence-list149505%_
                            (if (memq 'object::t _%precedence-list149505%_)
                                _%precedence-list149505%_
                                (if _%system?149398%_
                                    (if (memq 't::t _%precedence-list149505%_)
                                        _%precedence-list149505%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list149505%_
                                           '(t::t))))
                                    (let _%loop149512%_ ((_%tail149514%_
                                                          _%precedence-list149505%_)
                                                         (_%head149515%_ '()))
                                      (let* ((_%tail149516149524%_
                                              _%tail149514%_)
                                             (_%else149518149532%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head149515%_))))
                                             (_%K149520149538%_
                                              (lambda (_%rest149535%_
                                                       _%hd149536%_)
                                                (if (eq? _%hd149536%_ 't::t)
                                                    (let ((__tmp150222
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail149514%_)))
              (declare (not safe))
              (__foldl1 cons __tmp150222 _%head149515%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop149512%_
                                                     _%rest149535%_
                                                     (cons _%hd149536%_
                                                           _%head149515%_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tail149516149524%_))
                                            (let ((_%hd149521149541%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail149516149524%_)))
                                                  (_%tl149522149543%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail149516149524%_))))
                                              (let* ((_%hd149546%_
                                                      _%hd149521149541%_)
                                                     (_%rest149548%_
                                                      _%tl149522149543%_))
                                                (_%K149520149538%_
                                                 _%rest149548%_
                                                 _%hd149546%_)))
                                            (_%else149518149532%_))))))))
                       (_%fields149552%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id149392%_ '()))
                         _%base-struct149506%_
                         _%precedence-list149550%_
                         _%slots149394%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149403%_
                     _%id149392%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149403%_
                     _%super149393%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149403%_
                     _%precedence-list149550%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149403%_
                     _%slots149394%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149403%_
                     _%fields149552%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149403%_
                     _%ctor-method149499%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149403%_
                     _%struct?149396%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149403%_
                     _%final?149397%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self149403%_
                     _%metaclass149399%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self147405149555%_
               _%id149557%_
               _%super149558%_
               _%precedence-list149559%_
               _%slots149560%_
               _%fields149561%_
               _%constructor149562%_
               _%struct?149563%_
               _%final?149564%_
               _%system?149565%_
               _%metaclass149566%_
               _%methods149567%_)
        (let* ((_%self149569%_ _%self147405149555%_)
               (_%self149571%_ _%self149569%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149571%_
             _%id149557%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149571%_
             _%super149558%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149571%_
             _%precedence-list149559%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149571%_
             _%slots149560%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149571%_
             _%fields149561%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149571%_
             _%constructor149562%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149571%_
             _%struct?149563%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149571%_
             _%final?149564%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149571%_
             _%metaclass149566%_
             '10
             '#f
             '#f))
          (if _%methods149567%_
              (let ((__tmp150223
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods149567%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self149571%_
                 __tmp150223
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g150225_
        (let ((_g150224_ (let () (declare (not safe)) (##length _g150225_))))
          (cond ((let () (declare (not safe)) (##fx= _g150224_ 9))
                 (apply gxc#!class:::init!__0 _g150225_))
                ((let () (declare (not safe)) (##fx= _g150224_ 12))
                 (apply gxc#!class:::init!__1 _g150225_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g150225_))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where149242%_
               _%base-struct149243%_
               _%precedence-list149244%_
               _%direct-slots149245%_)
        (let* ((_%base-fields149247%_
                (if _%base-struct149243%_
                    (let ((__tmp150226
                           (gxc#optimizer-resolve-class
                            _%where149242%_
                            _%base-struct149243%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp150226 '5 '#f '#f))
                    '()))
               (_%r-fields149249%_ (reverse _%base-fields149247%_))
               (_%seen-slots149257%_
                (let ((_%tab149251%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g149252149254%_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _%tab149251%_ _%g149252149254%_ '#t)))
                   _%base-fields149247%_)
                  _%tab149251%_))
               (_%process-slot149261%_
                (lambda (_%slot149259%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%seen-slots149257%_ _%slot149259%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _%seen-slots149257%_ _%slot149259%_ '#t))
                        (set! _%r-fields149249%_
                              (cons _%slot149259%_ _%r-fields149249%_)))))))
          (for-each
           (lambda (_%mixin149264%_)
             (let ((_%klass149266%_
                    (gxc#optimizer-resolve-class
                     _%where149242%_
                     _%mixin149264%_)))
               (if (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass149266%_ '7 '#f '#f))
                   '#!void
                   (for-each
                    _%process-slot149261%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref
                       _%klass149266%_
                       '5
                       '#f
                       '#f))))))
           _%precedence-list149244%_)
          (for-each _%process-slot149261%_ _%direct-slots149245%_)
          (let () (declare (not safe)) (##reverse _%r-fields149249%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass149201%_ _%slot149202%_)
        (let _%lp149204%_ ((_%rest149206%_
                            (##structure-ref
                             _%klass149201%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset149207%_ '1))
          (let* ((_%rest149208149216%_ _%rest149206%_)
                 (_%else149210149224%_
                  (lambda ()
                    (let ((__tmp150228
                           (##structure-ref
                            _%klass149201%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp150227
                           (##structure-ref
                            _%klass149201%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp150228
                       __tmp150227
                       _%slot149202%_))))
                 (_%K149212149230%_
                  (lambda (_%rest149227%_ _%s149228%_)
                    (if (eq? _%s149228%_ _%slot149202%_)
                        _%offset149207%_
                        (_%lp149204%_
                         _%rest149227%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset149207%_ '1)))))))
            (if (let () (declare (not safe)) (##pair? _%rest149208149216%_))
                (let ((_%hd149213149233%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest149208149216%_)))
                      (_%tl149214149235%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest149208149216%_))))
                  (let* ((_%s149238%_ _%hd149213149233%_)
                         (_%rest149240%_ _%tl149214149235%_))
                    (_%K149212149230%_ _%rest149240%_ _%s149238%_)))
                (_%else149210149224%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass149159%_ _%slot149160%_)
        (if (gxc#!class-struct-slot? _%klass149159%_ _%slot149160%_)
            _%klass149159%_
            (let _%lp149162%_ ((_%rest149164%_
                                (##structure-ref
                                 _%klass149159%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest149165149173%_ _%rest149164%_)
                     (_%else149167149181%_ (lambda () '#f))
                     (_%K149169149189%_
                      (lambda (_%rest149184%_ _%super149185%_)
                        (let ((_%super-class149187%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass149159%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot149160%_ '())))
                                _%super149185%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class149187%_
                               _%slot149160%_)
                              _%super-class149187%_
                              (_%lp149162%_ _%rest149184%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest149165149173%_))
                    (let ((_%hd149170149192%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest149165149173%_)))
                          (_%tl149171149194%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest149165149173%_))))
                      (let* ((_%super149197%_ _%hd149170149192%_)
                             (_%rest149199%_ _%tl149171149194%_))
                        (_%K149169149189%_ _%rest149199%_ _%super149197%_)))
                    (_%else149167149181%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass149156%_ _%slot149157%_)
        (if (##structure-ref _%klass149156%_ '7 gxc#!class::t '#f)
            (memq _%slot149157%_
                  (##structure-ref _%klass149156%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self147406149140%_ _%id149142%_)
        (let* ((_%self149144%_ _%self147406149140%_)
               (_%self149146%_ _%self149144%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149146%_
             _%id149142%_
             '1
             '#f
             '#f))
          (let ((__tmp150229
                 (let ((__obj150161
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
                      __obj150161
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150161
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150161
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj150161)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149146%_
             __tmp150229
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self147407149002%_ _%id149004%_)
        (let* ((_%self149006%_ _%self147407149002%_)
               (_%self149008%_ _%self149006%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149008%_
             _%id149004%_
             '1
             '#f
             '#f))
          (let ((__tmp150230
                 (let ((__obj150162
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
                      __obj150162
                      _%id149004%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150162
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj150162)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self149008%_
             __tmp150230
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
      (lambda (_%self147408148862%_
               _%id148864%_
               _%slot148865%_
               _%checked?148866%_)
        (let* ((_%self148868%_ _%self147408148862%_)
               (_%self148870%_ _%self148868%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148870%_
             _%id148864%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148870%_
             _%slot148865%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148870%_
             _%checked?148866%_
             '4
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
                     (##unchecked-structure-set! __obj150163 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150163
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp150232 (cons _%id148864%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150163
                      __tmp150232
                      '3
                      '#f
                      '#f))
                   __obj150163)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148870%_
             __tmp150231
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self147409148722%_
               _%id148724%_
               _%slot148725%_
               _%checked?148726%_)
        (let* ((_%self148728%_ _%self147409148722%_)
               (_%self148730%_ _%self148728%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148730%_
             _%id148724%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148730%_
             _%slot148725%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148730%_
             _%checked?148726%_
             '4
             '#f
             '#f))
          (let ((__tmp150233
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
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150164
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp150234 (cons _%id148724%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150164
                      __tmp150234
                      '3
                      '#f
                      '#f))
                   __obj150164)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148730%_
             __tmp150233
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords148564%_
               _%signature148561148565%_
               _%self147410148567%_
               _%arity148569%_
               _%dispatch148570%_)
        (let* ((_%signature148572%_
                (if (eq? _%signature148561148565%_ absent-value)
                    '#f
                    _%signature148561148565%_))
               (_%self148574%_ _%self147410148567%_)
               (_%self148576%_ _%self148574%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self148576%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148576%_
             _%arity148569%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148576%_
             _%dispatch148570%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148576%_
             _%signature148572%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords148590%_ . _%args148591%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords148590%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords148590%_
                  'signature:
                  absent-value))
               _%args148591%_)))
    (define gxc#!lambda:::init!
      (lambda _%args148562148597%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args148562148597%_)))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords148403%_
               _%signature148400148404%_
               _%self147411148406%_
               _%clauses148408%_)
        (let* ((_%signature148410%_
                (if (eq? _%signature148400148404%_ absent-value)
                    '#f
                    _%signature148400148404%_))
               (_%self148412%_ _%self147411148406%_)
               (_%self148414%_ _%self148412%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self148414%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148414%_
             _%signature148410%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148414%_
             _%clauses148408%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords148428%_ . _%args148429%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords148428%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords148428%_
                  'signature:
                  absent-value))
               _%args148429%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args148401148435%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args148401148435%_)))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self147412148260%_ _%tab148262%_ _%dispatch148263%_)
        (let* ((_%self148265%_ _%self147412148260%_)
               (_%self148267%_ _%self148265%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self148267%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148267%_
             _%tab148262%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148267%_
             _%dispatch148263%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self147413148121%_ _%keys148123%_ _%main148124%_)
        (let* ((_%self148126%_ _%self147413148121%_)
               (_%self148128%_ _%self148126%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self148128%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148128%_
             _%keys148123%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self148128%_
             _%main148124%_
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
      (lambda (_%self147414147739%_ _%id147741%_)
        (let* ((_%self147743%_ _%self147414147739%_)
               (_%self147745%_ _%self147743%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147745%_
             _%id147741%_
             '1
             '#f
             '#f))
          (let ((__tmp150235
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
                     (##unchecked-structure-set!
                      __obj150165
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150165
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj150165
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj150165)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147745%_
             __tmp150235
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
      (lambda (_%klass147608%_)
        (let ((_%$e147610%_
               (##structure-ref _%klass147608%_ '11 gxc#!class::t '#f)))
          (if _%$e147610%_
              _%$e147610%_
              (let ((_%tab147614%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass147608%_
                 _%tab147614%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab147614%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass147599%_ _%method147600%_)
        (let ((_%tab147601147603%_
               (##structure-ref _%klass147599%_ '11 gxc#!class::t '#f)))
          (if _%tab147601147603%_
              (let ((_%tab147606%_ _%tab147601147603%_))
                (declare (not safe))
                (hash-get _%tab147606%_ _%method147600%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a147587%_ _%type-b147588%_)
        (if _%type-a147587%_
            (if _%type-b147588%_
                (let ((_%$e147590%_ (eq? _%type-a147587%_ _%type-b147588%_)))
                  (if _%$e147590%_
                      _%$e147590%_
                      (let ((_%$e147593%_
                             (eq? (##structure-ref
                                   _%type-b147588%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e147593%_
                            _%$e147593%_
                            (let ((_%$e147596%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a147587%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b147588%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e147596%_
                                  _%$e147596%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a147587%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b147588%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a147587%_
                                           _%type-b147588%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a147538%_ _%klass-b147539%_)
        (let ((_%$e147541%_
               (eq? (##structure-ref _%klass-a147538%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b147539%_ '1 gxc#!type::t '#f))))
          (if _%$e147541%_
              _%$e147541%_
              (let ((_%klass-id-b147544%_
                     (##structure-ref _%klass-b147539%_ '1 gxc#!type::t '#f))
                    (_%precedence-list147545%_
                     (##structure-ref _%klass-a147538%_ '3 gxc#!class::t '#f)))
                (let _%loop147547%_ ((_%rest147549%_
                                      _%precedence-list147545%_))
                  (let* ((_%rest147550147558%_ _%rest147549%_)
                         (_%else147552147566%_ (lambda () '#f))
                         (_%K147554147575%_
                          (lambda (_%rest147569%_ _%klass-name147570%_)
                            (let ((_%$e147572%_
                                   (eq? (let ((__tmp150236
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a147538%_
                                                            (cons _%klass-b147539%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name147570%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp150236
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b147544%_)))
                              (if _%$e147572%_
                                  _%$e147572%_
                                  (_%loop147547%_ _%rest147569%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest147550147558%_))
                        (let ((_%hd147555147578%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest147550147558%_)))
                              (_%tl147556147580%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest147550147558%_))))
                          (let* ((_%klass-name147583%_ _%hd147555147578%_)
                                 (_%rest147585%_ _%tl147556147580%_))
                            (_%K147554147575%_
                             _%rest147585%_
                             _%klass-name147583%_)))
                        (_%else147552147566%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type147536%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type147536%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (##structure-ref _%type147536%_ '3 gxc#!class::t '#f))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc147525%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc147525%_ 'gxc#!procedure::t))
            (let ((_%proc147528%_ _%proc147525%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc147528%_ '2 '#f '#f))
                  (let ((__tmp150237
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc147528%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp150237 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@374.11-374.15"
               'contract:
               '!procedure?
               'value:
               _%proc147525%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym147507%_ _%type147508%_ _%local?147509%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type147508%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym147507%_
                     _%type147508%_)))
        (let ((__tmp150238
               (let () (declare (not safe)) (struct->list _%type147508%_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym147507%_ '" " __tmp150238))
        (let ((_%table147511%_
               (if _%local?147509%_
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
          (hash-put! _%table147511%_ _%sym147507%_ _%type147508%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym147516%_ _%type147517%_)
        (let ((_%local?147519%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym147516%_
           _%type147517%_
           _%local?147519%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g150240_
        (let ((_g150239_ (let () (declare (not safe)) (##length _g150240_))))
          (cond ((let () (declare (not safe)) (##fx= _g150239_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g150240_))
                ((let () (declare (not safe)) (##fx= _g150239_ 3))
                 (apply gxc#optimizer-declare-type!__% _g150240_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g150240_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym147501%_ _%type147502%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type147502%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym147501%_
                     _%type147502%_)))
        (let ((_%table147504%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp150241
                 (let () (declare (not safe)) (struct->list _%type147502%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym147501%_ '" " __tmp150241))
          (let ()
            (declare (not safe))
            (hash-put! _%table147504%_ _%sym147501%_ _%type147502%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table147504%_ _%type147502%_ _%sym147501%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym147496%_ _%type147497%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type147497%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym147496%_
                     _%type147497%_)))
        (let ((_%table147499%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table147499%_ _%sym147496%_))
              '#!void
              (begin
                (let ((__tmp150242
                       (let ()
                         (declare (not safe))
                         (struct->list _%type147497%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym147496%_
                   '" "
                   __tmp150242))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table147499%_ _%sym147496%_ _%type147497%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table147499%_
                   _%type147497%_
                   _%sym147496%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym147494%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym147494%_))
        (let ((__tmp150243
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp150243 _%sym147494%_))
        (let ((__tmp150244
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp150244 _%sym147494%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t147462%_
               _%method147463%_
               _%sym147464%_
               _%rebind?147465%_)
        (let ((__tmp150245
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp150245 _%sym147464%_ '#t))
        (let ((_%klass147467%_ (gxc#optimizer-lookup-class _%type-t147462%_)))
          (if _%klass147467%_
              (let* ((_%vtab147469%_ (gxc#!class-method-table _%klass147467%_))
                     (_%$e147471%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab147469%_ _%method147463%_))))
                (if _%$e147471%_
                    ((lambda (_%existing147474%_)
                       (if _%rebind?147465%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t147462%_
                                '" "
                                _%method147463%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab147469%_
                                _%method147463%_
                                _%sym147464%_)))
                           (if (eq? _%existing147474%_ _%sym147464%_)
                               '#!void
                               (let ((__tmp150246
                                      (cons 'bind-method!
                                            (cons _%type-t147462%_
                                                  (cons _%method147463%_
                                                        (cons _%sym147464%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp150246
                                  _%method147463%_)))))
                     _%$e147471%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t147462%_
                         '" "
                         _%method147463%_
                         '" => "
                         _%sym147464%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab147469%_
                         _%method147463%_
                         _%sym147464%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t147462%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t147483%_ _%method147484%_ _%sym147485%_)
        (let ((_%rebind?147487%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t147483%_
           _%method147484%_
           _%sym147485%_
           _%rebind?147487%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g150248_
        (let ((_g150247_ (let () (declare (not safe)) (##length _g150248_))))
          (cond ((let () (declare (not safe)) (##fx= _g150247_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g150248_))
                ((let () (declare (not safe)) (##fx= _g150247_ 4))
                 (apply gxc#optimizer-declare-method!__% _g150248_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g150248_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym147450%_)
        (let ((_%$e147458%_
               (let ((_%ht147451147453%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-local-type))))
                 (if _%ht147451147453%_
                     (let ((_%ht147456%_ _%ht147451147453%_))
                       (declare (not safe))
                       (hash-get _%ht147456%_ _%sym147450%_))
                     '#f))))
          (if _%$e147458%_
              _%$e147458%_
              (let ((__tmp150249
                     (##structure-ref
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-optimizer-info))
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp150249 _%sym147450%_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym147442%_)
        (let ((_%type147443147445%_ (gxc#optimizer-lookup-type _%sym147442%_)))
          (if _%type147443147445%_
              (let ((_%type147448%_ _%type147443147445%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type147448%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (##structure-ref _%type147448%_ '1 gxc#!type::t '#f))
                    _%type147448%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym147438%_)
        (let ((_%table147440%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table147440%_ _%sym147438%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where147423%_ _%sym147424%_)
        (let ((_%$e147427%_ (gxc#optimizer-lookup-class _%sym147424%_)))
          (if _%$e147427%_
              ((lambda (_%g147429147431%_)
                 (let ((_%val147434%_ _%g147429147431%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val147434%_
                          'gxc#!class::t))
                       _%val147434%_
                       (let ()
                         (declare (not safe))
                         (error '"bad cast" gxc#!class::t _%val147434%_)))))
               _%$e147427%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where147423%_
                   _%sym147424%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass147421%_)
        (let ((__tmp150250
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp150250 _%klass147421%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t147418%_ _%method147419%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t147418%_)
         _%method147419%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym147416%_)
        (let ((__tmp150251
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp150251 _%sym147416%_))))))
