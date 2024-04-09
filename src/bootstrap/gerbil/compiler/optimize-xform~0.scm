(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1712697257)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp150291 (list gxc#::void::t))
            (__tmp150290 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp150291
         '()
         __tmp150290
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args150031%_
        (apply make-instance gxc#::collect-mutators::t _%$args150031%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp150292
             (lambda ()
               (force gxc#::void-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#begin
                  gxc#apply-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#begin-syntax
                  gxc#apply-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#begin-annotation
                  gxc#apply-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#module
                  gxc#apply-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#define-values
                  gxc#apply-define-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#define-syntax
                  gxc#apply-define-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#lambda
                  gxc#apply-body-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#case-lambda
                  gxc#apply-body-case-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#let-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#letrec-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#letrec*-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#call
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#call-unchecked
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#if
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#set!
                  gxc#collect-mutators-setq%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#struct-instance?
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#struct-direct-instance?
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#struct-ref
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#struct-set!
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#struct-direct-ref
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#struct-direct-set!
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#struct-unchecked-ref
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-mutators::t
                  '%#struct-unchecked-set!
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::collect-mutators::t)))))
        (declare (not safe))
        (__make-promise __tmp150292)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx150023%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self150026%_
                (let ((__obj150278
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj150278))
               (__tmp150293
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self150026%_ _%stx150023%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150293
           gxc#current-compile-method
           _%self150026%_))))
    (define gxc#::collect-methods::t
      (let ((__tmp150295 (list gxc#::void::t))
            (__tmp150294 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-methods::t
         '::collect-methods
         __tmp150295
         '()
         __tmp150294
         '#f)))
    (define gxc#::collect-methods?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-methods::t)))
    (define gxc#make-::collect-methods
      (lambda _%$args150020%_
        (apply make-instance gxc#::collect-methods::t _%$args150020%_)))
    (define gxc#::collect-methods-bind-methods!
      (let ((__tmp150296
             (lambda ()
               (force gxc#::void-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-methods::t
                  '%#begin
                  gxc#apply-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-methods::t
                  '%#begin-syntax
                  gxc#apply-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-methods::t
                  '%#module
                  gxc#apply-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-methods::t
                  '%#call
                  gxc#collect-methods-call%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-methods::t
                  '%#call-unchecked
                  gxc#collect-methods-call%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::collect-methods::t)))))
        (declare (not safe))
        (__make-promise __tmp150296)))
    (define gxc#apply-collect-methods
      (lambda (_%stx150012%_)
        (force gxc#::collect-methods-bind-methods!)
        (let* ((_%self150015%_
                (let ((__obj150280
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-methods::t))))
                  __obj150280))
               (__tmp150297
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self150015%_ _%stx150012%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150297
           gxc#current-compile-method
           _%self150015%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp150299 (list gxc#::basic-xform-expression::t))
            (__tmp150298 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp150299
         '(id new-id)
         __tmp150298
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args150009%_
        (apply make-instance gxc#::expression-subst::t _%$args150009%_)))
    (define gxc#::expression-subst-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::expression-subst::t 'id)))
    (define gxc#::expression-subst-new-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::expression-subst::t 'new-id)))
    (define gxc#::expression-subst-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::expression-subst::t 'id)))
    (define gxc#::expression-subst-new-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::expression-subst::t 'new-id)))
    (define gxc#&::expression-subst-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#::expression-subst::t 'id)))
    (define gxc#&::expression-subst-new-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::expression-subst::t
         'new-id)))
    (define gxc#&::expression-subst-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#::expression-subst::t 'id)))
    (define gxc#&::expression-subst-new-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::expression-subst::t
         'new-id)))
    (define gxc#::expression-subst-bind-methods!
      (let ((__tmp150300
             (lambda ()
               (force gxc#::basic-xform-expression-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::expression-subst::t
                  '%#begin
                  gxc#xform-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::expression-subst::t
                  '%#ref
                  gxc#expression-subst-ref%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::expression-subst::t
                  '%#set!
                  gxc#expression-subst-setq%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::expression-subst::t)))))
        (declare (not safe))
        (__make-promise __tmp150300)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords149979%_
               _%id149975149980%_
               _%new-id149976149982%_
               _%stx149984%_)
        (let* ((_%id149987%_
                (if (eq? _%id149975149980%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id149975149980%_))
               (_%new-id149989%_
                (if (eq? _%new-id149976149982%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id149976149982%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self149991%_
                  (let ((__obj150282
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150282
                       _%id149987%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150282
                       _%new-id149989%_
                       '2
                       '#f
                       '#f))
                    __obj150282))
                 (__tmp150301
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self149991%_ _%stx149984%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150301
             gxc#current-compile-method
             _%self149991%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords149998%_ . _%args149999%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords149998%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords149998%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords149998%_
                  'new-id:
                  absent-value))
               _%args149999%_)))
    (define gxc#apply-expression-subst
      (lambda _%args149977150005%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args149977150005%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp150303 (list gxc#::basic-xform-expression::t))
            (__tmp150302 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp150303
         '(subst)
         __tmp150302
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args149971%_
        (apply make-instance gxc#::expression-subst*::t _%$args149971%_)))
    (define gxc#::expression-subst*-subst
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::expression-subst*::t 'subst)))
    (define gxc#::expression-subst*-subst-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::expression-subst*::t 'subst)))
    (define gxc#&::expression-subst*-subst
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::expression-subst*::t
         'subst)))
    (define gxc#&::expression-subst*-subst-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::expression-subst*::t
         'subst)))
    (define gxc#::expression-subst*-bind-methods!
      (let ((__tmp150304
             (lambda ()
               (force gxc#::basic-xform-expression-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::expression-subst*::t
                  '%#begin
                  gxc#xform-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::expression-subst*::t
                  '%#ref
                  gxc#expression-subst*-ref%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::expression-subst*::t
                  '%#set!
                  gxc#expression-subst*-setq%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::expression-subst*::t)))))
        (declare (not safe))
        (__make-promise __tmp150304)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords149945%_ _%subst149942149946%_ _%stx149948%_)
        (let ((_%subst149951%_
               (if (eq? _%subst149942149946%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst149942149946%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self149953%_
                  (let ((__obj150284
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150284
                       _%subst149951%_
                       '1
                       '#f
                       '#f))
                    __obj150284))
                 (__tmp150305
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self149953%_ _%stx149948%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150305
             gxc#current-compile-method
             _%self149953%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords149960%_ . _%args149961%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords149960%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords149960%_
                  'subst:
                  absent-value))
               _%args149961%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args149943149967%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args149943149967%_)))
    (define gxc#::find-expression::t
      (let ((__tmp150306 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp150306
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args149938%_
        (apply make-instance gxc#::find-expression::t _%$args149938%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp150307
             (lambda ()
               (force gxc#::false-expression-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#begin
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#begin-annotation
                  gxc#apply-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#lambda
                  gxc#apply-body-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#case-lambda
                  gxc#apply-body-case-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#let-values
                  gxc#find-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#letrec-values
                  gxc#find-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#letrec*-values
                  gxc#find-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#call
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#call-unchecked
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#if
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#set!
                  gxc#apply-body-setq%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#struct-instance?
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#struct-direct-instance?
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#struct-ref
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#struct-set!
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#struct-direct-ref
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#struct-direct-set!
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#struct-unchecked-ref
                  gxc#find-body%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-expression::t
                  '%#struct-unchecked-set!
                  gxc#find-body%)))))
        (declare (not safe))
        (__make-promise __tmp150307)))
    (define gxc#::find-var-refs::t
      (let ((__tmp150309 (list gxc#::find-expression::t))
            (__tmp150308 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp150309
         '(ids)
         __tmp150308
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args149934%_
        (apply make-instance gxc#::find-var-refs::t _%$args149934%_)))
    (define gxc#::find-var-refs-ids
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::find-var-refs::t 'ids)))
    (define gxc#::find-var-refs-ids-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::find-var-refs::t 'ids)))
    (define gxc#&::find-var-refs-ids
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#::find-var-refs::t 'ids)))
    (define gxc#&::find-var-refs-ids-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#::find-var-refs::t 'ids)))
    (define gxc#::find-var-refs-bind-methods!
      (let ((__tmp150310
             (lambda ()
               (force gxc#::find-expression-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-var-refs::t
                  '%#ref
                  gxc#find-var-refs-ref%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-var-refs::t
                  '%#set!
                  gxc#find-var-refs-setq%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::find-var-refs::t)))))
        (declare (not safe))
        (__make-promise __tmp150310)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords149908%_ _%ids149905149909%_ _%stx149911%_)
        (let ((_%ids149914%_
               (if (eq? _%ids149905149909%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids149905149909%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self149916%_
                  (let ((__obj150287
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150287
                       _%ids149914%_
                       '1
                       '#f
                       '#f))
                    __obj150287))
                 (__tmp150311
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self149916%_ _%stx149911%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150311
             gxc#current-compile-method
             _%self149916%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords149923%_ . _%args149924%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords149923%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords149923%_ 'ids: absent-value))
               _%args149924%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args149906149930%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args149906149930%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp150313 (list gxc#::collect-expression-refs::t))
            (__tmp150312 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp150313
         '()
         __tmp150312
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args149901%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args149901%_)))
    (define gxc#::collect-runtime-refs-table
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::collect-runtime-refs::t 'table)))
    (define gxc#::collect-runtime-refs-table-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::collect-runtime-refs::t 'table)))
    (define gxc#&::collect-runtime-refs-table
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::collect-runtime-refs::t
         'table)))
    (define gxc#&::collect-runtime-refs-table-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::collect-runtime-refs::t
         'table)))
    (define gxc#::collect-runtime-refs-bind-methods!
      (let ((__tmp150314
             (lambda ()
               (force gxc#::collect-expression-refs-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-runtime-refs::t
                  '%#ref
                  gxc#collect-runtime-refs-ref%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-runtime-refs::t
                  '%#set!
                  gxc#collect-runtime-refs-setq%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::collect-runtime-refs::t)))))
        (declare (not safe))
        (__make-promise __tmp150314)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords149875%_ _%table149872149876%_ _%stx149878%_)
        (let ((_%table149881%_
               (if (eq? _%table149872149876%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table149872149876%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self149883%_
                  (let ((__obj150289
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150289
                       _%table149881%_
                       '1
                       '#f
                       '#f))
                    __obj150289))
                 (__tmp150315
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self149883%_ _%stx149878%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150315
             gxc#current-compile-method
             _%self149883%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords149890%_ . _%args149891%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords149890%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords149890%_
                  'table:
                  absent-value))
               _%args149891%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args149873149897%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args149873149897%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self149801%_ _%stx149802%_)
        (let* ((_%g149804149821%_
                (lambda (_%g149805149818%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149805149818%_))))
               (_%g149803149868%_
                (lambda (_%g149805149824%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149805149824%_))
                      (let ((_%e149808149826%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149805149824%_))))
                        (let ((_%hd149809149829%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149808149826%_)))
                              (_%tl149810149831%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149808149826%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149810149831%_))
                              (let ((_%e149811149834%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149810149831%_))))
                                (let ((_%hd149812149837%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149811149834%_)))
                                      (_%tl149813149839%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149811149834%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149813149839%_))
                                      (let ((_%e149814149842%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149813149839%_))))
                                        (let ((_%hd149815149845%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149814149842%_)))
                                              (_%tl149816149847%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149814149842%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149816149847%_))
                                              ((lambda (_%L149850%_
                                                        _%L149851%_)
                                                 (let ((_%sym149866%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L149851%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym149866%_))
                                                   (let ((__tmp150316
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp150316
                                                      _%sym149866%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self149801%_
                                                      _%L149850%_))))
                                               _%hd149815149845%_
                                               _%hd149812149837%_)
                                              (_%g149804149821%_
                                               _%g149805149824%_))))
                                      (_%g149804149821%_ _%g149805149824%_))))
                              (_%g149804149821%_ _%g149805149824%_))))
                      (_%g149804149821%_ _%g149805149824%_)))))
          (_%g149803149868%_ _%stx149802%_))))
    (define gxc#collect-methods-call%
      (lambda (_%self149354%_ _%stx149355%_)
        (let* ((_%__stx150034150035%_ _%stx149355%_)
               (_%g149359149461%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx150034150035%_)))))
          (let ((_%__kont150036150037%_
                 (lambda (_%L149751%_
                          _%L149752%_
                          _%L149753%_
                          _%L149754%_
                          _%L149755%_)
                   (let ((__tmp150317
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _%L149752%_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp150317))))
                (_%__kont150038150039%_
                 (lambda (_%L149577%_ _%L149578%_ _%L149579%_ _%L149580%_)
                   (let ((__tmp150318
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _%L149577%_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp150318))))
                (_%__kont150040150041%_ (lambda () '#!void)))
            (let ((_%__match150169150170%_
                   (lambda (_%e149366149623%_
                            _%hd149367149626%_
                            _%tl149368149628%_
                            _%e149369149631%_
                            _%hd149370149634%_
                            _%tl149371149636%_
                            _%e149372149639%_
                            _%hd149373149642%_
                            _%tl149374149644%_
                            _%e149375149647%_
                            _%hd149376149650%_
                            _%tl149377149652%_
                            _%e149378149655%_
                            _%hd149379149658%_
                            _%tl149380149660%_
                            _%e149381149663%_
                            _%hd149382149666%_
                            _%tl149383149668%_
                            _%e149384149671%_
                            _%hd149385149674%_
                            _%tl149386149676%_
                            _%e149387149679%_
                            _%hd149388149682%_
                            _%tl149389149684%_
                            _%e149390149687%_
                            _%hd149391149690%_
                            _%tl149392149692%_
                            _%e149393149695%_
                            _%hd149394149698%_
                            _%tl149395149700%_
                            _%e149396149703%_
                            _%hd149397149706%_
                            _%tl149398149708%_
                            _%e149399149711%_
                            _%hd149400149714%_
                            _%tl149401149716%_
                            _%e149402149719%_
                            _%hd149403149722%_
                            _%tl149404149724%_
                            _%e149405149727%_
                            _%hd149406149730%_
                            _%tl149407149732%_
                            _%e149408149735%_
                            _%hd149409149738%_
                            _%tl149410149740%_
                            _%e149411149743%_
                            _%hd149412149746%_
                            _%tl149413149748%_)
                     (let ((_%L149751%_ _%hd149412149746%_)
                           (_%L149752%_ _%hd149403149722%_)
                           (_%L149753%_ _%hd149394149698%_)
                           (_%L149754%_ _%hd149385149674%_)
                           (_%L149755%_ _%hd149376149650%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L149755%_
                              'bind-method!))
                           (_%__kont150036150037%_
                            _%L149751%_
                            _%L149752%_
                            _%L149753%_
                            _%L149754%_
                            _%L149755%_)
                           (_%__kont150040150041%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx150034150035%_))
                  (let ((_%e149366149623%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx150034150035%_))))
                    (let ((_%tl149368149628%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e149366149623%_)))
                          (_%hd149367149626%_
                           (let ()
                             (declare (not safe))
                             (##car _%e149366149623%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl149368149628%_))
                          (let ((_%e149369149631%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl149368149628%_))))
                            (let ((_%tl149371149636%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e149369149631%_)))
                                  (_%hd149370149634%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e149369149631%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd149370149634%_))
                                  (let ((_%e149372149639%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd149370149634%_))))
                                    (let ((_%tl149374149644%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e149372149639%_)))
                                          (_%hd149373149642%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e149372149639%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd149373149642%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd149373149642%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl149374149644%_))
                                                  (let ((_%e149375149647%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl149374149644%_))))
                                                    (let ((_%tl149377149652%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e149375149647%_)))
                                                          (_%hd149376149650%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e149375149647%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl149377149652%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl149371149636%_))
                      (let ((_%e149378149655%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl149371149636%_))))
                        (let ((_%tl149380149660%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149378149655%_)))
                              (_%hd149379149658%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149378149655%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd149379149658%_))
                              (let ((_%e149381149663%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd149379149658%_))))
                                (let ((_%tl149383149668%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149381149663%_)))
                                      (_%hd149382149666%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149381149663%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd149382149666%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd149382149666%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl149383149668%_))
                                              (let ((_%e149384149671%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl149383149668%_))))
                                                (let ((_%tl149386149676%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e149384149671%_)))
                                                      (_%hd149385149674%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e149384149671%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl149386149676%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl149380149660%_))
                                                          (let ((_%e149387149679%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl149380149660%_))))
                    (let ((_%tl149389149684%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e149387149679%_)))
                          (_%hd149388149682%_
                           (let ()
                             (declare (not safe))
                             (##car _%e149387149679%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd149388149682%_))
                          (let ((_%e149390149687%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd149388149682%_))))
                            (let ((_%tl149392149692%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e149390149687%_)))
                                  (_%hd149391149690%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e149390149687%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd149391149690%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd149391149690%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl149392149692%_))
                                          (let ((_%e149393149695%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl149392149692%_))))
                                            (let ((_%tl149395149700%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e149393149695%_)))
                                                  (_%hd149394149698%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e149393149695%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl149395149700%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl149389149684%_))
                                                      (let ((_%e149396149703%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl149389149684%_))))
                (let ((_%tl149398149708%_
                       (let () (declare (not safe)) (##cdr _%e149396149703%_)))
                      (_%hd149397149706%_
                       (let ()
                         (declare (not safe))
                         (##car _%e149396149703%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd149397149706%_))
                      (let ((_%e149399149711%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd149397149706%_))))
                        (let ((_%tl149401149716%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149399149711%_)))
                              (_%hd149400149714%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149399149711%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd149400149714%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd149400149714%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149401149716%_))
                                      (let ((_%e149402149719%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149401149716%_))))
                                        (let ((_%tl149404149724%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149402149719%_)))
                                              (_%hd149403149722%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149402149719%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149404149724%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl149398149708%_))
                                                  (let ((_%e149405149727%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl149398149708%_))))
                                                    (let ((_%tl149407149732%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e149405149727%_)))
                                                          (_%hd149406149730%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e149405149727%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd149406149730%_))
                                                          (let ((_%e149408149735%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd149406149730%_))))
                    (let ((_%tl149410149740%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e149408149735%_)))
                          (_%hd149409149738%_
                           (let ()
                             (declare (not safe))
                             (##car _%e149408149735%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd149409149738%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd149409149738%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl149410149740%_))
                                  (let ((_%e149411149743%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl149410149740%_))))
                                    (let ((_%tl149413149748%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e149411149743%_)))
                                          (_%hd149412149746%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e149411149743%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl149413149748%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149407149732%_))
                                              (_%__match150169150170%_
                                               _%e149366149623%_
                                               _%hd149367149626%_
                                               _%tl149368149628%_
                                               _%e149369149631%_
                                               _%hd149370149634%_
                                               _%tl149371149636%_
                                               _%e149372149639%_
                                               _%hd149373149642%_
                                               _%tl149374149644%_
                                               _%e149375149647%_
                                               _%hd149376149650%_
                                               _%tl149377149652%_
                                               _%e149378149655%_
                                               _%hd149379149658%_
                                               _%tl149380149660%_
                                               _%e149381149663%_
                                               _%hd149382149666%_
                                               _%tl149383149668%_
                                               _%e149384149671%_
                                               _%hd149385149674%_
                                               _%tl149386149676%_
                                               _%e149387149679%_
                                               _%hd149388149682%_
                                               _%tl149389149684%_
                                               _%e149390149687%_
                                               _%hd149391149690%_
                                               _%tl149392149692%_
                                               _%e149393149695%_
                                               _%hd149394149698%_
                                               _%tl149395149700%_
                                               _%e149396149703%_
                                               _%hd149397149706%_
                                               _%tl149398149708%_
                                               _%e149399149711%_
                                               _%hd149400149714%_
                                               _%tl149401149716%_
                                               _%e149402149719%_
                                               _%hd149403149722%_
                                               _%tl149404149724%_
                                               _%e149405149727%_
                                               _%hd149406149730%_
                                               _%tl149407149732%_
                                               _%e149408149735%_
                                               _%hd149409149738%_
                                               _%tl149410149740%_
                                               _%e149411149743%_
                                               _%hd149412149746%_
                                               _%tl149413149748%_)
                                              (_%__kont150040150041%_))
                                          (_%__kont150040150041%_))))
                                  (_%__kont150040150041%_))
                              (_%__kont150040150041%_))
                          (_%__kont150040150041%_))))
                  (_%__kont150040150041%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl149398149708%_))
                                                      (if (let ((__tmp150319
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp150319 'bind-method!))
                  (let ((_%L149577%_ _%hd149403149722%_)
                        (_%L149578%_ _%hd149394149698%_)
                        (_%L149579%_ _%hd149385149674%_)
                        (_%L149580%_ _%hd149376149650%_))
                    (_%__kont150038150039%_
                     _%L149577%_
                     _%L149578%_
                     _%L149579%_
                     _%L149580%_))
                  (_%__kont150040150041%_))
              (_%__kont150040150041%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont150040150041%_))))
                                      (_%__kont150040150041%_))
                                  (_%__kont150040150041%_))
                              (_%__kont150040150041%_))))
                      (_%__kont150040150041%_))))
              (_%__kont150040150041%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont150040150041%_))))
                                          (_%__kont150040150041%_))
                                      (_%__kont150040150041%_))
                                  (_%__kont150040150041%_))))
                          (_%__kont150040150041%_))))
                  (_%__kont150040150041%_))
              (_%__kont150040150041%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont150040150041%_))
                                          (_%__kont150040150041%_))
                                      (_%__kont150040150041%_))))
                              (_%__kont150040150041%_))))
                      (_%__kont150040150041%_))
                  (_%__kont150040150041%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont150040150041%_))
                                              (_%__kont150040150041%_))
                                          (_%__kont150040150041%_))))
                                  (_%__kont150040150041%_))))
                          (_%__kont150040150041%_))))
                  (_%__kont150040150041%_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_%self149302%_ _%stx149303%_)
        (let* ((_%g149305149318%_
                (lambda (_%g149306149315%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149306149315%_))))
               (_%g149304149351%_
                (lambda (_%g149306149321%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149306149321%_))
                      (let ((_%e149308149323%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149306149321%_))))
                        (let ((_%hd149309149326%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149308149323%_)))
                              (_%tl149310149328%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149308149323%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149310149328%_))
                              (let ((_%e149311149331%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149310149328%_))))
                                (let ((_%hd149312149334%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149311149331%_)))
                                      (_%tl149313149336%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149311149331%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149313149336%_))
                                      ((lambda (_%L149339%_)
                                         (if (let ((__tmp150320
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self149302%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L149339%_
                                                __tmp150320))
                                             (let ((__tmp150321
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self149302%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp150321
                                                _%stx149303%_))
                                             _%stx149303%_))
                                       _%hd149312149334%_)
                                      (_%g149305149318%_ _%g149306149321%_))))
                              (_%g149305149318%_ _%g149306149321%_))))
                      (_%g149305149318%_ _%g149306149321%_)))))
          (_%g149304149351%_ _%stx149303%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self149242%_ _%stx149243%_)
        (let* ((_%g149245149258%_
                (lambda (_%g149246149255%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149246149255%_))))
               (_%g149244149299%_
                (lambda (_%g149246149261%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149246149261%_))
                      (let ((_%e149248149263%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149246149261%_))))
                        (let ((_%hd149249149266%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149248149263%_)))
                              (_%tl149250149268%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149248149263%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149250149268%_))
                              (let ((_%e149251149271%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149250149268%_))))
                                (let ((_%hd149252149274%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149251149271%_)))
                                      (_%tl149253149276%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149251149271%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149253149276%_))
                                      ((lambda (_%L149279%_)
                                         (let ((_%$e149293%_
                                                (let ((__tmp150323
                                                       (lambda (_%sub149291%_)
                                                         (let ((__tmp150324
                                                                (car _%sub149291%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L149279%_
                                                            __tmp150324))))
                                                      (__tmp150322
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self149242%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp150323
                                                          __tmp150322))))
                                           (if _%$e149293%_
                                               ((lambda (_%sub149296%_)
                                                  (let ((__tmp150325
                                                         (cons '%#ref
                                                               (cons (cdr _%sub149296%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp150325
                                                     _%stx149243%_)))
                                                _%$e149293%_)
                                               _%stx149243%_)))
                                       _%hd149252149274%_)
                                      (_%g149245149258%_ _%g149246149261%_))))
                              (_%g149245149258%_ _%g149246149261%_))))
                      (_%g149245149258%_ _%g149246149261%_)))))
          (_%g149244149299%_ _%stx149243%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self149171%_ _%stx149172%_)
        (let* ((_%g149174149191%_
                (lambda (_%g149175149188%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149175149188%_))))
               (_%g149173149239%_
                (lambda (_%g149175149194%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149175149194%_))
                      (let ((_%e149178149196%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149175149194%_))))
                        (let ((_%hd149179149199%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149178149196%_)))
                              (_%tl149180149201%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149178149196%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149180149201%_))
                              (let ((_%e149181149204%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149180149201%_))))
                                (let ((_%hd149182149207%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149181149204%_)))
                                      (_%tl149183149209%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149181149204%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149183149209%_))
                                      (let ((_%e149184149212%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149183149209%_))))
                                        (let ((_%hd149185149215%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149184149212%_)))
                                              (_%tl149186149217%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149184149212%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149186149217%_))
                                              ((lambda (_%L149220%_
                                                        _%L149221%_)
                                                 (let ((_%new-expr149236%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self149171%_
                                                           _%L149220%_)))
                                                       (_%new-xid149237%_
                                                        (if (let ((__tmp150326
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self149171%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L149221%_ __tmp150326))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self149171%_ 'new-id))
                    _%L149221%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp150327
                                                          (cons '%#set!
                                                                (cons _%new-xid149237%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr149236%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp150327
                                                      _%stx149172%_))))
                                               _%hd149185149215%_
                                               _%hd149182149207%_)
                                              (_%g149174149191%_
                                               _%g149175149194%_))))
                                      (_%g149174149191%_ _%g149175149194%_))))
                              (_%g149174149191%_ _%g149175149194%_))))
                      (_%g149174149191%_ _%g149175149194%_)))))
          (_%g149173149239%_ _%stx149172%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self149094%_ _%stx149095%_)
        (let* ((_%g149097149114%_
                (lambda (_%g149098149111%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149098149111%_))))
               (_%g149096149168%_
                (lambda (_%g149098149117%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149098149117%_))
                      (let ((_%e149101149119%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149098149117%_))))
                        (let ((_%hd149102149122%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149101149119%_)))
                              (_%tl149103149124%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149101149119%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149103149124%_))
                              (let ((_%e149104149127%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149103149124%_))))
                                (let ((_%hd149105149130%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149104149127%_)))
                                      (_%tl149106149132%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149104149127%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149106149132%_))
                                      (let ((_%e149107149135%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149106149132%_))))
                                        (let ((_%hd149108149138%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149107149135%_)))
                                              (_%tl149109149140%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149107149135%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149109149140%_))
                                              ((lambda (_%L149143%_
                                                        _%L149144%_)
                                                 (let ((_%new-expr149165%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self149094%_
                                                           _%L149143%_)))
                                                       (_%new-xid149166%_
                                                        (let ((_%$e149161%_
                                                               (let ((__tmp150329
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub149159%_)
                                (let ((__tmp150330 (car _%sub149159%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L149144%_
                                   __tmp150330))))
                             (__tmp150328
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self149094%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp150329 __tmp150328))))
                  (if _%$e149161%_ (cdr _%$e149161%_) _%L149144%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp150331
                                                          (cons '%#set!
                                                                (cons _%new-xid149166%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr149165%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp150331
                                                      _%stx149095%_))))
                                               _%hd149108149138%_
                                               _%hd149105149130%_)
                                              (_%g149097149114%_
                                               _%g149098149117%_))))
                                      (_%g149097149114%_ _%g149098149117%_))))
                              (_%g149097149114%_ _%g149098149117%_))))
                      (_%g149097149114%_ _%g149098149117%_)))))
          (_%g149096149168%_ _%stx149095%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self149040%_ _%stx149041%_)
        (let* ((_%g149043149056%_
                (lambda (_%g149044149053%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149044149053%_))))
               (_%g149042149091%_
                (lambda (_%g149044149059%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149044149059%_))
                      (let ((_%e149046149061%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149044149059%_))))
                        (let ((_%hd149047149064%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149046149061%_)))
                              (_%tl149048149066%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149046149061%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149048149066%_))
                              (let ((_%e149049149069%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149048149066%_))))
                                (let ((_%hd149050149072%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149049149069%_)))
                                      (_%tl149051149074%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149049149069%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149051149074%_))
                                      ((lambda (_%L149077%_)
                                         (let* ((_%eid149089%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L149077%_)))
                                                (__tmp150332
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self149040%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp150332
                                            _%eid149089%_
                                            1+
                                            '0)))
                                       _%hd149050149072%_)
                                      (_%g149043149056%_ _%g149044149059%_))))
                              (_%g149043149056%_ _%g149044149059%_))))
                      (_%g149043149056%_ _%g149044149059%_)))))
          (_%g149042149091%_ _%stx149041%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self148970%_ _%stx148971%_)
        (let* ((_%g148973148990%_
                (lambda (_%g148974148987%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148974148987%_))))
               (_%g148972149037%_
                (lambda (_%g148974148993%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148974148993%_))
                      (let ((_%e148977148995%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148974148993%_))))
                        (let ((_%hd148978148998%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148977148995%_)))
                              (_%tl148979149000%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148977148995%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148979149000%_))
                              (let ((_%e148980149003%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148979149000%_))))
                                (let ((_%hd148981149006%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148980149003%_)))
                                      (_%tl148982149008%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148980149003%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148982149008%_))
                                      (let ((_%e148983149011%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148982149008%_))))
                                        (let ((_%hd148984149014%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148983149011%_)))
                                              (_%tl148985149016%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148983149011%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148985149016%_))
                                              ((lambda (_%L149019%_
                                                        _%L149020%_)
                                                 (let ((_%eid149035%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L149020%_))))
                                                   (let ((__tmp150333
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self148970%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp150333
                                                      _%eid149035%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self148970%_
                                                      _%L149019%_))))
                                               _%hd148984149014%_
                                               _%hd148981149006%_)
                                              (_%g148973148990%_
                                               _%g148974148993%_))))
                                      (_%g148973148990%_ _%g148974148993%_))))
                              (_%g148973148990%_ _%g148974148993%_))))
                      (_%g148973148990%_ _%g148974148993%_)))))
          (_%g148972149037%_ _%stx148971%_))))
    (define gxc#find-body%
      (lambda (_%self148883%_ _%stx148884%_)
        (let* ((_%g148886148905%_
                (lambda (_%g148887148902%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148887148902%_))))
               (_%g148885148967%_
                (lambda (_%g148887148908%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148887148908%_))
                      (let ((_%e148889148910%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148887148908%_))))
                        (let ((_%hd148890148913%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148889148910%_)))
                              (_%tl148891148915%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148889148910%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl148891148915%_))
                              (let ((_g150334_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl148891148915%_
                                        '0))))
                                (begin
                                  (let ((_g150335_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g150334_)
                                               (##vector-length _g150334_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g150335_ 2)))
                                        (error "Context expects 2 values"
                                               _g150335_)))
                                  (let ((_%target148892148918%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g150334_ 0)))
                                        (_%tl148894148920%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g150334_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl148894148920%_))
                                        (letrec ((_%loop148895148923%_
                                                  (lambda (_%hd148893148926%_
                                                           _%expr148899148928%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd148893148926%_))
                                                        (let ((_%e148896148931%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd148893148926%_))))
                  (let ((_%lp-hd148897148934%_
                         (let ()
                           (declare (not safe))
                           (##car _%e148896148931%_)))
                        (_%lp-tl148898148936%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e148896148931%_))))
                    (_%loop148895148923%_
                     _%lp-tl148898148936%_
                     (cons _%lp-hd148897148934%_ _%expr148899148928%_))))
                (let ((_%expr148900148939%_ (reverse _%expr148899148928%_)))
                  ((lambda (_%L148942%_)
                     (let ((__tmp150338
                            (lambda (_%g148955148957%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self148883%_
                                 _%g148955148957%_))))
                           (__tmp150336
                            (let ((__tmp150337
                                   (lambda (_%g148959148962%_
                                            _%g148960148964%_)
                                     (cons _%g148959148962%_
                                           _%g148960148964%_))))
                              (declare (not safe))
                              (__foldr1 __tmp150337 '() _%L148942%_))))
                       (declare (not safe))
                       (__ormap1 __tmp150338 __tmp150336)))
                   _%expr148900148939%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop148895148923%_
                                           _%target148892148918%_
                                           '()))
                                        (_%g148886148905%_
                                         _%g148887148908%_)))))
                              (_%g148886148905%_ _%g148887148908%_))))
                      (_%g148886148905%_ _%g148887148908%_)))))
          (_%g148885148967%_ _%stx148884%_))))
    (define gxc#find-let-values%
      (lambda (_%self148733%_ _%stx148734%_)
        (let* ((_%g148736148771%_
                (lambda (_%g148737148768%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148737148768%_))))
               (_%g148735148880%_
                (lambda (_%g148737148774%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148737148774%_))
                      (let ((_%e148741148776%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148737148774%_))))
                        (let ((_%hd148742148779%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148741148776%_)))
                              (_%tl148743148781%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148741148776%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148743148781%_))
                              (let ((_%e148744148784%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148743148781%_))))
                                (let ((_%hd148745148787%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148744148784%_)))
                                      (_%tl148746148789%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148744148784%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd148745148787%_))
                                      (let ((_g150339_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd148745148787%_
                                                '0))))
                                        (begin
                                          (let ((_g150340_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g150339_)
                                                       (##vector-length
                                                        _g150339_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g150340_ 2)))
                                                (error "Context expects 2 values"
                                                       _g150340_)))
                                          (let ((_%target148747148792%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g150339_ 0)))
                                                (_%tl148749148794%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g150339_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl148749148794%_))
                                                (letrec ((_%loop148750148797%_
                                                          (lambda (_%hd148748148800%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr148754148802%_
                           _%bind148755148804%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd148748148800%_))
                        (let ((_%e148751148807%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd148748148800%_))))
                          (let ((_%lp-hd148752148810%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e148751148807%_)))
                                (_%lp-tl148753148812%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e148751148807%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd148752148810%_))
                                (let ((_%e148761148815%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd148752148810%_))))
                                  (let ((_%hd148762148818%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e148761148815%_)))
                                        (_%tl148763148820%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e148761148815%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl148763148820%_))
                                        (let ((_%e148764148823%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl148763148820%_))))
                                          (let ((_%hd148765148826%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e148764148823%_)))
                                                (_%tl148766148828%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e148764148823%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl148766148828%_))
                                                (_%loop148750148797%_
                                                 _%lp-tl148753148812%_
                                                 (cons _%hd148765148826%_
                                                       _%expr148754148802%_)
                                                 (cons _%hd148762148818%_
                                                       _%bind148755148804%_))
                                                (_%g148736148771%_
                                                 _%g148737148774%_))))
                                        (_%g148736148771%_
                                         _%g148737148774%_))))
                                (_%g148736148771%_ _%g148737148774%_))))
                        (let ((_%expr148756148831%_
                               (reverse _%expr148754148802%_))
                              (_%bind148757148833%_
                               (reverse _%bind148755148804%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148746148789%_))
                              (let ((_%e148758148836%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148746148789%_))))
                                (let ((_%hd148759148839%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148758148836%_)))
                                      (_%tl148760148841%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148758148836%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl148760148841%_))
                                      ((lambda (_%L148844%_
                                                _%L148845%_
                                                _%L148846%_)
                                         (let ((_%$e148877%_
                                                (let ((__tmp150343
                                                       (lambda (_%g148865148867%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self148733%_
                                                            _%g148865148867%_))))
                                                      (__tmp150341
                                                       (let ((__tmp150342
                                                              (lambda (_%g148869148872%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g148870148874%_)
                        (cons _%g148869148872%_ _%g148870148874%_))))
                 (declare (not safe))
                 (__foldr1 __tmp150342 '() _%L148845%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp150343
                                                   __tmp150341))))
                                           (if _%$e148877%_
                                               _%$e148877%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self148733%_
                                                  _%L148844%_)))))
                                       _%hd148759148839%_
                                       _%expr148756148831%_
                                       _%bind148757148833%_)
                                      (_%g148736148771%_ _%g148737148774%_))))
                              (_%g148736148771%_ _%g148737148774%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop148750148797%_
                                                   _%target148747148792%_
                                                   '()
                                                   '()))
                                                (_%g148736148771%_
                                                 _%g148737148774%_)))))
                                      (_%g148736148771%_ _%g148737148774%_))))
                              (_%g148736148771%_ _%g148737148774%_))))
                      (_%g148736148771%_ _%g148737148774%_)))))
          (_%g148735148880%_ _%stx148734%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self148677%_ _%stx148678%_)
        (let* ((_%g148680148693%_
                (lambda (_%g148681148690%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148681148690%_))))
               (_%g148679148730%_
                (lambda (_%g148681148696%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148681148696%_))
                      (let ((_%e148683148698%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148681148696%_))))
                        (let ((_%hd148684148701%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148683148698%_)))
                              (_%tl148685148703%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148683148698%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148685148703%_))
                              (let ((_%e148686148706%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148685148703%_))))
                                (let ((_%hd148687148709%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148686148706%_)))
                                      (_%tl148688148711%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148686148706%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl148688148711%_))
                                      ((lambda (_%L148714%_)
                                         (let ((__tmp150345
                                                (lambda (_%g148725148727%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L148714%_
                                                     _%g148725148727%_))))
                                               (__tmp150344
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self148677%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp150345 __tmp150344)))
                                       _%hd148687148709%_)
                                      (_%g148680148693%_ _%g148681148696%_))))
                              (_%g148680148693%_ _%g148681148696%_))))
                      (_%g148680148693%_ _%g148681148696%_)))))
          (_%g148679148730%_ _%stx148678%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self148602%_ _%stx148603%_)
        (let* ((_%g148605148622%_
                (lambda (_%g148606148619%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148606148619%_))))
               (_%g148604148674%_
                (lambda (_%g148606148625%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148606148625%_))
                      (let ((_%e148609148627%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148606148625%_))))
                        (let ((_%hd148610148630%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148609148627%_)))
                              (_%tl148611148632%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148609148627%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148611148632%_))
                              (let ((_%e148612148635%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148611148632%_))))
                                (let ((_%hd148613148638%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148612148635%_)))
                                      (_%tl148614148640%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148612148635%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148614148640%_))
                                      (let ((_%e148615148643%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148614148640%_))))
                                        (let ((_%hd148616148646%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148615148643%_)))
                                              (_%tl148617148648%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148615148643%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148617148648%_))
                                              ((lambda (_%L148651%_
                                                        _%L148652%_)
                                                 (let ((_%$e148671%_
                                                        (let ((__tmp150347
                                                               (lambda (_%g148666148668%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L148652%_
                            _%g148666148668%_))))
                      (__tmp150346
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self148602%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp150347 __tmp150346))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e148671%_
                                                       _%$e148671%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self148602%_
                                                          _%L148651%_)))))
                                               _%hd148616148646%_
                                               _%hd148613148638%_)
                                              (_%g148605148622%_
                                               _%g148606148625%_))))
                                      (_%g148605148622%_ _%g148606148625%_))))
                              (_%g148605148622%_ _%g148606148625%_))))
                      (_%g148605148622%_ _%g148606148625%_)))))
          (_%g148604148674%_ _%stx148603%_))))))
