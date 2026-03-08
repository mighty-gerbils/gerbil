(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1773012988)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp212322 (list gxc#::void::t))
            (__tmp212321 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp212322
         '()
         __tmp212321
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args212308%_
        (apply make-instance gxc#::collect-mutators::t _%$args212308%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp212323
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
        (__make-atomic-promise __tmp212323)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx212300%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self212303%_
                (let ((__obj212311
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj212311))
               (__tmp212324
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self212303%_ _%stx212300%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp212324
           gxc#current-compile-method
           _%self212303%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp212326 (list gxc#::basic-xform-expression::t))
            (__tmp212325 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp212326
         '(id new-id)
         __tmp212325
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args212297%_
        (apply make-instance gxc#::expression-subst::t _%$args212297%_)))
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
      (let ((__tmp212327
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
        (__make-atomic-promise __tmp212327)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords212269%_
               _%id212265212270%_
               _%new-id212266212271%_
               _%stx212272%_)
        (let* ((_%id212275%_
                (if (eq? _%id212265212270%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id212265212270%_))
               (_%new-id212277%_
                (if (eq? _%new-id212266212271%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id212266212271%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self212279%_
                  (let ((__obj212313
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj212313
                       _%id212275%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj212313
                       _%new-id212277%_
                       '2
                       '#f
                       '#f))
                    __obj212313))
                 (__tmp212328
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self212279%_ _%stx212272%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp212328
             gxc#current-compile-method
             _%self212279%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords212286%_ . _%args212287%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords212286%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords212286%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords212286%_
                  'new-id:
                  absent-value))
               _%args212287%_)))
    (define gxc#apply-expression-subst
      (lambda _%args212267212293%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args212267212293%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp212330 (list gxc#::basic-xform-expression::t))
            (__tmp212329 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp212330
         '(subst)
         __tmp212329
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args212261%_
        (apply make-instance gxc#::expression-subst*::t _%$args212261%_)))
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
      (let ((__tmp212331
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
        (__make-atomic-promise __tmp212331)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords212236%_ _%subst212233212237%_ _%stx212238%_)
        (let ((_%subst212241%_
               (if (eq? _%subst212233212237%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst212233212237%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self212243%_
                  (let ((__obj212315
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj212315
                       _%subst212241%_
                       '1
                       '#f
                       '#f))
                    __obj212315))
                 (__tmp212332
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self212243%_ _%stx212238%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp212332
             gxc#current-compile-method
             _%self212243%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords212250%_ . _%args212251%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords212250%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords212250%_
                  'subst:
                  absent-value))
               _%args212251%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args212234212257%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args212234212257%_)))
    (define gxc#::find-expression::t
      (let ((__tmp212333 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp212333
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args212229%_
        (apply make-instance gxc#::find-expression::t _%$args212229%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp212334
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
        (__make-atomic-promise __tmp212334)))
    (define gxc#::find-var-refs::t
      (let ((__tmp212336 (list gxc#::find-expression::t))
            (__tmp212335 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp212336
         '(ids)
         __tmp212335
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args212225%_
        (apply make-instance gxc#::find-var-refs::t _%$args212225%_)))
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
      (let ((__tmp212337
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
        (__make-atomic-promise __tmp212337)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords212200%_ _%ids212197212201%_ _%stx212202%_)
        (let ((_%ids212205%_
               (if (eq? _%ids212197212201%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids212197212201%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self212207%_
                  (let ((__obj212318
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj212318
                       _%ids212205%_
                       '1
                       '#f
                       '#f))
                    __obj212318))
                 (__tmp212338
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self212207%_ _%stx212202%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp212338
             gxc#current-compile-method
             _%self212207%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords212214%_ . _%args212215%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords212214%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords212214%_ 'ids: absent-value))
               _%args212215%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args212198212221%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args212198212221%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp212340 (list gxc#::collect-expression-refs::t))
            (__tmp212339 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp212340
         '()
         __tmp212339
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args212193%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args212193%_)))
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
      (let ((__tmp212341
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
        (__make-atomic-promise __tmp212341)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords212168%_ _%table212165212169%_ _%stx212170%_)
        (let ((_%table212173%_
               (if (eq? _%table212165212169%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table212165212169%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self212175%_
                  (let ((__obj212320
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj212320
                       _%table212173%_
                       '1
                       '#f
                       '#f))
                    __obj212320))
                 (__tmp212342
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self212175%_ _%stx212170%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp212342
             gxc#current-compile-method
             _%self212175%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords212182%_ . _%args212183%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords212182%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords212182%_
                  'table:
                  absent-value))
               _%args212183%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args212166212189%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args212166212189%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self212094%_ _%stx212095%_)
        (let* ((_%g212097212114%_
                (lambda (_%g212098212111%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212098212111%_))))
               (_%g212096212161%_
                (lambda (_%g212098212117%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212098212117%_))
                      (let ((_%e212101212119%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g212098212117%_))))
                        (let ((_%hd212102212122%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212101212119%_)))
                              (_%tl212103212124%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212101212119%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212103212124%_))
                              (let ((_%e212104212127%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl212103212124%_))))
                                (let ((_%hd212105212130%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212104212127%_)))
                                      (_%tl212106212132%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212104212127%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl212106212132%_))
                                      (let ((_%e212107212135%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl212106212132%_))))
                                        (let ((_%hd212108212138%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e212107212135%_)))
                                              (_%tl212109212140%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e212107212135%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl212109212140%_))
                                              ((lambda (_%g212099212143%_
                                                        _%g212100212144%_)
                                                 (let ((_%sym212159%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g212100212144%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym212159%_))
                                                   (let ((__tmp212343
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp212343
                                                      _%sym212159%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self212094%_
                                                      _%g212099212143%_))))
                                               _%hd212108212138%_
                                               _%hd212105212130%_)
                                              (_%g212097212114%_
                                               _%g212098212117%_))))
                                      (_%g212097212114%_ _%g212098212117%_))))
                              (_%g212097212114%_ _%g212098212117%_))))
                      (_%g212097212114%_ _%g212098212117%_)))))
          (_%g212096212161%_ _%stx212095%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self212042%_ _%stx212043%_)
        (let* ((_%g212045212058%_
                (lambda (_%g212046212055%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212046212055%_))))
               (_%g212044212091%_
                (lambda (_%g212046212061%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212046212061%_))
                      (let ((_%e212048212063%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g212046212061%_))))
                        (let ((_%hd212049212066%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212048212063%_)))
                              (_%tl212050212068%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212048212063%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212050212068%_))
                              (let ((_%e212051212071%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl212050212068%_))))
                                (let ((_%hd212052212074%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212051212071%_)))
                                      (_%tl212053212076%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212051212071%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl212053212076%_))
                                      ((lambda (_%g212047212079%_)
                                         (if (let ((__tmp212344
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self212042%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g212047212079%_
                                                __tmp212344))
                                             (let ((__tmp212345
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self212042%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp212345
                                                _%stx212043%_))
                                             _%stx212043%_))
                                       _%hd212052212074%_)
                                      (_%g212045212058%_ _%g212046212061%_))))
                              (_%g212045212058%_ _%g212046212061%_))))
                      (_%g212045212058%_ _%g212046212061%_)))))
          (_%g212044212091%_ _%stx212043%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self211982%_ _%stx211983%_)
        (let* ((_%g211985211998%_
                (lambda (_%g211986211995%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211986211995%_))))
               (_%g211984212039%_
                (lambda (_%g211986212001%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211986212001%_))
                      (let ((_%e211988212003%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g211986212001%_))))
                        (let ((_%hd211989212006%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211988212003%_)))
                              (_%tl211990212008%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211988212003%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211990212008%_))
                              (let ((_%e211991212011%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl211990212008%_))))
                                (let ((_%hd211992212014%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211991212011%_)))
                                      (_%tl211993212016%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211991212011%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl211993212016%_))
                                      ((lambda (_%g211987212019%_)
                                         (let ((_%$e212033%_
                                                (let ((__tmp212347
                                                       (lambda (_%sub212031%_)
                                                         (let ((__tmp212348
                                                                (car _%sub212031%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%g211987212019%_
                                                            __tmp212348))))
                                                      (__tmp212346
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self211982%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp212347
                                                          __tmp212346))))
                                           (if _%$e212033%_
                                               ((lambda (_%sub212036%_)
                                                  (let ((__tmp212349
                                                         (cons '%#ref
                                                               (cons (cdr _%sub212036%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp212349
                                                     _%stx211983%_)))
                                                _%$e212033%_)
                                               _%stx211983%_)))
                                       _%hd211992212014%_)
                                      (_%g211985211998%_ _%g211986212001%_))))
                              (_%g211985211998%_ _%g211986212001%_))))
                      (_%g211985211998%_ _%g211986212001%_)))))
          (_%g211984212039%_ _%stx211983%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self211911%_ _%stx211912%_)
        (let* ((_%g211914211931%_
                (lambda (_%g211915211928%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211915211928%_))))
               (_%g211913211979%_
                (lambda (_%g211915211934%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211915211934%_))
                      (let ((_%e211918211936%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g211915211934%_))))
                        (let ((_%hd211919211939%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211918211936%_)))
                              (_%tl211920211941%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211918211936%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211920211941%_))
                              (let ((_%e211921211944%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl211920211941%_))))
                                (let ((_%hd211922211947%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211921211944%_)))
                                      (_%tl211923211949%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211921211944%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl211923211949%_))
                                      (let ((_%e211924211952%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl211923211949%_))))
                                        (let ((_%hd211925211955%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e211924211952%_)))
                                              (_%tl211926211957%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e211924211952%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl211926211957%_))
                                              ((lambda (_%g211916211960%_
                                                        _%g211917211961%_)
                                                 (let ((_%new-expr211976%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self211911%_
                                                           _%g211916211960%_)))
                                                       (_%new-xid211977%_
                                                        (if (let ((__tmp212350
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self211911%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%g211917211961%_ __tmp212350))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self211911%_ 'new-id))
                    _%g211917211961%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp212351
                                                          (cons '%#set!
                                                                (cons _%new-xid211977%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr211976%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp212351
                                                      _%stx211912%_))))
                                               _%hd211925211955%_
                                               _%hd211922211947%_)
                                              (_%g211914211931%_
                                               _%g211915211934%_))))
                                      (_%g211914211931%_ _%g211915211934%_))))
                              (_%g211914211931%_ _%g211915211934%_))))
                      (_%g211914211931%_ _%g211915211934%_)))))
          (_%g211913211979%_ _%stx211912%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self211834%_ _%stx211835%_)
        (let* ((_%g211837211854%_
                (lambda (_%g211838211851%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211838211851%_))))
               (_%g211836211908%_
                (lambda (_%g211838211857%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211838211857%_))
                      (let ((_%e211841211859%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g211838211857%_))))
                        (let ((_%hd211842211862%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211841211859%_)))
                              (_%tl211843211864%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211841211859%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211843211864%_))
                              (let ((_%e211844211867%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl211843211864%_))))
                                (let ((_%hd211845211870%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211844211867%_)))
                                      (_%tl211846211872%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211844211867%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl211846211872%_))
                                      (let ((_%e211847211875%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl211846211872%_))))
                                        (let ((_%hd211848211878%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e211847211875%_)))
                                              (_%tl211849211880%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e211847211875%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl211849211880%_))
                                              ((lambda (_%g211839211883%_
                                                        _%g211840211884%_)
                                                 (let ((_%new-expr211905%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self211834%_
                                                           _%g211839211883%_)))
                                                       (_%new-xid211906%_
                                                        (let ((_%$e211901%_
                                                               (let ((__tmp212353
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub211899%_)
                                (let ((__tmp212354 (car _%sub211899%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%g211840211884%_
                                   __tmp212354))))
                             (__tmp212352
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self211834%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp212353 __tmp212352))))
                  (if _%$e211901%_ (cdr _%$e211901%_) _%g211840211884%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp212355
                                                          (cons '%#set!
                                                                (cons _%new-xid211906%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr211905%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp212355
                                                      _%stx211835%_))))
                                               _%hd211848211878%_
                                               _%hd211845211870%_)
                                              (_%g211837211854%_
                                               _%g211838211857%_))))
                                      (_%g211837211854%_ _%g211838211857%_))))
                              (_%g211837211854%_ _%g211838211857%_))))
                      (_%g211837211854%_ _%g211838211857%_)))))
          (_%g211836211908%_ _%stx211835%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self211780%_ _%stx211781%_)
        (let* ((_%g211783211796%_
                (lambda (_%g211784211793%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211784211793%_))))
               (_%g211782211831%_
                (lambda (_%g211784211799%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211784211799%_))
                      (let ((_%e211786211801%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g211784211799%_))))
                        (let ((_%hd211787211804%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211786211801%_)))
                              (_%tl211788211806%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211786211801%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211788211806%_))
                              (let ((_%e211789211809%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl211788211806%_))))
                                (let ((_%hd211790211812%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211789211809%_)))
                                      (_%tl211791211814%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211789211809%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl211791211814%_))
                                      ((lambda (_%g211785211817%_)
                                         (let* ((_%eid211829%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g211785211817%_)))
                                                (__tmp212356
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self211780%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp212356
                                            _%eid211829%_
                                            1+
                                            '0)))
                                       _%hd211790211812%_)
                                      (_%g211783211796%_ _%g211784211799%_))))
                              (_%g211783211796%_ _%g211784211799%_))))
                      (_%g211783211796%_ _%g211784211799%_)))))
          (_%g211782211831%_ _%stx211781%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self211710%_ _%stx211711%_)
        (let* ((_%g211713211730%_
                (lambda (_%g211714211727%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211714211727%_))))
               (_%g211712211777%_
                (lambda (_%g211714211733%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211714211733%_))
                      (let ((_%e211717211735%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g211714211733%_))))
                        (let ((_%hd211718211738%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211717211735%_)))
                              (_%tl211719211740%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211717211735%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211719211740%_))
                              (let ((_%e211720211743%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl211719211740%_))))
                                (let ((_%hd211721211746%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211720211743%_)))
                                      (_%tl211722211748%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211720211743%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl211722211748%_))
                                      (let ((_%e211723211751%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl211722211748%_))))
                                        (let ((_%hd211724211754%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e211723211751%_)))
                                              (_%tl211725211756%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e211723211751%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl211725211756%_))
                                              ((lambda (_%g211715211759%_
                                                        _%g211716211760%_)
                                                 (let ((_%eid211775%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g211716211760%_))))
                                                   (let ((__tmp212357
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self211710%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp212357
                                                      _%eid211775%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self211710%_
                                                      _%g211715211759%_))))
                                               _%hd211724211754%_
                                               _%hd211721211746%_)
                                              (_%g211713211730%_
                                               _%g211714211733%_))))
                                      (_%g211713211730%_ _%g211714211733%_))))
                              (_%g211713211730%_ _%g211714211733%_))))
                      (_%g211713211730%_ _%g211714211733%_)))))
          (_%g211712211777%_ _%stx211711%_))))
    (define gxc#find-body%
      (lambda (_%self211625%_ _%stx211626%_)
        (let* ((_%g211628211647%_
                (lambda (_%g211629211644%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211629211644%_))))
               (_%g211627211707%_
                (lambda (_%g211629211650%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211629211650%_))
                      (let ((_%e211631211652%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g211629211650%_))))
                        (let ((_%hd211632211655%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211631211652%_)))
                              (_%tl211633211657%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211631211652%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl211633211657%_))
                              (let ((_g212358_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl211633211657%_
                                        '0))))
                                (begin
                                  (let ((_g212359_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g212358_)
                                               (##values-length _g212358_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g212359_ 2)))
                                        (error "Context expects 2 values"
                                               _g212359_)))
                                  (let ((_%target211634211660%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g212358_ 0)))
                                        (_%tl211636211662%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g212358_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl211636211662%_))
                                        (letrec ((_%loop211637211665%_
                                                  (lambda (_%hd211635211668%_
                                                           _%expr211641211670%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd211635211668%_))
                                                        (let ((_%e211638211672%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd211635211668%_))))
                  (let ((_%lp-hd211639211675%_
                         (let ()
                           (declare (not safe))
                           (##car _%e211638211672%_)))
                        (_%lp-tl211640211677%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e211638211672%_))))
                    (_%loop211637211665%_
                     _%lp-tl211640211677%_
                     (cons _%lp-hd211639211675%_ _%expr211641211670%_))))
                (let ((_%expr211642211680%_ (reverse _%expr211641211670%_)))
                  ((lambda (_%g211630211682%_)
                     (let ((__tmp212362
                            (lambda (_%g211695211697%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self211625%_
                                 _%g211695211697%_))))
                           (__tmp212360
                            (let ((__tmp212361
                                   (lambda (_%g211699211702%_
                                            _%g211700211704%_)
                                     (cons _%g211699211702%_
                                           _%g211700211704%_))))
                              (declare (not safe))
                              (foldr__0 __tmp212361 '() _%g211630211682%_))))
                       (declare (not safe))
                       (ormap__0 __tmp212362 __tmp212360)))
                   _%expr211642211680%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop211637211665%_
                                           _%target211634211660%_
                                           '()))
                                        (_%g211628211647%_
                                         _%g211629211650%_)))))
                              (_%g211628211647%_ _%g211629211650%_))))
                      (_%g211628211647%_ _%g211629211650%_)))))
          (_%g211627211707%_ _%stx211626%_))))
    (define gxc#find-let-values%
      (lambda (_%self211479%_ _%stx211480%_)
        (let* ((_%g211482211517%_
                (lambda (_%g211483211514%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211483211514%_))))
               (_%g211481211622%_
                (lambda (_%g211483211520%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211483211520%_))
                      (let ((_%e211487211522%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g211483211520%_))))
                        (let ((_%hd211488211525%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211487211522%_)))
                              (_%tl211489211527%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211487211522%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211489211527%_))
                              (let ((_%e211490211530%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl211489211527%_))))
                                (let ((_%hd211491211533%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211490211530%_)))
                                      (_%tl211492211535%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211490211530%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd211491211533%_))
                                      (let ((_g212363_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd211491211533%_
                                                '0))))
                                        (begin
                                          (let ((_g212364_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g212363_)
                                                       (##values-length
                                                        _g212363_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g212364_ 2)))
                                                (error "Context expects 2 values"
                                                       _g212364_)))
                                          (let ((_%target211493211538%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g212363_ 0)))
                                                (_%tl211495211540%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g212363_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl211495211540%_))
                                                (letrec ((_%loop211496211543%_
                                                          (lambda (_%hd211494211546%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr211500211548%_
                           _%bind211501211549%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd211494211546%_))
                        (let ((_%e211497211551%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd211494211546%_))))
                          (let ((_%lp-hd211498211554%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e211497211551%_)))
                                (_%lp-tl211499211556%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e211497211551%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd211498211554%_))
                                (let ((_%e211504211559%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd211498211554%_))))
                                  (let ((_%hd211505211562%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e211504211559%_)))
                                        (_%tl211506211564%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e211504211559%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl211506211564%_))
                                        (let ((_%e211507211567%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl211506211564%_))))
                                          (let ((_%hd211508211570%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e211507211567%_)))
                                                (_%tl211509211572%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e211507211567%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl211509211572%_))
                                                (_%loop211496211543%_
                                                 _%lp-tl211499211556%_
                                                 (cons _%hd211508211570%_
                                                       _%expr211500211548%_)
                                                 (cons _%hd211505211562%_
                                                       _%bind211501211549%_))
                                                (_%g211482211517%_
                                                 _%g211483211520%_))))
                                        (_%g211482211517%_
                                         _%g211483211520%_))))
                                (_%g211482211517%_ _%g211483211520%_))))
                        (let ((_%expr211502211575%_
                               (reverse _%expr211500211548%_))
                              (_%bind211503211576%_
                               (reverse _%bind211501211549%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211492211535%_))
                              (let ((_%e211510211578%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl211492211535%_))))
                                (let ((_%hd211511211581%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211510211578%_)))
                                      (_%tl211512211583%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211510211578%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl211512211583%_))
                                      ((lambda (_%g211484211586%_
                                                _%g211485211587%_
                                                _%g211486211588%_)
                                         (let ((_%$e211619%_
                                                (let ((__tmp212367
                                                       (lambda (_%g211607211609%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self211479%_
                                                            _%g211607211609%_))))
                                                      (__tmp212365
                                                       (let ((__tmp212366
                                                              (lambda (_%g211611211614%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g211612211616%_)
                        (cons _%g211611211614%_ _%g211612211616%_))))
                 (declare (not safe))
                 (foldr__0 __tmp212366 '() _%g211485211587%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap__0
                                                   __tmp212367
                                                   __tmp212365))))
                                           (if _%$e211619%_
                                               _%$e211619%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self211479%_
                                                  _%g211484211586%_)))))
                                       _%hd211511211581%_
                                       _%expr211502211575%_
                                       _%bind211503211576%_)
                                      (_%g211482211517%_ _%g211483211520%_))))
                              (_%g211482211517%_ _%g211483211520%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop211496211543%_
                                                   _%target211493211538%_
                                                   '()
                                                   '()))
                                                (_%g211482211517%_
                                                 _%g211483211520%_)))))
                                      (_%g211482211517%_ _%g211483211520%_))))
                              (_%g211482211517%_ _%g211483211520%_))))
                      (_%g211482211517%_ _%g211483211520%_)))))
          (_%g211481211622%_ _%stx211480%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self211423%_ _%stx211424%_)
        (let* ((_%g211426211439%_
                (lambda (_%g211427211436%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211427211436%_))))
               (_%g211425211476%_
                (lambda (_%g211427211442%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211427211442%_))
                      (let ((_%e211429211444%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g211427211442%_))))
                        (let ((_%hd211430211447%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211429211444%_)))
                              (_%tl211431211449%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211429211444%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211431211449%_))
                              (let ((_%e211432211452%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl211431211449%_))))
                                (let ((_%hd211433211455%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211432211452%_)))
                                      (_%tl211434211457%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211432211452%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl211434211457%_))
                                      ((lambda (_%g211428211460%_)
                                         (let ((__tmp212369
                                                (lambda (_%g211471211473%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g211428211460%_
                                                     _%g211471211473%_))))
                                               (__tmp212368
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self211423%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp212369 __tmp212368)))
                                       _%hd211433211455%_)
                                      (_%g211426211439%_ _%g211427211442%_))))
                              (_%g211426211439%_ _%g211427211442%_))))
                      (_%g211426211439%_ _%g211427211442%_)))))
          (_%g211425211476%_ _%stx211424%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self211348%_ _%stx211349%_)
        (let* ((_%g211351211368%_
                (lambda (_%g211352211365%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211352211365%_))))
               (_%g211350211420%_
                (lambda (_%g211352211371%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211352211371%_))
                      (let ((_%e211355211373%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g211352211371%_))))
                        (let ((_%hd211356211376%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211355211373%_)))
                              (_%tl211357211378%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211355211373%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211357211378%_))
                              (let ((_%e211358211381%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl211357211378%_))))
                                (let ((_%hd211359211384%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211358211381%_)))
                                      (_%tl211360211386%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211358211381%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl211360211386%_))
                                      (let ((_%e211361211389%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl211360211386%_))))
                                        (let ((_%hd211362211392%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e211361211389%_)))
                                              (_%tl211363211394%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e211361211389%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl211363211394%_))
                                              ((lambda (_%g211353211397%_
                                                        _%g211354211398%_)
                                                 (let ((_%$e211417%_
                                                        (let ((__tmp212371
                                                               (lambda (_%g211412211414%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%g211354211398%_
                            _%g211412211414%_))))
                      (__tmp212370
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self211348%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp212371 __tmp212370))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e211417%_
                                                       _%$e211417%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self211348%_
                                                          _%g211353211397%_)))))
                                               _%hd211362211392%_
                                               _%hd211359211384%_)
                                              (_%g211351211368%_
                                               _%g211352211371%_))))
                                      (_%g211351211368%_ _%g211352211371%_))))
                              (_%g211351211368%_ _%g211352211371%_))))
                      (_%g211351211368%_ _%g211352211371%_)))))
          (_%g211350211420%_ _%stx211349%_))))))
