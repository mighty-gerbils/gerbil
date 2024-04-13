(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1713004412)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp152345 (list gxc#::void::t))
            (__tmp152344 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp152345
         '()
         __tmp152344
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args152331%_
        (apply make-instance gxc#::collect-mutators::t _%$args152331%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp152346
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
        (__make-promise __tmp152346)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx152323%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self152326%_
                (let ((__obj152334
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj152334))
               (__tmp152347
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self152326%_ _%stx152323%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp152347
           gxc#current-compile-method
           _%self152326%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp152349 (list gxc#::basic-xform-expression::t))
            (__tmp152348 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp152349
         '(id new-id)
         __tmp152348
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args152320%_
        (apply make-instance gxc#::expression-subst::t _%$args152320%_)))
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
      (let ((__tmp152350
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
        (__make-promise __tmp152350)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords152290%_
               _%id152286152291%_
               _%new-id152287152293%_
               _%stx152295%_)
        (let* ((_%id152298%_
                (if (eq? _%id152286152291%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id152286152291%_))
               (_%new-id152300%_
                (if (eq? _%new-id152287152293%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id152287152293%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self152302%_
                  (let ((__obj152336
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj152336
                       _%id152298%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj152336
                       _%new-id152300%_
                       '2
                       '#f
                       '#f))
                    __obj152336))
                 (__tmp152351
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self152302%_ _%stx152295%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp152351
             gxc#current-compile-method
             _%self152302%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords152309%_ . _%args152310%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords152309%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords152309%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords152309%_
                  'new-id:
                  absent-value))
               _%args152310%_)))
    (define gxc#apply-expression-subst
      (lambda _%args152288152316%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args152288152316%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp152353 (list gxc#::basic-xform-expression::t))
            (__tmp152352 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp152353
         '(subst)
         __tmp152352
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args152282%_
        (apply make-instance gxc#::expression-subst*::t _%$args152282%_)))
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
      (let ((__tmp152354
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
        (__make-promise __tmp152354)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords152256%_ _%subst152253152257%_ _%stx152259%_)
        (let ((_%subst152262%_
               (if (eq? _%subst152253152257%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst152253152257%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self152264%_
                  (let ((__obj152338
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj152338
                       _%subst152262%_
                       '1
                       '#f
                       '#f))
                    __obj152338))
                 (__tmp152355
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self152264%_ _%stx152259%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp152355
             gxc#current-compile-method
             _%self152264%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords152271%_ . _%args152272%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords152271%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords152271%_
                  'subst:
                  absent-value))
               _%args152272%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args152254152278%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args152254152278%_)))
    (define gxc#::find-expression::t
      (let ((__tmp152356 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp152356
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args152249%_
        (apply make-instance gxc#::find-expression::t _%$args152249%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp152357
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
        (__make-promise __tmp152357)))
    (define gxc#::find-var-refs::t
      (let ((__tmp152359 (list gxc#::find-expression::t))
            (__tmp152358 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp152359
         '(ids)
         __tmp152358
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args152245%_
        (apply make-instance gxc#::find-var-refs::t _%$args152245%_)))
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
      (let ((__tmp152360
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
        (__make-promise __tmp152360)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords152219%_ _%ids152216152220%_ _%stx152222%_)
        (let ((_%ids152225%_
               (if (eq? _%ids152216152220%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids152216152220%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self152227%_
                  (let ((__obj152341
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj152341
                       _%ids152225%_
                       '1
                       '#f
                       '#f))
                    __obj152341))
                 (__tmp152361
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self152227%_ _%stx152222%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp152361
             gxc#current-compile-method
             _%self152227%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords152234%_ . _%args152235%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords152234%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords152234%_ 'ids: absent-value))
               _%args152235%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args152217152241%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args152217152241%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp152363 (list gxc#::collect-expression-refs::t))
            (__tmp152362 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp152363
         '()
         __tmp152362
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args152212%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args152212%_)))
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
      (let ((__tmp152364
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
        (__make-promise __tmp152364)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords152186%_ _%table152183152187%_ _%stx152189%_)
        (let ((_%table152192%_
               (if (eq? _%table152183152187%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table152183152187%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self152194%_
                  (let ((__obj152343
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj152343
                       _%table152192%_
                       '1
                       '#f
                       '#f))
                    __obj152343))
                 (__tmp152365
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self152194%_ _%stx152189%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp152365
             gxc#current-compile-method
             _%self152194%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords152201%_ . _%args152202%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords152201%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords152201%_
                  'table:
                  absent-value))
               _%args152202%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args152184152208%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args152184152208%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self152112%_ _%stx152113%_)
        (let* ((_%g152115152132%_
                (lambda (_%g152116152129%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152116152129%_))))
               (_%g152114152179%_
                (lambda (_%g152116152135%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152116152135%_))
                      (let ((_%e152119152137%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152116152135%_))))
                        (let ((_%hd152120152140%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152119152137%_)))
                              (_%tl152121152142%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152119152137%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl152121152142%_))
                              (let ((_%e152122152145%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl152121152142%_))))
                                (let ((_%hd152123152148%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152122152145%_)))
                                      (_%tl152124152150%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152122152145%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl152124152150%_))
                                      (let ((_%e152125152153%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl152124152150%_))))
                                        (let ((_%hd152126152156%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e152125152153%_)))
                                              (_%tl152127152158%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e152125152153%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl152127152158%_))
                                              ((lambda (_%L152161%_
                                                        _%L152162%_)
                                                 (let ((_%sym152177%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L152162%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym152177%_))
                                                   (let ((__tmp152366
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp152366
                                                      _%sym152177%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self152112%_
                                                      _%L152161%_))))
                                               _%hd152126152156%_
                                               _%hd152123152148%_)
                                              (_%g152115152132%_
                                               _%g152116152135%_))))
                                      (_%g152115152132%_ _%g152116152135%_))))
                              (_%g152115152132%_ _%g152116152135%_))))
                      (_%g152115152132%_ _%g152116152135%_)))))
          (_%g152114152179%_ _%stx152113%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self152060%_ _%stx152061%_)
        (let* ((_%g152063152076%_
                (lambda (_%g152064152073%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152064152073%_))))
               (_%g152062152109%_
                (lambda (_%g152064152079%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152064152079%_))
                      (let ((_%e152066152081%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152064152079%_))))
                        (let ((_%hd152067152084%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152066152081%_)))
                              (_%tl152068152086%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152066152081%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl152068152086%_))
                              (let ((_%e152069152089%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl152068152086%_))))
                                (let ((_%hd152070152092%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152069152089%_)))
                                      (_%tl152071152094%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152069152089%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl152071152094%_))
                                      ((lambda (_%L152097%_)
                                         (if (let ((__tmp152367
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self152060%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L152097%_
                                                __tmp152367))
                                             (let ((__tmp152368
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self152060%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp152368
                                                _%stx152061%_))
                                             _%stx152061%_))
                                       _%hd152070152092%_)
                                      (_%g152063152076%_ _%g152064152079%_))))
                              (_%g152063152076%_ _%g152064152079%_))))
                      (_%g152063152076%_ _%g152064152079%_)))))
          (_%g152062152109%_ _%stx152061%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self152000%_ _%stx152001%_)
        (let* ((_%g152003152016%_
                (lambda (_%g152004152013%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152004152013%_))))
               (_%g152002152057%_
                (lambda (_%g152004152019%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152004152019%_))
                      (let ((_%e152006152021%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152004152019%_))))
                        (let ((_%hd152007152024%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152006152021%_)))
                              (_%tl152008152026%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152006152021%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl152008152026%_))
                              (let ((_%e152009152029%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl152008152026%_))))
                                (let ((_%hd152010152032%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152009152029%_)))
                                      (_%tl152011152034%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152009152029%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl152011152034%_))
                                      ((lambda (_%L152037%_)
                                         (let ((_%$e152051%_
                                                (let ((__tmp152370
                                                       (lambda (_%sub152049%_)
                                                         (let ((__tmp152371
                                                                (car _%sub152049%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L152037%_
                                                            __tmp152371))))
                                                      (__tmp152369
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self152000%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp152370
                                                          __tmp152369))))
                                           (if _%$e152051%_
                                               ((lambda (_%sub152054%_)
                                                  (let ((__tmp152372
                                                         (cons '%#ref
                                                               (cons (cdr _%sub152054%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp152372
                                                     _%stx152001%_)))
                                                _%$e152051%_)
                                               _%stx152001%_)))
                                       _%hd152010152032%_)
                                      (_%g152003152016%_ _%g152004152019%_))))
                              (_%g152003152016%_ _%g152004152019%_))))
                      (_%g152003152016%_ _%g152004152019%_)))))
          (_%g152002152057%_ _%stx152001%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self151929%_ _%stx151930%_)
        (let* ((_%g151932151949%_
                (lambda (_%g151933151946%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151933151946%_))))
               (_%g151931151997%_
                (lambda (_%g151933151952%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151933151952%_))
                      (let ((_%e151936151954%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151933151952%_))))
                        (let ((_%hd151937151957%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151936151954%_)))
                              (_%tl151938151959%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151936151954%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151938151959%_))
                              (let ((_%e151939151962%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151938151959%_))))
                                (let ((_%hd151940151965%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151939151962%_)))
                                      (_%tl151941151967%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151939151962%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151941151967%_))
                                      (let ((_%e151942151970%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151941151967%_))))
                                        (let ((_%hd151943151973%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151942151970%_)))
                                              (_%tl151944151975%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151942151970%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151944151975%_))
                                              ((lambda (_%L151978%_
                                                        _%L151979%_)
                                                 (let ((_%new-expr151994%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self151929%_
                                                           _%L151978%_)))
                                                       (_%new-xid151995%_
                                                        (if (let ((__tmp152373
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self151929%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L151979%_ __tmp152373))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self151929%_ 'new-id))
                    _%L151979%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp152374
                                                          (cons '%#set!
                                                                (cons _%new-xid151995%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr151994%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp152374
                                                      _%stx151930%_))))
                                               _%hd151943151973%_
                                               _%hd151940151965%_)
                                              (_%g151932151949%_
                                               _%g151933151952%_))))
                                      (_%g151932151949%_ _%g151933151952%_))))
                              (_%g151932151949%_ _%g151933151952%_))))
                      (_%g151932151949%_ _%g151933151952%_)))))
          (_%g151931151997%_ _%stx151930%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self151852%_ _%stx151853%_)
        (let* ((_%g151855151872%_
                (lambda (_%g151856151869%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151856151869%_))))
               (_%g151854151926%_
                (lambda (_%g151856151875%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151856151875%_))
                      (let ((_%e151859151877%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151856151875%_))))
                        (let ((_%hd151860151880%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151859151877%_)))
                              (_%tl151861151882%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151859151877%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151861151882%_))
                              (let ((_%e151862151885%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151861151882%_))))
                                (let ((_%hd151863151888%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151862151885%_)))
                                      (_%tl151864151890%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151862151885%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151864151890%_))
                                      (let ((_%e151865151893%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151864151890%_))))
                                        (let ((_%hd151866151896%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151865151893%_)))
                                              (_%tl151867151898%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151865151893%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151867151898%_))
                                              ((lambda (_%L151901%_
                                                        _%L151902%_)
                                                 (let ((_%new-expr151923%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self151852%_
                                                           _%L151901%_)))
                                                       (_%new-xid151924%_
                                                        (let ((_%$e151919%_
                                                               (let ((__tmp152376
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub151917%_)
                                (let ((__tmp152377 (car _%sub151917%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L151902%_
                                   __tmp152377))))
                             (__tmp152375
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self151852%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp152376 __tmp152375))))
                  (if _%$e151919%_ (cdr _%$e151919%_) _%L151902%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp152378
                                                          (cons '%#set!
                                                                (cons _%new-xid151924%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr151923%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp152378
                                                      _%stx151853%_))))
                                               _%hd151866151896%_
                                               _%hd151863151888%_)
                                              (_%g151855151872%_
                                               _%g151856151875%_))))
                                      (_%g151855151872%_ _%g151856151875%_))))
                              (_%g151855151872%_ _%g151856151875%_))))
                      (_%g151855151872%_ _%g151856151875%_)))))
          (_%g151854151926%_ _%stx151853%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self151798%_ _%stx151799%_)
        (let* ((_%g151801151814%_
                (lambda (_%g151802151811%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151802151811%_))))
               (_%g151800151849%_
                (lambda (_%g151802151817%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151802151817%_))
                      (let ((_%e151804151819%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151802151817%_))))
                        (let ((_%hd151805151822%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151804151819%_)))
                              (_%tl151806151824%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151804151819%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151806151824%_))
                              (let ((_%e151807151827%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151806151824%_))))
                                (let ((_%hd151808151830%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151807151827%_)))
                                      (_%tl151809151832%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151807151827%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl151809151832%_))
                                      ((lambda (_%L151835%_)
                                         (let* ((_%eid151847%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L151835%_)))
                                                (__tmp152379
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self151798%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp152379
                                            _%eid151847%_
                                            1+
                                            '0)))
                                       _%hd151808151830%_)
                                      (_%g151801151814%_ _%g151802151817%_))))
                              (_%g151801151814%_ _%g151802151817%_))))
                      (_%g151801151814%_ _%g151802151817%_)))))
          (_%g151800151849%_ _%stx151799%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self151728%_ _%stx151729%_)
        (let* ((_%g151731151748%_
                (lambda (_%g151732151745%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151732151745%_))))
               (_%g151730151795%_
                (lambda (_%g151732151751%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151732151751%_))
                      (let ((_%e151735151753%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151732151751%_))))
                        (let ((_%hd151736151756%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151735151753%_)))
                              (_%tl151737151758%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151735151753%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151737151758%_))
                              (let ((_%e151738151761%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151737151758%_))))
                                (let ((_%hd151739151764%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151738151761%_)))
                                      (_%tl151740151766%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151738151761%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151740151766%_))
                                      (let ((_%e151741151769%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151740151766%_))))
                                        (let ((_%hd151742151772%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151741151769%_)))
                                              (_%tl151743151774%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151741151769%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151743151774%_))
                                              ((lambda (_%L151777%_
                                                        _%L151778%_)
                                                 (let ((_%eid151793%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L151778%_))))
                                                   (let ((__tmp152380
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self151728%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp152380
                                                      _%eid151793%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self151728%_
                                                      _%L151777%_))))
                                               _%hd151742151772%_
                                               _%hd151739151764%_)
                                              (_%g151731151748%_
                                               _%g151732151751%_))))
                                      (_%g151731151748%_ _%g151732151751%_))))
                              (_%g151731151748%_ _%g151732151751%_))))
                      (_%g151731151748%_ _%g151732151751%_)))))
          (_%g151730151795%_ _%stx151729%_))))
    (define gxc#find-body%
      (lambda (_%self151641%_ _%stx151642%_)
        (let* ((_%g151644151663%_
                (lambda (_%g151645151660%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151645151660%_))))
               (_%g151643151725%_
                (lambda (_%g151645151666%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151645151666%_))
                      (let ((_%e151647151668%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151645151666%_))))
                        (let ((_%hd151648151671%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151647151668%_)))
                              (_%tl151649151673%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151647151668%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl151649151673%_))
                              (let ((_g152381_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl151649151673%_
                                        '0))))
                                (begin
                                  (let ((_g152382_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g152381_)
                                               (##vector-length _g152381_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g152382_ 2)))
                                        (error "Context expects 2 values"
                                               _g152382_)))
                                  (let ((_%target151650151676%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g152381_ 0)))
                                        (_%tl151652151678%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g152381_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl151652151678%_))
                                        (letrec ((_%loop151653151681%_
                                                  (lambda (_%hd151651151684%_
                                                           _%expr151657151686%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd151651151684%_))
                                                        (let ((_%e151654151689%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd151651151684%_))))
                  (let ((_%lp-hd151655151692%_
                         (let ()
                           (declare (not safe))
                           (##car _%e151654151689%_)))
                        (_%lp-tl151656151694%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e151654151689%_))))
                    (_%loop151653151681%_
                     _%lp-tl151656151694%_
                     (cons _%lp-hd151655151692%_ _%expr151657151686%_))))
                (let ((_%expr151658151697%_ (reverse _%expr151657151686%_)))
                  ((lambda (_%L151700%_)
                     (let ((__tmp152385
                            (lambda (_%g151713151715%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self151641%_
                                 _%g151713151715%_))))
                           (__tmp152383
                            (let ((__tmp152384
                                   (lambda (_%g151717151720%_
                                            _%g151718151722%_)
                                     (cons _%g151717151720%_
                                           _%g151718151722%_))))
                              (declare (not safe))
                              (__foldr1 __tmp152384 '() _%L151700%_))))
                       (declare (not safe))
                       (__ormap1 __tmp152385 __tmp152383)))
                   _%expr151658151697%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop151653151681%_
                                           _%target151650151676%_
                                           '()))
                                        (_%g151644151663%_
                                         _%g151645151666%_)))))
                              (_%g151644151663%_ _%g151645151666%_))))
                      (_%g151644151663%_ _%g151645151666%_)))))
          (_%g151643151725%_ _%stx151642%_))))
    (define gxc#find-let-values%
      (lambda (_%self151491%_ _%stx151492%_)
        (let* ((_%g151494151529%_
                (lambda (_%g151495151526%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151495151526%_))))
               (_%g151493151638%_
                (lambda (_%g151495151532%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151495151532%_))
                      (let ((_%e151499151534%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151495151532%_))))
                        (let ((_%hd151500151537%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151499151534%_)))
                              (_%tl151501151539%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151499151534%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151501151539%_))
                              (let ((_%e151502151542%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151501151539%_))))
                                (let ((_%hd151503151545%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151502151542%_)))
                                      (_%tl151504151547%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151502151542%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd151503151545%_))
                                      (let ((_g152386_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd151503151545%_
                                                '0))))
                                        (begin
                                          (let ((_g152387_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g152386_)
                                                       (##vector-length
                                                        _g152386_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g152387_ 2)))
                                                (error "Context expects 2 values"
                                                       _g152387_)))
                                          (let ((_%target151505151550%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g152386_ 0)))
                                                (_%tl151507151552%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g152386_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl151507151552%_))
                                                (letrec ((_%loop151508151555%_
                                                          (lambda (_%hd151506151558%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr151512151560%_
                           _%bind151513151562%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd151506151558%_))
                        (let ((_%e151509151565%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd151506151558%_))))
                          (let ((_%lp-hd151510151568%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e151509151565%_)))
                                (_%lp-tl151511151570%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e151509151565%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd151510151568%_))
                                (let ((_%e151519151573%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd151510151568%_))))
                                  (let ((_%hd151520151576%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e151519151573%_)))
                                        (_%tl151521151578%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e151519151573%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl151521151578%_))
                                        (let ((_%e151522151581%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl151521151578%_))))
                                          (let ((_%hd151523151584%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e151522151581%_)))
                                                (_%tl151524151586%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e151522151581%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl151524151586%_))
                                                (_%loop151508151555%_
                                                 _%lp-tl151511151570%_
                                                 (cons _%hd151523151584%_
                                                       _%expr151512151560%_)
                                                 (cons _%hd151520151576%_
                                                       _%bind151513151562%_))
                                                (_%g151494151529%_
                                                 _%g151495151532%_))))
                                        (_%g151494151529%_
                                         _%g151495151532%_))))
                                (_%g151494151529%_ _%g151495151532%_))))
                        (let ((_%expr151514151589%_
                               (reverse _%expr151512151560%_))
                              (_%bind151515151591%_
                               (reverse _%bind151513151562%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151504151547%_))
                              (let ((_%e151516151594%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151504151547%_))))
                                (let ((_%hd151517151597%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151516151594%_)))
                                      (_%tl151518151599%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151516151594%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl151518151599%_))
                                      ((lambda (_%L151602%_
                                                _%L151603%_
                                                _%L151604%_)
                                         (let ((_%$e151635%_
                                                (let ((__tmp152390
                                                       (lambda (_%g151623151625%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self151491%_
                                                            _%g151623151625%_))))
                                                      (__tmp152388
                                                       (let ((__tmp152389
                                                              (lambda (_%g151627151630%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g151628151632%_)
                        (cons _%g151627151630%_ _%g151628151632%_))))
                 (declare (not safe))
                 (__foldr1 __tmp152389 '() _%L151603%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp152390
                                                   __tmp152388))))
                                           (if _%$e151635%_
                                               _%$e151635%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self151491%_
                                                  _%L151602%_)))))
                                       _%hd151517151597%_
                                       _%expr151514151589%_
                                       _%bind151515151591%_)
                                      (_%g151494151529%_ _%g151495151532%_))))
                              (_%g151494151529%_ _%g151495151532%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop151508151555%_
                                                   _%target151505151550%_
                                                   '()
                                                   '()))
                                                (_%g151494151529%_
                                                 _%g151495151532%_)))))
                                      (_%g151494151529%_ _%g151495151532%_))))
                              (_%g151494151529%_ _%g151495151532%_))))
                      (_%g151494151529%_ _%g151495151532%_)))))
          (_%g151493151638%_ _%stx151492%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self151435%_ _%stx151436%_)
        (let* ((_%g151438151451%_
                (lambda (_%g151439151448%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151439151448%_))))
               (_%g151437151488%_
                (lambda (_%g151439151454%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151439151454%_))
                      (let ((_%e151441151456%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151439151454%_))))
                        (let ((_%hd151442151459%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151441151456%_)))
                              (_%tl151443151461%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151441151456%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151443151461%_))
                              (let ((_%e151444151464%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151443151461%_))))
                                (let ((_%hd151445151467%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151444151464%_)))
                                      (_%tl151446151469%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151444151464%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl151446151469%_))
                                      ((lambda (_%L151472%_)
                                         (let ((__tmp152392
                                                (lambda (_%g151483151485%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L151472%_
                                                     _%g151483151485%_))))
                                               (__tmp152391
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self151435%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp152392 __tmp152391)))
                                       _%hd151445151467%_)
                                      (_%g151438151451%_ _%g151439151454%_))))
                              (_%g151438151451%_ _%g151439151454%_))))
                      (_%g151438151451%_ _%g151439151454%_)))))
          (_%g151437151488%_ _%stx151436%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self151360%_ _%stx151361%_)
        (let* ((_%g151363151380%_
                (lambda (_%g151364151377%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151364151377%_))))
               (_%g151362151432%_
                (lambda (_%g151364151383%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151364151383%_))
                      (let ((_%e151367151385%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151364151383%_))))
                        (let ((_%hd151368151388%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151367151385%_)))
                              (_%tl151369151390%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151367151385%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151369151390%_))
                              (let ((_%e151370151393%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151369151390%_))))
                                (let ((_%hd151371151396%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151370151393%_)))
                                      (_%tl151372151398%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151370151393%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151372151398%_))
                                      (let ((_%e151373151401%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151372151398%_))))
                                        (let ((_%hd151374151404%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151373151401%_)))
                                              (_%tl151375151406%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151373151401%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151375151406%_))
                                              ((lambda (_%L151409%_
                                                        _%L151410%_)
                                                 (let ((_%$e151429%_
                                                        (let ((__tmp152394
                                                               (lambda (_%g151424151426%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L151410%_
                            _%g151424151426%_))))
                      (__tmp152393
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self151360%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp152394 __tmp152393))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e151429%_
                                                       _%$e151429%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self151360%_
                                                          _%L151409%_)))))
                                               _%hd151374151404%_
                                               _%hd151371151396%_)
                                              (_%g151363151380%_
                                               _%g151364151383%_))))
                                      (_%g151363151380%_ _%g151364151383%_))))
                              (_%g151363151380%_ _%g151364151383%_))))
                      (_%g151363151380%_ _%g151364151383%_)))))
          (_%g151362151432%_ _%stx151361%_))))))
