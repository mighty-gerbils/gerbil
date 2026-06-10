(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1781119053)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (make-class-type
       'gxc#optimizer-info::t
       'optimizer-info
       (list)
       '(type classes ssxi methods)
       (cons (cons 'struct: '#t) '())
       ':init!))
    (define gxc#optimizer-info? (make-class-predicate gxc#optimizer-info::t))
    (define gxc#make-optimizer-info
      (lambda _%$args187183%_
        (apply make-instance gxc#optimizer-info::t _%$args187183%_)))
    (define gxc#optimizer-info-type
      (make-class-slot-accessor gxc#optimizer-info::t 'type))
    (define gxc#optimizer-info-classes
      (make-class-slot-accessor gxc#optimizer-info::t 'classes))
    (define gxc#optimizer-info-ssxi
      (make-class-slot-accessor gxc#optimizer-info::t 'ssxi))
    (define gxc#optimizer-info-methods
      (make-class-slot-accessor gxc#optimizer-info::t 'methods))
    (define gxc#optimizer-info-type-set!
      (make-class-slot-mutator gxc#optimizer-info::t 'type))
    (define gxc#optimizer-info-classes-set!
      (make-class-slot-mutator gxc#optimizer-info::t 'classes))
    (define gxc#optimizer-info-ssxi-set!
      (make-class-slot-mutator gxc#optimizer-info::t 'ssxi))
    (define gxc#optimizer-info-methods-set!
      (make-class-slot-mutator gxc#optimizer-info::t 'methods))
    (define gxc#&optimizer-info-type
      (make-class-slot-unchecked-accessor gxc#optimizer-info::t 'type))
    (define gxc#&optimizer-info-classes
      (make-class-slot-unchecked-accessor gxc#optimizer-info::t 'classes))
    (define gxc#&optimizer-info-ssxi
      (make-class-slot-unchecked-accessor gxc#optimizer-info::t 'ssxi))
    (define gxc#&optimizer-info-methods
      (make-class-slot-unchecked-accessor gxc#optimizer-info::t 'methods))
    (define gxc#&optimizer-info-type-set!
      (make-class-slot-unchecked-mutator gxc#optimizer-info::t 'type))
    (define gxc#&optimizer-info-classes-set!
      (make-class-slot-unchecked-mutator gxc#optimizer-info::t 'classes))
    (define gxc#&optimizer-info-ssxi-set!
      (make-class-slot-unchecked-mutator gxc#optimizer-info::t 'ssxi))
    (define gxc#&optimizer-info-methods-set!
      (make-class-slot-unchecked-mutator gxc#optimizer-info::t 'methods))
    (define gxc#optimizer-info:::init!
      (lambda (_%self187170%_)
        (let ((_%self187173%_ _%self187170%_))
          (struct-instance-init!
           _%self187173%_
           (make-hash-table-eq)
           (make-hash-table-eq)
           (make-hash-table-eq)
           (make-hash-table-eq)))))
    (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
    (define gxc#!type::t
      (make-class-type
       'gxc#!type::t
       '!type
       (list)
       '(id)
       (cons (cons 'struct: '#t) '((equal: id) (print: id)))
       '#f))
    (define gxc#!type? (make-class-predicate gxc#!type::t))
    (define gxc#make-!type
      (lambda _%$args187045%_
        (apply make-instance gxc#!type::t _%$args187045%_)))
    (define gxc#!type-id (make-class-slot-accessor gxc#!type::t 'id))
    (define gxc#!type-id-set! (make-class-slot-mutator gxc#!type::t 'id))
    (define gxc#&!type-id
      (make-class-slot-unchecked-accessor gxc#!type::t 'id))
    (define gxc#&!type-id-set!
      (make-class-slot-unchecked-mutator gxc#!type::t 'id))
    (define gxc#!abort::t
      (make-class-type
       'gxc#!abort::t
       '!abort
       (list gxc#!type::t)
       '()
       (cons (cons 'struct: '#t) '((equal:)))
       ':init!))
    (define gxc#!abort? (make-class-predicate gxc#!abort::t))
    (define gxc#make-!abort
      (lambda _%$args187042%_
        (apply make-instance gxc#!abort::t _%$args187042%_)))
    (define gxc#!abort-id (make-class-slot-accessor gxc#!abort::t 'id))
    (define gxc#!abort-id-set! (make-class-slot-mutator gxc#!abort::t 'id))
    (define gxc#&!abort-id
      (make-class-slot-unchecked-accessor gxc#!abort::t 'id))
    (define gxc#&!abort-id-set!
      (make-class-slot-unchecked-mutator gxc#!abort::t 'id))
    (define gxc#!alias::t
      (make-class-type
       'gxc#!alias::t
       '!alias
       (list gxc#!type::t)
       '()
       (cons (cons 'struct: '#t) '((equal:)))
       '#f))
    (define gxc#!alias? (make-class-predicate gxc#!alias::t))
    (define gxc#make-!alias
      (lambda _%$args187039%_
        (apply make-instance gxc#!alias::t _%$args187039%_)))
    (define gxc#!alias-id (make-class-slot-accessor gxc#!alias::t 'id))
    (define gxc#!alias-id-set! (make-class-slot-mutator gxc#!alias::t 'id))
    (define gxc#&!alias-id
      (make-class-slot-unchecked-accessor gxc#!alias::t 'id))
    (define gxc#&!alias-id-set!
      (make-class-slot-unchecked-mutator gxc#!alias::t 'id))
    (define gxc#!signature::t
      (make-class-type
       'gxc#!signature::t
       '!signature
       (list)
       '(return effect arguments unchecked origin)
       (cons (cons 'final: '#t)
             '((equal: return effect arguments unchecked origin)
               (print: return effect arguments unchecked origin)))
       '#f))
    (define gxc#!signature? (make-class-predicate gxc#!signature::t))
    (define gxc#make-!signature
      (lambda _%$args187036%_
        (apply make-instance gxc#!signature::t _%$args187036%_)))
    (define gxc#!signature-return
      (make-class-slot-accessor gxc#!signature::t 'return))
    (define gxc#!signature-effect
      (make-class-slot-accessor gxc#!signature::t 'effect))
    (define gxc#!signature-arguments
      (make-class-slot-accessor gxc#!signature::t 'arguments))
    (define gxc#!signature-unchecked
      (make-class-slot-accessor gxc#!signature::t 'unchecked))
    (define gxc#!signature-origin
      (make-class-slot-accessor gxc#!signature::t 'origin))
    (define gxc#!signature-return-set!
      (make-class-slot-mutator gxc#!signature::t 'return))
    (define gxc#!signature-effect-set!
      (make-class-slot-mutator gxc#!signature::t 'effect))
    (define gxc#!signature-arguments-set!
      (make-class-slot-mutator gxc#!signature::t 'arguments))
    (define gxc#!signature-unchecked-set!
      (make-class-slot-mutator gxc#!signature::t 'unchecked))
    (define gxc#!signature-origin-set!
      (make-class-slot-mutator gxc#!signature::t 'origin))
    (define gxc#&!signature-return
      (make-class-slot-unchecked-accessor gxc#!signature::t 'return))
    (define gxc#&!signature-effect
      (make-class-slot-unchecked-accessor gxc#!signature::t 'effect))
    (define gxc#&!signature-arguments
      (make-class-slot-unchecked-accessor gxc#!signature::t 'arguments))
    (define gxc#&!signature-unchecked
      (make-class-slot-unchecked-accessor gxc#!signature::t 'unchecked))
    (define gxc#&!signature-origin
      (make-class-slot-unchecked-accessor gxc#!signature::t 'origin))
    (define gxc#&!signature-return-set!
      (make-class-slot-unchecked-mutator gxc#!signature::t 'return))
    (define gxc#&!signature-effect-set!
      (make-class-slot-unchecked-mutator gxc#!signature::t 'effect))
    (define gxc#&!signature-arguments-set!
      (make-class-slot-unchecked-mutator gxc#!signature::t 'arguments))
    (define gxc#&!signature-unchecked-set!
      (make-class-slot-unchecked-mutator gxc#!signature::t 'unchecked))
    (define gxc#&!signature-origin-set!
      (make-class-slot-unchecked-mutator gxc#!signature::t 'origin))
    (define gxc#!procedure::t
      (make-class-type
       'gxc#!procedure::t
       '!procedure
       (list gxc#!type::t)
       '(signature)
       (cons (cons 'struct: '#t) '((equal: signature) (print: signature)))
       '#f))
    (define gxc#!procedure? (make-class-predicate gxc#!procedure::t))
    (define gxc#!procedure-signature
      (make-class-slot-accessor gxc#!procedure::t 'signature))
    (define gxc#!procedure-id (make-class-slot-accessor gxc#!procedure::t 'id))
    (define gxc#!procedure-unchecked-signature-set!
      (make-class-slot-mutator gxc#!procedure::t 'signature))
    (define gxc#!procedure-id-set!
      (make-class-slot-mutator gxc#!procedure::t 'id))
    (define gxc#&!procedure-signature
      (make-class-slot-unchecked-accessor gxc#!procedure::t 'signature))
    (define gxc#&!procedure-id
      (make-class-slot-unchecked-accessor gxc#!procedure::t 'id))
    (define gxc#&!procedure-unchecked-signature-set!
      (make-class-slot-unchecked-mutator gxc#!procedure::t 'signature))
    (define gxc#&!procedure-id-set!
      (make-class-slot-unchecked-mutator gxc#!procedure::t 'id))
    (define gxc#__make-!procedure
      (lambda (_%id187023%_ _%signature187024%_)
        (let ((_%signature187027%_ _%signature187024%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id187023%_ _%signature187027%_))))
    (define gxc#make-!procedure
      (lambda (_%id187001%_ _%signature187003%_)
        (if ((lambda (_%$obj187006%_)
               (or (not _%$obj187006%_) (gxc#!signature? _%$obj187006%_)))
             _%signature187003%_)
            (let ((_%signature187013%_ _%signature187003%_))
              (gxc#__make-!procedure _%id187001%_ _%signature187013%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature187003%_)
              (void)))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj186980%_ _%signature186981%_)
        (let* ((_%$obj186984%_ _%$obj186980%_)
               (_%signature186992%_ _%signature186981%_))
          (gxc#&!procedure-unchecked-signature-set!
           _%$obj186984%_
           _%signature186992%_))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj186947%_ _%signature186949%_)
        (if (gxc#!procedure? _%$obj186947%_)
            (let ((_%$obj186954%_ _%$obj186947%_))
              (if ((lambda (_%$obj186963%_)
                     (or (not _%$obj186963%_)
                         (gxc#!signature? _%$obj186963%_)))
                   _%signature186949%_)
                  (let ((_%signature186970%_ _%signature186949%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj186954%_
                     _%signature186970%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature186949%_)
                    (void))))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj186947%_)
              (void)))))
    (define gxc#!class-meta::t
      (make-class-type
       'gxc#!class-meta::t
       '!class-meta
       (list gxc#!type::t)
       '(class)
       (cons (cons 'struct: '#t) '())
       ':init!))
    (define gxc#!class-meta? (make-class-predicate gxc#!class-meta::t))
    (define gxc#make-!class-meta
      (lambda _%$args186944%_
        (apply make-instance gxc#!class-meta::t _%$args186944%_)))
    (define gxc#!class-meta-class
      (make-class-slot-accessor gxc#!class-meta::t 'class))
    (define gxc#!class-meta-id
      (make-class-slot-accessor gxc#!class-meta::t 'id))
    (define gxc#!class-meta-class-set!
      (make-class-slot-mutator gxc#!class-meta::t 'class))
    (define gxc#!class-meta-id-set!
      (make-class-slot-mutator gxc#!class-meta::t 'id))
    (define gxc#&!class-meta-class
      (make-class-slot-unchecked-accessor gxc#!class-meta::t 'class))
    (define gxc#&!class-meta-id
      (make-class-slot-unchecked-accessor gxc#!class-meta::t 'id))
    (define gxc#&!class-meta-class-set!
      (make-class-slot-unchecked-mutator gxc#!class-meta::t 'class))
    (define gxc#&!class-meta-id-set!
      (make-class-slot-unchecked-mutator gxc#!class-meta::t 'id))
    (define gxc#!class::t
      (make-class-type
       'gxc#!class::t
       '!class
       (list gxc#!type::t)
       '(super precedence-list
               slots
               fields
               constructor
               struct?
               final?
               system?
               metaclass
               methods)
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
               (print: super precedence-list)))
       ':init!))
    (define gxc#!class? (make-class-predicate gxc#!class::t))
    (define gxc#make-!class
      (lambda _%$args186941%_
        (apply make-instance gxc#!class::t _%$args186941%_)))
    (define gxc#!class-super (make-class-slot-accessor gxc#!class::t 'super))
    (define gxc#!class-precedence-list
      (make-class-slot-accessor gxc#!class::t 'precedence-list))
    (define gxc#!class-slots (make-class-slot-accessor gxc#!class::t 'slots))
    (define gxc#!class-fields (make-class-slot-accessor gxc#!class::t 'fields))
    (define gxc#!class-constructor
      (make-class-slot-accessor gxc#!class::t 'constructor))
    (define gxc#!class-struct?
      (make-class-slot-accessor gxc#!class::t 'struct?))
    (define gxc#!class-final? (make-class-slot-accessor gxc#!class::t 'final?))
    (define gxc#!class-system?
      (make-class-slot-accessor gxc#!class::t 'system?))
    (define gxc#!class-metaclass
      (make-class-slot-accessor gxc#!class::t 'metaclass))
    (define gxc#!class-methods
      (make-class-slot-accessor gxc#!class::t 'methods))
    (define gxc#!class-id (make-class-slot-accessor gxc#!class::t 'id))
    (define gxc#!class-super-set!
      (make-class-slot-mutator gxc#!class::t 'super))
    (define gxc#!class-precedence-list-set!
      (make-class-slot-mutator gxc#!class::t 'precedence-list))
    (define gxc#!class-slots-set!
      (make-class-slot-mutator gxc#!class::t 'slots))
    (define gxc#!class-fields-set!
      (make-class-slot-mutator gxc#!class::t 'fields))
    (define gxc#!class-constructor-set!
      (make-class-slot-mutator gxc#!class::t 'constructor))
    (define gxc#!class-struct?-set!
      (make-class-slot-mutator gxc#!class::t 'struct?))
    (define gxc#!class-final?-set!
      (make-class-slot-mutator gxc#!class::t 'final?))
    (define gxc#!class-system?-set!
      (make-class-slot-mutator gxc#!class::t 'system?))
    (define gxc#!class-metaclass-set!
      (make-class-slot-mutator gxc#!class::t 'metaclass))
    (define gxc#!class-methods-set!
      (make-class-slot-mutator gxc#!class::t 'methods))
    (define gxc#!class-id-set! (make-class-slot-mutator gxc#!class::t 'id))
    (define gxc#&!class-super
      (make-class-slot-unchecked-accessor gxc#!class::t 'super))
    (define gxc#&!class-precedence-list
      (make-class-slot-unchecked-accessor gxc#!class::t 'precedence-list))
    (define gxc#&!class-slots
      (make-class-slot-unchecked-accessor gxc#!class::t 'slots))
    (define gxc#&!class-fields
      (make-class-slot-unchecked-accessor gxc#!class::t 'fields))
    (define gxc#&!class-constructor
      (make-class-slot-unchecked-accessor gxc#!class::t 'constructor))
    (define gxc#&!class-struct?
      (make-class-slot-unchecked-accessor gxc#!class::t 'struct?))
    (define gxc#&!class-final?
      (make-class-slot-unchecked-accessor gxc#!class::t 'final?))
    (define gxc#&!class-system?
      (make-class-slot-unchecked-accessor gxc#!class::t 'system?))
    (define gxc#&!class-metaclass
      (make-class-slot-unchecked-accessor gxc#!class::t 'metaclass))
    (define gxc#&!class-methods
      (make-class-slot-unchecked-accessor gxc#!class::t 'methods))
    (define gxc#&!class-id
      (make-class-slot-unchecked-accessor gxc#!class::t 'id))
    (define gxc#&!class-super-set!
      (make-class-slot-unchecked-mutator gxc#!class::t 'super))
    (define gxc#&!class-precedence-list-set!
      (make-class-slot-unchecked-mutator gxc#!class::t 'precedence-list))
    (define gxc#&!class-slots-set!
      (make-class-slot-unchecked-mutator gxc#!class::t 'slots))
    (define gxc#&!class-fields-set!
      (make-class-slot-unchecked-mutator gxc#!class::t 'fields))
    (define gxc#&!class-constructor-set!
      (make-class-slot-unchecked-mutator gxc#!class::t 'constructor))
    (define gxc#&!class-struct?-set!
      (make-class-slot-unchecked-mutator gxc#!class::t 'struct?))
    (define gxc#&!class-final?-set!
      (make-class-slot-unchecked-mutator gxc#!class::t 'final?))
    (define gxc#&!class-system?-set!
      (make-class-slot-unchecked-mutator gxc#!class::t 'system?))
    (define gxc#&!class-metaclass-set!
      (make-class-slot-unchecked-mutator gxc#!class::t 'metaclass))
    (define gxc#&!class-methods-set!
      (make-class-slot-unchecked-mutator gxc#!class::t 'methods))
    (define gxc#&!class-id-set!
      (make-class-slot-unchecked-mutator gxc#!class::t 'id))
    (define gxc#!predicate::t
      (make-class-type
       'gxc#!predicate::t
       '!predicate
       (list gxc#!procedure::t)
       '()
       (cons (cons 'struct: '#t) '((equal:)))
       ':init!))
    (define gxc#!predicate? (make-class-predicate gxc#!predicate::t))
    (define gxc#make-!predicate
      (lambda _%$args186938%_
        (apply make-instance gxc#!predicate::t _%$args186938%_)))
    (define gxc#!predicate-signature
      (make-class-slot-accessor gxc#!predicate::t 'signature))
    (define gxc#!predicate-id (make-class-slot-accessor gxc#!predicate::t 'id))
    (define gxc#!predicate-signature-set!
      (make-class-slot-mutator gxc#!predicate::t 'signature))
    (define gxc#!predicate-id-set!
      (make-class-slot-mutator gxc#!predicate::t 'id))
    (define gxc#&!predicate-signature
      (make-class-slot-unchecked-accessor gxc#!predicate::t 'signature))
    (define gxc#&!predicate-id
      (make-class-slot-unchecked-accessor gxc#!predicate::t 'id))
    (define gxc#&!predicate-signature-set!
      (make-class-slot-unchecked-mutator gxc#!predicate::t 'signature))
    (define gxc#&!predicate-id-set!
      (make-class-slot-unchecked-mutator gxc#!predicate::t 'id))
    (define gxc#!constructor::t
      (make-class-type
       'gxc#!constructor::t
       '!constructor
       (list gxc#!procedure::t)
       '()
       (cons (cons 'struct: '#t) '((equal:)))
       ':init!))
    (define gxc#!constructor? (make-class-predicate gxc#!constructor::t))
    (define gxc#make-!constructor
      (lambda _%$args186935%_
        (apply make-instance gxc#!constructor::t _%$args186935%_)))
    (define gxc#!constructor-signature
      (make-class-slot-accessor gxc#!constructor::t 'signature))
    (define gxc#!constructor-id
      (make-class-slot-accessor gxc#!constructor::t 'id))
    (define gxc#!constructor-signature-set!
      (make-class-slot-mutator gxc#!constructor::t 'signature))
    (define gxc#!constructor-id-set!
      (make-class-slot-mutator gxc#!constructor::t 'id))
    (define gxc#&!constructor-signature
      (make-class-slot-unchecked-accessor gxc#!constructor::t 'signature))
    (define gxc#&!constructor-id
      (make-class-slot-unchecked-accessor gxc#!constructor::t 'id))
    (define gxc#&!constructor-signature-set!
      (make-class-slot-unchecked-mutator gxc#!constructor::t 'signature))
    (define gxc#&!constructor-id-set!
      (make-class-slot-unchecked-mutator gxc#!constructor::t 'id))
    (define gxc#!accessor::t
      (make-class-type
       'gxc#!accessor::t
       '!accessor
       (list gxc#!procedure::t)
       '(slot checked?)
       (cons (cons 'struct: '#t) '((equal: slot checked?)))
       ':init!))
    (define gxc#!accessor? (make-class-predicate gxc#!accessor::t))
    (define gxc#make-!accessor
      (lambda _%$args186932%_
        (apply make-instance gxc#!accessor::t _%$args186932%_)))
    (define gxc#!accessor-slot
      (make-class-slot-accessor gxc#!accessor::t 'slot))
    (define gxc#!accessor-checked?
      (make-class-slot-accessor gxc#!accessor::t 'checked?))
    (define gxc#!accessor-signature
      (make-class-slot-accessor gxc#!accessor::t 'signature))
    (define gxc#!accessor-id (make-class-slot-accessor gxc#!accessor::t 'id))
    (define gxc#!accessor-slot-set!
      (make-class-slot-mutator gxc#!accessor::t 'slot))
    (define gxc#!accessor-checked?-set!
      (make-class-slot-mutator gxc#!accessor::t 'checked?))
    (define gxc#!accessor-signature-set!
      (make-class-slot-mutator gxc#!accessor::t 'signature))
    (define gxc#!accessor-id-set!
      (make-class-slot-mutator gxc#!accessor::t 'id))
    (define gxc#&!accessor-slot
      (make-class-slot-unchecked-accessor gxc#!accessor::t 'slot))
    (define gxc#&!accessor-checked?
      (make-class-slot-unchecked-accessor gxc#!accessor::t 'checked?))
    (define gxc#&!accessor-signature
      (make-class-slot-unchecked-accessor gxc#!accessor::t 'signature))
    (define gxc#&!accessor-id
      (make-class-slot-unchecked-accessor gxc#!accessor::t 'id))
    (define gxc#&!accessor-slot-set!
      (make-class-slot-unchecked-mutator gxc#!accessor::t 'slot))
    (define gxc#&!accessor-checked?-set!
      (make-class-slot-unchecked-mutator gxc#!accessor::t 'checked?))
    (define gxc#&!accessor-signature-set!
      (make-class-slot-unchecked-mutator gxc#!accessor::t 'signature))
    (define gxc#&!accessor-id-set!
      (make-class-slot-unchecked-mutator gxc#!accessor::t 'id))
    (define gxc#!mutator::t
      (make-class-type
       'gxc#!mutator::t
       '!mutator
       (list gxc#!procedure::t)
       '(slot checked?)
       (cons (cons 'struct: '#t) '((equal: slot checked?)))
       ':init!))
    (define gxc#!mutator? (make-class-predicate gxc#!mutator::t))
    (define gxc#make-!mutator
      (lambda _%$args186929%_
        (apply make-instance gxc#!mutator::t _%$args186929%_)))
    (define gxc#!mutator-slot (make-class-slot-accessor gxc#!mutator::t 'slot))
    (define gxc#!mutator-checked?
      (make-class-slot-accessor gxc#!mutator::t 'checked?))
    (define gxc#!mutator-signature
      (make-class-slot-accessor gxc#!mutator::t 'signature))
    (define gxc#!mutator-id (make-class-slot-accessor gxc#!mutator::t 'id))
    (define gxc#!mutator-slot-set!
      (make-class-slot-mutator gxc#!mutator::t 'slot))
    (define gxc#!mutator-checked?-set!
      (make-class-slot-mutator gxc#!mutator::t 'checked?))
    (define gxc#!mutator-signature-set!
      (make-class-slot-mutator gxc#!mutator::t 'signature))
    (define gxc#!mutator-id-set! (make-class-slot-mutator gxc#!mutator::t 'id))
    (define gxc#&!mutator-slot
      (make-class-slot-unchecked-accessor gxc#!mutator::t 'slot))
    (define gxc#&!mutator-checked?
      (make-class-slot-unchecked-accessor gxc#!mutator::t 'checked?))
    (define gxc#&!mutator-signature
      (make-class-slot-unchecked-accessor gxc#!mutator::t 'signature))
    (define gxc#&!mutator-id
      (make-class-slot-unchecked-accessor gxc#!mutator::t 'id))
    (define gxc#&!mutator-slot-set!
      (make-class-slot-unchecked-mutator gxc#!mutator::t 'slot))
    (define gxc#&!mutator-checked?-set!
      (make-class-slot-unchecked-mutator gxc#!mutator::t 'checked?))
    (define gxc#&!mutator-signature-set!
      (make-class-slot-unchecked-mutator gxc#!mutator::t 'signature))
    (define gxc#&!mutator-id-set!
      (make-class-slot-unchecked-mutator gxc#!mutator::t 'id))
    (define gxc#!interface::t
      (make-class-type
       'gxc#!interface::t
       '!interface
       (list gxc#!type::t)
       '(methods)
       (cons (cons 'struct: '#t) '((equal: methods)))
       '#f))
    (define gxc#!interface? (make-class-predicate gxc#!interface::t))
    (define gxc#make-!interface
      (lambda _%$args186926%_
        (apply make-instance gxc#!interface::t _%$args186926%_)))
    (define gxc#!interface-methods
      (make-class-slot-accessor gxc#!interface::t 'methods))
    (define gxc#!interface-id (make-class-slot-accessor gxc#!interface::t 'id))
    (define gxc#!interface-methods-set!
      (make-class-slot-mutator gxc#!interface::t 'methods))
    (define gxc#!interface-id-set!
      (make-class-slot-mutator gxc#!interface::t 'id))
    (define gxc#&!interface-methods
      (make-class-slot-unchecked-accessor gxc#!interface::t 'methods))
    (define gxc#&!interface-id
      (make-class-slot-unchecked-accessor gxc#!interface::t 'id))
    (define gxc#&!interface-methods-set!
      (make-class-slot-unchecked-mutator gxc#!interface::t 'methods))
    (define gxc#&!interface-id-set!
      (make-class-slot-unchecked-mutator gxc#!interface::t 'id))
    (define gxc#!lambda::t
      (make-class-type
       'gxc#!lambda::t
       '!lambda
       (list gxc#!procedure::t)
       '(arity dispatch inline inline-typedecl)
       (cons (cons 'struct: '#t)
             '((equal: arity dispatch inline inline-typedecl)))
       ':init!))
    (define gxc#!lambda? (make-class-predicate gxc#!lambda::t))
    (define gxc#make-!lambda
      (lambda _%$args186923%_
        (apply make-instance gxc#!lambda::t _%$args186923%_)))
    (define gxc#!lambda-arity (make-class-slot-accessor gxc#!lambda::t 'arity))
    (define gxc#!lambda-dispatch
      (make-class-slot-accessor gxc#!lambda::t 'dispatch))
    (define gxc#!lambda-inline
      (make-class-slot-accessor gxc#!lambda::t 'inline))
    (define gxc#!lambda-inline-typedecl
      (make-class-slot-accessor gxc#!lambda::t 'inline-typedecl))
    (define gxc#!lambda-signature
      (make-class-slot-accessor gxc#!lambda::t 'signature))
    (define gxc#!lambda-id (make-class-slot-accessor gxc#!lambda::t 'id))
    (define gxc#!lambda-arity-set!
      (make-class-slot-mutator gxc#!lambda::t 'arity))
    (define gxc#!lambda-dispatch-set!
      (make-class-slot-mutator gxc#!lambda::t 'dispatch))
    (define gxc#!lambda-inline-set!
      (make-class-slot-mutator gxc#!lambda::t 'inline))
    (define gxc#!lambda-inline-typedecl-set!
      (make-class-slot-mutator gxc#!lambda::t 'inline-typedecl))
    (define gxc#!lambda-signature-set!
      (make-class-slot-mutator gxc#!lambda::t 'signature))
    (define gxc#!lambda-id-set! (make-class-slot-mutator gxc#!lambda::t 'id))
    (define gxc#&!lambda-arity
      (make-class-slot-unchecked-accessor gxc#!lambda::t 'arity))
    (define gxc#&!lambda-dispatch
      (make-class-slot-unchecked-accessor gxc#!lambda::t 'dispatch))
    (define gxc#&!lambda-inline
      (make-class-slot-unchecked-accessor gxc#!lambda::t 'inline))
    (define gxc#&!lambda-inline-typedecl
      (make-class-slot-unchecked-accessor gxc#!lambda::t 'inline-typedecl))
    (define gxc#&!lambda-signature
      (make-class-slot-unchecked-accessor gxc#!lambda::t 'signature))
    (define gxc#&!lambda-id
      (make-class-slot-unchecked-accessor gxc#!lambda::t 'id))
    (define gxc#&!lambda-arity-set!
      (make-class-slot-unchecked-mutator gxc#!lambda::t 'arity))
    (define gxc#&!lambda-dispatch-set!
      (make-class-slot-unchecked-mutator gxc#!lambda::t 'dispatch))
    (define gxc#&!lambda-inline-set!
      (make-class-slot-unchecked-mutator gxc#!lambda::t 'inline))
    (define gxc#&!lambda-inline-typedecl-set!
      (make-class-slot-unchecked-mutator gxc#!lambda::t 'inline-typedecl))
    (define gxc#&!lambda-signature-set!
      (make-class-slot-unchecked-mutator gxc#!lambda::t 'signature))
    (define gxc#&!lambda-id-set!
      (make-class-slot-unchecked-mutator gxc#!lambda::t 'id))
    (define gxc#!case-lambda::t
      (make-class-type
       'gxc#!case-lambda::t
       '!case-lambda
       (list gxc#!procedure::t)
       '(clauses)
       (cons (cons 'struct: '#t) '((equal: clauses)))
       ':init!))
    (define gxc#!case-lambda? (make-class-predicate gxc#!case-lambda::t))
    (define gxc#make-!case-lambda
      (lambda _%$args186920%_
        (apply make-instance gxc#!case-lambda::t _%$args186920%_)))
    (define gxc#!case-lambda-clauses
      (make-class-slot-accessor gxc#!case-lambda::t 'clauses))
    (define gxc#!case-lambda-signature
      (make-class-slot-accessor gxc#!case-lambda::t 'signature))
    (define gxc#!case-lambda-id
      (make-class-slot-accessor gxc#!case-lambda::t 'id))
    (define gxc#!case-lambda-clauses-set!
      (make-class-slot-mutator gxc#!case-lambda::t 'clauses))
    (define gxc#!case-lambda-signature-set!
      (make-class-slot-mutator gxc#!case-lambda::t 'signature))
    (define gxc#!case-lambda-id-set!
      (make-class-slot-mutator gxc#!case-lambda::t 'id))
    (define gxc#&!case-lambda-clauses
      (make-class-slot-unchecked-accessor gxc#!case-lambda::t 'clauses))
    (define gxc#&!case-lambda-signature
      (make-class-slot-unchecked-accessor gxc#!case-lambda::t 'signature))
    (define gxc#&!case-lambda-id
      (make-class-slot-unchecked-accessor gxc#!case-lambda::t 'id))
    (define gxc#&!case-lambda-clauses-set!
      (make-class-slot-unchecked-mutator gxc#!case-lambda::t 'clauses))
    (define gxc#&!case-lambda-signature-set!
      (make-class-slot-unchecked-mutator gxc#!case-lambda::t 'signature))
    (define gxc#&!case-lambda-id-set!
      (make-class-slot-unchecked-mutator gxc#!case-lambda::t 'id))
    (define gxc#!kw-lambda::t
      (make-class-type
       'gxc#!kw-lambda::t
       '!kw-lambda
       (list gxc#!procedure::t)
       '(table dispatch)
       (cons (cons 'struct: '#t) '((equal: table dispatch)))
       ':init!))
    (define gxc#!kw-lambda? (make-class-predicate gxc#!kw-lambda::t))
    (define gxc#make-!kw-lambda
      (lambda _%$args186917%_
        (apply make-instance gxc#!kw-lambda::t _%$args186917%_)))
    (define gxc#!kw-lambda-table
      (make-class-slot-accessor gxc#!kw-lambda::t 'table))
    (define gxc#!kw-lambda-dispatch
      (make-class-slot-accessor gxc#!kw-lambda::t 'dispatch))
    (define gxc#!kw-lambda-signature
      (make-class-slot-accessor gxc#!kw-lambda::t 'signature))
    (define gxc#!kw-lambda-id (make-class-slot-accessor gxc#!kw-lambda::t 'id))
    (define gxc#!kw-lambda-table-set!
      (make-class-slot-mutator gxc#!kw-lambda::t 'table))
    (define gxc#!kw-lambda-dispatch-set!
      (make-class-slot-mutator gxc#!kw-lambda::t 'dispatch))
    (define gxc#!kw-lambda-signature-set!
      (make-class-slot-mutator gxc#!kw-lambda::t 'signature))
    (define gxc#!kw-lambda-id-set!
      (make-class-slot-mutator gxc#!kw-lambda::t 'id))
    (define gxc#&!kw-lambda-table
      (make-class-slot-unchecked-accessor gxc#!kw-lambda::t 'table))
    (define gxc#&!kw-lambda-dispatch
      (make-class-slot-unchecked-accessor gxc#!kw-lambda::t 'dispatch))
    (define gxc#&!kw-lambda-signature
      (make-class-slot-unchecked-accessor gxc#!kw-lambda::t 'signature))
    (define gxc#&!kw-lambda-id
      (make-class-slot-unchecked-accessor gxc#!kw-lambda::t 'id))
    (define gxc#&!kw-lambda-table-set!
      (make-class-slot-unchecked-mutator gxc#!kw-lambda::t 'table))
    (define gxc#&!kw-lambda-dispatch-set!
      (make-class-slot-unchecked-mutator gxc#!kw-lambda::t 'dispatch))
    (define gxc#&!kw-lambda-signature-set!
      (make-class-slot-unchecked-mutator gxc#!kw-lambda::t 'signature))
    (define gxc#&!kw-lambda-id-set!
      (make-class-slot-unchecked-mutator gxc#!kw-lambda::t 'id))
    (define gxc#!kw-lambda-primary::t
      (make-class-type
       'gxc#!kw-lambda-primary::t
       '!kw-lambda-primary
       (list gxc#!procedure::t)
       '(keys main)
       (cons (cons 'struct: '#t) '((equal: keys main)))
       ':init!))
    (define gxc#!kw-lambda-primary?
      (make-class-predicate gxc#!kw-lambda-primary::t))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args186914%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args186914%_)))
    (define gxc#!kw-lambda-primary-keys
      (make-class-slot-accessor gxc#!kw-lambda-primary::t 'keys))
    (define gxc#!kw-lambda-primary-main
      (make-class-slot-accessor gxc#!kw-lambda-primary::t 'main))
    (define gxc#!kw-lambda-primary-signature
      (make-class-slot-accessor gxc#!kw-lambda-primary::t 'signature))
    (define gxc#!kw-lambda-primary-id
      (make-class-slot-accessor gxc#!kw-lambda-primary::t 'id))
    (define gxc#!kw-lambda-primary-keys-set!
      (make-class-slot-mutator gxc#!kw-lambda-primary::t 'keys))
    (define gxc#!kw-lambda-primary-main-set!
      (make-class-slot-mutator gxc#!kw-lambda-primary::t 'main))
    (define gxc#!kw-lambda-primary-signature-set!
      (make-class-slot-mutator gxc#!kw-lambda-primary::t 'signature))
    (define gxc#!kw-lambda-primary-id-set!
      (make-class-slot-mutator gxc#!kw-lambda-primary::t 'id))
    (define gxc#&!kw-lambda-primary-keys
      (make-class-slot-unchecked-accessor gxc#!kw-lambda-primary::t 'keys))
    (define gxc#&!kw-lambda-primary-main
      (make-class-slot-unchecked-accessor gxc#!kw-lambda-primary::t 'main))
    (define gxc#&!kw-lambda-primary-signature
      (make-class-slot-unchecked-accessor
       gxc#!kw-lambda-primary::t
       'signature))
    (define gxc#&!kw-lambda-primary-id
      (make-class-slot-unchecked-accessor gxc#!kw-lambda-primary::t 'id))
    (define gxc#&!kw-lambda-primary-keys-set!
      (make-class-slot-unchecked-mutator gxc#!kw-lambda-primary::t 'keys))
    (define gxc#&!kw-lambda-primary-main-set!
      (make-class-slot-unchecked-mutator gxc#!kw-lambda-primary::t 'main))
    (define gxc#&!kw-lambda-primary-signature-set!
      (make-class-slot-unchecked-mutator gxc#!kw-lambda-primary::t 'signature))
    (define gxc#&!kw-lambda-primary-id-set!
      (make-class-slot-unchecked-mutator gxc#!kw-lambda-primary::t 'id))
    (define gxc#!primitive::t
      (make-class-type
       'gxc#!primitive::t
       '!primitive
       (list)
       '()
       '((equal:))
       '#f))
    (define gxc#!primitive? (make-class-predicate gxc#!primitive::t))
    (define gxc#make-!primitive
      (lambda _%$args186911%_
        (apply make-instance gxc#!primitive::t _%$args186911%_)))
    (define gxc#!primitive-predicate::t
      (make-class-type
       'gxc#!primitive-predicate::t
       '!primitive-predicate
       (list gxc#!primitive::t gxc#!procedure::t)
       '()
       (cons (cons 'struct: '#t) '((equal:)))
       ':init!))
    (define gxc#!primitive-predicate?
      (make-class-predicate gxc#!primitive-predicate::t))
    (define gxc#make-!primitive-predicate
      (lambda _%$args186908%_
        (apply make-instance gxc#!primitive-predicate::t _%$args186908%_)))
    (define gxc#!primitive-predicate-signature
      (make-class-slot-accessor gxc#!primitive-predicate::t 'signature))
    (define gxc#!primitive-predicate-id
      (make-class-slot-accessor gxc#!primitive-predicate::t 'id))
    (define gxc#!primitive-predicate-signature-set!
      (make-class-slot-mutator gxc#!primitive-predicate::t 'signature))
    (define gxc#!primitive-predicate-id-set!
      (make-class-slot-mutator gxc#!primitive-predicate::t 'id))
    (define gxc#&!primitive-predicate-signature
      (make-class-slot-unchecked-accessor
       gxc#!primitive-predicate::t
       'signature))
    (define gxc#&!primitive-predicate-id
      (make-class-slot-unchecked-accessor gxc#!primitive-predicate::t 'id))
    (define gxc#&!primitive-predicate-signature-set!
      (make-class-slot-unchecked-mutator
       gxc#!primitive-predicate::t
       'signature))
    (define gxc#&!primitive-predicate-id-set!
      (make-class-slot-unchecked-mutator gxc#!primitive-predicate::t 'id))
    (define gxc#!primitive-lambda::t
      (make-class-type
       'gxc#!primitive-lambda::t
       '!primitive-lambda
       (list gxc#!primitive::t gxc#!lambda::t)
       '()
       (cons (cons 'struct: '#t) '((equal:)))
       ':init!))
    (define gxc#!primitive-lambda?
      (make-class-predicate gxc#!primitive-lambda::t))
    (define gxc#make-!primitive-lambda
      (lambda _%$args186905%_
        (apply make-instance gxc#!primitive-lambda::t _%$args186905%_)))
    (define gxc#!primitive-lambda-arity
      (make-class-slot-accessor gxc#!primitive-lambda::t 'arity))
    (define gxc#!primitive-lambda-dispatch
      (make-class-slot-accessor gxc#!primitive-lambda::t 'dispatch))
    (define gxc#!primitive-lambda-inline
      (make-class-slot-accessor gxc#!primitive-lambda::t 'inline))
    (define gxc#!primitive-lambda-inline-typedecl
      (make-class-slot-accessor gxc#!primitive-lambda::t 'inline-typedecl))
    (define gxc#!primitive-lambda-signature
      (make-class-slot-accessor gxc#!primitive-lambda::t 'signature))
    (define gxc#!primitive-lambda-id
      (make-class-slot-accessor gxc#!primitive-lambda::t 'id))
    (define gxc#!primitive-lambda-arity-set!
      (make-class-slot-mutator gxc#!primitive-lambda::t 'arity))
    (define gxc#!primitive-lambda-dispatch-set!
      (make-class-slot-mutator gxc#!primitive-lambda::t 'dispatch))
    (define gxc#!primitive-lambda-inline-set!
      (make-class-slot-mutator gxc#!primitive-lambda::t 'inline))
    (define gxc#!primitive-lambda-inline-typedecl-set!
      (make-class-slot-mutator gxc#!primitive-lambda::t 'inline-typedecl))
    (define gxc#!primitive-lambda-signature-set!
      (make-class-slot-mutator gxc#!primitive-lambda::t 'signature))
    (define gxc#!primitive-lambda-id-set!
      (make-class-slot-mutator gxc#!primitive-lambda::t 'id))
    (define gxc#&!primitive-lambda-arity
      (make-class-slot-unchecked-accessor gxc#!primitive-lambda::t 'arity))
    (define gxc#&!primitive-lambda-dispatch
      (make-class-slot-unchecked-accessor gxc#!primitive-lambda::t 'dispatch))
    (define gxc#&!primitive-lambda-inline
      (make-class-slot-unchecked-accessor gxc#!primitive-lambda::t 'inline))
    (define gxc#&!primitive-lambda-inline-typedecl
      (make-class-slot-unchecked-accessor
       gxc#!primitive-lambda::t
       'inline-typedecl))
    (define gxc#&!primitive-lambda-signature
      (make-class-slot-unchecked-accessor gxc#!primitive-lambda::t 'signature))
    (define gxc#&!primitive-lambda-id
      (make-class-slot-unchecked-accessor gxc#!primitive-lambda::t 'id))
    (define gxc#&!primitive-lambda-arity-set!
      (make-class-slot-unchecked-mutator gxc#!primitive-lambda::t 'arity))
    (define gxc#&!primitive-lambda-dispatch-set!
      (make-class-slot-unchecked-mutator gxc#!primitive-lambda::t 'dispatch))
    (define gxc#&!primitive-lambda-inline-set!
      (make-class-slot-unchecked-mutator gxc#!primitive-lambda::t 'inline))
    (define gxc#&!primitive-lambda-inline-typedecl-set!
      (make-class-slot-unchecked-mutator
       gxc#!primitive-lambda::t
       'inline-typedecl))
    (define gxc#&!primitive-lambda-signature-set!
      (make-class-slot-unchecked-mutator gxc#!primitive-lambda::t 'signature))
    (define gxc#&!primitive-lambda-id-set!
      (make-class-slot-unchecked-mutator gxc#!primitive-lambda::t 'id))
    (define gxc#!primitive-case-lambda::t
      (make-class-type
       'gxc#!primitive-case-lambda::t
       '!primitive-case-lambda
       (list gxc#!primitive::t gxc#!case-lambda::t)
       '()
       (cons (cons 'struct: '#t) '((equal:)))
       ':init!))
    (define gxc#!primitive-case-lambda?
      (make-class-predicate gxc#!primitive-case-lambda::t))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args186902%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args186902%_)))
    (define gxc#!primitive-case-lambda-clauses
      (make-class-slot-accessor gxc#!primitive-case-lambda::t 'clauses))
    (define gxc#!primitive-case-lambda-signature
      (make-class-slot-accessor gxc#!primitive-case-lambda::t 'signature))
    (define gxc#!primitive-case-lambda-id
      (make-class-slot-accessor gxc#!primitive-case-lambda::t 'id))
    (define gxc#!primitive-case-lambda-clauses-set!
      (make-class-slot-mutator gxc#!primitive-case-lambda::t 'clauses))
    (define gxc#!primitive-case-lambda-signature-set!
      (make-class-slot-mutator gxc#!primitive-case-lambda::t 'signature))
    (define gxc#!primitive-case-lambda-id-set!
      (make-class-slot-mutator gxc#!primitive-case-lambda::t 'id))
    (define gxc#&!primitive-case-lambda-clauses
      (make-class-slot-unchecked-accessor
       gxc#!primitive-case-lambda::t
       'clauses))
    (define gxc#&!primitive-case-lambda-signature
      (make-class-slot-unchecked-accessor
       gxc#!primitive-case-lambda::t
       'signature))
    (define gxc#&!primitive-case-lambda-id
      (make-class-slot-unchecked-accessor gxc#!primitive-case-lambda::t 'id))
    (define gxc#&!primitive-case-lambda-clauses-set!
      (make-class-slot-unchecked-mutator
       gxc#!primitive-case-lambda::t
       'clauses))
    (define gxc#&!primitive-case-lambda-signature-set!
      (make-class-slot-unchecked-mutator
       gxc#!primitive-case-lambda::t
       'signature))
    (define gxc#&!primitive-case-lambda-id-set!
      (make-class-slot-unchecked-mutator gxc#!primitive-case-lambda::t 'id))
    (define gxc#!abort:::init!
      (lambda (_%self186889%_)
        (let ((_%self186892%_ _%self186889%_))
          (gxc#&!abort-id-set! _%self186892%_ 'abort))))
    (bind-method! gxc#!abort::t ':init! gxc#!abort:::init! '#f)
    (define gxc#!class-meta:::init!
      (lambda (_%self186752%_ _%klass186753%_)
        (let ((_%self186756%_ _%self186752%_))
          (gxc#&!class-meta-id-set! _%self186756%_ 'class)
          (gxc#&!class-meta-class-set! _%self186756%_ _%klass186753%_))))
    (bind-method! gxc#!class-meta::t ':init! gxc#!class-meta:::init! '#f)
    (define gxc#!class:::init!
      (lambda _g187185_
        (let ((_g187186_ (let () (declare (not safe)) (##length _g187185_))))
          (cond ((let () (declare (not safe)) (##fx= _g187186_ 9))
                 (apply (lambda (_%self186442%_
                                 _%id186443%_
                                 _%super186444%_
                                 _%slots186445%_
                                 _%ctor-method186446%_
                                 _%struct?186447%_
                                 _%final?186448%_
                                 _%system?186449%_
                                 _%metaclass186450%_)
                          (let ((_%self186453%_ _%self186442%_))
                            (let _%lp186464%_ ((_%rest186466%_
                                                _%super186444%_))
                              (let* ((_%$%rest186467186475%_ _%rest186466%_)
                                     (_%$%E186470186479%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%$%rest186467186475%_
                                               '([super-id . rest])
                                               'else)
                                        (void)))
                                     (_%$%else186469186483%_
                                      (lambda () (void)))
                                     (_%$%K186471186489%_
                                      (lambda (_%rest186486%_
                                               _%super-id186487%_)
                                        (if (gxc#!class-final?
                                             (gxc#optimizer-resolve-class
                                              (cons '!class
                                                    (cons _%id186443%_ '()))
                                              _%super-id186487%_))
                                            (gxc#raise-compile-error
                                             '"cannot extend final class"
                                             (cons '!class
                                                   (cons _%id186443%_ '()))
                                             _%super-id186487%_)
                                            '#!void)
                                        (_%lp186464%_ _%rest186486%_))))
                                (if (pair? _%$%rest186467186475%_)
                                    (let ((_%$%hd186472186492%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%rest186467186475%_)))
                                          (_%$%tl186473186494%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%rest186467186475%_))))
                                      (let* ((_%super-id186497%_
                                              _%$%hd186472186492%_)
                                             (_%rest186499%_
                                              _%$%tl186473186494%_))
                                        (_%$%K186471186489%_
                                         _%rest186499%_
                                         _%super-id186497%_)))
                                    (_%$%else186469186483%_))))
                            (let* ((_%ctor-method186550%_
                                    (let ((_%$e186501%_ _%ctor-method186446%_))
                                      (if _%$e186501%_
                                          _%$e186501%_
                                          (let _%lp186504%_ ((_%rest186506%_
                                                              _%super186444%_)
                                                             (_%method186507%_
                                                              '#f))
                                            (let* ((_%$%rest186508186516%_
                                                    _%rest186506%_)
                                                   (_%$%E186511186520%_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _%$%rest186508186516%_
                                                             '([super-id
                                                                .
                                                                rest])
                                                             'else)
                                                      (void)))
                                                   (_%$%else186510186524%_
                                                    (lambda ()
                                                      _%method186507%_))
                                                   (_%$%K186512186538%_
                                                    (lambda (_%rest186527%_
                                                             _%super-id186528%_)
                                                      (let* ((_%klass186530%_
                                                              (gxc#optimizer-resolve-class
                                                               (cons '!class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%id186443%_ '()))
                       _%super-id186528%_))
                     (_%$e186532%_ (gxc#!class-constructor _%klass186530%_)))
                (if _%$e186532%_
                    ((lambda (_%ctor-method186535%_)
                       (if _%method186507%_
                           (if (eq? _%ctor-method186535%_ _%method186507%_)
                               (_%lp186504%_
                                _%rest186527%_
                                _%ctor-method186535%_)
                               (gxc#raise-compile-error
                                '"conflicting implicit constructor methods"
                                (cons '!class (cons _%id186443%_ '()))
                                _%method186507%_
                                _%ctor-method186535%_))
                           (_%lp186504%_
                            _%rest186527%_
                            _%ctor-method186535%_)))
                     _%$e186532%_)
                    (_%lp186504%_ _%rest186527%_ _%method186507%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (pair? _%$%rest186508186516%_)
                                                  (let ((_%$%hd186513186541%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%rest186508186516%_)))
                                                        (_%$%tl186514186543%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%rest186508186516%_))))
                                                    (let* ((_%super-id186546%_
                                                            _%$%hd186513186541%_)
                                                           (_%rest186548%_
                                                            _%$%tl186514186543%_))
                                                      (_%$%K186512186538%_
                                                       _%rest186548%_
                                                       _%super-id186546%_)))
                                                  (_%$%else186510186524%_)))))))
                                   (_g187187_
                                    (c4-linearize
                                     '()
                                     _%super186444%_
                                     'get-precedence-list:
                                     (lambda (_%klass-id186552%_)
                                       (cons _%klass-id186552%_
                                             (gxc#!class-precedence-list
                                              (gxc#optimizer-resolve-class
                                               (cons '!class
                                                     (cons _%id186443%_ '()))
                                               _%klass-id186552%_))))
                                     'struct:
                                     (lambda (_%klass-id186554%_)
                                       (gxc#!class-struct?
                                        (gxc#optimizer-resolve-class
                                         (cons '!class (cons _%id186443%_ '()))
                                         _%klass-id186554%_)))
                                     'eq:
                                     eq?
                                     'get-name:
                                     identity)))
                              (begin
                                (let ((_g187188_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g187187_)
                                             (##values-length _g187187_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g187188_ 2)))
                                      (error "Context expects 2 values"
                                             _g187188_)))
                                (let ((_%precedence-list186556%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g187187_ 0)))
                                      (_%base-struct186557%_
                                       (let ()
                                         (declare (not safe))
                                         (##values-ref _g187187_ 1))))
                                  (let* ((_%precedence-list186601%_
                                          (if (memq _%id186443%_
                                                    '(t object class))
                                              _%precedence-list186556%_
                                              (if (memq 'object::t
                                                        _%precedence-list186556%_)
                                                  _%precedence-list186556%_
                                                  (if _%system?186449%_
                                                      (if (memq 't::t
                                                                _%precedence-list186556%_)
                                                          _%precedence-list186556%_
                                                          (append _%precedence-list186556%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '(t::t)))
              (let _%loop186563%_ ((_%tail186565%_ _%precedence-list186556%_)
                                   (_%head186566%_ '()))
                (let* ((_%$%tail186567186575%_ _%tail186565%_)
                       (_%$%E186570186579%_
                        (lambda ()
                          (error '"No clause matching"
                                 _%$%tail186567186575%_
                                 '([hd . rest])
                                 'else)
                          (void)))
                       (_%$%else186569186583%_
                        (lambda ()
                          (foldl cons '(object::t t::t) _%head186566%_)))
                       (_%$%K186571186589%_
                        (lambda (_%rest186586%_ _%hd186587%_)
                          (if (eq? _%hd186587%_ 't::t)
                              (foldl cons
                                     (cons 'object::t _%tail186565%_)
                                     _%head186566%_)
                              (_%loop186563%_
                               _%rest186586%_
                               (cons _%hd186587%_ _%head186566%_))))))
                  (if (pair? _%$%tail186567186575%_)
                      (let ((_%$%hd186572186592%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%tail186567186575%_)))
                            (_%$%tl186573186594%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%tail186567186575%_))))
                        (let* ((_%hd186597%_ _%$%hd186572186592%_)
                               (_%rest186599%_ _%$%tl186573186594%_))
                          (_%$%K186571186589%_ _%rest186599%_ _%hd186597%_)))
                      (_%$%else186569186583%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%fields186603%_
                                          (gxc#compute-class-fields
                                           (cons '!class
                                                 (cons _%id186443%_ '()))
                                           _%precedence-list186601%_
                                           _%slots186445%_)))
                                    (gxc#&!class-id-set!
                                     _%self186453%_
                                     _%id186443%_)
                                    (gxc#&!class-super-set!
                                     _%self186453%_
                                     _%super186444%_)
                                    (gxc#&!class-precedence-list-set!
                                     _%self186453%_
                                     _%precedence-list186601%_)
                                    (gxc#&!class-slots-set!
                                     _%self186453%_
                                     _%slots186445%_)
                                    (gxc#&!class-fields-set!
                                     _%self186453%_
                                     _%fields186603%_)
                                    (gxc#&!class-constructor-set!
                                     _%self186453%_
                                     _%ctor-method186550%_)
                                    (gxc#&!class-struct?-set!
                                     _%self186453%_
                                     _%struct?186447%_)
                                    (gxc#&!class-final?-set!
                                     _%self186453%_
                                     _%final?186448%_)
                                    (gxc#&!class-metaclass-set!
                                     _%self186453%_
                                     _%metaclass186450%_)))))))
                        _g187185_))
                ((let () (declare (not safe)) (##fx= _g187186_ 12))
                 (apply (lambda (_%self186606%_
                                 _%id186607%_
                                 _%super186608%_
                                 _%precedence-list186609%_
                                 _%slots186610%_
                                 _%fields186611%_
                                 _%constructor186612%_
                                 _%struct?186613%_
                                 _%final?186614%_
                                 _%system?186615%_
                                 _%metaclass186616%_
                                 _%methods186617%_)
                          (let ((_%self186620%_ _%self186606%_))
                            (gxc#&!class-id-set! _%self186620%_ _%id186607%_)
                            (gxc#&!class-super-set!
                             _%self186620%_
                             _%super186608%_)
                            (gxc#&!class-precedence-list-set!
                             _%self186620%_
                             _%precedence-list186609%_)
                            (gxc#&!class-slots-set!
                             _%self186620%_
                             _%slots186610%_)
                            (gxc#&!class-fields-set!
                             _%self186620%_
                             _%fields186611%_)
                            (gxc#&!class-constructor-set!
                             _%self186620%_
                             _%constructor186612%_)
                            (gxc#&!class-struct?-set!
                             _%self186620%_
                             _%struct?186613%_)
                            (gxc#&!class-final?-set!
                             _%self186620%_
                             _%final?186614%_)
                            (gxc#&!class-metaclass-set!
                             _%self186620%_
                             _%metaclass186616%_)
                            (if _%methods186617%_
                                (gxc#&!class-methods-set!
                                 _%self186620%_
                                 (list->hash-table-eq _%methods186617%_))
                                '#!void)))
                        _g187185_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g187185_))))))
    (bind-method! gxc#!class::t ':init! gxc#!class:::init! '#f)
    (define gxc#compute-class-fields
      (lambda (_%where186311%_
               _%precedence-list186312%_
               _%direct-slots186313%_)
        (c4-compute-class-slots
         _%precedence-list186312%_
         _%direct-slots186313%_
         (lambda (_%mixin186315%_)
           (gxc#!class-fields
            (gxc#optimizer-resolve-class _%where186311%_ _%mixin186315%_)))
         (lambda (_%slot-list186317%_ _%slot-table186318%_)
           (cdr _%slot-list186317%_)))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass186270%_ _%slot186271%_)
        (let _%lp186273%_ ((_%rest186275%_ (gxc#!class-fields _%klass186270%_))
                           (_%offset186276%_ '1))
          (let* ((_%$%rest186277186285%_ _%rest186275%_)
                 (_%$%E186280186289%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%rest186277186285%_
                           '([s . rest])
                           'else)
                    (void)))
                 (_%$%else186279186293%_
                  (lambda ()
                    (gxc#raise-compile-error
                     '"unknown class slot"
                     (gxc#!type-id _%klass186270%_)
                     (gxc#!class-fields _%klass186270%_)
                     _%slot186271%_)))
                 (_%$%K186281186299%_
                  (lambda (_%rest186296%_ _%s186297%_)
                    (if (eq? _%s186297%_ _%slot186271%_)
                        _%offset186276%_
                        (_%lp186273%_
                         _%rest186296%_
                         (fx1+ _%offset186276%_))))))
            (if (pair? _%$%rest186277186285%_)
                (let ((_%$%hd186282186302%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest186277186285%_)))
                      (_%$%tl186283186304%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest186277186285%_))))
                  (let* ((_%s186307%_ _%$%hd186282186302%_)
                         (_%rest186309%_ _%$%tl186283186304%_))
                    (_%$%K186281186299%_ _%rest186309%_ _%s186307%_)))
                (_%$%else186279186293%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass186228%_ _%slot186229%_)
        (if (gxc#!class-struct-slot? _%klass186228%_ _%slot186229%_)
            _%klass186228%_
            (let _%lp186231%_ ((_%rest186233%_
                                (gxc#!class-precedence-list _%klass186228%_)))
              (let* ((_%$%rest186234186242%_ _%rest186233%_)
                     (_%$%E186237186246%_
                      (lambda ()
                        (error '"No clause matching"
                               _%$%rest186234186242%_
                               '([super . rest])
                               'else)
                        (void)))
                     (_%$%else186236186250%_ (lambda () '#f))
                     (_%$%K186238186258%_
                      (lambda (_%rest186253%_ _%super186254%_)
                        (let ((_%super-class186256%_
                               (gxc#optimizer-resolve-class
                                (cons '!class-slot-find-struct
                                      (cons (gxc#!type-id _%klass186228%_)
                                            (cons _%slot186229%_ '())))
                                _%super186254%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class186256%_
                               _%slot186229%_)
                              _%super-class186256%_
                              (_%lp186231%_ _%rest186253%_))))))
                (if (pair? _%$%rest186234186242%_)
                    (let ((_%$%hd186239186261%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest186234186242%_)))
                          (_%$%tl186240186263%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest186234186242%_))))
                      (let* ((_%super186266%_ _%$%hd186239186261%_)
                             (_%rest186268%_ _%$%tl186240186263%_))
                        (_%$%K186238186258%_ _%rest186268%_ _%super186266%_)))
                    (_%$%else186236186250%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass186225%_ _%slot186226%_)
        (if (gxc#!class-struct? _%klass186225%_)
            (memq _%slot186226%_ (gxc#!class-fields _%klass186225%_))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self186210%_ _%id186211%_)
        (let ((_%self186214%_ _%self186210%_))
          (gxc#&!predicate-id-set! _%self186214%_ _%id186211%_)
          (gxc#&!predicate-signature-set!
           _%self186214%_
           (gxc#make-!signature
            'return:
            'boolean::t
            'effect:
            '(pure predicate)
            'arguments:
            '(t::t))))))
    (bind-method! gxc#!predicate::t ':init! gxc#!predicate:::init! '#f)
    (define gxc#!constructor:::init!
      (lambda (_%self186073%_ _%id186074%_)
        (let ((_%self186077%_ _%self186073%_))
          (gxc#&!constructor-id-set! _%self186077%_ _%id186074%_)
          (gxc#&!constructor-signature-set!
           _%self186077%_
           (gxc#make-!signature 'return: _%id186074%_ 'effect: '(alloc))))))
    (bind-method! gxc#!constructor::t ':init! gxc#!constructor:::init! '#f)
    (define gxc#!accessor:::init!
      (lambda (_%self185934%_ _%id185935%_ _%slot185936%_ _%checked?185937%_)
        (let ((_%self185940%_ _%self185934%_))
          (gxc#&!accessor-id-set! _%self185940%_ _%id185935%_)
          (gxc#&!accessor-slot-set! _%self185940%_ _%slot185936%_)
          (gxc#&!accessor-checked?-set! _%self185940%_ _%checked?185937%_)
          (gxc#&!accessor-signature-set!
           _%self185940%_
           (gxc#make-!signature
            'return:
            't::t
            'effect:
            '(pure)
            'arguments:
            (cons _%id185935%_ '()))))))
    (bind-method! gxc#!accessor::t ':init! gxc#!accessor:::init! '#f)
    (define gxc#!mutator:::init!
      (lambda (_%self185795%_ _%id185796%_ _%slot185797%_ _%checked?185798%_)
        (let ((_%self185801%_ _%self185795%_))
          (gxc#&!mutator-id-set! _%self185801%_ _%id185796%_)
          (gxc#&!mutator-slot-set! _%self185801%_ _%slot185797%_)
          (gxc#&!mutator-checked?-set! _%self185801%_ _%checked?185798%_)
          (gxc#&!mutator-signature-set!
           _%self185801%_
           (gxc#make-!signature
            'return:
            'void::t
            'effect:
            '(mut)
            'arguments:
            (cons _%id185796%_ (cons 't::t '())))))))
    (bind-method! gxc#!mutator::t ':init! gxc#!mutator:::init! '#f)
    (define gxc#!lambda:::init!
      (let ((_%$%kw-lambda185634185667%_
             (let ((_%$%kw-lambda-main185635185660%_
                    (lambda (_%@@keywords185639%_
                             _%$%signature185636185640%_
                             _%self185641%_
                             _%arity185642%_
                             _%dispatch185643%_)
                      (let* ((_%signature185645%_
                              (if (eq? _%$%signature185636185640%_
                                       absent-value)
                                  '#f
                                  _%$%signature185636185640%_))
                             (_%self185648%_ _%self185641%_))
                        (gxc#&!lambda-id-set! _%self185648%_ 'procedure)
                        (gxc#&!lambda-arity-set!
                         _%self185648%_
                         _%arity185642%_)
                        (gxc#&!lambda-dispatch-set!
                         _%self185648%_
                         _%dispatch185643%_)
                        (gxc#&!lambda-signature-set!
                         _%self185648%_
                         _%signature185645%_)))))
               (lambda (_%@@keywords185663%_ . _%args185664%_)
                 (apply _%$%kw-lambda-main185635185660%_
                        _%@@keywords185663%_
                        (symbolic-table-ref
                         _%@@keywords185663%_
                         'signature:
                         absent-value)
                        _%args185664%_)))))
        (lambda _%$%args185637185670%_
          (apply keyword-dispatch
                 '#(signature:)
                 _%$%kw-lambda185634185667%_
                 _%$%args185637185670%_))))
    (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
    (define gxc#!case-lambda:::init!
      (let ((_%$%kw-lambda185475185507%_
             (let ((_%$%kw-lambda-main185476185500%_
                    (lambda (_%@@keywords185480%_
                             _%$%signature185477185481%_
                             _%self185482%_
                             _%clauses185483%_)
                      (let* ((_%signature185485%_
                              (if (eq? _%$%signature185477185481%_
                                       absent-value)
                                  '#f
                                  _%$%signature185477185481%_))
                             (_%self185488%_ _%self185482%_))
                        (gxc#&!case-lambda-id-set! _%self185488%_ 'procedure)
                        (gxc#&!case-lambda-signature-set!
                         _%self185488%_
                         _%signature185485%_)
                        (gxc#&!case-lambda-clauses-set!
                         _%self185488%_
                         _%clauses185483%_)))))
               (lambda (_%@@keywords185503%_ . _%args185504%_)
                 (apply _%$%kw-lambda-main185476185500%_
                        _%@@keywords185503%_
                        (symbolic-table-ref
                         _%@@keywords185503%_
                         'signature:
                         absent-value)
                        _%args185504%_)))))
        (lambda _%$%args185478185510%_
          (apply keyword-dispatch
                 '#(signature:)
                 _%$%kw-lambda185475185507%_
                 _%$%args185478185510%_))))
    (bind-method! gxc#!case-lambda::t ':init! gxc#!case-lambda:::init! '#f)
    (define gxc#!kw-lambda:::init!
      (lambda (_%self185338%_ _%tab185339%_ _%dispatch185340%_)
        (let ((_%self185343%_ _%self185338%_))
          (gxc#&!kw-lambda-id-set! _%self185343%_ 'procedure)
          (gxc#&!kw-lambda-table-set! _%self185343%_ _%tab185339%_)
          (gxc#&!kw-lambda-dispatch-set! _%self185343%_ _%dispatch185340%_))))
    (bind-method! gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f)
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self185200%_ _%keys185201%_ _%main185202%_)
        (let ((_%self185205%_ _%self185200%_))
          (gxc#&!kw-lambda-primary-id-set! _%self185205%_ 'procedure)
          (gxc#&!kw-lambda-primary-keys-set! _%self185205%_ _%keys185201%_)
          (gxc#&!kw-lambda-primary-main-set! _%self185205%_ _%main185202%_))))
    (bind-method!
     gxc#!kw-lambda-primary::t
     ':init!
     gxc#!kw-lambda-primary:::init!
     '#f)
    (define gxc#!primitive-lambda:::init! gxc#!lambda:::init!)
    (bind-method!
     gxc#!primitive-lambda::t
     ':init!
     gxc#!primitive-lambda:::init!
     '#f)
    (define gxc#!primitive-case-lambda:::init! gxc#!case-lambda:::init!)
    (bind-method!
     gxc#!primitive-case-lambda::t
     ':init!
     gxc#!primitive-case-lambda:::init!
     '#f)
    (define gxc#!primitive-predicate:::init!
      (lambda (_%self184819%_ _%id184820%_)
        (let ((_%self184823%_ _%self184819%_))
          (gxc#&!primitive-predicate-id-set! _%self184823%_ _%id184820%_)
          (gxc#&!primitive-predicate-signature-set!
           _%self184823%_
           (gxc#make-!signature
            'return:
            'boolean::t
            'effect:
            '(pure)
            'arguments:
            '(t::t))))))
    (bind-method!
     gxc#!primitive-predicate::t
     ':init!
     gxc#!primitive-predicate:::init!
     '#f)
    (define gxc#!class-method-table
      (lambda (_%klass184689%_)
        (let ((_%$e184691%_ (gxc#!class-methods _%klass184689%_)))
          (if _%$e184691%_
              _%$e184691%_
              (let ((_%tab184695%_ (make-hash-table-eq)))
                (gxc#!class-methods-set! _%klass184689%_ _%tab184695%_)
                _%tab184695%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass184681%_ _%method184682%_)
        (let ((_%$%tab184683184685%_ (gxc#!class-methods _%klass184681%_)))
          (if _%$%tab184683184685%_
              (let ((_%tab184687%_ _%$%tab184683184685%_))
                (hash-get _%tab184687%_ _%method184682%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a184666%_ _%type-b184667%_)
        (if _%type-a184666%_
            (if _%type-b184667%_
                (let ((_%$e184669%_ (eq? _%type-a184666%_ _%type-b184667%_)))
                  (if _%$e184669%_
                      _%$e184669%_
                      (let ((_%$e184672%_
                             (eq? (gxc#!type-id _%type-b184667%_) 't)))
                        (if _%$e184672%_
                            _%$e184672%_
                            (let ((_%$e184675%_
                                   (if (gxc#!procedure? _%type-a184666%_)
                                       (eq? (gxc#!type-id _%type-b184667%_)
                                            'procedure)
                                       '#f)))
                              (if _%$e184675%_
                                  _%$e184675%_
                                  (let ((_%$e184678%_
                                         (if (gxc#!class? _%type-a184666%_)
                                             (if (gxc#!class? _%type-b184667%_)
                                                 (gxc#!class-subclass?
                                                  _%type-a184666%_
                                                  _%type-b184667%_)
                                                 '#f)
                                             '#f)))
                                    (if _%$e184678%_
                                        _%$e184678%_
                                        (if (gxc#!interface? _%type-a184666%_)
                                            (eq? (gxc#!type-id
                                                  _%type-b184667%_)
                                                 'interface-descriptor::t)
                                            '#f)))))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a184617%_ _%klass-b184618%_)
        (let ((_%$e184620%_
               (eq? (gxc#!type-id _%klass-a184617%_)
                    (gxc#!type-id _%klass-b184618%_))))
          (if _%$e184620%_
              _%$e184620%_
              (let ((_%klass-id-b184623%_ (gxc#!type-id _%klass-b184618%_))
                    (_%precedence-list184624%_
                     (gxc#!class-precedence-list _%klass-a184617%_)))
                (let _%loop184626%_ ((_%rest184628%_
                                      _%precedence-list184624%_))
                  (let* ((_%$%rest184629184637%_ _%rest184628%_)
                         (_%$%E184632184641%_
                          (lambda ()
                            (error '"No clause matching"
                                   _%$%rest184629184637%_
                                   '([klass-name . rest])
                                   'else)
                            (void)))
                         (_%$%else184631184645%_ (lambda () '#f))
                         (_%$%K184633184654%_
                          (lambda (_%rest184648%_ _%klass-name184649%_)
                            (let ((_%$e184651%_
                                   (eq? (gxc#!type-id
                                         (gxc#optimizer-resolve-class
                                          (cons 'subclass?
                                                (cons _%klass-a184617%_
                                                      (cons _%klass-b184618%_
                                                            '())))
                                          _%klass-name184649%_))
                                        _%klass-id-b184623%_)))
                              (if _%$e184651%_
                                  _%$e184651%_
                                  (_%loop184626%_ _%rest184648%_))))))
                    (if (pair? _%$%rest184629184637%_)
                        (let ((_%$%hd184634184657%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest184629184637%_)))
                              (_%$%tl184635184659%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest184629184637%_))))
                          (let* ((_%klass-name184662%_ _%$%hd184634184657%_)
                                 (_%rest184664%_ _%$%tl184635184659%_))
                            (_%$%K184633184654%_
                             _%rest184664%_
                             _%klass-name184662%_)))
                        (_%$%else184631184645%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type184615%_)
        (if (gxc#!class? _%type184615%_)
            (memq 'interface-instance::t
                  (gxc#!class-precedence-list _%type184615%_))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc184604%_)
        (if (gxc#!procedure? _%proc184604%_)
            (let ((_%proc184607%_ _%proc184604%_))
              (if (gxc#&!procedure-signature _%proc184607%_)
                  (gxc#&!signature-origin
                   (gxc#&!procedure-signature _%proc184607%_))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@365.11-365.15"
               'contract:
               '!procedure?
               'value:
               _%proc184604%_)
              (void)))))
    (define gxc#optimizer-declare-type!
      (let ((_%$%opt-lambda184584184592%_
             (lambda (_%sym184586%_ _%type184587%_ _%local?184588%_)
               (if (gxc#!type? _%type184587%_)
                   '#!void
                   (error '"bad declaration: expected !type"
                          _%sym184586%_
                          _%type184587%_))
               (gxc#verbose '"declare-type " _%sym184586%_ '" " _%type184587%_)
               (let ((_%table184590%_
                      (if _%local?184588%_
                          (gxc#current-compile-local-type)
                          (gxc#optimizer-info-type
                           (gxc#current-compile-optimizer-info)))))
                 (hash-put! _%table184590%_ _%sym184586%_ _%type184587%_)))))
        (lambda _g187189_
          (let ((_g187190_ (let () (declare (not safe)) (##length _g187189_))))
            (cond ((let () (declare (not safe)) (##fx= _g187190_ 2))
                   (apply (lambda (_%sym184595%_ _%type184596%_)
                            (let ((_%local?184598%_ '#f))
                              (_%$%opt-lambda184584184592%_
                               _%sym184595%_
                               _%type184596%_
                               _%local?184598%_)))
                          _g187189_))
                  ((let () (declare (not safe)) (##fx= _g187190_ 3))
                   (apply _%$%opt-lambda184584184592%_ _g187189_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-type!
                    _g187189_)))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym184580%_ _%type184581%_)
        (if (gxc#!class? _%type184581%_)
            '#!void
            (error '"bad declaration: expected !class"
                   _%sym184580%_
                   _%type184581%_))
        (let ((_%table184583%_
               (gxc#optimizer-info-classes
                (gxc#current-compile-optimizer-info))))
          (gxc#verbose
           '"declare-class "
           _%sym184580%_
           '" "
           (struct->list _%type184581%_))
          (hash-put! _%table184583%_ _%sym184580%_ _%type184581%_)
          (hash-put! _%table184583%_ _%type184581%_ _%sym184580%_))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym184575%_ _%type184576%_)
        (if (gxc#!class? _%type184576%_)
            '#!void
            (error '"bad declaration: expected !class"
                   _%sym184575%_
                   _%type184576%_))
        (let ((_%table184578%_
               (gxc#optimizer-info-classes
                (gxc#current-compile-optimizer-info))))
          (if (hash-get _%table184578%_ _%sym184575%_)
              '#!void
              (begin
                (gxc#verbose
                 '"declare-builtin-class "
                 _%sym184575%_
                 '" "
                 (struct->list _%type184576%_))
                (hash-put! _%table184578%_ _%sym184575%_ _%type184576%_)
                (hash-put! _%table184578%_ _%type184576%_ _%sym184575%_))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym184573%_)
        (gxc#verbose '"clear-type " _%sym184573%_)
        (hash-remove! (gxc#current-compile-local-type) _%sym184573%_)
        (hash-remove!
         (gxc#optimizer-info-type (gxc#current-compile-optimizer-info))
         _%sym184573%_)))
    (define gxc#optimizer-declare-method!
      (let ((_%$%opt-lambda184539184559%_
             (lambda (_%type-t184541%_
                      _%method184542%_
                      _%sym184543%_
                      _%rebind?184544%_)
               (hash-put!
                (gxc#optimizer-info-methods
                 (gxc#current-compile-optimizer-info))
                _%sym184543%_
                '#t)
               (let ((_%klass184546%_
                      (gxc#optimizer-lookup-class _%type-t184541%_)))
                 (if _%klass184546%_
                     (let* ((_%vtab184548%_
                             (gxc#!class-method-table _%klass184546%_))
                            (_%$e184550%_
                             (hash-get _%vtab184548%_ _%method184542%_)))
                       (if _%$e184550%_
                           ((lambda (_%existing184553%_)
                              (if _%rebind?184544%_
                                  (let ()
                                    (gxc#verbose
                                     '"declare-method: rebind existing method"
                                     _%type-t184541%_
                                     '" "
                                     _%method184542%_)
                                    (hash-put!
                                     _%vtab184548%_
                                     _%method184542%_
                                     _%sym184543%_))
                                  (if (eq? _%existing184553%_ _%sym184543%_)
                                      (void)
                                      (gxc#raise-compile-error
                                       '"declare-method: duplicate method declaration"
                                       (cons 'bind-method!
                                             (cons _%type-t184541%_
                                                   (cons _%method184542%_
                                                         (cons _%sym184543%_
                                                               '()))))
                                       _%method184542%_))))
                            _%$e184550%_)
                           (let ()
                             (gxc#verbose
                              '"declare-method "
                              _%type-t184541%_
                              '" "
                              _%method184542%_
                              '" => "
                              _%sym184543%_)
                             (hash-put!
                              _%vtab184548%_
                              _%method184542%_
                              _%sym184543%_))))
                     (gxc#verbose
                      '"declare-method: unknown class"
                      _%type-t184541%_))))))
        (lambda _g187191_
          (let ((_g187192_ (let () (declare (not safe)) (##length _g187191_))))
            (cond ((let () (declare (not safe)) (##fx= _g187192_ 3))
                   (apply (lambda (_%type-t184562%_
                                   _%method184563%_
                                   _%sym184564%_)
                            (let ((_%rebind?184566%_ '#f))
                              (_%$%opt-lambda184539184559%_
                               _%type-t184562%_
                               _%method184563%_
                               _%sym184564%_
                               _%rebind?184566%_)))
                          _g187191_))
                  ((let () (declare (not safe)) (##fx= _g187192_ 4))
                   (apply _%$%opt-lambda184539184559%_ _g187191_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-method!
                    _g187191_)))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym184527%_)
        (let ((_%$e184529%_
               (agetq _%sym184527%_ (gxc#current-compile-path-type))))
          (if _%$e184529%_
              _%$e184529%_
              (let ((_%$e184537%_
                     (let ((_%$%ht184531184533%_
                            (gxc#current-compile-local-type)))
                       (if _%$%ht184531184533%_
                           (let ((_%ht184535%_ _%$%ht184531184533%_))
                             (hash-get _%ht184535%_ _%sym184527%_))
                           '#f))))
                (if _%$e184537%_
                    _%$e184537%_
                    (hash-get
                     (gxc#optimizer-info-type
                      (gxc#current-compile-optimizer-info))
                     _%sym184527%_)))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym184520%_)
        (let ((_%$%type184521184523%_
               (gxc#optimizer-lookup-type _%sym184520%_)))
          (if _%$%type184521184523%_
              (let ((_%type184525%_ _%$%type184521184523%_))
                (if (gxc#!alias? _%type184525%_)
                    (gxc#optimizer-resolve-type (gxc#!type-id _%type184525%_))
                    _%type184525%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym184516%_)
        (let ((_%table184518%_
               (gxc#optimizer-info-classes
                (gxc#current-compile-optimizer-info))))
          (hash-get _%table184518%_ _%sym184516%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where184501%_ _%sym184502%_)
        (let ((_%$e184505%_ (gxc#optimizer-lookup-class _%sym184502%_)))
          (if _%$e184505%_
              ((lambda (_%$%g184507184509%_)
                 (let ((_%val184512%_ _%$%g184507184509%_))
                   (if (gxc#!class? _%val184512%_)
                       _%val184512%_
                       (begin
                         (raise-contract-violation-error
                          '"contract violation"
                          'context:
                          'gerbil/compiler/optimize-base
                          'contract:
                          '(!class? val)
                          'value:
                          _%val184512%_)
                         (void)))))
               _%$e184505%_)
              (let ()
                (gxc#raise-compile-error
                 '"unknown class"
                 _%where184501%_
                 _%sym184502%_)
                (void))))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass184499%_)
        (hash-get
         (gxc#optimizer-info-classes (gxc#current-compile-optimizer-info))
         _%klass184499%_)))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t184496%_ _%method184497%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t184496%_)
         _%method184497%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym184494%_)
        (hash-get
         (gxc#optimizer-info-methods (gxc#current-compile-optimizer-info))
         _%sym184494%_)))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e183969%_
                  (lambda (_%t184435%_)
                    (if (symbol? _%t184435%_)
                        (_%type-e183969%_
                         (gxc#optimizer-lookup-type _%t184435%_))
                        (if (gxc#!lambda? _%t184435%_)
                            (let* ((_%t184439%_ _%t184435%_)
                                   (_%t184443%_ _%t184439%_))
                              (_%__lambda-type184095%_ _%t184443%_))
                            (if (gxc#!kw-lambda? _%t184435%_)
                                (let* ((_%t184455%_ _%t184435%_)
                                       (_%t184459%_ _%t184455%_))
                                  (_%__kw-lambda-type184218%_ _%t184459%_))
                                (if (gxc#!kw-lambda-primary? _%t184435%_)
                                    (let* ((_%t184470%_ _%t184435%_)
                                           (_%t184474%_ _%t184470%_))
                                      (_%__kw-lambda-primary-type184341%_
                                       _%t184474%_))
                                    (if (gxc#!procedure? _%t184435%_)
                                        (cons 'procedure
                                              (let ((_%t184485%_ _%t184435%_))
                                                (if (gxc#&!procedure-signature
                                                     _%t184485%_)
                                                    (gxc#&!signature-return
                                                     (gxc#&!procedure-signature
                                                      _%t184485%_))
                                                    '#f)))
                                        (if (gxc#!type? _%t184435%_)
                                            (gxc#!type-id _%t184435%_)
                                            '#f))))))))
                 (_%__lambda-type184095%_
                  (lambda (_%t184423%_)
                    (let ((_%t184426%_ _%t184423%_))
                      (if (gxc#&!lambda-dispatch _%t184426%_)
                          (_%type-e183969%_
                           (gxc#&!lambda-dispatch _%t184426%_))
                          (cons 'procedure
                                (if (gxc#&!lambda-signature _%t184426%_)
                                    (gxc#&!signature-return
                                     (gxc#&!lambda-signature _%t184426%_))
                                    '#f))))))
                 (_%lambda-type184096%_
                  (lambda (_%t184411%_)
                    (let ((_%t184414%_ _%t184411%_))
                      (_%__lambda-type184095%_ _%t184414%_))))
                 (_%__kw-lambda-type184218%_
                  (lambda (_%t184399%_)
                    (let ((_%t184402%_ _%t184399%_))
                      (_%type-e183969%_
                       (gxc#&!kw-lambda-dispatch _%t184402%_)))))
                 (_%kw-lambda-type184219%_
                  (lambda (_%t184387%_)
                    (let ((_%t184390%_ _%t184387%_))
                      (_%__kw-lambda-type184218%_ _%t184390%_))))
                 (_%__kw-lambda-primary-type184341%_
                  (lambda (_%t184375%_)
                    (let ((_%t184378%_ _%t184375%_))
                      (_%type-e183969%_
                       (gxc#&!kw-lambda-primary-main _%t184378%_)))))
                 (_%kw-lambda-primary-type184342%_
                  (lambda (_%t184363%_)
                    (let ((_%t184366%_ _%t184363%_))
                      (_%__kw-lambda-primary-type184341%_ _%t184366%_)))))
          (let* ((_%ht1184344%_
                  (gxc#optimizer-info-type
                   (gxc#current-compile-optimizer-info)))
                 (_%ht2184346%_ (gxc#current-compile-local-type))
                 (_%result184348%_
                  (if _%ht1184344%_ (hash->list _%ht1184344%_) '()))
                 (_%result184350%_
                  (if _%ht2184346%_
                      (foldl cons _%result184348%_ (hash->list _%ht2184346%_))
                      _%result184348%_)))
            (for-each
             (lambda (_%p184353%_)
               (let* ((_%t184355%_ (cdr _%p184353%_))
                      (_%tr184357%_ (_%type-e183969%_ _%t184355%_)))
                 (set-cdr! _%p184353%_ _%tr184357%_)))
             _%result184350%_)
            (list-sort
             (lambda (_%a184360%_ _%b184361%_)
               (string<?
                (symbol->string (car _%a184360%_))
                (symbol->string (car _%b184361%_))))
             _%result184350%_)))))))
