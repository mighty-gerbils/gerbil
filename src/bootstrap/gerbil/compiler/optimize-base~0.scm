(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1712697257)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#optimizer-info::t
      (let ((__tmp147997 (list)) (__tmp147996 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp147997
         '(type classes ssxi methods)
         __tmp147996
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args147968%_
        (apply make-instance gxc#optimizer-info::t _%$args147968%_)))
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
      (lambda (_%self147955%_)
        (let ((_%self147958%_ _%self147955%_))
          (if (let ((__tmp147998
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self147958%_))))
                (declare (not safe))
                (##fx< '4 __tmp147998))
              (begin
                (let ((__tmp147999
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self147958%_
                   __tmp147999
                   '1
                   '#f
                   '#f))
                (let ((__tmp148000
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self147958%_
                   __tmp148000
                   '2
                   '#f
                   '#f))
                (let ((__tmp148001
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self147958%_
                   __tmp148001
                   '3
                   '#f
                   '#f))
                (let ((__tmp148002
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self147958%_
                   __tmp148002
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp148003
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self147958%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self147958%_
                       '4
                       __tmp148003))))))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp148005 (list))
            (__tmp148004
             (cons (cons 'struct: '#t) '((equal: id) (print: id)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp148005
         '(id)
         __tmp148004
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args147830%_
        (apply make-instance gxc#!type::t _%$args147830%_)))
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
      (let ((__tmp148007 (list gxc#!type::t))
            (__tmp148006 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp148007
         '()
         __tmp148006
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args147827%_
        (apply make-instance gxc#!abort::t _%$args147827%_)))
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
      (let ((__tmp148009 (list gxc#!type::t))
            (__tmp148008 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp148009
         '()
         __tmp148008
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args147824%_
        (apply make-instance gxc#!alias::t _%$args147824%_)))
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
      (let ((__tmp148011 (list))
            (__tmp148010
             (cons (cons 'final: '#t)
                   '((equal: return effect arguments unchecked origin)
                     (print: return effect arguments unchecked origin)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp148011
         '(return effect arguments unchecked origin)
         __tmp148010
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args147821%_
        (apply make-instance gxc#!signature::t _%$args147821%_)))
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
      (let ((__tmp148013 (list gxc#!type::t))
            (__tmp148012
             (cons (cons 'struct: '#t)
                   '((equal: signature) (print: signature)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp148013
         '(signature)
         __tmp148012
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
      (lambda (_%id147800%_ _%signature147801%_)
        (if ((lambda (_%$obj147804%_)
               (or (not _%$obj147804%_)
                   (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%$obj147804%_
                      'gxc#!signature::t))))
             _%signature147801%_)
            (let ((_%signature147811%_ _%signature147801%_))
              (gxc#__make-!procedure _%id147800%_ _%signature147811%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature147801%_)
              '#!void))))
    (define gxc#__make-!procedure
      (lambda (_%id147786%_ _%signature147788%_)
        (let ((_%signature147791%_ _%signature147788%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id147786%_ _%signature147791%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj147755%_ _%signature147756%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj147755%_ 'gxc#!procedure::t))
            (let ((_%$obj147760%_ _%$obj147755%_))
              (if ((lambda (_%$obj147769%_)
                     (or (not _%$obj147769%_)
                         (let ()
                           (declare (not safe))
                           (##structure-direct-instance-of?
                            _%$obj147769%_
                            'gxc#!signature::t))))
                   _%signature147756%_)
                  (let ((_%signature147776%_ _%signature147756%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj147760%_
                     _%signature147776%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature147756%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj147755%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj147732%_ _%signature147734%_)
        (let* ((_%$obj147738%_ _%$obj147732%_)
               (_%signature147746%_ _%signature147734%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj147738%_
           _%signature147746%_
           '2
           '#f
           '#f))))
    (define gxc#!class-meta::t
      (let ((__tmp148015 (list gxc#!type::t))
            (__tmp148014 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp148015
         '(class)
         __tmp148014
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args147729%_
        (apply make-instance gxc#!class-meta::t _%$args147729%_)))
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
      (let ((__tmp148017 (list gxc#!type::t))
            (__tmp148016
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
         __tmp148017
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp148016
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args147726%_
        (apply make-instance gxc#!class::t _%$args147726%_)))
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
      (let ((__tmp148019 (list gxc#!procedure::t))
            (__tmp148018 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp148019
         '()
         __tmp148018
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args147723%_
        (apply make-instance gxc#!predicate::t _%$args147723%_)))
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
      (let ((__tmp148021 (list gxc#!procedure::t))
            (__tmp148020 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp148021
         '()
         __tmp148020
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args147720%_
        (apply make-instance gxc#!constructor::t _%$args147720%_)))
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
      (let ((__tmp148023 (list gxc#!procedure::t))
            (__tmp148022 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp148023
         '(slot checked?)
         __tmp148022
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args147717%_
        (apply make-instance gxc#!accessor::t _%$args147717%_)))
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
      (let ((__tmp148025 (list gxc#!procedure::t))
            (__tmp148024 (cons (cons 'struct: '#t) '((equal: slot checked?)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp148025
         '(slot checked?)
         __tmp148024
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args147714%_
        (apply make-instance gxc#!mutator::t _%$args147714%_)))
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
      (let ((__tmp148027 (list gxc#!type::t))
            (__tmp148026 (cons (cons 'struct: '#t) '((equal: methods)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp148027
         '(methods)
         __tmp148026
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args147711%_
        (apply make-instance gxc#!interface::t _%$args147711%_)))
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
      (let ((__tmp148029 (list gxc#!procedure::t))
            (__tmp148028
             (cons (cons 'struct: '#t)
                   '((equal: arity dispatch inline inline-typedecl)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp148029
         '(arity dispatch inline inline-typedecl)
         __tmp148028
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args147708%_
        (apply make-instance gxc#!lambda::t _%$args147708%_)))
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
      (let ((__tmp148031 (list gxc#!procedure::t))
            (__tmp148030 (cons (cons 'struct: '#t) '((equal: clauses)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp148031
         '(clauses)
         __tmp148030
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args147705%_
        (apply make-instance gxc#!case-lambda::t _%$args147705%_)))
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
      (let ((__tmp148033 (list gxc#!procedure::t))
            (__tmp148032 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp148033
         '(table dispatch)
         __tmp148032
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args147702%_
        (apply make-instance gxc#!kw-lambda::t _%$args147702%_)))
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
      (let ((__tmp148035 (list gxc#!procedure::t))
            (__tmp148034 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp148035
         '(keys main)
         __tmp148034
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args147699%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args147699%_)))
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
      (let ((__tmp148036 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp148036
         '()
         '()
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args147696%_
        (apply make-instance gxc#!primitive::t _%$args147696%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp148038 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp148037 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp148038
         '()
         __tmp148037
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args147693%_
        (apply make-instance gxc#!primitive-predicate::t _%$args147693%_)))
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
      (let ((__tmp148040 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp148039 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp148040
         '()
         __tmp148039
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args147690%_
        (apply make-instance gxc#!primitive-lambda::t _%$args147690%_)))
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
      (let ((__tmp148042 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp148041 (cons (cons 'struct: '#t) '((equal:)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp148042
         '()
         __tmp148041
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args147687%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args147687%_)))
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
      (lambda (_%self147674%_)
        (let ((_%self147677%_ _%self147674%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self147677%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self147538%_ _%klass147539%_)
        (let ((_%self147542%_ _%self147538%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self147542%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147542%_
             _%klass147539%_
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class-meta::t ':init! gxc#!class-meta:::init! '#f))
    (define gxc#!class:::init!__0
      (lambda (_%self147230%_
               _%id147231%_
               _%super147232%_
               _%slots147233%_
               _%ctor-method147234%_
               _%struct?147235%_
               _%final?147236%_
               _%system?147237%_
               _%metaclass147238%_)
        (let ((_%self147241%_ _%self147230%_))
          (let _%lp147251%_ ((_%rest147253%_ _%super147232%_))
            (let* ((_%rest147254147262%_ _%rest147253%_)
                   (_%else147256147270%_ (lambda () '#!void))
                   (_%K147258147276%_
                    (lambda (_%rest147273%_ _%super-id147274%_)
                      (if (let ((__tmp148043
                                 (gxc#optimizer-resolve-class
                                  (cons '!class (cons _%id147231%_ '()))
                                  _%super-id147274%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp148043 '8 '#f '#f))
                          (let ((__tmp148044
                                 (cons '!class (cons _%id147231%_ '()))))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp148044
                             _%super-id147274%_))
                          '#!void)
                      (_%lp147251%_ _%rest147273%_))))
              (if (let () (declare (not safe)) (##pair? _%rest147254147262%_))
                  (let ((_%hd147259147279%_
                         (let ()
                           (declare (not safe))
                           (##car _%rest147254147262%_)))
                        (_%tl147260147281%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%rest147254147262%_))))
                    (let* ((_%super-id147284%_ _%hd147259147279%_)
                           (_%rest147286%_ _%tl147260147281%_))
                      (_%K147258147276%_ _%rest147286%_ _%super-id147284%_)))
                  '#!void)))
          (let* ((_%ctor-method147337%_
                  (let ((_%$e147288%_ _%ctor-method147234%_))
                    (if _%$e147288%_
                        _%$e147288%_
                        (let _%lp147291%_ ((_%rest147293%_ _%super147232%_)
                                           (_%method147294%_ '#f))
                          (let* ((_%rest147295147303%_ _%rest147293%_)
                                 (_%else147297147311%_
                                  (lambda () _%method147294%_))
                                 (_%K147299147325%_
                                  (lambda (_%rest147314%_ _%super-id147315%_)
                                    (let* ((_%klass147317%_
                                            (gxc#optimizer-resolve-class
                                             (cons '!class
                                                   (cons _%id147231%_ '()))
                                             _%super-id147315%_))
                                           (_%$e147319%_
                                            (##structure-ref
                                             _%klass147317%_
                                             '6
                                             gxc#!class::t
                                             '#f)))
                                      (if _%$e147319%_
                                          ((lambda (_%ctor-method147322%_)
                                             (if _%method147294%_
                                                 (if (eq? _%ctor-method147322%_
                                                          _%method147294%_)
                                                     (_%lp147291%_
                                                      _%rest147314%_
                                                      _%ctor-method147322%_)
                                                     (let ((__tmp148045
                                                            (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%id147231%_ '()))))
               (declare (not safe))
               (gxc#raise-compile-error
                '"conflicting implicit constructor methods"
                __tmp148045
                _%method147294%_
                _%ctor-method147322%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%lp147291%_
                                                  _%rest147314%_
                                                  _%ctor-method147322%_)))
                                           _%$e147319%_)
                                          (_%lp147291%_
                                           _%rest147314%_
                                           _%method147294%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest147295147303%_))
                                (let ((_%hd147300147328%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest147295147303%_)))
                                      (_%tl147301147330%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest147295147303%_))))
                                  (let* ((_%super-id147333%_
                                          _%hd147300147328%_)
                                         (_%rest147335%_ _%tl147301147330%_))
                                    (_%K147299147325%_
                                     _%rest147335%_
                                     _%super-id147333%_)))
                                (_%else147297147311%_)))))))
                 (_g148046_
                  (let ((__tmp148050
                         (lambda (_%klass-id147339%_)
                           (cons _%klass-id147339%_
                                 (let ((__tmp148051
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id147231%_ '()))
                                         _%klass-id147339%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp148051
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp148048
                         (lambda (_%klass-id147341%_)
                           (let ((__tmp148049
                                  (gxc#optimizer-resolve-class
                                   (cons '!class (cons _%id147231%_ '()))
                                   _%klass-id147341%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp148049
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp148050
                     __tmp148048
                     eq?
                     identity
                     '()
                     _%super147232%_))))
            (begin
              (let ((_g148047_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g148046_)
                           (##vector-length _g148046_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g148047_ 2)))
                    (error "Context expects 2 values" _g148047_)))
              (let ((_%precedence-list147343%_
                     (let () (declare (not safe)) (##vector-ref _g148046_ 0)))
                    (_%base-struct147344%_
                     (let () (declare (not safe)) (##vector-ref _g148046_ 1))))
                (let* ((_%precedence-list147388%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id147231%_ '(t object class)))
                            _%precedence-list147343%_
                            (if (memq 'object::t _%precedence-list147343%_)
                                _%precedence-list147343%_
                                (if _%system?147237%_
                                    (if (memq 't::t _%precedence-list147343%_)
                                        _%precedence-list147343%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list147343%_
                                           '(t::t))))
                                    (let _%loop147350%_ ((_%tail147352%_
                                                          _%precedence-list147343%_)
                                                         (_%head147353%_ '()))
                                      (let* ((_%tail147354147362%_
                                              _%tail147352%_)
                                             (_%else147356147370%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__foldl1
                                                   cons
                                                   '(object::t t::t)
                                                   _%head147353%_))))
                                             (_%K147358147376%_
                                              (lambda (_%rest147373%_
                                                       _%hd147374%_)
                                                (if (eq? _%hd147374%_ 't::t)
                                                    (let ((__tmp148052
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail147352%_)))
              (declare (not safe))
              (__foldl1 cons __tmp148052 _%head147353%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop147350%_
                                                     _%rest147373%_
                                                     (cons _%hd147374%_
                                                           _%head147353%_))))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tail147354147362%_))
                                            (let ((_%hd147359147379%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tail147354147362%_)))
                                                  (_%tl147360147381%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tail147354147362%_))))
                                              (let* ((_%hd147384%_
                                                      _%hd147359147379%_)
                                                     (_%rest147386%_
                                                      _%tl147360147381%_))
                                                (_%K147358147376%_
                                                 _%rest147386%_
                                                 _%hd147384%_)))
                                            (_%else147356147370%_))))))))
                       (_%fields147390%_
                        (gxc#compute-class-fields
                         (cons '!class (cons _%id147231%_ '()))
                         _%base-struct147344%_
                         _%precedence-list147388%_
                         _%slots147233%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147241%_
                     _%id147231%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147241%_
                     _%super147232%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147241%_
                     _%precedence-list147388%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147241%_
                     _%slots147233%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147241%_
                     _%fields147390%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147241%_
                     _%ctor-method147337%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147241%_
                     _%struct?147235%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147241%_
                     _%final?147236%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self147241%_
                     _%metaclass147238%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self147393%_
               _%id147394%_
               _%super147395%_
               _%precedence-list147396%_
               _%slots147397%_
               _%fields147398%_
               _%constructor147399%_
               _%struct?147400%_
               _%final?147401%_
               _%system?147402%_
               _%metaclass147403%_
               _%methods147404%_)
        (let ((_%self147407%_ _%self147393%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147407%_
             _%id147394%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147407%_
             _%super147395%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147407%_
             _%precedence-list147396%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147407%_
             _%slots147397%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147407%_
             _%fields147398%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147407%_
             _%constructor147399%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147407%_
             _%struct?147400%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147407%_
             _%final?147401%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self147407%_
             _%metaclass147403%_
             '10
             '#f
             '#f))
          (if _%methods147404%_
              (let ((__tmp148053
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods147404%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self147407%_
                 __tmp148053
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g148055_
        (let ((_g148054_ (let () (declare (not safe)) (##length _g148055_))))
          (cond ((let () (declare (not safe)) (##fx= _g148054_ 9))
                 (apply gxc#!class:::init!__0 _g148055_))
                ((let () (declare (not safe)) (##fx= _g148054_ 12))
                 (apply gxc#!class:::init!__1 _g148055_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g148055_))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where147082%_
               _%base-struct147083%_
               _%precedence-list147084%_
               _%direct-slots147085%_)
        (let* ((_%base-fields147087%_
                (if _%base-struct147083%_
                    (let ((__tmp148056
                           (gxc#optimizer-resolve-class
                            _%where147082%_
                            _%base-struct147083%_)))
                      (declare (not safe))
                      (##unchecked-structure-ref __tmp148056 '5 '#f '#f))
                    '()))
               (_%r-fields147089%_ (reverse _%base-fields147087%_))
               (_%seen-slots147097%_
                (let ((_%tab147091%_
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (for-each
                   (lambda (_%g147092147094%_)
                     (let ()
                       (declare (not safe))
                       (hash-put! _%tab147091%_ _%g147092147094%_ '#t)))
                   _%base-fields147087%_)
                  _%tab147091%_))
               (_%process-slot147101%_
                (lambda (_%slot147099%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%seen-slots147097%_ _%slot147099%_))
                      '#!void
                      (begin
                        (let ()
                          (declare (not safe))
                          (hash-put! _%seen-slots147097%_ _%slot147099%_ '#t))
                        (set! _%r-fields147089%_
                              (cons _%slot147099%_ _%r-fields147089%_)))))))
          (for-each
           (lambda (_%mixin147104%_)
             (let ((_%klass147106%_
                    (gxc#optimizer-resolve-class
                     _%where147082%_
                     _%mixin147104%_)))
               (if (##structure-ref _%klass147106%_ '7 gxc#!class::t '#f)
                   '#!void
                   (for-each
                    _%process-slot147101%_
                    (##structure-ref _%klass147106%_ '5 gxc#!class::t '#f)))))
           _%precedence-list147084%_)
          (for-each _%process-slot147101%_ _%direct-slots147085%_)
          (let () (declare (not safe)) (##reverse _%r-fields147089%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass147041%_ _%slot147042%_)
        (let _%lp147044%_ ((_%rest147046%_
                            (##structure-ref
                             _%klass147041%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset147047%_ '1))
          (let* ((_%rest147048147056%_ _%rest147046%_)
                 (_%else147050147064%_
                  (lambda ()
                    (let ((__tmp148058
                           (##structure-ref
                            _%klass147041%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp148057
                           (##structure-ref
                            _%klass147041%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp148058
                       __tmp148057
                       _%slot147042%_))))
                 (_%K147052147070%_
                  (lambda (_%rest147067%_ _%s147068%_)
                    (if (eq? _%s147068%_ _%slot147042%_)
                        _%offset147047%_
                        (_%lp147044%_
                         _%rest147067%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset147047%_ '1)))))))
            (if (let () (declare (not safe)) (##pair? _%rest147048147056%_))
                (let ((_%hd147053147073%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest147048147056%_)))
                      (_%tl147054147075%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest147048147056%_))))
                  (let* ((_%s147078%_ _%hd147053147073%_)
                         (_%rest147080%_ _%tl147054147075%_))
                    (_%K147052147070%_ _%rest147080%_ _%s147078%_)))
                (_%else147050147064%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass146999%_ _%slot147000%_)
        (if (gxc#!class-struct-slot? _%klass146999%_ _%slot147000%_)
            _%klass146999%_
            (let _%lp147002%_ ((_%rest147004%_
                                (##structure-ref
                                 _%klass146999%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%rest147005147013%_ _%rest147004%_)
                     (_%else147007147021%_ (lambda () '#f))
                     (_%K147009147029%_
                      (lambda (_%rest147024%_ _%super147025%_)
                        (let ((_%super-class147027%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (##structure-ref
                                             _%klass146999%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            (cons _%slot147000%_ '())))
                                _%super147025%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class147027%_
                               _%slot147000%_)
                              _%super-class147027%_
                              (_%lp147002%_ _%rest147024%_))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest147005147013%_))
                    (let ((_%hd147010147032%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest147005147013%_)))
                          (_%tl147011147034%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest147005147013%_))))
                      (let* ((_%super147037%_ _%hd147010147032%_)
                             (_%rest147039%_ _%tl147011147034%_))
                        (_%K147009147029%_ _%rest147039%_ _%super147037%_)))
                    (_%else147007147021%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass146996%_ _%slot146997%_)
        (if (##structure-ref _%klass146996%_ '7 gxc#!class::t '#f)
            (memq _%slot146997%_
                  (##structure-ref _%klass146996%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self146982%_ _%id146983%_)
        (let ((_%self146986%_ _%self146982%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146986%_
             _%id146983%_
             '1
             '#f
             '#f))
          (let ((__tmp148059
                 (let ((__obj147991
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
                      __obj147991
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj147991
                      '(pure predicate)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj147991
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj147991)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146986%_
             __tmp148059
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
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
          (let ((__tmp148060
                 (let ((__obj147992
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
                      __obj147992
                      _%id146847%_
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj147992
                      '(alloc)
                      '2
                      '#f
                      '#f))
                   __obj147992)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146850%_
             __tmp148060
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
      (lambda (_%self146708%_ _%id146709%_ _%slot146710%_ _%checked?146711%_)
        (let ((_%self146714%_ _%self146708%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146714%_
             _%id146709%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146714%_
             _%slot146710%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146714%_
             _%checked?146711%_
             '4
             '#f
             '#f))
          (let ((__tmp148061
                 (let ((__obj147993
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
                     (##unchecked-structure-set! __obj147993 't::t '1 '#f '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj147993
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp148062 (cons _%id146709%_ '())))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj147993
                      __tmp148062
                      '3
                      '#f
                      '#f))
                   __obj147993)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146714%_
             __tmp148061
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self146570%_ _%id146571%_ _%slot146572%_ _%checked?146573%_)
        (let ((_%self146576%_ _%self146570%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146576%_
             _%id146571%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146576%_
             _%slot146572%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146576%_
             _%checked?146573%_
             '4
             '#f
             '#f))
          (let ((__tmp148063
                 (let ((__obj147994
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
                      __obj147994
                      'void::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj147994
                      '(mut)
                      '2
                      '#f
                      '#f))
                   (let ((__tmp148064 (cons _%id146571%_ (cons 't::t '()))))
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj147994
                      __tmp148064
                      '3
                      '#f
                      '#f))
                   __obj147994)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146576%_
             __tmp148063
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords146414%_
               _%signature146411146415%_
               _%self146417%_
               _%arity146418%_
               _%dispatch146419%_)
        (let* ((_%signature146421%_
                (if (eq? _%signature146411146415%_ absent-value)
                    '#f
                    _%signature146411146415%_))
               (_%self146424%_ _%self146417%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self146424%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146424%_
             _%arity146418%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146424%_
             _%dispatch146419%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146424%_
             _%signature146421%_
             '2
             '#f
             '#f)))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords146438%_ . _%args146439%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords146438%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords146438%_
                  'signature:
                  absent-value))
               _%args146439%_)))
    (define gxc#!lambda:::init!
      (lambda _%args146412146445%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%args146412146445%_)))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords146255%_
               _%signature146252146256%_
               _%self146258%_
               _%clauses146259%_)
        (let* ((_%signature146261%_
                (if (eq? _%signature146252146256%_ absent-value)
                    '#f
                    _%signature146252146256%_))
               (_%self146264%_ _%self146258%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self146264%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146264%_
             _%signature146261%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146264%_
             _%clauses146259%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords146278%_ . _%args146279%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords146278%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords146278%_
                  'signature:
                  absent-value))
               _%args146279%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%args146253146285%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%args146253146285%_)))
    (let ()
      (declare (not safe))
      (__bind-method!
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self146114%_ _%tab146115%_ _%dispatch146116%_)
        (let ((_%self146119%_ _%self146114%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self146119%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146119%_
             _%tab146115%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self146119%_
             _%dispatch146116%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self145977%_ _%keys145978%_ _%main145979%_)
        (let ((_%self145982%_ _%self145977%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self145982%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self145982%_
             _%keys145978%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self145982%_
             _%main145979%_
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
      (lambda (_%self145597%_ _%id145598%_)
        (let ((_%self145601%_ _%self145597%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self145601%_
             _%id145598%_
             '1
             '#f
             '#f))
          (let ((__tmp148065
                 (let ((__obj147995
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
                      __obj147995
                      'boolean::t
                      '1
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj147995
                      '(pure)
                      '2
                      '#f
                      '#f))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-set!
                      __obj147995
                      '(t::t)
                      '3
                      '#f
                      '#f))
                   __obj147995)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self145601%_
             __tmp148065
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
      (lambda (_%klass145466%_)
        (let ((_%$e145468%_
               (##structure-ref _%klass145466%_ '11 gxc#!class::t '#f)))
          (if _%$e145468%_
              _%$e145468%_
              (let ((_%tab145472%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass145466%_
                 _%tab145472%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab145472%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass145457%_ _%method145458%_)
        (let ((_%tab145459145461%_
               (##structure-ref _%klass145457%_ '11 gxc#!class::t '#f)))
          (if _%tab145459145461%_
              (let ((_%tab145464%_ _%tab145459145461%_))
                (declare (not safe))
                (hash-get _%tab145464%_ _%method145458%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a145445%_ _%type-b145446%_)
        (if _%type-a145445%_
            (if _%type-b145446%_
                (let ((_%$e145448%_ (eq? _%type-a145445%_ _%type-b145446%_)))
                  (if _%$e145448%_
                      _%$e145448%_
                      (let ((_%$e145451%_
                             (eq? (##structure-ref
                                   _%type-b145446%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e145451%_
                            _%$e145451%_
                            (let ((_%$e145454%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a145445%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b145446%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e145454%_
                                  _%$e145454%_
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%type-a145445%_
                                         'gxc#!class::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-instance-of?
                                             _%type-b145446%_
                                             'gxc#!class::t))
                                          (gxc#!class-subclass?
                                           _%type-a145445%_
                                           _%type-b145446%_)
                                          '#f)
                                      '#f)))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a145396%_ _%klass-b145397%_)
        (let ((_%$e145399%_
               (eq? (##structure-ref _%klass-a145396%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b145397%_ '1 gxc#!type::t '#f))))
          (if _%$e145399%_
              _%$e145399%_
              (let ((_%klass-id-b145402%_
                     (##structure-ref _%klass-b145397%_ '1 gxc#!type::t '#f))
                    (_%precedence-list145403%_
                     (##structure-ref _%klass-a145396%_ '3 gxc#!class::t '#f)))
                (let _%loop145405%_ ((_%rest145407%_
                                      _%precedence-list145403%_))
                  (let* ((_%rest145408145416%_ _%rest145407%_)
                         (_%else145410145424%_ (lambda () '#f))
                         (_%K145412145433%_
                          (lambda (_%rest145427%_ _%klass-name145428%_)
                            (let ((_%$e145430%_
                                   (eq? (let ((__tmp148066
                                               (gxc#optimizer-resolve-class
                                                (cons 'subclass?
                                                      (cons _%klass-a145396%_
                                                            (cons _%klass-b145397%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%klass-name145428%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp148066
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b145402%_)))
                              (if _%$e145430%_
                                  _%$e145430%_
                                  (_%loop145405%_ _%rest145427%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest145408145416%_))
                        (let ((_%hd145413145436%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest145408145416%_)))
                              (_%tl145414145438%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest145408145416%_))))
                          (let* ((_%klass-name145441%_ _%hd145413145436%_)
                                 (_%rest145443%_ _%tl145414145438%_))
                            (_%K145412145433%_
                             _%rest145443%_
                             _%klass-name145441%_)))
                        (_%else145410145424%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type145394%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145394%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (##structure-ref _%type145394%_ '3 gxc#!class::t '#f))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc145383%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc145383%_ 'gxc#!procedure::t))
            (let ((_%proc145386%_ _%proc145383%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc145386%_ '2 '#f '#f))
                  (let ((__tmp148067
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc145386%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp148067 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@374.11-374.15"
               'contract:
               '!procedure?
               'value:
               _%proc145383%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym145365%_ _%type145366%_ _%local?145367%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145366%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym145365%_
                     _%type145366%_)))
        (let ((__tmp148068
               (let () (declare (not safe)) (struct->list _%type145366%_))))
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym145365%_ '" " __tmp148068))
        (let ((_%table145369%_
               (if _%local?145367%_
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
          (hash-put! _%table145369%_ _%sym145365%_ _%type145366%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym145374%_ _%type145375%_)
        (let ((_%local?145377%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym145374%_
           _%type145375%_
           _%local?145377%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g148070_
        (let ((_g148069_ (let () (declare (not safe)) (##length _g148070_))))
          (cond ((let () (declare (not safe)) (##fx= _g148069_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g148070_))
                ((let () (declare (not safe)) (##fx= _g148069_ 3))
                 (apply gxc#optimizer-declare-type!__% _g148070_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g148070_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym145359%_ _%type145360%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145360%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym145359%_
                     _%type145360%_)))
        (let ((_%table145362%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp148071
                 (let () (declare (not safe)) (struct->list _%type145360%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym145359%_ '" " __tmp148071))
          (let ()
            (declare (not safe))
            (hash-put! _%table145362%_ _%sym145359%_ _%type145360%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table145362%_ _%type145360%_ _%sym145359%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym145354%_ _%type145355%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145355%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym145354%_
                     _%type145355%_)))
        (let ((_%table145357%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table145357%_ _%sym145354%_))
              '#!void
              (begin
                (let ((__tmp148072
                       (let ()
                         (declare (not safe))
                         (struct->list _%type145355%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym145354%_
                   '" "
                   __tmp148072))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table145357%_ _%sym145354%_ _%type145355%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table145357%_
                   _%type145355%_
                   _%sym145354%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym145352%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym145352%_))
        (let ((__tmp148073
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp148073 _%sym145352%_))
        (let ((__tmp148074
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp148074 _%sym145352%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t145320%_
               _%method145321%_
               _%sym145322%_
               _%rebind?145323%_)
        (let ((_%klass145325%_ (gxc#optimizer-lookup-class _%type-t145320%_)))
          (if _%klass145325%_
              (let* ((_%vtab145327%_ (gxc#!class-method-table _%klass145325%_))
                     (_%$e145329%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab145327%_ _%method145321%_))))
                (if _%$e145329%_
                    ((lambda (_%existing145332%_)
                       (if _%rebind?145323%_
                           (let ()
                             (let ()
                               (declare (not safe))
                               (gxc#verbose
                                '"declare-method: rebind existing method"
                                _%type-t145320%_
                                '" "
                                _%method145321%_))
                             (let ()
                               (declare (not safe))
                               (hash-put!
                                _%vtab145327%_
                                _%method145321%_
                                _%sym145322%_)))
                           (if (eq? _%existing145332%_ _%sym145322%_)
                               '#!void
                               (let ((__tmp148075
                                      (cons 'bind-method!
                                            (cons _%type-t145320%_
                                                  (cons _%method145321%_
                                                        (cons _%sym145322%_
                                                              '()))))))
                                 (declare (not safe))
                                 (gxc#raise-compile-error
                                  '"declare-method: duplicate method declaration"
                                  __tmp148075
                                  _%method145321%_)))))
                     _%$e145329%_)
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t145320%_
                         '" "
                         _%method145321%_
                         '" => "
                         _%sym145322%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab145327%_
                         _%method145321%_
                         _%sym145322%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t145320%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t145341%_ _%method145342%_ _%sym145343%_)
        (let ((_%rebind?145345%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t145341%_
           _%method145342%_
           _%sym145343%_
           _%rebind?145345%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g148077_
        (let ((_g148076_ (let () (declare (not safe)) (##length _g148077_))))
          (cond ((let () (declare (not safe)) (##fx= _g148076_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g148077_))
                ((let () (declare (not safe)) (##fx= _g148076_ 4))
                 (apply gxc#optimizer-declare-method!__% _g148077_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g148077_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym145308%_)
        (let ((_%$e145316%_
               (let ((_%ht145309145311%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-local-type))))
                 (if _%ht145309145311%_
                     (let ((_%ht145314%_ _%ht145309145311%_))
                       (declare (not safe))
                       (hash-get _%ht145314%_ _%sym145308%_))
                     '#f))))
          (if _%$e145316%_
              _%$e145316%_
              (let ((__tmp148078
                     (##structure-ref
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-optimizer-info))
                      '1
                      gxc#optimizer-info::t
                      '#f)))
                (declare (not safe))
                (hash-get __tmp148078 _%sym145308%_))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym145300%_)
        (let ((_%type145301145303%_ (gxc#optimizer-lookup-type _%sym145300%_)))
          (if _%type145301145303%_
              (let ((_%type145306%_ _%type145301145303%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type145306%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (##structure-ref _%type145306%_ '1 gxc#!type::t '#f))
                    _%type145306%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym145296%_)
        (let ((_%table145298%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table145298%_ _%sym145296%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where145281%_ _%sym145282%_)
        (let ((_%$e145285%_ (gxc#optimizer-lookup-class _%sym145282%_)))
          (if _%$e145285%_
              ((lambda (_%g145287145289%_)
                 (let ((_%val145292%_ _%g145287145289%_))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%val145292%_
                          'gxc#!class::t))
                       _%val145292%_
                       (let ()
                         (declare (not safe))
                         (error '"bad cast" gxc#!class::t _%val145292%_)))))
               _%$e145285%_)
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where145281%_
                   _%sym145282%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass145279%_)
        (let ((__tmp148079
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp148079 _%klass145279%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t145276%_ _%method145277%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t145276%_)
         _%method145277%_)))
    (define gxc#optimizer-top-level-method!
      (lambda (_%sym145274%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"top-level method: " _%sym145274%_))
        (let ((__tmp148080
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp148080 _%sym145274%_ '#t))))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym145272%_)
        (let ((__tmp148081
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp148081 _%sym145272%_))))))
