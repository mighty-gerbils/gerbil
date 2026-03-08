(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1773009272)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp212312 (list gxc#::void::t))
            (__tmp212311 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp212312
         '()
         __tmp212311
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args212298%_
        (apply make-instance gxc#::collect-mutators::t _%$args212298%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp212313
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
        (__make-atomic-promise __tmp212313)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx212290%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self212293%_
                (let ((__obj212301
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj212301))
               (__tmp212314
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self212293%_ _%stx212290%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp212314
           gxc#current-compile-method
           _%self212293%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp212316 (list gxc#::basic-xform-expression::t))
            (__tmp212315 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp212316
         '(id new-id)
         __tmp212315
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args212287%_
        (apply make-instance gxc#::expression-subst::t _%$args212287%_)))
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
      (let ((__tmp212317
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
        (__make-atomic-promise __tmp212317)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords212259%_
               _%id212255212260%_
               _%new-id212256212261%_
               _%stx212262%_)
        (let* ((_%id212265%_
                (if (eq? _%id212255212260%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id212255212260%_))
               (_%new-id212267%_
                (if (eq? _%new-id212256212261%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id212256212261%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self212269%_
                  (let ((__obj212303
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj212303
                       _%id212265%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj212303
                       _%new-id212267%_
                       '2
                       '#f
                       '#f))
                    __obj212303))
                 (__tmp212318
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self212269%_ _%stx212262%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp212318
             gxc#current-compile-method
             _%self212269%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords212276%_ . _%args212277%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords212276%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords212276%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords212276%_
                  'new-id:
                  absent-value))
               _%args212277%_)))
    (define gxc#apply-expression-subst
      (lambda _%args212257212283%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args212257212283%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp212320 (list gxc#::basic-xform-expression::t))
            (__tmp212319 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp212320
         '(subst)
         __tmp212319
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args212251%_
        (apply make-instance gxc#::expression-subst*::t _%$args212251%_)))
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
      (let ((__tmp212321
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
        (__make-atomic-promise __tmp212321)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords212226%_ _%subst212223212227%_ _%stx212228%_)
        (let ((_%subst212231%_
               (if (eq? _%subst212223212227%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst212223212227%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self212233%_
                  (let ((__obj212305
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj212305
                       _%subst212231%_
                       '1
                       '#f
                       '#f))
                    __obj212305))
                 (__tmp212322
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self212233%_ _%stx212228%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp212322
             gxc#current-compile-method
             _%self212233%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords212240%_ . _%args212241%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords212240%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords212240%_
                  'subst:
                  absent-value))
               _%args212241%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args212224212247%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args212224212247%_)))
    (define gxc#::find-expression::t
      (let ((__tmp212323 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp212323
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args212219%_
        (apply make-instance gxc#::find-expression::t _%$args212219%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp212324
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
        (__make-atomic-promise __tmp212324)))
    (define gxc#::find-var-refs::t
      (let ((__tmp212326 (list gxc#::find-expression::t))
            (__tmp212325 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp212326
         '(ids)
         __tmp212325
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args212215%_
        (apply make-instance gxc#::find-var-refs::t _%$args212215%_)))
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
      (let ((__tmp212327
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
        (__make-atomic-promise __tmp212327)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords212190%_ _%ids212187212191%_ _%stx212192%_)
        (let ((_%ids212195%_
               (if (eq? _%ids212187212191%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids212187212191%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self212197%_
                  (let ((__obj212308
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj212308
                       _%ids212195%_
                       '1
                       '#f
                       '#f))
                    __obj212308))
                 (__tmp212328
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self212197%_ _%stx212192%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp212328
             gxc#current-compile-method
             _%self212197%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords212204%_ . _%args212205%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords212204%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords212204%_ 'ids: absent-value))
               _%args212205%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args212188212211%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args212188212211%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp212330 (list gxc#::collect-expression-refs::t))
            (__tmp212329 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp212330
         '()
         __tmp212329
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args212183%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args212183%_)))
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
      (let ((__tmp212331
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
        (__make-atomic-promise __tmp212331)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords212158%_ _%table212155212159%_ _%stx212160%_)
        (let ((_%table212163%_
               (if (eq? _%table212155212159%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table212155212159%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self212165%_
                  (let ((__obj212310
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj212310
                       _%table212163%_
                       '1
                       '#f
                       '#f))
                    __obj212310))
                 (__tmp212332
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self212165%_ _%stx212160%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp212332
             gxc#current-compile-method
             _%self212165%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords212172%_ . _%args212173%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords212172%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords212172%_
                  'table:
                  absent-value))
               _%args212173%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args212156212179%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args212156212179%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self212084%_ _%stx212085%_)
        (let* ((_%g212087212104%_
                (lambda (_%g212088212101%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212088212101%_))))
               (_%g212086212151%_
                (lambda (_%g212088212107%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212088212107%_))
                      (let ((_%e212091212109%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g212088212107%_))))
                        (let ((_%hd212092212112%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212091212109%_)))
                              (_%tl212093212114%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212091212109%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212093212114%_))
                              (let ((_%e212094212117%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl212093212114%_))))
                                (let ((_%hd212095212120%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212094212117%_)))
                                      (_%tl212096212122%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212094212117%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl212096212122%_))
                                      (let ((_%e212097212125%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl212096212122%_))))
                                        (let ((_%hd212098212128%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e212097212125%_)))
                                              (_%tl212099212130%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e212097212125%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl212099212130%_))
                                              ((lambda (_%g212089212133%_
                                                        _%g212090212134%_)
                                                 (let ((_%sym212149%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g212090212134%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym212149%_))
                                                   (let ((__tmp212333
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp212333
                                                      _%sym212149%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self212084%_
                                                      _%g212089212133%_))))
                                               _%hd212098212128%_
                                               _%hd212095212120%_)
                                              (_%g212087212104%_
                                               _%g212088212107%_))))
                                      (_%g212087212104%_ _%g212088212107%_))))
                              (_%g212087212104%_ _%g212088212107%_))))
                      (_%g212087212104%_ _%g212088212107%_)))))
          (_%g212086212151%_ _%stx212085%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self212032%_ _%stx212033%_)
        (let* ((_%g212035212048%_
                (lambda (_%g212036212045%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212036212045%_))))
               (_%g212034212081%_
                (lambda (_%g212036212051%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212036212051%_))
                      (let ((_%e212038212053%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g212036212051%_))))
                        (let ((_%hd212039212056%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212038212053%_)))
                              (_%tl212040212058%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212038212053%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212040212058%_))
                              (let ((_%e212041212061%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl212040212058%_))))
                                (let ((_%hd212042212064%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212041212061%_)))
                                      (_%tl212043212066%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212041212061%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl212043212066%_))
                                      ((lambda (_%g212037212069%_)
                                         (if (let ((__tmp212334
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self212032%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g212037212069%_
                                                __tmp212334))
                                             (let ((__tmp212335
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self212032%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp212335
                                                _%stx212033%_))
                                             _%stx212033%_))
                                       _%hd212042212064%_)
                                      (_%g212035212048%_ _%g212036212051%_))))
                              (_%g212035212048%_ _%g212036212051%_))))
                      (_%g212035212048%_ _%g212036212051%_)))))
          (_%g212034212081%_ _%stx212033%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self211972%_ _%stx211973%_)
        (let* ((_%g211975211988%_
                (lambda (_%g211976211985%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211976211985%_))))
               (_%g211974212029%_
                (lambda (_%g211976211991%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211976211991%_))
                      (let ((_%e211978211993%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g211976211991%_))))
                        (let ((_%hd211979211996%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211978211993%_)))
                              (_%tl211980211998%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211978211993%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211980211998%_))
                              (let ((_%e211981212001%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl211980211998%_))))
                                (let ((_%hd211982212004%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211981212001%_)))
                                      (_%tl211983212006%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211981212001%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl211983212006%_))
                                      ((lambda (_%g211977212009%_)
                                         (let ((_%$e212023%_
                                                (let ((__tmp212337
                                                       (lambda (_%sub212021%_)
                                                         (let ((__tmp212338
                                                                (car _%sub212021%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%g211977212009%_
                                                            __tmp212338))))
                                                      (__tmp212336
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self211972%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp212337
                                                          __tmp212336))))
                                           (if _%$e212023%_
                                               ((lambda (_%sub212026%_)
                                                  (let ((__tmp212339
                                                         (cons '%#ref
                                                               (cons (cdr _%sub212026%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp212339
                                                     _%stx211973%_)))
                                                _%$e212023%_)
                                               _%stx211973%_)))
                                       _%hd211982212004%_)
                                      (_%g211975211988%_ _%g211976211991%_))))
                              (_%g211975211988%_ _%g211976211991%_))))
                      (_%g211975211988%_ _%g211976211991%_)))))
          (_%g211974212029%_ _%stx211973%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self211901%_ _%stx211902%_)
        (let* ((_%g211904211921%_
                (lambda (_%g211905211918%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211905211918%_))))
               (_%g211903211969%_
                (lambda (_%g211905211924%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211905211924%_))
                      (let ((_%e211908211926%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g211905211924%_))))
                        (let ((_%hd211909211929%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211908211926%_)))
                              (_%tl211910211931%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211908211926%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211910211931%_))
                              (let ((_%e211911211934%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl211910211931%_))))
                                (let ((_%hd211912211937%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211911211934%_)))
                                      (_%tl211913211939%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211911211934%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl211913211939%_))
                                      (let ((_%e211914211942%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl211913211939%_))))
                                        (let ((_%hd211915211945%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e211914211942%_)))
                                              (_%tl211916211947%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e211914211942%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl211916211947%_))
                                              ((lambda (_%g211906211950%_
                                                        _%g211907211951%_)
                                                 (let ((_%new-expr211966%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self211901%_
                                                           _%g211906211950%_)))
                                                       (_%new-xid211967%_
                                                        (if (let ((__tmp212340
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self211901%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%g211907211951%_ __tmp212340))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self211901%_ 'new-id))
                    _%g211907211951%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp212341
                                                          (cons '%#set!
                                                                (cons _%new-xid211967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr211966%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp212341
                                                      _%stx211902%_))))
                                               _%hd211915211945%_
                                               _%hd211912211937%_)
                                              (_%g211904211921%_
                                               _%g211905211924%_))))
                                      (_%g211904211921%_ _%g211905211924%_))))
                              (_%g211904211921%_ _%g211905211924%_))))
                      (_%g211904211921%_ _%g211905211924%_)))))
          (_%g211903211969%_ _%stx211902%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self211824%_ _%stx211825%_)
        (let* ((_%g211827211844%_
                (lambda (_%g211828211841%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211828211841%_))))
               (_%g211826211898%_
                (lambda (_%g211828211847%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211828211847%_))
                      (let ((_%e211831211849%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g211828211847%_))))
                        (let ((_%hd211832211852%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211831211849%_)))
                              (_%tl211833211854%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211831211849%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211833211854%_))
                              (let ((_%e211834211857%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl211833211854%_))))
                                (let ((_%hd211835211860%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211834211857%_)))
                                      (_%tl211836211862%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211834211857%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl211836211862%_))
                                      (let ((_%e211837211865%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl211836211862%_))))
                                        (let ((_%hd211838211868%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e211837211865%_)))
                                              (_%tl211839211870%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e211837211865%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl211839211870%_))
                                              ((lambda (_%g211829211873%_
                                                        _%g211830211874%_)
                                                 (let ((_%new-expr211895%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self211824%_
                                                           _%g211829211873%_)))
                                                       (_%new-xid211896%_
                                                        (let ((_%$e211891%_
                                                               (let ((__tmp212343
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub211889%_)
                                (let ((__tmp212344 (car _%sub211889%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%g211830211874%_
                                   __tmp212344))))
                             (__tmp212342
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self211824%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp212343 __tmp212342))))
                  (if _%$e211891%_ (cdr _%$e211891%_) _%g211830211874%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp212345
                                                          (cons '%#set!
                                                                (cons _%new-xid211896%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr211895%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp212345
                                                      _%stx211825%_))))
                                               _%hd211838211868%_
                                               _%hd211835211860%_)
                                              (_%g211827211844%_
                                               _%g211828211847%_))))
                                      (_%g211827211844%_ _%g211828211847%_))))
                              (_%g211827211844%_ _%g211828211847%_))))
                      (_%g211827211844%_ _%g211828211847%_)))))
          (_%g211826211898%_ _%stx211825%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self211770%_ _%stx211771%_)
        (let* ((_%g211773211786%_
                (lambda (_%g211774211783%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211774211783%_))))
               (_%g211772211821%_
                (lambda (_%g211774211789%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211774211789%_))
                      (let ((_%e211776211791%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g211774211789%_))))
                        (let ((_%hd211777211794%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211776211791%_)))
                              (_%tl211778211796%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211776211791%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211778211796%_))
                              (let ((_%e211779211799%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl211778211796%_))))
                                (let ((_%hd211780211802%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211779211799%_)))
                                      (_%tl211781211804%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211779211799%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl211781211804%_))
                                      ((lambda (_%g211775211807%_)
                                         (let* ((_%eid211819%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g211775211807%_)))
                                                (__tmp212346
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self211770%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp212346
                                            _%eid211819%_
                                            1+
                                            '0)))
                                       _%hd211780211802%_)
                                      (_%g211773211786%_ _%g211774211789%_))))
                              (_%g211773211786%_ _%g211774211789%_))))
                      (_%g211773211786%_ _%g211774211789%_)))))
          (_%g211772211821%_ _%stx211771%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self211700%_ _%stx211701%_)
        (let* ((_%g211703211720%_
                (lambda (_%g211704211717%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211704211717%_))))
               (_%g211702211767%_
                (lambda (_%g211704211723%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211704211723%_))
                      (let ((_%e211707211725%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g211704211723%_))))
                        (let ((_%hd211708211728%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211707211725%_)))
                              (_%tl211709211730%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211707211725%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211709211730%_))
                              (let ((_%e211710211733%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl211709211730%_))))
                                (let ((_%hd211711211736%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211710211733%_)))
                                      (_%tl211712211738%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211710211733%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl211712211738%_))
                                      (let ((_%e211713211741%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl211712211738%_))))
                                        (let ((_%hd211714211744%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e211713211741%_)))
                                              (_%tl211715211746%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e211713211741%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl211715211746%_))
                                              ((lambda (_%g211705211749%_
                                                        _%g211706211750%_)
                                                 (let ((_%eid211765%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g211706211750%_))))
                                                   (let ((__tmp212347
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self211700%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp212347
                                                      _%eid211765%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self211700%_
                                                      _%g211705211749%_))))
                                               _%hd211714211744%_
                                               _%hd211711211736%_)
                                              (_%g211703211720%_
                                               _%g211704211723%_))))
                                      (_%g211703211720%_ _%g211704211723%_))))
                              (_%g211703211720%_ _%g211704211723%_))))
                      (_%g211703211720%_ _%g211704211723%_)))))
          (_%g211702211767%_ _%stx211701%_))))
    (define gxc#find-body%
      (lambda (_%self211615%_ _%stx211616%_)
        (let* ((_%g211618211637%_
                (lambda (_%g211619211634%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211619211634%_))))
               (_%g211617211697%_
                (lambda (_%g211619211640%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211619211640%_))
                      (let ((_%e211621211642%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g211619211640%_))))
                        (let ((_%hd211622211645%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211621211642%_)))
                              (_%tl211623211647%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211621211642%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl211623211647%_))
                              (let ((_g212348_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl211623211647%_
                                        '0))))
                                (begin
                                  (let ((_g212349_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g212348_)
                                               (##values-length _g212348_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g212349_ 2)))
                                        (error "Context expects 2 values"
                                               _g212349_)))
                                  (let ((_%target211624211650%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g212348_ 0)))
                                        (_%tl211626211652%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g212348_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl211626211652%_))
                                        (letrec ((_%loop211627211655%_
                                                  (lambda (_%hd211625211658%_
                                                           _%expr211631211660%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd211625211658%_))
                                                        (let ((_%e211628211662%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd211625211658%_))))
                  (let ((_%lp-hd211629211665%_
                         (let ()
                           (declare (not safe))
                           (##car _%e211628211662%_)))
                        (_%lp-tl211630211667%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e211628211662%_))))
                    (_%loop211627211655%_
                     _%lp-tl211630211667%_
                     (cons _%lp-hd211629211665%_ _%expr211631211660%_))))
                (let ((_%expr211632211670%_ (reverse _%expr211631211660%_)))
                  ((lambda (_%g211620211672%_)
                     (let ((__tmp212352
                            (lambda (_%g211685211687%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self211615%_
                                 _%g211685211687%_))))
                           (__tmp212350
                            (let ((__tmp212351
                                   (lambda (_%g211689211692%_
                                            _%g211690211694%_)
                                     (cons _%g211689211692%_
                                           _%g211690211694%_))))
                              (declare (not safe))
                              (foldr__0 __tmp212351 '() _%g211620211672%_))))
                       (declare (not safe))
                       (ormap__0 __tmp212352 __tmp212350)))
                   _%expr211632211670%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop211627211655%_
                                           _%target211624211650%_
                                           '()))
                                        (_%g211618211637%_
                                         _%g211619211640%_)))))
                              (_%g211618211637%_ _%g211619211640%_))))
                      (_%g211618211637%_ _%g211619211640%_)))))
          (_%g211617211697%_ _%stx211616%_))))
    (define gxc#find-let-values%
      (lambda (_%self211469%_ _%stx211470%_)
        (let* ((_%g211472211507%_
                (lambda (_%g211473211504%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211473211504%_))))
               (_%g211471211612%_
                (lambda (_%g211473211510%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211473211510%_))
                      (let ((_%e211477211512%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g211473211510%_))))
                        (let ((_%hd211478211515%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211477211512%_)))
                              (_%tl211479211517%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211477211512%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211479211517%_))
                              (let ((_%e211480211520%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl211479211517%_))))
                                (let ((_%hd211481211523%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211480211520%_)))
                                      (_%tl211482211525%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211480211520%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd211481211523%_))
                                      (let ((_g212353_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd211481211523%_
                                                '0))))
                                        (begin
                                          (let ((_g212354_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g212353_)
                                                       (##values-length
                                                        _g212353_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g212354_ 2)))
                                                (error "Context expects 2 values"
                                                       _g212354_)))
                                          (let ((_%target211483211528%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g212353_ 0)))
                                                (_%tl211485211530%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g212353_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl211485211530%_))
                                                (letrec ((_%loop211486211533%_
                                                          (lambda (_%hd211484211536%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr211490211538%_
                           _%bind211491211539%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd211484211536%_))
                        (let ((_%e211487211541%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd211484211536%_))))
                          (let ((_%lp-hd211488211544%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e211487211541%_)))
                                (_%lp-tl211489211546%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e211487211541%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd211488211544%_))
                                (let ((_%e211494211549%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd211488211544%_))))
                                  (let ((_%hd211495211552%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e211494211549%_)))
                                        (_%tl211496211554%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e211494211549%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl211496211554%_))
                                        (let ((_%e211497211557%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl211496211554%_))))
                                          (let ((_%hd211498211560%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e211497211557%_)))
                                                (_%tl211499211562%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e211497211557%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl211499211562%_))
                                                (_%loop211486211533%_
                                                 _%lp-tl211489211546%_
                                                 (cons _%hd211498211560%_
                                                       _%expr211490211538%_)
                                                 (cons _%hd211495211552%_
                                                       _%bind211491211539%_))
                                                (_%g211472211507%_
                                                 _%g211473211510%_))))
                                        (_%g211472211507%_
                                         _%g211473211510%_))))
                                (_%g211472211507%_ _%g211473211510%_))))
                        (let ((_%expr211492211565%_
                               (reverse _%expr211490211538%_))
                              (_%bind211493211566%_
                               (reverse _%bind211491211539%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211482211525%_))
                              (let ((_%e211500211568%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl211482211525%_))))
                                (let ((_%hd211501211571%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211500211568%_)))
                                      (_%tl211502211573%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211500211568%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl211502211573%_))
                                      ((lambda (_%g211474211576%_
                                                _%g211475211577%_
                                                _%g211476211578%_)
                                         (let ((_%$e211609%_
                                                (let ((__tmp212357
                                                       (lambda (_%g211597211599%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self211469%_
                                                            _%g211597211599%_))))
                                                      (__tmp212355
                                                       (let ((__tmp212356
                                                              (lambda (_%g211601211604%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g211602211606%_)
                        (cons _%g211601211604%_ _%g211602211606%_))))
                 (declare (not safe))
                 (foldr__0 __tmp212356 '() _%g211475211577%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap__0
                                                   __tmp212357
                                                   __tmp212355))))
                                           (if _%$e211609%_
                                               _%$e211609%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self211469%_
                                                  _%g211474211576%_)))))
                                       _%hd211501211571%_
                                       _%expr211492211565%_
                                       _%bind211493211566%_)
                                      (_%g211472211507%_ _%g211473211510%_))))
                              (_%g211472211507%_ _%g211473211510%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop211486211533%_
                                                   _%target211483211528%_
                                                   '()
                                                   '()))
                                                (_%g211472211507%_
                                                 _%g211473211510%_)))))
                                      (_%g211472211507%_ _%g211473211510%_))))
                              (_%g211472211507%_ _%g211473211510%_))))
                      (_%g211472211507%_ _%g211473211510%_)))))
          (_%g211471211612%_ _%stx211470%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self211413%_ _%stx211414%_)
        (let* ((_%g211416211429%_
                (lambda (_%g211417211426%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211417211426%_))))
               (_%g211415211466%_
                (lambda (_%g211417211432%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211417211432%_))
                      (let ((_%e211419211434%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g211417211432%_))))
                        (let ((_%hd211420211437%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211419211434%_)))
                              (_%tl211421211439%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211419211434%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211421211439%_))
                              (let ((_%e211422211442%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl211421211439%_))))
                                (let ((_%hd211423211445%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211422211442%_)))
                                      (_%tl211424211447%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211422211442%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl211424211447%_))
                                      ((lambda (_%g211418211450%_)
                                         (let ((__tmp212359
                                                (lambda (_%g211461211463%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g211418211450%_
                                                     _%g211461211463%_))))
                                               (__tmp212358
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self211413%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp212359 __tmp212358)))
                                       _%hd211423211445%_)
                                      (_%g211416211429%_ _%g211417211432%_))))
                              (_%g211416211429%_ _%g211417211432%_))))
                      (_%g211416211429%_ _%g211417211432%_)))))
          (_%g211415211466%_ _%stx211414%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self211338%_ _%stx211339%_)
        (let* ((_%g211341211358%_
                (lambda (_%g211342211355%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211342211355%_))))
               (_%g211340211410%_
                (lambda (_%g211342211361%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211342211361%_))
                      (let ((_%e211345211363%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g211342211361%_))))
                        (let ((_%hd211346211366%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211345211363%_)))
                              (_%tl211347211368%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211345211363%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211347211368%_))
                              (let ((_%e211348211371%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl211347211368%_))))
                                (let ((_%hd211349211374%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211348211371%_)))
                                      (_%tl211350211376%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211348211371%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl211350211376%_))
                                      (let ((_%e211351211379%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl211350211376%_))))
                                        (let ((_%hd211352211382%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e211351211379%_)))
                                              (_%tl211353211384%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e211351211379%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl211353211384%_))
                                              ((lambda (_%g211343211387%_
                                                        _%g211344211388%_)
                                                 (let ((_%$e211407%_
                                                        (let ((__tmp212361
                                                               (lambda (_%g211402211404%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%g211344211388%_
                            _%g211402211404%_))))
                      (__tmp212360
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self211338%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp212361 __tmp212360))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e211407%_
                                                       _%$e211407%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self211338%_
                                                          _%g211343211387%_)))))
                                               _%hd211352211382%_
                                               _%hd211349211374%_)
                                              (_%g211341211358%_
                                               _%g211342211361%_))))
                                      (_%g211341211358%_ _%g211342211361%_))))
                              (_%g211341211358%_ _%g211342211361%_))))
                      (_%g211341211358%_ _%g211342211361%_)))))
          (_%g211340211410%_ _%stx211339%_))))))
