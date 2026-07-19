(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1784279017)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp218991 (list)) (__tmp218990 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp218991
         '(type classes ssxi methods)
         __tmp218990
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args218910%_
        (apply make-instance gxc#optimizer-info::t _%$args218910%_)))
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
      (lambda (_%self218897%_)
        (let ((_%self218900%_ _%self218897%_))
          (if (let ((__tmp218992
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self218900%_))))
                (declare (not safe))
                (##fx< '4 __tmp218992))
              (begin
                (let ((__tmp218993
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self218900%_
                   __tmp218993
                   '1
                   '#f
                   '#f))
                (let ((__tmp218994
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self218900%_
                   __tmp218994
                   '2
                   '#f
                   '#f))
                (let ((__tmp218995
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self218900%_
                   __tmp218995
                   '3
                   '#f
                   '#f))
                (let ((__tmp218996
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self218900%_
                   __tmp218996
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp218997
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self218900%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self218900%_
                       '4
                       __tmp218997))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp218999 (list))
            (__tmp218998
             (cons (cons 'struct: '#t) '((equal: . #t) (print: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp218999
         '(id)
         __tmp218998
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args218772%_
        (apply make-instance gxc#!type::t _%$args218772%_)))
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
      (let ((__tmp219001 (list gxc#!type::t))
            (__tmp219000 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp219001
         '()
         __tmp219000
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args218769%_
        (apply make-instance gxc#!abort::t _%$args218769%_)))
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
      (let ((__tmp219003 (list gxc#!type::t))
            (__tmp219002 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp219003
         '()
         __tmp219002
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args218766%_
        (apply make-instance gxc#!alias::t _%$args218766%_)))
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
      (let ((__tmp219005 (list))
            (__tmp219004
             (cons (cons 'final: '#t) '((equal: . #t) (print: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp219005
         '(return effect arguments unchecked origin)
         __tmp219004
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args218763%_
        (apply make-instance gxc#!signature::t _%$args218763%_)))
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
      (let ((__tmp219007 (list gxc#!type::t))
            (__tmp219006
             (cons (cons 'struct: '#t) '((equal: . #t) (print: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp219007
         '(signature)
         __tmp219006
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
      (lambda (_%id218750%_ _%signature218751%_)
        (let ((_%signature218754%_ _%signature218751%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id218750%_ _%signature218754%_))))
    (define gxc#make-!procedure
      (lambda (_%id218728%_ _%signature218730%_)
        (if (or (not _%signature218730%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%signature218730%_
                   'gxc#!signature::t)))
            (let ((_%signature218740%_ _%signature218730%_))
              (gxc#__make-!procedure _%id218728%_ _%signature218740%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature218730%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj218707%_ _%signature218708%_)
        (let* ((_%$obj218711%_ _%$obj218707%_)
               (_%signature218719%_ _%signature218708%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj218711%_
           _%signature218719%_
           '2
           '#f
           '#f))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj218674%_ _%signature218676%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj218674%_ 'gxc#!procedure::t))
            (let ((_%$obj218681%_ _%$obj218674%_))
              (if (or (not _%signature218676%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature218676%_
                         'gxc#!signature::t)))
                  (let ((_%signature218697%_ _%signature218676%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj218681%_
                     _%signature218697%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature218676%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj218674%_)
              '#!void))))
    (define gxc#!class-meta::t
      (let ((__tmp219009 (list gxc#!type::t))
            (__tmp219008 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp219009
         '(class)
         __tmp219008
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args218671%_
        (apply make-instance gxc#!class-meta::t _%$args218671%_)))
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
      (let ((__tmp219011 (list gxc#!type::t))
            (__tmp219010
             (cons (cons 'struct: '#t)
                   '((equal: . #t) (print: super precedence-list)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!class::t
         '!class
         __tmp219011
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp219010
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args218668%_
        (apply make-instance gxc#!class::t _%$args218668%_)))
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
      (let ((__tmp219013 (list gxc#!procedure::t))
            (__tmp219012 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp219013
         '()
         __tmp219012
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args218665%_
        (apply make-instance gxc#!predicate::t _%$args218665%_)))
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
      (let ((__tmp219015 (list gxc#!procedure::t))
            (__tmp219014 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp219015
         '()
         __tmp219014
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args218662%_
        (apply make-instance gxc#!constructor::t _%$args218662%_)))
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
      (let ((__tmp219017 (list gxc#!procedure::t))
            (__tmp219016 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp219017
         '(slot checked?)
         __tmp219016
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args218659%_
        (apply make-instance gxc#!accessor::t _%$args218659%_)))
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
      (let ((__tmp219019 (list gxc#!procedure::t))
            (__tmp219018 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp219019
         '(slot checked?)
         __tmp219018
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args218656%_
        (apply make-instance gxc#!mutator::t _%$args218656%_)))
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
      (let ((__tmp219021 (list gxc#!type::t))
            (__tmp219020 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp219021
         '(methods)
         __tmp219020
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args218653%_
        (apply make-instance gxc#!interface::t _%$args218653%_)))
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
      (let ((__tmp219023 (list gxc#!procedure::t))
            (__tmp219022 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp219023
         '(arity dispatch inline inline-typedecl)
         __tmp219022
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args218650%_
        (apply make-instance gxc#!lambda::t _%$args218650%_)))
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
      (let ((__tmp219025 (list gxc#!procedure::t))
            (__tmp219024 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp219025
         '(clauses)
         __tmp219024
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args218647%_
        (apply make-instance gxc#!case-lambda::t _%$args218647%_)))
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
      (let ((__tmp219027 (list gxc#!procedure::t))
            (__tmp219026 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp219027
         '(table dispatch)
         __tmp219026
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args218644%_
        (apply make-instance gxc#!kw-lambda::t _%$args218644%_)))
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
      (let ((__tmp219029 (list gxc#!procedure::t))
            (__tmp219028 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp219029
         '(keys main)
         __tmp219028
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args218641%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args218641%_)))
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
      (let ((__tmp219030 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp219030
         '()
         '((equal: . #t))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args218638%_
        (apply make-instance gxc#!primitive::t _%$args218638%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp219032 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp219031 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp219032
         '()
         __tmp219031
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args218635%_
        (apply make-instance gxc#!primitive-predicate::t _%$args218635%_)))
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
      (let ((__tmp219034 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp219033 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp219034
         '()
         __tmp219033
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args218632%_
        (apply make-instance gxc#!primitive-lambda::t _%$args218632%_)))
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
      (let ((__tmp219036 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp219035 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp219036
         '()
         __tmp219035
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args218629%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args218629%_)))
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
      (lambda (_%self218616%_)
        (let ((_%self218619%_ _%self218616%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self218619%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self218479%_ _%klass218480%_)
        (let ((_%self218483%_ _%self218479%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self218483%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self218483%_
             _%klass218480%_
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
      (lambda (_%self218169%_
               _%id218170%_
               _%super218171%_
               _%slots218172%_
               _%ctor-method218173%_
               _%struct?218174%_
               _%final?218175%_
               _%system?218176%_
               _%metaclass218177%_)
        (let ((_%self218180%_ _%self218169%_))
          (let _%lp218191%_ ((_%rest218193%_ _%super218171%_))
            (let* ((_%$%rest218194218202%_ _%rest218193%_)
                   (_%$%else218196218210%_ (lambda () '#!void))
                   (_%$%K218198218216%_
                    (lambda (_%rest218213%_ _%super-id218214%_)
                      (if (let ((__tmp219037
                                 (gxc#optimizer-resolve-class
                                  (list '!class _%id218170%_)
                                  _%super-id218214%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp219037 '8 '#f '#f))
                          (let ((__tmp219038 (list '!class _%id218170%_)))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp219038
                             _%super-id218214%_))
                          '#!void)
                      (_%lp218191%_ _%rest218213%_))))
              (if (pair? _%$%rest218194218202%_)
                  (let ((_%$%hd218199218219%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest218194218202%_)))
                        (_%$%tl218200218221%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest218194218202%_))))
                    (let* ((_%super-id218224%_ _%$%hd218199218219%_)
                           (_%rest218226%_ _%$%tl218200218221%_))
                      (_%$%K218198218216%_ _%rest218226%_ _%super-id218224%_)))
                  '#!void)))
          (let* ((_%ctor-method218277%_
                  (let ((_%$e218228%_ _%ctor-method218173%_))
                    (if _%$e218228%_
                        _%$e218228%_
                        (let _%lp218231%_ ((_%rest218233%_ _%super218171%_)
                                           (_%method218234%_ '#f))
                          (let* ((_%$%rest218235218243%_ _%rest218233%_)
                                 (_%$%else218237218251%_
                                  (lambda () _%method218234%_))
                                 (_%$%K218239218265%_
                                  (lambda (_%rest218254%_ _%super-id218255%_)
                                    (let* ((_%klass218257%_
                                            (gxc#optimizer-resolve-class
                                             (list '!class _%id218170%_)
                                             _%super-id218255%_))
                                           (_%$e218259%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass218257%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e218259%_
                                          (if _%method218234%_
                                              (if (eq? _%$e218259%_
                                                       _%method218234%_)
                                                  (_%lp218231%_
                                                   _%rest218254%_
                                                   _%$e218259%_)
                                                  (let ((__tmp219039
                                                         (list '!class
                                                               _%id218170%_)))
                                                    (declare (not safe))
                                                    (gxc#raise-compile-error
                                                     '"conflicting implicit constructor methods"
                                                     __tmp219039
                                                     _%method218234%_
                                                     _%$e218259%_)))
                                              (_%lp218231%_
                                               _%rest218254%_
                                               _%$e218259%_))
                                          (_%lp218231%_
                                           _%rest218254%_
                                           _%method218234%_))))))
                            (if (pair? _%$%rest218235218243%_)
                                (let ((_%$%hd218240218268%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%rest218235218243%_)))
                                      (_%$%tl218241218270%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%rest218235218243%_))))
                                  (let* ((_%super-id218273%_
                                          _%$%hd218240218268%_)
                                         (_%rest218275%_ _%$%tl218241218270%_))
                                    (_%$%K218239218265%_
                                     _%rest218275%_
                                     _%super-id218273%_)))
                                (_%$%else218237218251%_)))))))
                 (_g219040_
                  (let ((__tmp219044
                         (lambda (_%klass-id218279%_)
                           (cons _%klass-id218279%_
                                 (let ((__tmp219045
                                        (gxc#optimizer-resolve-class
                                         (list '!class _%id218170%_)
                                         _%klass-id218279%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp219045
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp219042
                         (lambda (_%klass-id218281%_)
                           (let ((__tmp219043
                                  (gxc#optimizer-resolve-class
                                   (list '!class _%id218170%_)
                                   _%klass-id218281%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp219043
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp219044
                     __tmp219042
                     eq?
                     identity
                     '()
                     _%super218171%_))))
            (begin
              (let ((_g219041_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g219040_)
                           (##values-length _g219040_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g219041_ 2)))
                    (error "Context expects 2 values" _g219041_)))
              (let ((_%precedence-list218283%_
                     (let () (declare (not safe)) (##values-ref _g219040_ 0)))
                    (_%base-struct218284%_
                     (let () (declare (not safe)) (##values-ref _g219040_ 1))))
                (let* ((_%precedence-list218328%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id218170%_ '(t object class)))
                            _%precedence-list218283%_
                            (if (memq 'object::t _%precedence-list218283%_)
                                _%precedence-list218283%_
                                (if _%system?218176%_
                                    (if (memq 't::t _%precedence-list218283%_)
                                        _%precedence-list218283%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list218283%_
                                           '(t::t))))
                                    (let _%loop218290%_ ((_%tail218292%_
                                                          _%precedence-list218283%_)
                                                         (_%head218293%_ '()))
                                      (let* ((_%$%tail218294218302%_
                                              _%tail218292%_)
                                             (_%$%else218296218310%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (foldl__0
                                                   cons
                                                   '(object::t t::t)
                                                   _%head218293%_))))
                                             (_%$%K218298218316%_
                                              (lambda (_%rest218313%_
                                                       _%hd218314%_)
                                                (if (eq? _%hd218314%_ 't::t)
                                                    (let ((__tmp219046
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail218292%_)))
              (declare (not safe))
              (foldl__0 cons __tmp219046 _%head218293%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop218290%_
                                                     _%rest218313%_
                                                     (cons _%hd218314%_
                                                           _%head218293%_))))))
                                        (if (pair? _%$%tail218294218302%_)
                                            (let ((_%$%hd218299218319%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%tail218294218302%_)))
                                                  (_%$%tl218300218321%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%tail218294218302%_))))
                                              (let* ((_%hd218324%_
                                                      _%$%hd218299218319%_)
                                                     (_%rest218326%_
                                                      _%$%tl218300218321%_))
                                                (_%$%K218298218316%_
                                                 _%rest218326%_
                                                 _%hd218324%_)))
                                            (_%$%else218296218310%_))))))))
                       (_%fields218330%_
                        (gxc#compute-class-fields
                         (list '!class _%id218170%_)
                         _%precedence-list218328%_
                         _%slots218172%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self218180%_
                     _%id218170%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self218180%_
                     _%super218171%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self218180%_
                     _%precedence-list218328%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self218180%_
                     _%slots218172%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self218180%_
                     _%fields218330%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self218180%_
                     _%ctor-method218277%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self218180%_
                     _%struct?218174%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self218180%_
                     _%final?218175%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self218180%_
                     _%metaclass218177%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self218333%_
               _%id218334%_
               _%super218335%_
               _%precedence-list218336%_
               _%slots218337%_
               _%fields218338%_
               _%constructor218339%_
               _%struct?218340%_
               _%final?218341%_
               _%system?218342%_
               _%metaclass218343%_
               _%methods218344%_)
        (let ((_%self218347%_ _%self218333%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self218347%_
             _%id218334%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self218347%_
             _%super218335%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self218347%_
             _%precedence-list218336%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self218347%_
             _%slots218337%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self218347%_
             _%fields218338%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self218347%_
             _%constructor218339%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self218347%_
             _%struct?218340%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self218347%_
             _%final?218341%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self218347%_
             _%metaclass218343%_
             '10
             '#f
             '#f))
          (if _%methods218344%_
              (let ((__tmp219047
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods218344%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self218347%_
                 __tmp219047
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g219048_
        (let ((_g219049_ (let () (declare (not safe)) (##length _g219048_))))
          (cond ((let () (declare (not safe)) (##fx= _g219049_ 9))
                 (apply gxc#!class:::init!__0 _g219048_))
                ((let () (declare (not safe)) (##fx= _g219049_ 12))
                 (apply gxc#!class:::init!__1 _g219048_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g219048_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where218038%_
               _%precedence-list218039%_
               _%direct-slots218040%_)
        (let ((__tmp219051
               (lambda (_%mixin218042%_)
                 (let ((__tmp219052
                        (gxc#optimizer-resolve-class
                         _%where218038%_
                         _%mixin218042%_)))
                   (declare (not safe))
                   (##unchecked-structure-ref __tmp219052 '5 '#f '#f))))
              (__tmp219050
               (lambda (_%slot-list218044%_ _%slot-table218045%_)
                 (cdr _%slot-list218044%_))))
          (declare (not safe))
          (c4-compute-class-slots
           _%precedence-list218039%_
           _%direct-slots218040%_
           __tmp219051
           __tmp219050))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass217997%_ _%slot217998%_)
        (let _%lp218000%_ ((_%rest218002%_
                            (##structure-ref
                             _%klass217997%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset218003%_ '1))
          (let* ((_%$%rest218004218012%_ _%rest218002%_)
                 (_%$%else218006218020%_
                  (lambda ()
                    (let ((__tmp219054
                           (##structure-ref
                            _%klass217997%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp219053
                           (##structure-ref
                            _%klass217997%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp219054
                       __tmp219053
                       _%slot217998%_))))
                 (_%$%K218008218026%_
                  (lambda (_%rest218023%_ _%s218024%_)
                    (if (eq? _%s218024%_ _%slot217998%_)
                        _%offset218003%_
                        (_%lp218000%_
                         _%rest218023%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset218003%_ '1)))))))
            (if (pair? _%$%rest218004218012%_)
                (let ((_%$%hd218009218029%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest218004218012%_)))
                      (_%$%tl218010218031%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest218004218012%_))))
                  (let* ((_%s218034%_ _%$%hd218009218029%_)
                         (_%rest218036%_ _%$%tl218010218031%_))
                    (_%$%K218008218026%_ _%rest218036%_ _%s218034%_)))
                (_%$%else218006218020%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass217955%_ _%slot217956%_)
        (if (gxc#!class-struct-slot? _%klass217955%_ _%slot217956%_)
            _%klass217955%_
            (let _%lp217958%_ ((_%rest217960%_
                                (##structure-ref
                                 _%klass217955%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%$%rest217961217969%_ _%rest217960%_)
                     (_%$%else217963217977%_ (lambda () '#f))
                     (_%$%K217965217985%_
                      (lambda (_%rest217980%_ _%super217981%_)
                        (let ((_%super-class217983%_
                               (gxc#optimizer-resolve-class
                                (list '!class-slot-find-struct
                                      (##structure-ref
                                       _%klass217955%_
                                       '1
                                       gxc#!type::t
                                       '#f)
                                      _%slot217956%_)
                                _%super217981%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class217983%_
                               _%slot217956%_)
                              _%super-class217983%_
                              (_%lp217958%_ _%rest217980%_))))))
                (if (pair? _%$%rest217961217969%_)
                    (let ((_%$%hd217966217988%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest217961217969%_)))
                          (_%$%tl217967217990%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest217961217969%_))))
                      (let* ((_%super217993%_ _%$%hd217966217988%_)
                             (_%rest217995%_ _%$%tl217967217990%_))
                        (_%$%K217965217985%_ _%rest217995%_ _%super217993%_)))
                    (_%$%else217963217977%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass217952%_ _%slot217953%_)
        (if (##structure-ref _%klass217952%_ '7 gxc#!class::t '#f)
            (memq _%slot217953%_
                  (##structure-ref _%klass217952%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self217937%_ _%id217938%_)
        (let ((_%self217941%_ _%self217937%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217941%_
             _%id217938%_
             '1
             '#f
             '#f))
          (let ((__tmp219055
                 (let ((__obj218985
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
                      __obj218985
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj218985
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj218985
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj218985)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217941%_
             __tmp219055
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self217800%_ _%id217801%_)
        (let ((_%self217804%_ _%self217800%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217804%_
             _%id217801%_
             '1
             '#f
             '#f))
          (let ((__tmp219056
                 (let ((__obj218986
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
                      __obj218986
                      _%id217801%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj218986
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj218986)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217804%_
             __tmp219056
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
      (lambda (_%self217661%_ _%id217662%_ _%slot217663%_ _%checked?217664%_)
        (let ((_%self217667%_ _%self217661%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217667%_
             _%id217662%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217667%_
             _%slot217663%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217667%_
             _%checked?217664%_
             '4
             '#f
             '#f))
          (let ((__tmp219057
                 (let ((__obj218987
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
                     (##unchecked-structure-set! __obj218987 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj218987
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp219058 (cons _%id217662%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj218987
                      __tmp219058
                      '3
                      '#f
                      '#f))
                   __obj218987)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217667%_
             __tmp219057
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self217522%_ _%id217523%_ _%slot217524%_ _%checked?217525%_)
        (let ((_%self217528%_ _%self217522%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217528%_
             _%id217523%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217528%_
             _%slot217524%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217528%_
             _%checked?217525%_
             '4
             '#f
             '#f))
          (let ((__tmp219059
                 (let ((__obj218988
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
                      __obj218988
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj218988
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp219060 (cons _%id217523%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj218988
                      __tmp219060
                      '3
                      '#f
                      '#f))
                   __obj218988)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217528%_
             __tmp219059
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords217366%_
               _%$%signature217363217367%_
               _%self217368%_
               _%arity217369%_
               _%dispatch217370%_)
        (let* ((_%signature217372%_
                (if (eq? _%$%signature217363217367%_ absent-value)
                    '#f
                    _%$%signature217363217367%_))
               (_%self217375%_ _%self217368%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self217375%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217375%_
             _%arity217369%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217375%_
             _%dispatch217370%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217375%_
             _%signature217372%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords217390%_ . _%args217391%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords217390%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords217390%_
                  'signature:
                  absent-value))
               _%args217391%_)))
    (define gxc#!lambda:::init!
      (lambda _%$%args217364217397%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%$%args217364217397%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords217207%_
               _%$%signature217204217208%_
               _%self217209%_
               _%clauses217210%_)
        (let* ((_%signature217212%_
                (if (eq? _%$%signature217204217208%_ absent-value)
                    '#f
                    _%$%signature217204217208%_))
               (_%self217215%_ _%self217209%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self217215%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217215%_
             _%signature217212%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217215%_
             _%clauses217210%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords217230%_ . _%args217231%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords217230%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords217230%_
                  'signature:
                  absent-value))
               _%args217231%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%$%args217205217237%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%$%args217205217237%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self217065%_ _%tab217066%_ _%dispatch217067%_)
        (let ((_%self217070%_ _%self217065%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self217070%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217070%_
             _%tab217066%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self217070%_
             _%dispatch217067%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self216927%_ _%keys216928%_ _%main216929%_)
        (let ((_%self216932%_ _%self216927%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self216932%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self216932%_
             _%keys216928%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self216932%_
             _%main216929%_
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
      (lambda (_%self216546%_ _%id216547%_)
        (let ((_%self216550%_ _%self216546%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self216550%_
             _%id216547%_
             '1
             '#f
             '#f))
          (let ((__tmp219061
                 (let ((__obj218989
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
                      __obj218989
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj218989
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj218989
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj218989)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self216550%_
             __tmp219061
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
      (lambda (_%klass216416%_)
        (let ((_%$e216418%_
               (##structure-ref _%klass216416%_ '11 gxc#!class::t '#f)))
          (if _%$e216418%_
              _%$e216418%_
              (let ((_%tab216422%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass216416%_
                 _%tab216422%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab216422%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass216408%_ _%method216409%_)
        (let ((_%$%tab216410216412%_
               (##structure-ref _%klass216408%_ '11 gxc#!class::t '#f)))
          (if _%$%tab216410216412%_
              (let ((_%tab216414%_ _%$%tab216410216412%_))
                (declare (not safe))
                (hash-get _%tab216414%_ _%method216409%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a216393%_ _%type-b216394%_)
        (if _%type-a216393%_
            (if _%type-b216394%_
                (let ((_%$e216396%_ (eq? _%type-a216393%_ _%type-b216394%_)))
                  (if _%$e216396%_
                      _%$e216396%_
                      (let ((_%$e216399%_
                             (eq? (##structure-ref
                                   _%type-b216394%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e216399%_
                            _%$e216399%_
                            (let ((_%$e216402%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a216393%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b216394%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e216402%_
                                  _%$e216402%_
                                  (let ((_%$e216405%_
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-instance-of?
                                                _%type-a216393%_
                                                'gxc#!class::t))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-instance-of?
                                                    _%type-b216394%_
                                                    'gxc#!class::t))
                                                 (gxc#!class-subclass?
                                                  _%type-a216393%_
                                                  _%type-b216394%_)
                                                 '#f)
                                             '#f)))
                                    (if _%$e216405%_
                                        _%$e216405%_
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%type-a216393%_
                                               'gxc#!interface::t))
                                            (eq? (##structure-ref
                                                  _%type-b216394%_
                                                  '1
                                                  gxc#!type::t
                                                  '#f)
                                                 'interface-descriptor::t)
                                            '#f)))))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a216344%_ _%klass-b216345%_)
        (let ((_%$e216347%_
               (eq? (##structure-ref _%klass-a216344%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b216345%_ '1 gxc#!type::t '#f))))
          (if _%$e216347%_
              _%$e216347%_
              (let ((_%klass-id-b216350%_
                     (##structure-ref _%klass-b216345%_ '1 gxc#!type::t '#f))
                    (_%precedence-list216351%_
                     (##structure-ref _%klass-a216344%_ '3 gxc#!class::t '#f)))
                (let _%loop216353%_ ((_%rest216355%_
                                      _%precedence-list216351%_))
                  (let* ((_%$%rest216356216364%_ _%rest216355%_)
                         (_%$%else216358216372%_ (lambda () '#f))
                         (_%$%K216360216381%_
                          (lambda (_%rest216375%_ _%klass-name216376%_)
                            (let ((_%$e216378%_
                                   (eq? (let ((__tmp219062
                                               (gxc#optimizer-resolve-class
                                                (list 'subclass?
                                                      _%klass-a216344%_
                                                      _%klass-b216345%_)
                                                _%klass-name216376%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp219062
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b216350%_)))
                              (if _%$e216378%_
                                  _%$e216378%_
                                  (_%loop216353%_ _%rest216375%_))))))
                    (if (pair? _%$%rest216356216364%_)
                        (let ((_%$%hd216361216384%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest216356216364%_)))
                              (_%$%tl216362216386%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest216356216364%_))))
                          (let* ((_%klass-name216389%_ _%$%hd216361216384%_)
                                 (_%rest216391%_ _%$%tl216362216386%_))
                            (_%$%K216360216381%_
                             _%rest216391%_
                             _%klass-name216389%_)))
                        (_%$%else216358216372%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type216342%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type216342%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type216342%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc216331%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc216331%_ 'gxc#!procedure::t))
            (let ((_%proc216334%_ _%proc216331%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc216334%_ '2 '#f '#f))
                  (let ((__tmp219063
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc216334%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp219063 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@365.11-365.15"
               'contract:
               '!procedure?
               'value:
               _%proc216331%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym216313%_ _%type216314%_ _%local?216315%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type216314%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym216313%_
                     _%type216314%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym216313%_ '" " _%type216314%_))
        (let ((_%table216317%_
               (if _%local?216315%_
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
          (hash-put! _%table216317%_ _%sym216313%_ _%type216314%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym216322%_ _%type216323%_)
        (let ((_%local?216325%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym216322%_
           _%type216323%_
           _%local?216325%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g219064_
        (let ((_g219065_ (let () (declare (not safe)) (##length _g219064_))))
          (cond ((let () (declare (not safe)) (##fx= _g219065_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g219064_))
                ((let () (declare (not safe)) (##fx= _g219065_ 3))
                 (apply gxc#optimizer-declare-type!__% _g219064_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g219064_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym216307%_ _%type216308%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type216308%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym216307%_
                     _%type216308%_)))
        (let ((_%table216310%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp219066
                 (let () (declare (not safe)) (struct->list _%type216308%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym216307%_ '" " __tmp219066))
          (let ()
            (declare (not safe))
            (hash-put! _%table216310%_ _%sym216307%_ _%type216308%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table216310%_ _%type216308%_ _%sym216307%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym216302%_ _%type216303%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type216303%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym216302%_
                     _%type216303%_)))
        (let ((_%table216305%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table216305%_ _%sym216302%_))
              '#!void
              (begin
                (let ((__tmp219067
                       (let ()
                         (declare (not safe))
                         (struct->list _%type216303%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym216302%_
                   '" "
                   __tmp219067))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table216305%_ _%sym216302%_ _%type216303%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table216305%_
                   _%type216303%_
                   _%sym216302%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym216300%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym216300%_))
        (let ((__tmp219068
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp219068 _%sym216300%_))
        (let ((__tmp219069
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp219069 _%sym216300%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t216268%_
               _%method216269%_
               _%sym216270%_
               _%rebind?216271%_)
        (let ((__tmp219070
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp219070 _%sym216270%_ '#t))
        (let ((_%klass216273%_ (gxc#optimizer-lookup-class _%type-t216268%_)))
          (if _%klass216273%_
              (let* ((_%vtab216275%_ (gxc#!class-method-table _%klass216273%_))
                     (_%$e216277%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab216275%_ _%method216269%_))))
                (if _%$e216277%_
                    (if _%rebind?216271%_
                        (let ()
                          (let ()
                            (declare (not safe))
                            (gxc#verbose
                             '"declare-method: rebind existing method"
                             _%type-t216268%_
                             '" "
                             _%method216269%_))
                          (let ()
                            (declare (not safe))
                            (hash-put!
                             _%vtab216275%_
                             _%method216269%_
                             _%sym216270%_)))
                        (if (eq? _%$e216277%_ _%sym216270%_)
                            '#!void
                            (let ((__tmp219071
                                   (list 'bind-method!
                                         _%type-t216268%_
                                         _%method216269%_
                                         _%sym216270%_)))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"declare-method: duplicate method declaration"
                               __tmp219071
                               _%method216269%_))))
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t216268%_
                         '" "
                         _%method216269%_
                         '" => "
                         _%sym216270%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab216275%_
                         _%method216269%_
                         _%sym216270%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t216268%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t216289%_ _%method216290%_ _%sym216291%_)
        (let ((_%rebind?216293%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t216289%_
           _%method216290%_
           _%sym216291%_
           _%rebind?216293%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g219072_
        (let ((_g219073_ (let () (declare (not safe)) (##length _g219072_))))
          (cond ((let () (declare (not safe)) (##fx= _g219073_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g219072_))
                ((let () (declare (not safe)) (##fx= _g219073_ 4))
                 (apply gxc#optimizer-declare-method!__% _g219072_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g219072_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym216254%_)
        (let ((_%$e216256%_
               (let ((__tmp219074
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym216254%_ __tmp219074))))
          (if _%$e216256%_
              _%$e216256%_
              (let ((_%$e216264%_
                     (let ((_%$%ht216258216260%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%$%ht216258216260%_
                           (let ((_%ht216262%_ _%$%ht216258216260%_))
                             (declare (not safe))
                             (hash-get _%ht216262%_ _%sym216254%_))
                           '#f))))
                (if _%$e216264%_
                    _%$e216264%_
                    (let ((__tmp219075
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp219075 _%sym216254%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym216247%_)
        (let ((_%$%type216248216250%_
               (gxc#optimizer-lookup-type _%sym216247%_)))
          (if _%$%type216248216250%_
              (let ((_%type216252%_ _%$%type216248216250%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type216252%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type216252%_ '1 '#f '#f)))
                    _%type216252%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym216243%_)
        (let ((_%table216245%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table216245%_ _%sym216243%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where216228%_ _%sym216229%_)
        (let ((_%$e216232%_ (gxc#optimizer-lookup-class _%sym216229%_)))
          (if _%$e216232%_
              (let ((_%val216239%_ _%$e216232%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%val216239%_ 'gxc#!class::t))
                    _%val216239%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/compiler/optimize-base
                       'contract:
                       '(!class? val)
                       'value:
                       _%val216239%_)
                      '#!void)))
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where216228%_
                   _%sym216229%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass216226%_)
        (let ((__tmp219076
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp219076 _%klass216226%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t216223%_ _%method216224%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t216223%_)
         _%method216224%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym216221%_)
        (let ((__tmp219077
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp219077 _%sym216221%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e215696%_
                  (lambda (_%t216162%_)
                    (if (symbol? _%t216162%_)
                        (_%type-e215696%_
                         (gxc#optimizer-lookup-type _%t216162%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t216162%_
                               'gxc#!lambda::t))
                            (let* ((_%t216166%_ _%t216162%_)
                                   (_%t216170%_ _%t216166%_))
                              (_%__lambda-type215822%_ _%t216170%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t216162%_
                                   'gxc#!kw-lambda::t))
                                (let* ((_%t216182%_ _%t216162%_)
                                       (_%t216186%_ _%t216182%_))
                                  (_%__kw-lambda-type215945%_ _%t216186%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t216162%_
                                       'gxc#!kw-lambda-primary::t))
                                    (let* ((_%t216197%_ _%t216162%_)
                                           (_%t216201%_ _%t216197%_))
                                      (_%__kw-lambda-primary-type216068%_
                                       _%t216201%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t216162%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t216212%_ _%t216162%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t216212%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp219078
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t216212%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp219078
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t216162%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t216162%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%__lambda-type215822%_
                  (lambda (_%t216150%_)
                    (let ((_%t216153%_ _%t216150%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t216153%_ '4 '#f '#f))
                          (_%type-e215696%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t216153%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t216153%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp219079
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t216153%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp219079
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%lambda-type215823%_
                  (lambda (_%t216138%_)
                    (let ((_%t216141%_ _%t216138%_))
                      (_%__lambda-type215822%_ _%t216141%_))))
                 (_%__kw-lambda-type215945%_
                  (lambda (_%t216126%_)
                    (let ((_%t216129%_ _%t216126%_))
                      (_%type-e215696%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t216129%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-type215946%_
                  (lambda (_%t216114%_)
                    (let ((_%t216117%_ _%t216114%_))
                      (_%__kw-lambda-type215945%_ _%t216117%_))))
                 (_%__kw-lambda-primary-type216068%_
                  (lambda (_%t216102%_)
                    (let ((_%t216105%_ _%t216102%_))
                      (_%type-e215696%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t216105%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type216069%_
                  (lambda (_%t216090%_)
                    (let ((_%t216093%_ _%t216090%_))
                      (_%__kw-lambda-primary-type216068%_ _%t216093%_)))))
          (let* ((_%ht1216071%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2216073%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result216075%_
                  (if _%ht1216071%_
                      (let () (declare (not safe)) (hash->list _%ht1216071%_))
                      '()))
                 (_%result216077%_
                  (if _%ht2216073%_
                      (let ((__tmp219080
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2216073%_))))
                        (declare (not safe))
                        (foldl__0 cons _%result216075%_ __tmp219080))
                      _%result216075%_)))
            (for-each
             (lambda (_%p216080%_)
               (let* ((_%t216082%_ (cdr _%p216080%_))
                      (_%tr216084%_ (_%type-e215696%_ _%t216082%_)))
                 (set-cdr! _%p216080%_ _%tr216084%_)))
             _%result216077%_)
            (list-sort
             (lambda (_%a216087%_ _%b216088%_)
               (let ((__tmp219082 (symbol->string (car _%a216087%_)))
                     (__tmp219081 (symbol->string (car _%b216088%_))))
                 (declare (not safe))
                 (##string<? __tmp219082 __tmp219081)))
             _%result216077%_)))))))
