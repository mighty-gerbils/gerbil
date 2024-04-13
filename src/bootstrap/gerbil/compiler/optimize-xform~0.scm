(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1713044318)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp152293 (list gxc#::void::t))
            (__tmp152292 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp152293
         '()
         __tmp152292
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args152279%_
        (apply make-instance gxc#::collect-mutators::t _%$args152279%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp152294
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
        (__make-promise __tmp152294)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx152271%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self152274%_
                (let ((__obj152282
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj152282))
               (__tmp152295
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self152274%_ _%stx152271%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp152295
           gxc#current-compile-method
           _%self152274%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp152297 (list gxc#::basic-xform-expression::t))
            (__tmp152296 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp152297
         '(id new-id)
         __tmp152296
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args152268%_
        (apply make-instance gxc#::expression-subst::t _%$args152268%_)))
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
      (let ((__tmp152298
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
        (__make-promise __tmp152298)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords152238%_
               _%id152234152239%_
               _%new-id152235152241%_
               _%stx152243%_)
        (let* ((_%id152246%_
                (if (eq? _%id152234152239%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id152234152239%_))
               (_%new-id152248%_
                (if (eq? _%new-id152235152241%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id152235152241%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self152250%_
                  (let ((__obj152284
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj152284
                       _%id152246%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj152284
                       _%new-id152248%_
                       '2
                       '#f
                       '#f))
                    __obj152284))
                 (__tmp152299
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self152250%_ _%stx152243%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp152299
             gxc#current-compile-method
             _%self152250%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords152257%_ . _%args152258%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords152257%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords152257%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords152257%_
                  'new-id:
                  absent-value))
               _%args152258%_)))
    (define gxc#apply-expression-subst
      (lambda _%args152236152264%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args152236152264%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp152301 (list gxc#::basic-xform-expression::t))
            (__tmp152300 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp152301
         '(subst)
         __tmp152300
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args152230%_
        (apply make-instance gxc#::expression-subst*::t _%$args152230%_)))
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
      (let ((__tmp152302
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
        (__make-promise __tmp152302)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords152204%_ _%subst152201152205%_ _%stx152207%_)
        (let ((_%subst152210%_
               (if (eq? _%subst152201152205%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst152201152205%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self152212%_
                  (let ((__obj152286
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj152286
                       _%subst152210%_
                       '1
                       '#f
                       '#f))
                    __obj152286))
                 (__tmp152303
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self152212%_ _%stx152207%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp152303
             gxc#current-compile-method
             _%self152212%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords152219%_ . _%args152220%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords152219%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords152219%_
                  'subst:
                  absent-value))
               _%args152220%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args152202152226%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args152202152226%_)))
    (define gxc#::find-expression::t
      (let ((__tmp152304 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp152304
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args152197%_
        (apply make-instance gxc#::find-expression::t _%$args152197%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp152305
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
        (__make-promise __tmp152305)))
    (define gxc#::find-var-refs::t
      (let ((__tmp152307 (list gxc#::find-expression::t))
            (__tmp152306 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp152307
         '(ids)
         __tmp152306
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args152193%_
        (apply make-instance gxc#::find-var-refs::t _%$args152193%_)))
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
      (let ((__tmp152308
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
        (__make-promise __tmp152308)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords152167%_ _%ids152164152168%_ _%stx152170%_)
        (let ((_%ids152173%_
               (if (eq? _%ids152164152168%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids152164152168%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self152175%_
                  (let ((__obj152289
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj152289
                       _%ids152173%_
                       '1
                       '#f
                       '#f))
                    __obj152289))
                 (__tmp152309
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self152175%_ _%stx152170%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp152309
             gxc#current-compile-method
             _%self152175%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords152182%_ . _%args152183%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords152182%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords152182%_ 'ids: absent-value))
               _%args152183%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args152165152189%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args152165152189%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp152311 (list gxc#::collect-expression-refs::t))
            (__tmp152310 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp152311
         '()
         __tmp152310
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args152160%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args152160%_)))
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
      (let ((__tmp152312
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
        (__make-promise __tmp152312)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords152134%_ _%table152131152135%_ _%stx152137%_)
        (let ((_%table152140%_
               (if (eq? _%table152131152135%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table152131152135%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self152142%_
                  (let ((__obj152291
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj152291
                       _%table152140%_
                       '1
                       '#f
                       '#f))
                    __obj152291))
                 (__tmp152313
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self152142%_ _%stx152137%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp152313
             gxc#current-compile-method
             _%self152142%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords152149%_ . _%args152150%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords152149%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords152149%_
                  'table:
                  absent-value))
               _%args152150%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args152132152156%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args152132152156%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self152060%_ _%stx152061%_)
        (let* ((_%g152063152080%_
                (lambda (_%g152064152077%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152064152077%_))))
               (_%g152062152127%_
                (lambda (_%g152064152083%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152064152083%_))
                      (let ((_%e152067152085%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152064152083%_))))
                        (let ((_%hd152068152088%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152067152085%_)))
                              (_%tl152069152090%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152067152085%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl152069152090%_))
                              (let ((_%e152070152093%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl152069152090%_))))
                                (let ((_%hd152071152096%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152070152093%_)))
                                      (_%tl152072152098%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152070152093%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl152072152098%_))
                                      (let ((_%e152073152101%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl152072152098%_))))
                                        (let ((_%hd152074152104%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e152073152101%_)))
                                              (_%tl152075152106%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e152073152101%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl152075152106%_))
                                              ((lambda (_%L152109%_
                                                        _%L152110%_)
                                                 (let ((_%sym152125%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L152110%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym152125%_))
                                                   (let ((__tmp152314
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp152314
                                                      _%sym152125%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self152060%_
                                                      _%L152109%_))))
                                               _%hd152074152104%_
                                               _%hd152071152096%_)
                                              (_%g152063152080%_
                                               _%g152064152083%_))))
                                      (_%g152063152080%_ _%g152064152083%_))))
                              (_%g152063152080%_ _%g152064152083%_))))
                      (_%g152063152080%_ _%g152064152083%_)))))
          (_%g152062152127%_ _%stx152061%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self152008%_ _%stx152009%_)
        (let* ((_%g152011152024%_
                (lambda (_%g152012152021%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152012152021%_))))
               (_%g152010152057%_
                (lambda (_%g152012152027%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152012152027%_))
                      (let ((_%e152014152029%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152012152027%_))))
                        (let ((_%hd152015152032%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152014152029%_)))
                              (_%tl152016152034%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152014152029%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl152016152034%_))
                              (let ((_%e152017152037%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl152016152034%_))))
                                (let ((_%hd152018152040%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152017152037%_)))
                                      (_%tl152019152042%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152017152037%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl152019152042%_))
                                      ((lambda (_%L152045%_)
                                         (if (let ((__tmp152315
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self152008%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L152045%_
                                                __tmp152315))
                                             (let ((__tmp152316
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self152008%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp152316
                                                _%stx152009%_))
                                             _%stx152009%_))
                                       _%hd152018152040%_)
                                      (_%g152011152024%_ _%g152012152027%_))))
                              (_%g152011152024%_ _%g152012152027%_))))
                      (_%g152011152024%_ _%g152012152027%_)))))
          (_%g152010152057%_ _%stx152009%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self151948%_ _%stx151949%_)
        (let* ((_%g151951151964%_
                (lambda (_%g151952151961%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151952151961%_))))
               (_%g151950152005%_
                (lambda (_%g151952151967%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151952151967%_))
                      (let ((_%e151954151969%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151952151967%_))))
                        (let ((_%hd151955151972%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151954151969%_)))
                              (_%tl151956151974%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151954151969%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151956151974%_))
                              (let ((_%e151957151977%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151956151974%_))))
                                (let ((_%hd151958151980%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151957151977%_)))
                                      (_%tl151959151982%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151957151977%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl151959151982%_))
                                      ((lambda (_%L151985%_)
                                         (let ((_%$e151999%_
                                                (let ((__tmp152318
                                                       (lambda (_%sub151997%_)
                                                         (let ((__tmp152319
                                                                (car _%sub151997%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L151985%_
                                                            __tmp152319))))
                                                      (__tmp152317
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self151948%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp152318
                                                          __tmp152317))))
                                           (if _%$e151999%_
                                               ((lambda (_%sub152002%_)
                                                  (let ((__tmp152320
                                                         (cons '%#ref
                                                               (cons (cdr _%sub152002%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp152320
                                                     _%stx151949%_)))
                                                _%$e151999%_)
                                               _%stx151949%_)))
                                       _%hd151958151980%_)
                                      (_%g151951151964%_ _%g151952151967%_))))
                              (_%g151951151964%_ _%g151952151967%_))))
                      (_%g151951151964%_ _%g151952151967%_)))))
          (_%g151950152005%_ _%stx151949%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self151877%_ _%stx151878%_)
        (let* ((_%g151880151897%_
                (lambda (_%g151881151894%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151881151894%_))))
               (_%g151879151945%_
                (lambda (_%g151881151900%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151881151900%_))
                      (let ((_%e151884151902%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151881151900%_))))
                        (let ((_%hd151885151905%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151884151902%_)))
                              (_%tl151886151907%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151884151902%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151886151907%_))
                              (let ((_%e151887151910%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151886151907%_))))
                                (let ((_%hd151888151913%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151887151910%_)))
                                      (_%tl151889151915%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151887151910%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151889151915%_))
                                      (let ((_%e151890151918%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151889151915%_))))
                                        (let ((_%hd151891151921%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151890151918%_)))
                                              (_%tl151892151923%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151890151918%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151892151923%_))
                                              ((lambda (_%L151926%_
                                                        _%L151927%_)
                                                 (let ((_%new-expr151942%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self151877%_
                                                           _%L151926%_)))
                                                       (_%new-xid151943%_
                                                        (if (let ((__tmp152321
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self151877%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L151927%_ __tmp152321))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self151877%_ 'new-id))
                    _%L151927%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp152322
                                                          (cons '%#set!
                                                                (cons _%new-xid151943%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr151942%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp152322
                                                      _%stx151878%_))))
                                               _%hd151891151921%_
                                               _%hd151888151913%_)
                                              (_%g151880151897%_
                                               _%g151881151900%_))))
                                      (_%g151880151897%_ _%g151881151900%_))))
                              (_%g151880151897%_ _%g151881151900%_))))
                      (_%g151880151897%_ _%g151881151900%_)))))
          (_%g151879151945%_ _%stx151878%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self151800%_ _%stx151801%_)
        (let* ((_%g151803151820%_
                (lambda (_%g151804151817%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151804151817%_))))
               (_%g151802151874%_
                (lambda (_%g151804151823%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151804151823%_))
                      (let ((_%e151807151825%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151804151823%_))))
                        (let ((_%hd151808151828%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151807151825%_)))
                              (_%tl151809151830%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151807151825%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151809151830%_))
                              (let ((_%e151810151833%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151809151830%_))))
                                (let ((_%hd151811151836%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151810151833%_)))
                                      (_%tl151812151838%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151810151833%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151812151838%_))
                                      (let ((_%e151813151841%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151812151838%_))))
                                        (let ((_%hd151814151844%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151813151841%_)))
                                              (_%tl151815151846%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151813151841%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151815151846%_))
                                              ((lambda (_%L151849%_
                                                        _%L151850%_)
                                                 (let ((_%new-expr151871%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self151800%_
                                                           _%L151849%_)))
                                                       (_%new-xid151872%_
                                                        (let ((_%$e151867%_
                                                               (let ((__tmp152324
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub151865%_)
                                (let ((__tmp152325 (car _%sub151865%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L151850%_
                                   __tmp152325))))
                             (__tmp152323
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self151800%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp152324 __tmp152323))))
                  (if _%$e151867%_ (cdr _%$e151867%_) _%L151850%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp152326
                                                          (cons '%#set!
                                                                (cons _%new-xid151872%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr151871%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp152326
                                                      _%stx151801%_))))
                                               _%hd151814151844%_
                                               _%hd151811151836%_)
                                              (_%g151803151820%_
                                               _%g151804151823%_))))
                                      (_%g151803151820%_ _%g151804151823%_))))
                              (_%g151803151820%_ _%g151804151823%_))))
                      (_%g151803151820%_ _%g151804151823%_)))))
          (_%g151802151874%_ _%stx151801%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self151746%_ _%stx151747%_)
        (let* ((_%g151749151762%_
                (lambda (_%g151750151759%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151750151759%_))))
               (_%g151748151797%_
                (lambda (_%g151750151765%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151750151765%_))
                      (let ((_%e151752151767%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151750151765%_))))
                        (let ((_%hd151753151770%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151752151767%_)))
                              (_%tl151754151772%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151752151767%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151754151772%_))
                              (let ((_%e151755151775%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151754151772%_))))
                                (let ((_%hd151756151778%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151755151775%_)))
                                      (_%tl151757151780%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151755151775%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl151757151780%_))
                                      ((lambda (_%L151783%_)
                                         (let* ((_%eid151795%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L151783%_)))
                                                (__tmp152327
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self151746%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp152327
                                            _%eid151795%_
                                            1+
                                            '0)))
                                       _%hd151756151778%_)
                                      (_%g151749151762%_ _%g151750151765%_))))
                              (_%g151749151762%_ _%g151750151765%_))))
                      (_%g151749151762%_ _%g151750151765%_)))))
          (_%g151748151797%_ _%stx151747%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self151676%_ _%stx151677%_)
        (let* ((_%g151679151696%_
                (lambda (_%g151680151693%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151680151693%_))))
               (_%g151678151743%_
                (lambda (_%g151680151699%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151680151699%_))
                      (let ((_%e151683151701%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151680151699%_))))
                        (let ((_%hd151684151704%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151683151701%_)))
                              (_%tl151685151706%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151683151701%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151685151706%_))
                              (let ((_%e151686151709%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151685151706%_))))
                                (let ((_%hd151687151712%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151686151709%_)))
                                      (_%tl151688151714%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151686151709%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151688151714%_))
                                      (let ((_%e151689151717%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151688151714%_))))
                                        (let ((_%hd151690151720%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151689151717%_)))
                                              (_%tl151691151722%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151689151717%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151691151722%_))
                                              ((lambda (_%L151725%_
                                                        _%L151726%_)
                                                 (let ((_%eid151741%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L151726%_))))
                                                   (let ((__tmp152328
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self151676%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp152328
                                                      _%eid151741%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self151676%_
                                                      _%L151725%_))))
                                               _%hd151690151720%_
                                               _%hd151687151712%_)
                                              (_%g151679151696%_
                                               _%g151680151699%_))))
                                      (_%g151679151696%_ _%g151680151699%_))))
                              (_%g151679151696%_ _%g151680151699%_))))
                      (_%g151679151696%_ _%g151680151699%_)))))
          (_%g151678151743%_ _%stx151677%_))))
    (define gxc#find-body%
      (lambda (_%self151589%_ _%stx151590%_)
        (let* ((_%g151592151611%_
                (lambda (_%g151593151608%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151593151608%_))))
               (_%g151591151673%_
                (lambda (_%g151593151614%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151593151614%_))
                      (let ((_%e151595151616%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151593151614%_))))
                        (let ((_%hd151596151619%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151595151616%_)))
                              (_%tl151597151621%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151595151616%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl151597151621%_))
                              (let ((_g152329_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl151597151621%_
                                        '0))))
                                (begin
                                  (let ((_g152330_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g152329_)
                                               (##vector-length _g152329_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g152330_ 2)))
                                        (error "Context expects 2 values"
                                               _g152330_)))
                                  (let ((_%target151598151624%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g152329_ 0)))
                                        (_%tl151600151626%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g152329_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl151600151626%_))
                                        (letrec ((_%loop151601151629%_
                                                  (lambda (_%hd151599151632%_
                                                           _%expr151605151634%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd151599151632%_))
                                                        (let ((_%e151602151637%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd151599151632%_))))
                  (let ((_%lp-hd151603151640%_
                         (let ()
                           (declare (not safe))
                           (##car _%e151602151637%_)))
                        (_%lp-tl151604151642%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e151602151637%_))))
                    (_%loop151601151629%_
                     _%lp-tl151604151642%_
                     (cons _%lp-hd151603151640%_ _%expr151605151634%_))))
                (let ((_%expr151606151645%_ (reverse _%expr151605151634%_)))
                  ((lambda (_%L151648%_)
                     (let ((__tmp152333
                            (lambda (_%g151661151663%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self151589%_
                                 _%g151661151663%_))))
                           (__tmp152331
                            (let ((__tmp152332
                                   (lambda (_%g151665151668%_
                                            _%g151666151670%_)
                                     (cons _%g151665151668%_
                                           _%g151666151670%_))))
                              (declare (not safe))
                              (__foldr1 __tmp152332 '() _%L151648%_))))
                       (declare (not safe))
                       (__ormap1 __tmp152333 __tmp152331)))
                   _%expr151606151645%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop151601151629%_
                                           _%target151598151624%_
                                           '()))
                                        (_%g151592151611%_
                                         _%g151593151614%_)))))
                              (_%g151592151611%_ _%g151593151614%_))))
                      (_%g151592151611%_ _%g151593151614%_)))))
          (_%g151591151673%_ _%stx151590%_))))
    (define gxc#find-let-values%
      (lambda (_%self151439%_ _%stx151440%_)
        (let* ((_%g151442151477%_
                (lambda (_%g151443151474%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151443151474%_))))
               (_%g151441151586%_
                (lambda (_%g151443151480%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151443151480%_))
                      (let ((_%e151447151482%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151443151480%_))))
                        (let ((_%hd151448151485%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151447151482%_)))
                              (_%tl151449151487%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151447151482%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151449151487%_))
                              (let ((_%e151450151490%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151449151487%_))))
                                (let ((_%hd151451151493%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151450151490%_)))
                                      (_%tl151452151495%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151450151490%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd151451151493%_))
                                      (let ((_g152334_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd151451151493%_
                                                '0))))
                                        (begin
                                          (let ((_g152335_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g152334_)
                                                       (##vector-length
                                                        _g152334_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g152335_ 2)))
                                                (error "Context expects 2 values"
                                                       _g152335_)))
                                          (let ((_%target151453151498%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g152334_ 0)))
                                                (_%tl151455151500%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g152334_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl151455151500%_))
                                                (letrec ((_%loop151456151503%_
                                                          (lambda (_%hd151454151506%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr151460151508%_
                           _%bind151461151510%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd151454151506%_))
                        (let ((_%e151457151513%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd151454151506%_))))
                          (let ((_%lp-hd151458151516%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e151457151513%_)))
                                (_%lp-tl151459151518%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e151457151513%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd151458151516%_))
                                (let ((_%e151467151521%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd151458151516%_))))
                                  (let ((_%hd151468151524%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e151467151521%_)))
                                        (_%tl151469151526%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e151467151521%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl151469151526%_))
                                        (let ((_%e151470151529%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl151469151526%_))))
                                          (let ((_%hd151471151532%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e151470151529%_)))
                                                (_%tl151472151534%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e151470151529%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl151472151534%_))
                                                (_%loop151456151503%_
                                                 _%lp-tl151459151518%_
                                                 (cons _%hd151471151532%_
                                                       _%expr151460151508%_)
                                                 (cons _%hd151468151524%_
                                                       _%bind151461151510%_))
                                                (_%g151442151477%_
                                                 _%g151443151480%_))))
                                        (_%g151442151477%_
                                         _%g151443151480%_))))
                                (_%g151442151477%_ _%g151443151480%_))))
                        (let ((_%expr151462151537%_
                               (reverse _%expr151460151508%_))
                              (_%bind151463151539%_
                               (reverse _%bind151461151510%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151452151495%_))
                              (let ((_%e151464151542%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151452151495%_))))
                                (let ((_%hd151465151545%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151464151542%_)))
                                      (_%tl151466151547%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151464151542%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl151466151547%_))
                                      ((lambda (_%L151550%_
                                                _%L151551%_
                                                _%L151552%_)
                                         (let ((_%$e151583%_
                                                (let ((__tmp152338
                                                       (lambda (_%g151571151573%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self151439%_
                                                            _%g151571151573%_))))
                                                      (__tmp152336
                                                       (let ((__tmp152337
                                                              (lambda (_%g151575151578%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g151576151580%_)
                        (cons _%g151575151578%_ _%g151576151580%_))))
                 (declare (not safe))
                 (__foldr1 __tmp152337 '() _%L151551%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp152338
                                                   __tmp152336))))
                                           (if _%$e151583%_
                                               _%$e151583%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self151439%_
                                                  _%L151550%_)))))
                                       _%hd151465151545%_
                                       _%expr151462151537%_
                                       _%bind151463151539%_)
                                      (_%g151442151477%_ _%g151443151480%_))))
                              (_%g151442151477%_ _%g151443151480%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop151456151503%_
                                                   _%target151453151498%_
                                                   '()
                                                   '()))
                                                (_%g151442151477%_
                                                 _%g151443151480%_)))))
                                      (_%g151442151477%_ _%g151443151480%_))))
                              (_%g151442151477%_ _%g151443151480%_))))
                      (_%g151442151477%_ _%g151443151480%_)))))
          (_%g151441151586%_ _%stx151440%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self151383%_ _%stx151384%_)
        (let* ((_%g151386151399%_
                (lambda (_%g151387151396%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151387151396%_))))
               (_%g151385151436%_
                (lambda (_%g151387151402%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151387151402%_))
                      (let ((_%e151389151404%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151387151402%_))))
                        (let ((_%hd151390151407%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151389151404%_)))
                              (_%tl151391151409%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151389151404%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151391151409%_))
                              (let ((_%e151392151412%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151391151409%_))))
                                (let ((_%hd151393151415%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151392151412%_)))
                                      (_%tl151394151417%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151392151412%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl151394151417%_))
                                      ((lambda (_%L151420%_)
                                         (let ((__tmp152340
                                                (lambda (_%g151431151433%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L151420%_
                                                     _%g151431151433%_))))
                                               (__tmp152339
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self151383%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp152340 __tmp152339)))
                                       _%hd151393151415%_)
                                      (_%g151386151399%_ _%g151387151402%_))))
                              (_%g151386151399%_ _%g151387151402%_))))
                      (_%g151386151399%_ _%g151387151402%_)))))
          (_%g151385151436%_ _%stx151384%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self151308%_ _%stx151309%_)
        (let* ((_%g151311151328%_
                (lambda (_%g151312151325%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151312151325%_))))
               (_%g151310151380%_
                (lambda (_%g151312151331%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151312151331%_))
                      (let ((_%e151315151333%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151312151331%_))))
                        (let ((_%hd151316151336%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151315151333%_)))
                              (_%tl151317151338%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151315151333%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151317151338%_))
                              (let ((_%e151318151341%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151317151338%_))))
                                (let ((_%hd151319151344%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151318151341%_)))
                                      (_%tl151320151346%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151318151341%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151320151346%_))
                                      (let ((_%e151321151349%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151320151346%_))))
                                        (let ((_%hd151322151352%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151321151349%_)))
                                              (_%tl151323151354%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151321151349%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151323151354%_))
                                              ((lambda (_%L151357%_
                                                        _%L151358%_)
                                                 (let ((_%$e151377%_
                                                        (let ((__tmp152342
                                                               (lambda (_%g151372151374%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L151358%_
                            _%g151372151374%_))))
                      (__tmp152341
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self151308%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp152342 __tmp152341))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e151377%_
                                                       _%$e151377%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self151308%_
                                                          _%L151357%_)))))
                                               _%hd151322151352%_
                                               _%hd151319151344%_)
                                              (_%g151311151328%_
                                               _%g151312151331%_))))
                                      (_%g151311151328%_ _%g151312151331%_))))
                              (_%g151311151328%_ _%g151312151331%_))))
                      (_%g151311151328%_ _%g151312151331%_)))))
          (_%g151310151380%_ _%stx151309%_))))))
