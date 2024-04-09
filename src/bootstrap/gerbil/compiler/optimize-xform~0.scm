(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1712696215)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp151283 (list gxc#::void::t))
            (__tmp151282 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp151283
         '()
         __tmp151282
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args151023%_
        (apply make-instance gxc#::collect-mutators::t _%$args151023%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp151284
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
        (__make-promise __tmp151284)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx151015%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self151018%_
                (let ((__obj151270
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj151270))
               (__tmp151285
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self151018%_ _%stx151015%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp151285
           gxc#current-compile-method
           _%self151018%_))))
    (define gxc#::collect-methods::t
      (let ((__tmp151287 (list gxc#::void::t))
            (__tmp151286 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-methods::t
         '::collect-methods
         __tmp151287
         '()
         __tmp151286
         '#f)))
    (define gxc#::collect-methods?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-methods::t)))
    (define gxc#make-::collect-methods
      (lambda _%$args151012%_
        (apply make-instance gxc#::collect-methods::t _%$args151012%_)))
    (define gxc#::collect-methods-bind-methods!
      (let ((__tmp151288
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
        (__make-promise __tmp151288)))
    (define gxc#apply-collect-methods
      (lambda (_%stx151004%_)
        (force gxc#::collect-methods-bind-methods!)
        (let* ((_%self151007%_
                (let ((__obj151272
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-methods::t))))
                  __obj151272))
               (__tmp151289
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self151007%_ _%stx151004%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp151289
           gxc#current-compile-method
           _%self151007%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp151291 (list gxc#::basic-xform-expression::t))
            (__tmp151290 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp151291
         '(id new-id)
         __tmp151290
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args151001%_
        (apply make-instance gxc#::expression-subst::t _%$args151001%_)))
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
      (let ((__tmp151292
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
        (__make-promise __tmp151292)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords150971%_
               _%id150967150972%_
               _%new-id150968150974%_
               _%stx150976%_)
        (let* ((_%id150979%_
                (if (eq? _%id150967150972%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id150967150972%_))
               (_%new-id150981%_
                (if (eq? _%new-id150968150974%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id150968150974%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self150983%_
                  (let ((__obj151274
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151274
                       _%id150979%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151274
                       _%new-id150981%_
                       '2
                       '#f
                       '#f))
                    __obj151274))
                 (__tmp151293
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150983%_ _%stx150976%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151293
             gxc#current-compile-method
             _%self150983%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords150990%_ . _%args150991%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords150990%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords150990%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150990%_
                  'new-id:
                  absent-value))
               _%args150991%_)))
    (define gxc#apply-expression-subst
      (lambda _%args150969150997%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args150969150997%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp151295 (list gxc#::basic-xform-expression::t))
            (__tmp151294 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp151295
         '(subst)
         __tmp151294
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args150963%_
        (apply make-instance gxc#::expression-subst*::t _%$args150963%_)))
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
      (let ((__tmp151296
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
        (__make-promise __tmp151296)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords150937%_ _%subst150934150938%_ _%stx150940%_)
        (let ((_%subst150943%_
               (if (eq? _%subst150934150938%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst150934150938%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self150945%_
                  (let ((__obj151276
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151276
                       _%subst150943%_
                       '1
                       '#f
                       '#f))
                    __obj151276))
                 (__tmp151297
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150945%_ _%stx150940%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151297
             gxc#current-compile-method
             _%self150945%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords150952%_ . _%args150953%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords150952%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150952%_
                  'subst:
                  absent-value))
               _%args150953%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args150935150959%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args150935150959%_)))
    (define gxc#::find-expression::t
      (let ((__tmp151298 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp151298
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args150930%_
        (apply make-instance gxc#::find-expression::t _%$args150930%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp151299
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
        (__make-promise __tmp151299)))
    (define gxc#::find-var-refs::t
      (let ((__tmp151301 (list gxc#::find-expression::t))
            (__tmp151300 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp151301
         '(ids)
         __tmp151300
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args150926%_
        (apply make-instance gxc#::find-var-refs::t _%$args150926%_)))
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
      (let ((__tmp151302
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
        (__make-promise __tmp151302)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords150900%_ _%ids150897150901%_ _%stx150903%_)
        (let ((_%ids150906%_
               (if (eq? _%ids150897150901%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids150897150901%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self150908%_
                  (let ((__obj151279
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151279
                       _%ids150906%_
                       '1
                       '#f
                       '#f))
                    __obj151279))
                 (__tmp151303
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150908%_ _%stx150903%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151303
             gxc#current-compile-method
             _%self150908%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords150915%_ . _%args150916%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords150915%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords150915%_ 'ids: absent-value))
               _%args150916%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args150898150922%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args150898150922%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp151305 (list gxc#::collect-expression-refs::t))
            (__tmp151304 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp151305
         '()
         __tmp151304
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args150893%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args150893%_)))
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
      (let ((__tmp151306
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
        (__make-promise __tmp151306)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords150867%_ _%table150864150868%_ _%stx150870%_)
        (let ((_%table150873%_
               (if (eq? _%table150864150868%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table150864150868%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self150875%_
                  (let ((__obj151281
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151281
                       _%table150873%_
                       '1
                       '#f
                       '#f))
                    __obj151281))
                 (__tmp151307
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150875%_ _%stx150870%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151307
             gxc#current-compile-method
             _%self150875%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords150882%_ . _%args150883%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords150882%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150882%_
                  'table:
                  absent-value))
               _%args150883%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args150865150889%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args150865150889%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self150793%_ _%stx150794%_)
        (let* ((_%g150796150813%_
                (lambda (_%g150797150810%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150797150810%_))))
               (_%g150795150860%_
                (lambda (_%g150797150816%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150797150816%_))
                      (let ((_%e150802150818%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150797150816%_))))
                        (let ((_%hd150801150821%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150802150818%_)))
                              (_%tl150800150823%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150802150818%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150800150823%_))
                              (let ((_%e150805150826%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150800150823%_))))
                                (let ((_%hd150804150829%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150805150826%_)))
                                      (_%tl150803150831%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150805150826%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150803150831%_))
                                      (let ((_%e150808150834%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150803150831%_))))
                                        (let ((_%hd150807150837%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150808150834%_)))
                                              (_%tl150806150839%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150808150834%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150806150839%_))
                                              ((lambda (_%L150842%_
                                                        _%L150843%_)
                                                 (let ((_%sym150858%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L150843%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym150858%_))
                                                   (let ((__tmp151308
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp151308
                                                      _%sym150858%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self150793%_
                                                      _%L150842%_))))
                                               _%hd150807150837%_
                                               _%hd150804150829%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g150796150813%_
                                                 _%g150797150816%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g150796150813%_
                                         _%g150797150816%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g150796150813%_ _%g150797150816%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g150796150813%_ _%g150797150816%_))))))
          (declare (not safe))
          (_%g150795150860%_ _%stx150794%_))))
    (define gxc#collect-methods-call%
      (lambda (_%self150346%_ _%stx150347%_)
        (let* ((_%__stx151026151027%_ _%stx150347%_)
               (_%g150351150453%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx151026151027%_)))))
          (let ((_%__kont151028151029%_
                 (lambda (_%L150743%_
                          _%L150744%_
                          _%L150745%_
                          _%L150746%_
                          _%L150747%_)
                   (let ((__tmp151309
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _%L150744%_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp151309))))
                (_%__kont151030151031%_
                 (lambda (_%L150569%_ _%L150570%_ _%L150571%_ _%L150572%_)
                   (let ((__tmp151310
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _%L150569%_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp151310))))
                (_%__kont151032151033%_ (lambda () '#!void)))
            (let ((_%__match151161151162%_
                   (lambda (_%e150360150615%_
                            _%hd150359150618%_
                            _%tl150358150620%_
                            _%e150363150623%_
                            _%hd150362150626%_
                            _%tl150361150628%_
                            _%e150366150631%_
                            _%hd150365150634%_
                            _%tl150364150636%_
                            _%e150369150639%_
                            _%hd150368150642%_
                            _%tl150367150644%_
                            _%e150372150647%_
                            _%hd150371150650%_
                            _%tl150370150652%_
                            _%e150375150655%_
                            _%hd150374150658%_
                            _%tl150373150660%_
                            _%e150378150663%_
                            _%hd150377150666%_
                            _%tl150376150668%_
                            _%e150381150671%_
                            _%hd150380150674%_
                            _%tl150379150676%_
                            _%e150384150679%_
                            _%hd150383150682%_
                            _%tl150382150684%_
                            _%e150387150687%_
                            _%hd150386150690%_
                            _%tl150385150692%_
                            _%e150390150695%_
                            _%hd150389150698%_
                            _%tl150388150700%_
                            _%e150393150703%_
                            _%hd150392150706%_
                            _%tl150391150708%_
                            _%e150396150711%_
                            _%hd150395150714%_
                            _%tl150394150716%_
                            _%e150399150719%_
                            _%hd150398150722%_
                            _%tl150397150724%_
                            _%e150402150727%_
                            _%hd150401150730%_
                            _%tl150400150732%_
                            _%e150405150735%_
                            _%hd150404150738%_
                            _%tl150403150740%_)
                     (let ((_%L150743%_ _%hd150404150738%_)
                           (_%L150744%_ _%hd150395150714%_)
                           (_%L150745%_ _%hd150386150690%_)
                           (_%L150746%_ _%hd150377150666%_)
                           (_%L150747%_ _%hd150368150642%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L150747%_
                              'bind-method!))
                           (_%__kont151028151029%_
                            _%L150743%_
                            _%L150744%_
                            _%L150745%_
                            _%L150746%_
                            _%L150747%_)
                           (_%__kont151032151033%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx151026151027%_))
                  (let ((_%e150360150615%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx151026151027%_))))
                    (let ((_%tl150358150620%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e150360150615%_)))
                          (_%hd150359150618%_
                           (let ()
                             (declare (not safe))
                             (##car _%e150360150615%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl150358150620%_))
                          (let ((_%e150363150623%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl150358150620%_))))
                            (let ((_%tl150361150628%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e150363150623%_)))
                                  (_%hd150362150626%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e150363150623%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd150362150626%_))
                                  (let ((_%e150366150631%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd150362150626%_))))
                                    (let ((_%tl150364150636%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e150366150631%_)))
                                          (_%hd150365150634%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e150366150631%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd150365150634%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd150365150634%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl150364150636%_))
                                                  (let ((_%e150369150639%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl150364150636%_))))
                                                    (let ((_%tl150367150644%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e150369150639%_)))
                                                          (_%hd150368150642%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e150369150639%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl150367150644%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl150361150628%_))
                      (let ((_%e150372150647%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl150361150628%_))))
                        (let ((_%tl150370150652%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150372150647%_)))
                              (_%hd150371150650%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150372150647%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd150371150650%_))
                              (let ((_%e150375150655%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd150371150650%_))))
                                (let ((_%tl150373150660%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150375150655%_)))
                                      (_%hd150374150658%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150375150655%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd150374150658%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd150374150658%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl150373150660%_))
                                              (let ((_%e150378150663%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl150373150660%_))))
                                                (let ((_%tl150376150668%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e150378150663%_)))
                                                      (_%hd150377150666%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e150378150663%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl150376150668%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl150370150652%_))
                                                          (let ((_%e150381150671%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl150370150652%_))))
                    (let ((_%tl150379150676%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e150381150671%_)))
                          (_%hd150380150674%_
                           (let ()
                             (declare (not safe))
                             (##car _%e150381150671%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd150380150674%_))
                          (let ((_%e150384150679%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd150380150674%_))))
                            (let ((_%tl150382150684%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e150384150679%_)))
                                  (_%hd150383150682%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e150384150679%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd150383150682%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd150383150682%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl150382150684%_))
                                          (let ((_%e150387150687%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl150382150684%_))))
                                            (let ((_%tl150385150692%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e150387150687%_)))
                                                  (_%hd150386150690%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e150387150687%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl150385150692%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl150379150676%_))
                                                      (let ((_%e150390150695%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl150379150676%_))))
                (let ((_%tl150388150700%_
                       (let () (declare (not safe)) (##cdr _%e150390150695%_)))
                      (_%hd150389150698%_
                       (let ()
                         (declare (not safe))
                         (##car _%e150390150695%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd150389150698%_))
                      (let ((_%e150393150703%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd150389150698%_))))
                        (let ((_%tl150391150708%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150393150703%_)))
                              (_%hd150392150706%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150393150703%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd150392150706%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd150392150706%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150391150708%_))
                                      (let ((_%e150396150711%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150391150708%_))))
                                        (let ((_%tl150394150716%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150396150711%_)))
                                              (_%hd150395150714%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150396150711%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150394150716%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl150388150700%_))
                                                  (let ((_%e150399150719%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl150388150700%_))))
                                                    (let ((_%tl150397150724%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e150399150719%_)))
                                                          (_%hd150398150722%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e150399150719%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd150398150722%_))
                                                          (let ((_%e150402150727%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd150398150722%_))))
                    (let ((_%tl150400150732%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e150402150727%_)))
                          (_%hd150401150730%_
                           (let ()
                             (declare (not safe))
                             (##car _%e150402150727%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd150401150730%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd150401150730%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl150400150732%_))
                                  (let ((_%e150405150735%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl150400150732%_))))
                                    (let ((_%tl150403150740%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e150405150735%_)))
                                          (_%hd150404150738%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e150405150735%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl150403150740%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150397150724%_))
                                              (_%__match151161151162%_
                                               _%e150360150615%_
                                               _%hd150359150618%_
                                               _%tl150358150620%_
                                               _%e150363150623%_
                                               _%hd150362150626%_
                                               _%tl150361150628%_
                                               _%e150366150631%_
                                               _%hd150365150634%_
                                               _%tl150364150636%_
                                               _%e150369150639%_
                                               _%hd150368150642%_
                                               _%tl150367150644%_
                                               _%e150372150647%_
                                               _%hd150371150650%_
                                               _%tl150370150652%_
                                               _%e150375150655%_
                                               _%hd150374150658%_
                                               _%tl150373150660%_
                                               _%e150378150663%_
                                               _%hd150377150666%_
                                               _%tl150376150668%_
                                               _%e150381150671%_
                                               _%hd150380150674%_
                                               _%tl150379150676%_
                                               _%e150384150679%_
                                               _%hd150383150682%_
                                               _%tl150382150684%_
                                               _%e150387150687%_
                                               _%hd150386150690%_
                                               _%tl150385150692%_
                                               _%e150390150695%_
                                               _%hd150389150698%_
                                               _%tl150388150700%_
                                               _%e150393150703%_
                                               _%hd150392150706%_
                                               _%tl150391150708%_
                                               _%e150396150711%_
                                               _%hd150395150714%_
                                               _%tl150394150716%_
                                               _%e150399150719%_
                                               _%hd150398150722%_
                                               _%tl150397150724%_
                                               _%e150402150727%_
                                               _%hd150401150730%_
                                               _%tl150400150732%_
                                               _%e150405150735%_
                                               _%hd150404150738%_
                                               _%tl150403150740%_)
                                              (_%__kont151032151033%_))
                                          (_%__kont151032151033%_))))
                                  (_%__kont151032151033%_))
                              (_%__kont151032151033%_))
                          (_%__kont151032151033%_))))
                  (_%__kont151032151033%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl150388150700%_))
                                                      (if (let ((__tmp151311
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp151311 'bind-method!))
                  (let ((_%L150569%_ _%hd150395150714%_)
                        (_%L150570%_ _%hd150386150690%_)
                        (_%L150571%_ _%hd150377150666%_)
                        (_%L150572%_ _%hd150368150642%_))
                    (_%__kont151030151031%_
                     _%L150569%_
                     _%L150570%_
                     _%L150571%_
                     _%L150572%_))
                  (_%__kont151032151033%_))
              (_%__kont151032151033%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont151032151033%_))))
                                      (_%__kont151032151033%_))
                                  (_%__kont151032151033%_))
                              (_%__kont151032151033%_))))
                      (_%__kont151032151033%_))))
              (_%__kont151032151033%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont151032151033%_))))
                                          (_%__kont151032151033%_))
                                      (_%__kont151032151033%_))
                                  (_%__kont151032151033%_))))
                          (_%__kont151032151033%_))))
                  (_%__kont151032151033%_))
              (_%__kont151032151033%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont151032151033%_))
                                          (_%__kont151032151033%_))
                                      (_%__kont151032151033%_))))
                              (_%__kont151032151033%_))))
                      (_%__kont151032151033%_))
                  (_%__kont151032151033%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont151032151033%_))
                                              (_%__kont151032151033%_))
                                          (_%__kont151032151033%_))))
                                  (_%__kont151032151033%_))))
                          (_%__kont151032151033%_))))
                  (_%__kont151032151033%_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_%self150294%_ _%stx150295%_)
        (let* ((_%g150297150310%_
                (lambda (_%g150298150307%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150298150307%_))))
               (_%g150296150343%_
                (lambda (_%g150298150313%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150298150313%_))
                      (let ((_%e150302150315%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150298150313%_))))
                        (let ((_%hd150301150318%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150302150315%_)))
                              (_%tl150300150320%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150302150315%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150300150320%_))
                              (let ((_%e150305150323%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150300150320%_))))
                                (let ((_%hd150304150326%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150305150323%_)))
                                      (_%tl150303150328%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150305150323%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl150303150328%_))
                                      ((lambda (_%L150331%_)
                                         (if (let ((__tmp151312
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self150294%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L150331%_
                                                __tmp151312))
                                             (let ((__tmp151313
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self150294%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp151313
                                                _%stx150295%_))
                                             _%stx150295%_))
                                       _%hd150304150326%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g150297150310%_
                                         _%g150298150313%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g150297150310%_ _%g150298150313%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g150297150310%_ _%g150298150313%_))))))
          (declare (not safe))
          (_%g150296150343%_ _%stx150295%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self150234%_ _%stx150235%_)
        (let* ((_%g150237150250%_
                (lambda (_%g150238150247%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150238150247%_))))
               (_%g150236150291%_
                (lambda (_%g150238150253%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150238150253%_))
                      (let ((_%e150242150255%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150238150253%_))))
                        (let ((_%hd150241150258%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150242150255%_)))
                              (_%tl150240150260%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150242150255%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150240150260%_))
                              (let ((_%e150245150263%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150240150260%_))))
                                (let ((_%hd150244150266%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150245150263%_)))
                                      (_%tl150243150268%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150245150263%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl150243150268%_))
                                      ((lambda (_%L150271%_)
                                         (let ((_%$e150285%_
                                                (let ((__tmp151315
                                                       (lambda (_%sub150283%_)
                                                         (let ((__tmp151316
                                                                (car _%sub150283%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L150271%_
                                                            __tmp151316))))
                                                      (__tmp151314
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self150234%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp151315
                                                          __tmp151314))))
                                           (if _%$e150285%_
                                               ((lambda (_%sub150288%_)
                                                  (let ((__tmp151317
                                                         (cons '%#ref
                                                               (cons (cdr _%sub150288%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp151317
                                                     _%stx150235%_)))
                                                _%$e150285%_)
                                               (let () _%stx150235%_))))
                                       _%hd150244150266%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g150237150250%_
                                         _%g150238150253%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g150237150250%_ _%g150238150253%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g150237150250%_ _%g150238150253%_))))))
          (declare (not safe))
          (_%g150236150291%_ _%stx150235%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self150163%_ _%stx150164%_)
        (let* ((_%g150166150183%_
                (lambda (_%g150167150180%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150167150180%_))))
               (_%g150165150231%_
                (lambda (_%g150167150186%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150167150186%_))
                      (let ((_%e150172150188%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150167150186%_))))
                        (let ((_%hd150171150191%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150172150188%_)))
                              (_%tl150170150193%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150172150188%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150170150193%_))
                              (let ((_%e150175150196%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150170150193%_))))
                                (let ((_%hd150174150199%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150175150196%_)))
                                      (_%tl150173150201%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150175150196%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150173150201%_))
                                      (let ((_%e150178150204%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150173150201%_))))
                                        (let ((_%hd150177150207%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150178150204%_)))
                                              (_%tl150176150209%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150178150204%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150176150209%_))
                                              ((lambda (_%L150212%_
                                                        _%L150213%_)
                                                 (let ((_%new-expr150228%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self150163%_
                                                           _%L150212%_)))
                                                       (_%new-xid150229%_
                                                        (if (let ((__tmp151318
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self150163%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L150213%_ __tmp151318))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self150163%_ 'new-id))
                    _%L150213%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp151319
                                                          (cons '%#set!
                                                                (cons _%new-xid150229%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr150228%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp151319
                                                      _%stx150164%_))))
                                               _%hd150177150207%_
                                               _%hd150174150199%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g150166150183%_
                                                 _%g150167150186%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g150166150183%_
                                         _%g150167150186%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g150166150183%_ _%g150167150186%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g150166150183%_ _%g150167150186%_))))))
          (declare (not safe))
          (_%g150165150231%_ _%stx150164%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self150086%_ _%stx150087%_)
        (let* ((_%g150089150106%_
                (lambda (_%g150090150103%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150090150103%_))))
               (_%g150088150160%_
                (lambda (_%g150090150109%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150090150109%_))
                      (let ((_%e150095150111%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150090150109%_))))
                        (let ((_%hd150094150114%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150095150111%_)))
                              (_%tl150093150116%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150095150111%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150093150116%_))
                              (let ((_%e150098150119%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150093150116%_))))
                                (let ((_%hd150097150122%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150098150119%_)))
                                      (_%tl150096150124%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150098150119%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150096150124%_))
                                      (let ((_%e150101150127%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150096150124%_))))
                                        (let ((_%hd150100150130%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150101150127%_)))
                                              (_%tl150099150132%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150101150127%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150099150132%_))
                                              ((lambda (_%L150135%_
                                                        _%L150136%_)
                                                 (let ((_%new-expr150157%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self150086%_
                                                           _%L150135%_)))
                                                       (_%new-xid150158%_
                                                        (let ((_%$e150153%_
                                                               (let ((__tmp151321
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub150151%_)
                                (let ((__tmp151322 (car _%sub150151%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L150136%_
                                   __tmp151322))))
                             (__tmp151320
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self150086%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp151321 __tmp151320))))
                  (if _%$e150153%_ (cdr _%$e150153%_) (let () _%L150136%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp151323
                                                          (cons '%#set!
                                                                (cons _%new-xid150158%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr150157%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp151323
                                                      _%stx150087%_))))
                                               _%hd150100150130%_
                                               _%hd150097150122%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g150089150106%_
                                                 _%g150090150109%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g150089150106%_
                                         _%g150090150109%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g150089150106%_ _%g150090150109%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g150089150106%_ _%g150090150109%_))))))
          (declare (not safe))
          (_%g150088150160%_ _%stx150087%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self150032%_ _%stx150033%_)
        (let* ((_%g150035150048%_
                (lambda (_%g150036150045%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150036150045%_))))
               (_%g150034150083%_
                (lambda (_%g150036150051%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150036150051%_))
                      (let ((_%e150040150053%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150036150051%_))))
                        (let ((_%hd150039150056%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150040150053%_)))
                              (_%tl150038150058%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150040150053%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150038150058%_))
                              (let ((_%e150043150061%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150038150058%_))))
                                (let ((_%hd150042150064%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150043150061%_)))
                                      (_%tl150041150066%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150043150061%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl150041150066%_))
                                      ((lambda (_%L150069%_)
                                         (let* ((_%eid150081%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L150069%_)))
                                                (__tmp151324
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self150032%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp151324
                                            _%eid150081%_
                                            1+
                                            '0)))
                                       _%hd150042150064%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g150035150048%_
                                         _%g150036150051%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g150035150048%_ _%g150036150051%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g150035150048%_ _%g150036150051%_))))))
          (declare (not safe))
          (_%g150034150083%_ _%stx150033%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self149962%_ _%stx149963%_)
        (let* ((_%g149965149982%_
                (lambda (_%g149966149979%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149966149979%_))))
               (_%g149964150029%_
                (lambda (_%g149966149985%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149966149985%_))
                      (let ((_%e149971149987%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149966149985%_))))
                        (let ((_%hd149970149990%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149971149987%_)))
                              (_%tl149969149992%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149971149987%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149969149992%_))
                              (let ((_%e149974149995%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149969149992%_))))
                                (let ((_%hd149973149998%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149974149995%_)))
                                      (_%tl149972150000%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149974149995%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149972150000%_))
                                      (let ((_%e149977150003%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149972150000%_))))
                                        (let ((_%hd149976150006%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149977150003%_)))
                                              (_%tl149975150008%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149977150003%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149975150008%_))
                                              ((lambda (_%L150011%_
                                                        _%L150012%_)
                                                 (let ((_%eid150027%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L150012%_))))
                                                   (let ((__tmp151325
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self149962%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp151325
                                                      _%eid150027%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self149962%_
                                                      _%L150011%_))))
                                               _%hd149976150006%_
                                               _%hd149973149998%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g149965149982%_
                                                 _%g149966149985%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149965149982%_
                                         _%g149966149985%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149965149982%_ _%g149966149985%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149965149982%_ _%g149966149985%_))))))
          (declare (not safe))
          (_%g149964150029%_ _%stx149963%_))))
    (define gxc#find-body%
      (lambda (_%self149875%_ _%stx149876%_)
        (let* ((_%g149878149897%_
                (lambda (_%g149879149894%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149879149894%_))))
               (_%g149877149959%_
                (lambda (_%g149879149900%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149879149900%_))
                      (let ((_%e149883149902%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149879149900%_))))
                        (let ((_%hd149882149905%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149883149902%_)))
                              (_%tl149881149907%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149883149902%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl149881149907%_))
                              (let ((_g151326_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl149881149907%_
                                        '0))))
                                (begin
                                  (let ((_g151327_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g151326_)
                                               (##vector-length _g151326_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g151327_ 2)))
                                        (error "Context expects 2 values"
                                               _g151327_)))
                                  (let ((_%target149884149910%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g151326_ 0)))
                                        (_%tl149886149912%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g151326_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl149886149912%_))
                                        (letrec ((_%loop149887149915%_
                                                  (lambda (_%hd149885149918%_
                                                           _%expr149891149920%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd149885149918%_))
                                                        (let ((_%e149888149923%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd149885149918%_))))
                  (let ((_%lp-hd149889149926%_
                         (let ()
                           (declare (not safe))
                           (##car _%e149888149923%_)))
                        (_%lp-tl149890149928%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e149888149923%_))))
                    (let ((__tmp151328
                           (cons _%lp-hd149889149926%_ _%expr149891149920%_)))
                      (declare (not safe))
                      (_%loop149887149915%_
                       _%lp-tl149890149928%_
                       __tmp151328))))
                (let ((_%expr149892149931%_ (reverse _%expr149891149920%_)))
                  ((lambda (_%L149934%_)
                     (let ((__tmp151331
                            (lambda (_%g149947149949%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self149875%_
                                 _%g149947149949%_))))
                           (__tmp151329
                            (let ((__tmp151330
                                   (lambda (_%g149951149954%_
                                            _%g149952149956%_)
                                     (cons _%g149951149954%_
                                           _%g149952149956%_))))
                              (declare (not safe))
                              (__foldr1 __tmp151330 '() _%L149934%_))))
                       (declare (not safe))
                       (__ormap1 __tmp151331 __tmp151329)))
                   _%expr149892149931%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%loop149887149915%_
                                             _%target149884149910%_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_%g149878149897%_
                                           _%g149879149900%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g149878149897%_ _%g149879149900%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149878149897%_ _%g149879149900%_))))))
          (declare (not safe))
          (_%g149877149959%_ _%stx149876%_))))
    (define gxc#find-let-values%
      (lambda (_%self149725%_ _%stx149726%_)
        (let* ((_%g149728149763%_
                (lambda (_%g149729149760%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149729149760%_))))
               (_%g149727149872%_
                (lambda (_%g149729149766%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149729149766%_))
                      (let ((_%e149735149768%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149729149766%_))))
                        (let ((_%hd149734149771%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149735149768%_)))
                              (_%tl149733149773%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149735149768%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149733149773%_))
                              (let ((_%e149738149776%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149733149773%_))))
                                (let ((_%hd149737149779%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149738149776%_)))
                                      (_%tl149736149781%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149738149776%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd149737149779%_))
                                      (let ((_g151332_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd149737149779%_
                                                '0))))
                                        (begin
                                          (let ((_g151333_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g151332_)
                                                       (##vector-length
                                                        _g151332_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g151333_ 2)))
                                                (error "Context expects 2 values"
                                                       _g151333_)))
                                          (let ((_%target149739149784%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g151332_ 0)))
                                                (_%tl149741149786%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g151332_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl149741149786%_))
                                                (letrec ((_%loop149742149789%_
                                                          (lambda (_%hd149740149792%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr149746149794%_
                           _%bind149747149796%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd149740149792%_))
                        (let ((_%e149743149799%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd149740149792%_))))
                          (let ((_%lp-hd149744149802%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e149743149799%_)))
                                (_%lp-tl149745149804%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e149743149799%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd149744149802%_))
                                (let ((_%e149752149807%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd149744149802%_))))
                                  (let ((_%hd149751149810%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e149752149807%_)))
                                        (_%tl149750149812%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e149752149807%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl149750149812%_))
                                        (let ((_%e149755149815%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl149750149812%_))))
                                          (let ((_%hd149754149818%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e149755149815%_)))
                                                (_%tl149753149820%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e149755149815%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl149753149820%_))
                                                (let ((__tmp151335
                                                       (cons _%hd149754149818%_
                                                             _%expr149746149794%_))
                                                      (__tmp151334
                                                       (cons _%hd149751149810%_
                                                             _%bind149747149796%_)))
                                                  (declare (not safe))
                                                  (_%loop149742149789%_
                                                   _%lp-tl149745149804%_
                                                   __tmp151335
                                                   __tmp151334))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g149728149763%_
                                                   _%g149729149766%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g149728149763%_
                                           _%g149729149766%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g149728149763%_ _%g149729149766%_)))))
                        (let ((_%expr149748149823%_
                               (reverse _%expr149746149794%_))
                              (_%bind149749149825%_
                               (reverse _%bind149747149796%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149736149781%_))
                              (let ((_%e149758149828%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149736149781%_))))
                                (let ((_%hd149757149831%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149758149828%_)))
                                      (_%tl149756149833%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149758149828%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149756149833%_))
                                      ((lambda (_%L149836%_
                                                _%L149837%_
                                                _%L149838%_)
                                         (let ((_%$e149869%_
                                                (let ((__tmp151338
                                                       (lambda (_%g149857149859%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self149725%_
                                                            _%g149857149859%_))))
                                                      (__tmp151336
                                                       (let ((__tmp151337
                                                              (lambda (_%g149861149864%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g149862149866%_)
                        (cons _%g149861149864%_ _%g149862149866%_))))
                 (declare (not safe))
                 (__foldr1 __tmp151337 '() _%L149837%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp151338
                                                   __tmp151336))))
                                           (if _%$e149869%_
                                               _%$e149869%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self149725%_
                                                  _%L149836%_)))))
                                       _%hd149757149831%_
                                       _%expr149748149823%_
                                       _%bind149749149825%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g149728149763%_
                                         _%g149729149766%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149728149763%_ _%g149729149766%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop149742149789%_
                                                     _%target149739149784%_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g149728149763%_
                                                   _%g149729149766%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149728149763%_
                                         _%g149729149766%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149728149763%_ _%g149729149766%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149728149763%_ _%g149729149766%_))))))
          (declare (not safe))
          (_%g149727149872%_ _%stx149726%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self149669%_ _%stx149670%_)
        (let* ((_%g149672149685%_
                (lambda (_%g149673149682%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149673149682%_))))
               (_%g149671149722%_
                (lambda (_%g149673149688%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149673149688%_))
                      (let ((_%e149677149690%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149673149688%_))))
                        (let ((_%hd149676149693%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149677149690%_)))
                              (_%tl149675149695%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149677149690%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149675149695%_))
                              (let ((_%e149680149698%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149675149695%_))))
                                (let ((_%hd149679149701%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149680149698%_)))
                                      (_%tl149678149703%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149680149698%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149678149703%_))
                                      ((lambda (_%L149706%_)
                                         (let ((__tmp151340
                                                (lambda (_%g149717149719%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L149706%_
                                                     _%g149717149719%_))))
                                               (__tmp151339
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self149669%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp151340 __tmp151339)))
                                       _%hd149679149701%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g149672149685%_
                                         _%g149673149688%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149672149685%_ _%g149673149688%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149672149685%_ _%g149673149688%_))))))
          (declare (not safe))
          (_%g149671149722%_ _%stx149670%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self149594%_ _%stx149595%_)
        (let* ((_%g149597149614%_
                (lambda (_%g149598149611%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149598149611%_))))
               (_%g149596149666%_
                (lambda (_%g149598149617%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149598149617%_))
                      (let ((_%e149603149619%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149598149617%_))))
                        (let ((_%hd149602149622%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149603149619%_)))
                              (_%tl149601149624%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149603149619%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149601149624%_))
                              (let ((_%e149606149627%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149601149624%_))))
                                (let ((_%hd149605149630%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149606149627%_)))
                                      (_%tl149604149632%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149606149627%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149604149632%_))
                                      (let ((_%e149609149635%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149604149632%_))))
                                        (let ((_%hd149608149638%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149609149635%_)))
                                              (_%tl149607149640%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149609149635%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149607149640%_))
                                              ((lambda (_%L149643%_
                                                        _%L149644%_)
                                                 (let ((_%$e149663%_
                                                        (let ((__tmp151342
                                                               (lambda (_%g149658149660%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L149644%_
                            _%g149658149660%_))))
                      (__tmp151341
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self149594%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp151342 __tmp151341))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e149663%_
                                                       _%$e149663%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self149594%_
                                                          _%L149643%_)))))
                                               _%hd149608149638%_
                                               _%hd149605149630%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g149597149614%_
                                                 _%g149598149617%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149597149614%_
                                         _%g149598149617%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149597149614%_ _%g149598149617%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149597149614%_ _%g149598149617%_))))))
          (declare (not safe))
          (_%g149596149666%_ _%stx149595%_))))))
