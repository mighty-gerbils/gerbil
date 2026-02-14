(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1771093451)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp211262 (list gxc#::void::t))
            (__tmp211261 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp211262
         '()
         __tmp211261
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args211248%_
        (apply make-instance gxc#::collect-mutators::t _%$args211248%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp211263
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
        (__make-atomic-promise __tmp211263)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx211240%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self211243%_
                (let ((__obj211251
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj211251))
               (__tmp211264
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self211243%_ _%stx211240%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp211264
           gxc#current-compile-method
           _%self211243%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp211266 (list gxc#::basic-xform-expression::t))
            (__tmp211265 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp211266
         '(id new-id)
         __tmp211265
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args211237%_
        (apply make-instance gxc#::expression-subst::t _%$args211237%_)))
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
      (let ((__tmp211267
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
        (__make-atomic-promise __tmp211267)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords211209%_
               _%id211205211210%_
               _%new-id211206211211%_
               _%stx211212%_)
        (let* ((_%id211215%_
                (if (eq? _%id211205211210%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id211205211210%_))
               (_%new-id211217%_
                (if (eq? _%new-id211206211211%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id211206211211%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self211219%_
                  (let ((__obj211253
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj211253
                       _%id211215%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj211253
                       _%new-id211217%_
                       '2
                       '#f
                       '#f))
                    __obj211253))
                 (__tmp211268
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self211219%_ _%stx211212%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp211268
             gxc#current-compile-method
             _%self211219%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords211226%_ . _%args211227%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords211226%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords211226%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords211226%_
                  'new-id:
                  absent-value))
               _%args211227%_)))
    (define gxc#apply-expression-subst
      (lambda _%args211207211233%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args211207211233%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp211270 (list gxc#::basic-xform-expression::t))
            (__tmp211269 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp211270
         '(subst)
         __tmp211269
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args211201%_
        (apply make-instance gxc#::expression-subst*::t _%$args211201%_)))
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
      (let ((__tmp211271
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
        (__make-atomic-promise __tmp211271)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords211176%_ _%subst211173211177%_ _%stx211178%_)
        (let ((_%subst211181%_
               (if (eq? _%subst211173211177%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst211173211177%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self211183%_
                  (let ((__obj211255
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj211255
                       _%subst211181%_
                       '1
                       '#f
                       '#f))
                    __obj211255))
                 (__tmp211272
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self211183%_ _%stx211178%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp211272
             gxc#current-compile-method
             _%self211183%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords211190%_ . _%args211191%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords211190%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords211190%_
                  'subst:
                  absent-value))
               _%args211191%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args211174211197%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args211174211197%_)))
    (define gxc#::find-expression::t
      (let ((__tmp211273 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp211273
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args211169%_
        (apply make-instance gxc#::find-expression::t _%$args211169%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp211274
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
        (__make-atomic-promise __tmp211274)))
    (define gxc#::find-var-refs::t
      (let ((__tmp211276 (list gxc#::find-expression::t))
            (__tmp211275 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp211276
         '(ids)
         __tmp211275
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args211165%_
        (apply make-instance gxc#::find-var-refs::t _%$args211165%_)))
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
      (let ((__tmp211277
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
        (__make-atomic-promise __tmp211277)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords211140%_ _%ids211137211141%_ _%stx211142%_)
        (let ((_%ids211145%_
               (if (eq? _%ids211137211141%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids211137211141%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self211147%_
                  (let ((__obj211258
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj211258
                       _%ids211145%_
                       '1
                       '#f
                       '#f))
                    __obj211258))
                 (__tmp211278
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self211147%_ _%stx211142%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp211278
             gxc#current-compile-method
             _%self211147%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords211154%_ . _%args211155%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords211154%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords211154%_ 'ids: absent-value))
               _%args211155%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args211138211161%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args211138211161%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp211280 (list gxc#::collect-expression-refs::t))
            (__tmp211279 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp211280
         '()
         __tmp211279
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args211133%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args211133%_)))
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
      (let ((__tmp211281
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
        (__make-atomic-promise __tmp211281)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords211108%_ _%table211105211109%_ _%stx211110%_)
        (let ((_%table211113%_
               (if (eq? _%table211105211109%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table211105211109%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self211115%_
                  (let ((__obj211260
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj211260
                       _%table211113%_
                       '1
                       '#f
                       '#f))
                    __obj211260))
                 (__tmp211282
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self211115%_ _%stx211110%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp211282
             gxc#current-compile-method
             _%self211115%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords211122%_ . _%args211123%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords211122%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords211122%_
                  'table:
                  absent-value))
               _%args211123%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args211106211129%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args211106211129%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self211034%_ _%stx211035%_)
        (let* ((_%g211037211054%_
                (lambda (_%g211038211051%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211038211051%_))))
               (_%g211036211101%_
                (lambda (_%g211038211057%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211038211057%_))
                      (let ((_%e211041211059%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g211038211057%_))))
                        (let ((_%hd211042211062%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211041211059%_)))
                              (_%tl211043211064%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211041211059%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211043211064%_))
                              (let ((_%e211044211067%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl211043211064%_))))
                                (let ((_%hd211045211070%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211044211067%_)))
                                      (_%tl211046211072%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211044211067%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl211046211072%_))
                                      (let ((_%e211047211075%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl211046211072%_))))
                                        (let ((_%hd211048211078%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e211047211075%_)))
                                              (_%tl211049211080%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e211047211075%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl211049211080%_))
                                              ((lambda (_%g211039211083%_
                                                        _%g211040211084%_)
                                                 (let ((_%sym211099%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g211040211084%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym211099%_))
                                                   (let ((__tmp211283
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp211283
                                                      _%sym211099%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self211034%_
                                                      _%g211039211083%_))))
                                               _%hd211048211078%_
                                               _%hd211045211070%_)
                                              (_%g211037211054%_
                                               _%g211038211057%_))))
                                      (_%g211037211054%_ _%g211038211057%_))))
                              (_%g211037211054%_ _%g211038211057%_))))
                      (_%g211037211054%_ _%g211038211057%_)))))
          (_%g211036211101%_ _%stx211035%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self210982%_ _%stx210983%_)
        (let* ((_%g210985210998%_
                (lambda (_%g210986210995%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g210986210995%_))))
               (_%g210984211031%_
                (lambda (_%g210986211001%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g210986211001%_))
                      (let ((_%e210988211003%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g210986211001%_))))
                        (let ((_%hd210989211006%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e210988211003%_)))
                              (_%tl210990211008%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e210988211003%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl210990211008%_))
                              (let ((_%e210991211011%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl210990211008%_))))
                                (let ((_%hd210992211014%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e210991211011%_)))
                                      (_%tl210993211016%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e210991211011%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl210993211016%_))
                                      ((lambda (_%g210987211019%_)
                                         (if (let ((__tmp211284
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self210982%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g210987211019%_
                                                __tmp211284))
                                             (let ((__tmp211285
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self210982%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp211285
                                                _%stx210983%_))
                                             _%stx210983%_))
                                       _%hd210992211014%_)
                                      (_%g210985210998%_ _%g210986211001%_))))
                              (_%g210985210998%_ _%g210986211001%_))))
                      (_%g210985210998%_ _%g210986211001%_)))))
          (_%g210984211031%_ _%stx210983%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self210922%_ _%stx210923%_)
        (let* ((_%g210925210938%_
                (lambda (_%g210926210935%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g210926210935%_))))
               (_%g210924210979%_
                (lambda (_%g210926210941%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g210926210941%_))
                      (let ((_%e210928210943%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g210926210941%_))))
                        (let ((_%hd210929210946%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e210928210943%_)))
                              (_%tl210930210948%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e210928210943%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl210930210948%_))
                              (let ((_%e210931210951%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl210930210948%_))))
                                (let ((_%hd210932210954%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e210931210951%_)))
                                      (_%tl210933210956%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e210931210951%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl210933210956%_))
                                      ((lambda (_%g210927210959%_)
                                         (let ((_%$e210973%_
                                                (let ((__tmp211287
                                                       (lambda (_%sub210971%_)
                                                         (let ((__tmp211288
                                                                (car _%sub210971%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%g210927210959%_
                                                            __tmp211288))))
                                                      (__tmp211286
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self210922%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp211287
                                                          __tmp211286))))
                                           (if _%$e210973%_
                                               ((lambda (_%sub210976%_)
                                                  (let ((__tmp211289
                                                         (cons '%#ref
                                                               (cons (cdr _%sub210976%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp211289
                                                     _%stx210923%_)))
                                                _%$e210973%_)
                                               _%stx210923%_)))
                                       _%hd210932210954%_)
                                      (_%g210925210938%_ _%g210926210941%_))))
                              (_%g210925210938%_ _%g210926210941%_))))
                      (_%g210925210938%_ _%g210926210941%_)))))
          (_%g210924210979%_ _%stx210923%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self210851%_ _%stx210852%_)
        (let* ((_%g210854210871%_
                (lambda (_%g210855210868%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g210855210868%_))))
               (_%g210853210919%_
                (lambda (_%g210855210874%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g210855210874%_))
                      (let ((_%e210858210876%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g210855210874%_))))
                        (let ((_%hd210859210879%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e210858210876%_)))
                              (_%tl210860210881%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e210858210876%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl210860210881%_))
                              (let ((_%e210861210884%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl210860210881%_))))
                                (let ((_%hd210862210887%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e210861210884%_)))
                                      (_%tl210863210889%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e210861210884%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl210863210889%_))
                                      (let ((_%e210864210892%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl210863210889%_))))
                                        (let ((_%hd210865210895%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e210864210892%_)))
                                              (_%tl210866210897%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e210864210892%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl210866210897%_))
                                              ((lambda (_%g210856210900%_
                                                        _%g210857210901%_)
                                                 (let ((_%new-expr210916%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self210851%_
                                                           _%g210856210900%_)))
                                                       (_%new-xid210917%_
                                                        (if (let ((__tmp211290
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self210851%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%g210857210901%_ __tmp211290))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self210851%_ 'new-id))
                    _%g210857210901%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp211291
                                                          (cons '%#set!
                                                                (cons _%new-xid210917%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr210916%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp211291
                                                      _%stx210852%_))))
                                               _%hd210865210895%_
                                               _%hd210862210887%_)
                                              (_%g210854210871%_
                                               _%g210855210874%_))))
                                      (_%g210854210871%_ _%g210855210874%_))))
                              (_%g210854210871%_ _%g210855210874%_))))
                      (_%g210854210871%_ _%g210855210874%_)))))
          (_%g210853210919%_ _%stx210852%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self210774%_ _%stx210775%_)
        (let* ((_%g210777210794%_
                (lambda (_%g210778210791%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g210778210791%_))))
               (_%g210776210848%_
                (lambda (_%g210778210797%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g210778210797%_))
                      (let ((_%e210781210799%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g210778210797%_))))
                        (let ((_%hd210782210802%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e210781210799%_)))
                              (_%tl210783210804%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e210781210799%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl210783210804%_))
                              (let ((_%e210784210807%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl210783210804%_))))
                                (let ((_%hd210785210810%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e210784210807%_)))
                                      (_%tl210786210812%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e210784210807%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl210786210812%_))
                                      (let ((_%e210787210815%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl210786210812%_))))
                                        (let ((_%hd210788210818%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e210787210815%_)))
                                              (_%tl210789210820%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e210787210815%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl210789210820%_))
                                              ((lambda (_%g210779210823%_
                                                        _%g210780210824%_)
                                                 (let ((_%new-expr210845%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self210774%_
                                                           _%g210779210823%_)))
                                                       (_%new-xid210846%_
                                                        (let ((_%$e210841%_
                                                               (let ((__tmp211293
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub210839%_)
                                (let ((__tmp211294 (car _%sub210839%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%g210780210824%_
                                   __tmp211294))))
                             (__tmp211292
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self210774%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp211293 __tmp211292))))
                  (if _%$e210841%_ (cdr _%$e210841%_) _%g210780210824%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp211295
                                                          (cons '%#set!
                                                                (cons _%new-xid210846%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr210845%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp211295
                                                      _%stx210775%_))))
                                               _%hd210788210818%_
                                               _%hd210785210810%_)
                                              (_%g210777210794%_
                                               _%g210778210797%_))))
                                      (_%g210777210794%_ _%g210778210797%_))))
                              (_%g210777210794%_ _%g210778210797%_))))
                      (_%g210777210794%_ _%g210778210797%_)))))
          (_%g210776210848%_ _%stx210775%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self210720%_ _%stx210721%_)
        (let* ((_%g210723210736%_
                (lambda (_%g210724210733%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g210724210733%_))))
               (_%g210722210771%_
                (lambda (_%g210724210739%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g210724210739%_))
                      (let ((_%e210726210741%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g210724210739%_))))
                        (let ((_%hd210727210744%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e210726210741%_)))
                              (_%tl210728210746%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e210726210741%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl210728210746%_))
                              (let ((_%e210729210749%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl210728210746%_))))
                                (let ((_%hd210730210752%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e210729210749%_)))
                                      (_%tl210731210754%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e210729210749%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl210731210754%_))
                                      ((lambda (_%g210725210757%_)
                                         (let* ((_%eid210769%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g210725210757%_)))
                                                (__tmp211296
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self210720%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp211296
                                            _%eid210769%_
                                            1+
                                            '0)))
                                       _%hd210730210752%_)
                                      (_%g210723210736%_ _%g210724210739%_))))
                              (_%g210723210736%_ _%g210724210739%_))))
                      (_%g210723210736%_ _%g210724210739%_)))))
          (_%g210722210771%_ _%stx210721%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self210650%_ _%stx210651%_)
        (let* ((_%g210653210670%_
                (lambda (_%g210654210667%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g210654210667%_))))
               (_%g210652210717%_
                (lambda (_%g210654210673%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g210654210673%_))
                      (let ((_%e210657210675%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g210654210673%_))))
                        (let ((_%hd210658210678%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e210657210675%_)))
                              (_%tl210659210680%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e210657210675%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl210659210680%_))
                              (let ((_%e210660210683%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl210659210680%_))))
                                (let ((_%hd210661210686%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e210660210683%_)))
                                      (_%tl210662210688%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e210660210683%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl210662210688%_))
                                      (let ((_%e210663210691%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl210662210688%_))))
                                        (let ((_%hd210664210694%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e210663210691%_)))
                                              (_%tl210665210696%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e210663210691%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl210665210696%_))
                                              ((lambda (_%g210655210699%_
                                                        _%g210656210700%_)
                                                 (let ((_%eid210715%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g210656210700%_))))
                                                   (let ((__tmp211297
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self210650%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp211297
                                                      _%eid210715%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self210650%_
                                                      _%g210655210699%_))))
                                               _%hd210664210694%_
                                               _%hd210661210686%_)
                                              (_%g210653210670%_
                                               _%g210654210673%_))))
                                      (_%g210653210670%_ _%g210654210673%_))))
                              (_%g210653210670%_ _%g210654210673%_))))
                      (_%g210653210670%_ _%g210654210673%_)))))
          (_%g210652210717%_ _%stx210651%_))))
    (define gxc#find-body%
      (lambda (_%self210565%_ _%stx210566%_)
        (let* ((_%g210568210587%_
                (lambda (_%g210569210584%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g210569210584%_))))
               (_%g210567210647%_
                (lambda (_%g210569210590%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g210569210590%_))
                      (let ((_%e210571210592%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g210569210590%_))))
                        (let ((_%hd210572210595%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e210571210592%_)))
                              (_%tl210573210597%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e210571210592%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl210573210597%_))
                              (let ((_g211298_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl210573210597%_
                                        '0))))
                                (begin
                                  (let ((_g211299_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g211298_)
                                               (##values-length _g211298_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g211299_ 2)))
                                        (error "Context expects 2 values"
                                               _g211299_)))
                                  (let ((_%target210574210600%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g211298_ 0)))
                                        (_%tl210576210602%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g211298_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl210576210602%_))
                                        (letrec ((_%loop210577210605%_
                                                  (lambda (_%hd210575210608%_
                                                           _%expr210581210610%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd210575210608%_))
                                                        (let ((_%e210578210612%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd210575210608%_))))
                  (let ((_%lp-hd210579210615%_
                         (let ()
                           (declare (not safe))
                           (##car _%e210578210612%_)))
                        (_%lp-tl210580210617%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e210578210612%_))))
                    (_%loop210577210605%_
                     _%lp-tl210580210617%_
                     (cons _%lp-hd210579210615%_ _%expr210581210610%_))))
                (let ((_%expr210582210620%_ (reverse _%expr210581210610%_)))
                  ((lambda (_%g210570210622%_)
                     (let ((__tmp211302
                            (lambda (_%g210635210637%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self210565%_
                                 _%g210635210637%_))))
                           (__tmp211300
                            (let ((__tmp211301
                                   (lambda (_%g210639210642%_
                                            _%g210640210644%_)
                                     (cons _%g210639210642%_
                                           _%g210640210644%_))))
                              (declare (not safe))
                              (foldr__0 __tmp211301 '() _%g210570210622%_))))
                       (declare (not safe))
                       (ormap__0 __tmp211302 __tmp211300)))
                   _%expr210582210620%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop210577210605%_
                                           _%target210574210600%_
                                           '()))
                                        (_%g210568210587%_
                                         _%g210569210590%_)))))
                              (_%g210568210587%_ _%g210569210590%_))))
                      (_%g210568210587%_ _%g210569210590%_)))))
          (_%g210567210647%_ _%stx210566%_))))
    (define gxc#find-let-values%
      (lambda (_%self210419%_ _%stx210420%_)
        (let* ((_%g210422210457%_
                (lambda (_%g210423210454%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g210423210454%_))))
               (_%g210421210562%_
                (lambda (_%g210423210460%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g210423210460%_))
                      (let ((_%e210427210462%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g210423210460%_))))
                        (let ((_%hd210428210465%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e210427210462%_)))
                              (_%tl210429210467%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e210427210462%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl210429210467%_))
                              (let ((_%e210430210470%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl210429210467%_))))
                                (let ((_%hd210431210473%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e210430210470%_)))
                                      (_%tl210432210475%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e210430210470%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd210431210473%_))
                                      (let ((_g211303_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd210431210473%_
                                                '0))))
                                        (begin
                                          (let ((_g211304_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g211303_)
                                                       (##values-length
                                                        _g211303_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g211304_ 2)))
                                                (error "Context expects 2 values"
                                                       _g211304_)))
                                          (let ((_%target210433210478%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g211303_ 0)))
                                                (_%tl210435210480%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g211303_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl210435210480%_))
                                                (letrec ((_%loop210436210483%_
                                                          (lambda (_%hd210434210486%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr210440210488%_
                           _%bind210441210489%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd210434210486%_))
                        (let ((_%e210437210491%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd210434210486%_))))
                          (let ((_%lp-hd210438210494%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e210437210491%_)))
                                (_%lp-tl210439210496%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e210437210491%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd210438210494%_))
                                (let ((_%e210444210499%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd210438210494%_))))
                                  (let ((_%hd210445210502%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e210444210499%_)))
                                        (_%tl210446210504%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e210444210499%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl210446210504%_))
                                        (let ((_%e210447210507%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl210446210504%_))))
                                          (let ((_%hd210448210510%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e210447210507%_)))
                                                (_%tl210449210512%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e210447210507%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl210449210512%_))
                                                (_%loop210436210483%_
                                                 _%lp-tl210439210496%_
                                                 (cons _%hd210448210510%_
                                                       _%expr210440210488%_)
                                                 (cons _%hd210445210502%_
                                                       _%bind210441210489%_))
                                                (_%g210422210457%_
                                                 _%g210423210460%_))))
                                        (_%g210422210457%_
                                         _%g210423210460%_))))
                                (_%g210422210457%_ _%g210423210460%_))))
                        (let ((_%expr210442210515%_
                               (reverse _%expr210440210488%_))
                              (_%bind210443210516%_
                               (reverse _%bind210441210489%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl210432210475%_))
                              (let ((_%e210450210518%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl210432210475%_))))
                                (let ((_%hd210451210521%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e210450210518%_)))
                                      (_%tl210452210523%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e210450210518%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl210452210523%_))
                                      ((lambda (_%g210424210526%_
                                                _%g210425210527%_
                                                _%g210426210528%_)
                                         (let ((_%$e210559%_
                                                (let ((__tmp211307
                                                       (lambda (_%g210547210549%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self210419%_
                                                            _%g210547210549%_))))
                                                      (__tmp211305
                                                       (let ((__tmp211306
                                                              (lambda (_%g210551210554%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g210552210556%_)
                        (cons _%g210551210554%_ _%g210552210556%_))))
                 (declare (not safe))
                 (foldr__0 __tmp211306 '() _%g210425210527%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap__0
                                                   __tmp211307
                                                   __tmp211305))))
                                           (if _%$e210559%_
                                               _%$e210559%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self210419%_
                                                  _%g210424210526%_)))))
                                       _%hd210451210521%_
                                       _%expr210442210515%_
                                       _%bind210443210516%_)
                                      (_%g210422210457%_ _%g210423210460%_))))
                              (_%g210422210457%_ _%g210423210460%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop210436210483%_
                                                   _%target210433210478%_
                                                   '()
                                                   '()))
                                                (_%g210422210457%_
                                                 _%g210423210460%_)))))
                                      (_%g210422210457%_ _%g210423210460%_))))
                              (_%g210422210457%_ _%g210423210460%_))))
                      (_%g210422210457%_ _%g210423210460%_)))))
          (_%g210421210562%_ _%stx210420%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self210363%_ _%stx210364%_)
        (let* ((_%g210366210379%_
                (lambda (_%g210367210376%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g210367210376%_))))
               (_%g210365210416%_
                (lambda (_%g210367210382%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g210367210382%_))
                      (let ((_%e210369210384%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g210367210382%_))))
                        (let ((_%hd210370210387%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e210369210384%_)))
                              (_%tl210371210389%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e210369210384%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl210371210389%_))
                              (let ((_%e210372210392%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl210371210389%_))))
                                (let ((_%hd210373210395%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e210372210392%_)))
                                      (_%tl210374210397%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e210372210392%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl210374210397%_))
                                      ((lambda (_%g210368210400%_)
                                         (let ((__tmp211309
                                                (lambda (_%g210411210413%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g210368210400%_
                                                     _%g210411210413%_))))
                                               (__tmp211308
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self210363%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp211309 __tmp211308)))
                                       _%hd210373210395%_)
                                      (_%g210366210379%_ _%g210367210382%_))))
                              (_%g210366210379%_ _%g210367210382%_))))
                      (_%g210366210379%_ _%g210367210382%_)))))
          (_%g210365210416%_ _%stx210364%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self210288%_ _%stx210289%_)
        (let* ((_%g210291210308%_
                (lambda (_%g210292210305%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g210292210305%_))))
               (_%g210290210360%_
                (lambda (_%g210292210311%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g210292210311%_))
                      (let ((_%e210295210313%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g210292210311%_))))
                        (let ((_%hd210296210316%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e210295210313%_)))
                              (_%tl210297210318%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e210295210313%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl210297210318%_))
                              (let ((_%e210298210321%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl210297210318%_))))
                                (let ((_%hd210299210324%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e210298210321%_)))
                                      (_%tl210300210326%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e210298210321%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl210300210326%_))
                                      (let ((_%e210301210329%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl210300210326%_))))
                                        (let ((_%hd210302210332%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e210301210329%_)))
                                              (_%tl210303210334%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e210301210329%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl210303210334%_))
                                              ((lambda (_%g210293210337%_
                                                        _%g210294210338%_)
                                                 (let ((_%$e210357%_
                                                        (let ((__tmp211311
                                                               (lambda (_%g210352210354%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%g210294210338%_
                            _%g210352210354%_))))
                      (__tmp211310
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self210288%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp211311 __tmp211310))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e210357%_
                                                       _%$e210357%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self210288%_
                                                          _%g210293210337%_)))))
                                               _%hd210302210332%_
                                               _%hd210299210324%_)
                                              (_%g210291210308%_
                                               _%g210292210311%_))))
                                      (_%g210291210308%_ _%g210292210311%_))))
                              (_%g210291210308%_ _%g210292210311%_))))
                      (_%g210291210308%_ _%g210292210311%_)))))
          (_%g210290210360%_ _%stx210289%_))))))
