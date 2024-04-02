(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1712084087)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp150315 (list gxc#::void::t))
            (__tmp150314 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp150315
         '()
         __tmp150314
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args150055%_
        (apply make-instance gxc#::collect-mutators::t _%$args150055%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp150316
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
        (__make-promise __tmp150316)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx150047%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self150050%_
                (let ((__obj150302
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj150302))
               (__tmp150317
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self150050%_ _%stx150047%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150317
           gxc#current-compile-method
           _%self150050%_))))
    (define gxc#::collect-methods::t
      (let ((__tmp150319 (list gxc#::void::t))
            (__tmp150318 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-methods::t
         '::collect-methods
         __tmp150319
         '()
         __tmp150318
         '#f)))
    (define gxc#::collect-methods?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-methods::t)))
    (define gxc#make-::collect-methods
      (lambda _%$args150044%_
        (apply make-instance gxc#::collect-methods::t _%$args150044%_)))
    (define gxc#::collect-methods-bind-methods!
      (let ((__tmp150320
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
        (__make-promise __tmp150320)))
    (define gxc#apply-collect-methods
      (lambda (_%stx150036%_)
        (force gxc#::collect-methods-bind-methods!)
        (let* ((_%self150039%_
                (let ((__obj150304
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-methods::t))))
                  __obj150304))
               (__tmp150321
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self150039%_ _%stx150036%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150321
           gxc#current-compile-method
           _%self150039%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp150323 (list gxc#::basic-xform-expression::t))
            (__tmp150322 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp150323
         '(id new-id)
         __tmp150322
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args150033%_
        (apply make-instance gxc#::expression-subst::t _%$args150033%_)))
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
      (let ((__tmp150324
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
        (__make-promise __tmp150324)))
    (define gxc#apply-expression-subst__%
      (lambda (_%_150002%_
               _%id149998150004%_
               _%new-id149999150006%_
               _%stx150008%_)
        (let* ((_%id150011%_
                (if (eq? _%id149998150004%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id149998150004%_))
               (_%new-id150013%_
                (if (eq? _%new-id149999150006%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id149999150006%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self150015%_
                  (let ((__obj150306
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150306
                       _%id150011%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150306
                       _%new-id150013%_
                       '2
                       '#f
                       '#f))
                    __obj150306))
                 (__tmp150325
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150015%_ _%stx150008%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150325
             gxc#current-compile-method
             _%self150015%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords150022%_ . _%args150023%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords150022%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords150022%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150022%_
                  'new-id:
                  absent-value))
               _%args150023%_)))
    (define gxc#apply-expression-subst
      (lambda _%args150000150029%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args150000150029%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp150327 (list gxc#::basic-xform-expression::t))
            (__tmp150326 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp150327
         '(subst)
         __tmp150326
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args149994%_
        (apply make-instance gxc#::expression-subst*::t _%$args149994%_)))
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
      (let ((__tmp150328
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
        (__make-promise __tmp150328)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%_149967%_ _%subst149964149969%_ _%stx149971%_)
        (let ((_%subst149974%_
               (if (eq? _%subst149964149969%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst149964149969%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self149976%_
                  (let ((__obj150308
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150308
                       _%subst149974%_
                       '1
                       '#f
                       '#f))
                    __obj150308))
                 (__tmp150329
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self149976%_ _%stx149971%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150329
             gxc#current-compile-method
             _%self149976%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords149983%_ . _%args149984%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords149983%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords149983%_
                  'subst:
                  absent-value))
               _%args149984%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args149965149990%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args149965149990%_)))
    (define gxc#::find-expression::t
      (let ((__tmp150330 (list gxc#::false-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp150330
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args149960%_
        (apply make-instance gxc#::find-expression::t _%$args149960%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp150331
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
        (__make-promise __tmp150331)))
    (define gxc#::find-var-refs::t
      (let ((__tmp150333 (list gxc#::find-expression::t))
            (__tmp150332 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp150333
         '(ids)
         __tmp150332
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args149956%_
        (apply make-instance gxc#::find-var-refs::t _%$args149956%_)))
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
      (let ((__tmp150334
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
        (__make-promise __tmp150334)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%_149929%_ _%ids149926149931%_ _%stx149933%_)
        (let ((_%ids149936%_
               (if (eq? _%ids149926149931%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids149926149931%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self149938%_
                  (let ((__obj150311
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150311
                       _%ids149936%_
                       '1
                       '#f
                       '#f))
                    __obj150311))
                 (__tmp150335
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self149938%_ _%stx149933%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150335
             gxc#current-compile-method
             _%self149938%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords149945%_ . _%args149946%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords149945%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords149945%_ 'ids: absent-value))
               _%args149946%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args149927149952%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args149927149952%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp150337 (list gxc#::collect-expression-refs::t))
            (__tmp150336 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp150337
         '()
         __tmp150336
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args149922%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args149922%_)))
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
      (let ((__tmp150338
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
        (__make-promise __tmp150338)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%_149895%_ _%table149892149897%_ _%stx149899%_)
        (let ((_%table149902%_
               (if (eq? _%table149892149897%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table149892149897%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self149904%_
                  (let ((__obj150313
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150313
                       _%table149902%_
                       '1
                       '#f
                       '#f))
                    __obj150313))
                 (__tmp150339
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self149904%_ _%stx149899%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150339
             gxc#current-compile-method
             _%self149904%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords149911%_ . _%args149912%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords149911%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords149911%_
                  'table:
                  absent-value))
               _%args149912%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args149893149918%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args149893149918%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self149821%_ _%stx149822%_)
        (let* ((_%g149824149841%_
                (lambda (_%g149825149838%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149825149838%_))))
               (_%g149823149888%_
                (lambda (_%g149825149844%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149825149844%_))
                      (let ((_%e149830149846%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149825149844%_))))
                        (let ((_%hd149829149849%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149830149846%_)))
                              (_%tl149828149851%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149830149846%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149828149851%_))
                              (let ((_%e149833149854%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149828149851%_))))
                                (let ((_%hd149832149857%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149833149854%_)))
                                      (_%tl149831149859%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149833149854%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149831149859%_))
                                      (let ((_%e149836149862%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149831149859%_))))
                                        (let ((_%hd149835149865%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149836149862%_)))
                                              (_%tl149834149867%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149836149862%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149834149867%_))
                                              ((lambda (_%L149870%_
                                                        _%L149871%_)
                                                 (let ((_%sym149886%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L149871%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym149886%_))
                                                   (let ((__tmp150340
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp150340
                                                      _%sym149886%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self149821%_
                                                      _%L149870%_))))
                                               _%hd149835149865%_
                                               _%hd149832149857%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g149824149841%_
                                                 _%g149825149844%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149824149841%_
                                         _%g149825149844%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149824149841%_ _%g149825149844%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149824149841%_ _%g149825149844%_))))))
          (declare (not safe))
          (_%g149823149888%_ _%stx149822%_))))
    (define gxc#collect-methods-call%
      (lambda (_%self149374%_ _%stx149375%_)
        (let* ((_%__stx150058150059%_ _%stx149375%_)
               (_%g149379149481%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx150058150059%_)))))
          (let ((_%__kont150060150061%_
                 (lambda (_%L149771%_
                          _%L149772%_
                          _%L149773%_
                          _%L149774%_
                          _%L149775%_)
                   (let ((__tmp150341
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _%L149772%_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp150341))))
                (_%__kont150062150063%_
                 (lambda (_%L149597%_ _%L149598%_ _%L149599%_ _%L149600%_)
                   (let ((__tmp150342
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _%L149597%_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp150342))))
                (_%__kont150064150065%_ (lambda () '#!void)))
            (let ((_%__match150193150194%_
                   (lambda (_%e149388149643%_
                            _%hd149387149646%_
                            _%tl149386149648%_
                            _%e149391149651%_
                            _%hd149390149654%_
                            _%tl149389149656%_
                            _%e149394149659%_
                            _%hd149393149662%_
                            _%tl149392149664%_
                            _%e149397149667%_
                            _%hd149396149670%_
                            _%tl149395149672%_
                            _%e149400149675%_
                            _%hd149399149678%_
                            _%tl149398149680%_
                            _%e149403149683%_
                            _%hd149402149686%_
                            _%tl149401149688%_
                            _%e149406149691%_
                            _%hd149405149694%_
                            _%tl149404149696%_
                            _%e149409149699%_
                            _%hd149408149702%_
                            _%tl149407149704%_
                            _%e149412149707%_
                            _%hd149411149710%_
                            _%tl149410149712%_
                            _%e149415149715%_
                            _%hd149414149718%_
                            _%tl149413149720%_
                            _%e149418149723%_
                            _%hd149417149726%_
                            _%tl149416149728%_
                            _%e149421149731%_
                            _%hd149420149734%_
                            _%tl149419149736%_
                            _%e149424149739%_
                            _%hd149423149742%_
                            _%tl149422149744%_
                            _%e149427149747%_
                            _%hd149426149750%_
                            _%tl149425149752%_
                            _%e149430149755%_
                            _%hd149429149758%_
                            _%tl149428149760%_
                            _%e149433149763%_
                            _%hd149432149766%_
                            _%tl149431149768%_)
                     (let ((_%L149771%_ _%hd149432149766%_)
                           (_%L149772%_ _%hd149423149742%_)
                           (_%L149773%_ _%hd149414149718%_)
                           (_%L149774%_ _%hd149405149694%_)
                           (_%L149775%_ _%hd149396149670%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L149775%_
                              'bind-method!))
                           (_%__kont150060150061%_
                            _%L149771%_
                            _%L149772%_
                            _%L149773%_
                            _%L149774%_
                            _%L149775%_)
                           (_%__kont150064150065%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx150058150059%_))
                  (let ((_%e149388149643%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx150058150059%_))))
                    (let ((_%tl149386149648%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e149388149643%_)))
                          (_%hd149387149646%_
                           (let ()
                             (declare (not safe))
                             (##car _%e149388149643%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl149386149648%_))
                          (let ((_%e149391149651%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl149386149648%_))))
                            (let ((_%tl149389149656%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e149391149651%_)))
                                  (_%hd149390149654%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e149391149651%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd149390149654%_))
                                  (let ((_%e149394149659%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd149390149654%_))))
                                    (let ((_%tl149392149664%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e149394149659%_)))
                                          (_%hd149393149662%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e149394149659%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd149393149662%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd149393149662%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl149392149664%_))
                                                  (let ((_%e149397149667%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl149392149664%_))))
                                                    (let ((_%tl149395149672%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e149397149667%_)))
                                                          (_%hd149396149670%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e149397149667%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl149395149672%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl149389149656%_))
                      (let ((_%e149400149675%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl149389149656%_))))
                        (let ((_%tl149398149680%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149400149675%_)))
                              (_%hd149399149678%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149400149675%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd149399149678%_))
                              (let ((_%e149403149683%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd149399149678%_))))
                                (let ((_%tl149401149688%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149403149683%_)))
                                      (_%hd149402149686%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149403149683%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd149402149686%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd149402149686%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl149401149688%_))
                                              (let ((_%e149406149691%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl149401149688%_))))
                                                (let ((_%tl149404149696%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e149406149691%_)))
                                                      (_%hd149405149694%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e149406149691%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl149404149696%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl149398149680%_))
                                                          (let ((_%e149409149699%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl149398149680%_))))
                    (let ((_%tl149407149704%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e149409149699%_)))
                          (_%hd149408149702%_
                           (let ()
                             (declare (not safe))
                             (##car _%e149409149699%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd149408149702%_))
                          (let ((_%e149412149707%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd149408149702%_))))
                            (let ((_%tl149410149712%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e149412149707%_)))
                                  (_%hd149411149710%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e149412149707%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd149411149710%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd149411149710%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl149410149712%_))
                                          (let ((_%e149415149715%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl149410149712%_))))
                                            (let ((_%tl149413149720%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e149415149715%_)))
                                                  (_%hd149414149718%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e149415149715%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl149413149720%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl149407149704%_))
                                                      (let ((_%e149418149723%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl149407149704%_))))
                (let ((_%tl149416149728%_
                       (let () (declare (not safe)) (##cdr _%e149418149723%_)))
                      (_%hd149417149726%_
                       (let ()
                         (declare (not safe))
                         (##car _%e149418149723%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd149417149726%_))
                      (let ((_%e149421149731%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd149417149726%_))))
                        (let ((_%tl149419149736%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149421149731%_)))
                              (_%hd149420149734%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149421149731%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd149420149734%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd149420149734%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149419149736%_))
                                      (let ((_%e149424149739%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149419149736%_))))
                                        (let ((_%tl149422149744%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149424149739%_)))
                                              (_%hd149423149742%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149424149739%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149422149744%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl149416149728%_))
                                                  (let ((_%e149427149747%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl149416149728%_))))
                                                    (let ((_%tl149425149752%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e149427149747%_)))
                                                          (_%hd149426149750%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e149427149747%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd149426149750%_))
                                                          (let ((_%e149430149755%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd149426149750%_))))
                    (let ((_%tl149428149760%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e149430149755%_)))
                          (_%hd149429149758%_
                           (let ()
                             (declare (not safe))
                             (##car _%e149430149755%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd149429149758%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd149429149758%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl149428149760%_))
                                  (let ((_%e149433149763%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl149428149760%_))))
                                    (let ((_%tl149431149768%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e149433149763%_)))
                                          (_%hd149432149766%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e149433149763%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl149431149768%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149425149752%_))
                                              (_%__match150193150194%_
                                               _%e149388149643%_
                                               _%hd149387149646%_
                                               _%tl149386149648%_
                                               _%e149391149651%_
                                               _%hd149390149654%_
                                               _%tl149389149656%_
                                               _%e149394149659%_
                                               _%hd149393149662%_
                                               _%tl149392149664%_
                                               _%e149397149667%_
                                               _%hd149396149670%_
                                               _%tl149395149672%_
                                               _%e149400149675%_
                                               _%hd149399149678%_
                                               _%tl149398149680%_
                                               _%e149403149683%_
                                               _%hd149402149686%_
                                               _%tl149401149688%_
                                               _%e149406149691%_
                                               _%hd149405149694%_
                                               _%tl149404149696%_
                                               _%e149409149699%_
                                               _%hd149408149702%_
                                               _%tl149407149704%_
                                               _%e149412149707%_
                                               _%hd149411149710%_
                                               _%tl149410149712%_
                                               _%e149415149715%_
                                               _%hd149414149718%_
                                               _%tl149413149720%_
                                               _%e149418149723%_
                                               _%hd149417149726%_
                                               _%tl149416149728%_
                                               _%e149421149731%_
                                               _%hd149420149734%_
                                               _%tl149419149736%_
                                               _%e149424149739%_
                                               _%hd149423149742%_
                                               _%tl149422149744%_
                                               _%e149427149747%_
                                               _%hd149426149750%_
                                               _%tl149425149752%_
                                               _%e149430149755%_
                                               _%hd149429149758%_
                                               _%tl149428149760%_
                                               _%e149433149763%_
                                               _%hd149432149766%_
                                               _%tl149431149768%_)
                                              (_%__kont150064150065%_))
                                          (_%__kont150064150065%_))))
                                  (_%__kont150064150065%_))
                              (_%__kont150064150065%_))
                          (_%__kont150064150065%_))))
                  (_%__kont150064150065%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl149416149728%_))
                                                      (if (let ((__tmp150343
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp150343 'bind-method!))
                  (let ((_%L149597%_ _%hd149423149742%_)
                        (_%L149598%_ _%hd149414149718%_)
                        (_%L149599%_ _%hd149405149694%_)
                        (_%L149600%_ _%hd149396149670%_))
                    (_%__kont150062150063%_
                     _%L149597%_
                     _%L149598%_
                     _%L149599%_
                     _%L149600%_))
                  (_%__kont150064150065%_))
              (_%__kont150064150065%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont150064150065%_))))
                                      (_%__kont150064150065%_))
                                  (_%__kont150064150065%_))
                              (_%__kont150064150065%_))))
                      (_%__kont150064150065%_))))
              (_%__kont150064150065%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont150064150065%_))))
                                          (_%__kont150064150065%_))
                                      (_%__kont150064150065%_))
                                  (_%__kont150064150065%_))))
                          (_%__kont150064150065%_))))
                  (_%__kont150064150065%_))
              (_%__kont150064150065%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont150064150065%_))
                                          (_%__kont150064150065%_))
                                      (_%__kont150064150065%_))))
                              (_%__kont150064150065%_))))
                      (_%__kont150064150065%_))
                  (_%__kont150064150065%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont150064150065%_))
                                              (_%__kont150064150065%_))
                                          (_%__kont150064150065%_))))
                                  (_%__kont150064150065%_))))
                          (_%__kont150064150065%_))))
                  (_%__kont150064150065%_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_%self149322%_ _%stx149323%_)
        (let* ((_%g149325149338%_
                (lambda (_%g149326149335%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149326149335%_))))
               (_%g149324149371%_
                (lambda (_%g149326149341%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149326149341%_))
                      (let ((_%e149330149343%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149326149341%_))))
                        (let ((_%hd149329149346%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149330149343%_)))
                              (_%tl149328149348%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149330149343%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149328149348%_))
                              (let ((_%e149333149351%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149328149348%_))))
                                (let ((_%hd149332149354%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149333149351%_)))
                                      (_%tl149331149356%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149333149351%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149331149356%_))
                                      ((lambda (_%L149359%_)
                                         (if (let ((__tmp150344
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self149322%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L149359%_
                                                __tmp150344))
                                             (let ((__tmp150345
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self149322%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp150345
                                                _%stx149323%_))
                                             _%stx149323%_))
                                       _%hd149332149354%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g149325149338%_
                                         _%g149326149341%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149325149338%_ _%g149326149341%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149325149338%_ _%g149326149341%_))))))
          (declare (not safe))
          (_%g149324149371%_ _%stx149323%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self149262%_ _%stx149263%_)
        (let* ((_%g149265149278%_
                (lambda (_%g149266149275%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149266149275%_))))
               (_%g149264149319%_
                (lambda (_%g149266149281%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149266149281%_))
                      (let ((_%e149270149283%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149266149281%_))))
                        (let ((_%hd149269149286%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149270149283%_)))
                              (_%tl149268149288%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149270149283%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149268149288%_))
                              (let ((_%e149273149291%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149268149288%_))))
                                (let ((_%hd149272149294%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149273149291%_)))
                                      (_%tl149271149296%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149273149291%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149271149296%_))
                                      ((lambda (_%L149299%_)
                                         (let ((_%$e149313%_
                                                (let ((__tmp150347
                                                       (lambda (_%sub149311%_)
                                                         (let ((__tmp150348
                                                                (car _%sub149311%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L149299%_
                                                            __tmp150348))))
                                                      (__tmp150346
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self149262%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp150347
                                                          __tmp150346))))
                                           (if _%$e149313%_
                                               ((lambda (_%sub149316%_)
                                                  (let ((__tmp150349
                                                         (cons '%#ref
                                                               (cons (cdr _%sub149316%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp150349
                                                     _%stx149263%_)))
                                                _%$e149313%_)
                                               (let () _%stx149263%_))))
                                       _%hd149272149294%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g149265149278%_
                                         _%g149266149281%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149265149278%_ _%g149266149281%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149265149278%_ _%g149266149281%_))))))
          (declare (not safe))
          (_%g149264149319%_ _%stx149263%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self149191%_ _%stx149192%_)
        (let* ((_%g149194149211%_
                (lambda (_%g149195149208%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149195149208%_))))
               (_%g149193149259%_
                (lambda (_%g149195149214%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149195149214%_))
                      (let ((_%e149200149216%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149195149214%_))))
                        (let ((_%hd149199149219%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149200149216%_)))
                              (_%tl149198149221%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149200149216%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149198149221%_))
                              (let ((_%e149203149224%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149198149221%_))))
                                (let ((_%hd149202149227%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149203149224%_)))
                                      (_%tl149201149229%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149203149224%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149201149229%_))
                                      (let ((_%e149206149232%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149201149229%_))))
                                        (let ((_%hd149205149235%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149206149232%_)))
                                              (_%tl149204149237%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149206149232%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149204149237%_))
                                              ((lambda (_%L149240%_
                                                        _%L149241%_)
                                                 (let ((_%new-expr149256%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self149191%_
                                                           _%L149240%_)))
                                                       (_%new-xid149257%_
                                                        (if (let ((__tmp150350
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self149191%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L149241%_ __tmp150350))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self149191%_ 'new-id))
                    _%L149241%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp150351
                                                          (cons '%#set!
                                                                (cons _%new-xid149257%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr149256%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp150351
                                                      _%stx149192%_))))
                                               _%hd149205149235%_
                                               _%hd149202149227%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g149194149211%_
                                                 _%g149195149214%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149194149211%_
                                         _%g149195149214%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149194149211%_ _%g149195149214%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149194149211%_ _%g149195149214%_))))))
          (declare (not safe))
          (_%g149193149259%_ _%stx149192%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self149114%_ _%stx149115%_)
        (let* ((_%g149117149134%_
                (lambda (_%g149118149131%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149118149131%_))))
               (_%g149116149188%_
                (lambda (_%g149118149137%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149118149137%_))
                      (let ((_%e149123149139%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149118149137%_))))
                        (let ((_%hd149122149142%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149123149139%_)))
                              (_%tl149121149144%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149123149139%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149121149144%_))
                              (let ((_%e149126149147%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149121149144%_))))
                                (let ((_%hd149125149150%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149126149147%_)))
                                      (_%tl149124149152%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149126149147%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149124149152%_))
                                      (let ((_%e149129149155%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149124149152%_))))
                                        (let ((_%hd149128149158%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149129149155%_)))
                                              (_%tl149127149160%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149129149155%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149127149160%_))
                                              ((lambda (_%L149163%_
                                                        _%L149164%_)
                                                 (let ((_%new-expr149185%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self149114%_
                                                           _%L149163%_)))
                                                       (_%new-xid149186%_
                                                        (let ((_%$e149181%_
                                                               (let ((__tmp150353
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub149179%_)
                                (let ((__tmp150354 (car _%sub149179%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L149164%_
                                   __tmp150354))))
                             (__tmp150352
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self149114%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp150353 __tmp150352))))
                  (if _%$e149181%_ (cdr _%$e149181%_) (let () _%L149164%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp150355
                                                          (cons '%#set!
                                                                (cons _%new-xid149186%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr149185%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp150355
                                                      _%stx149115%_))))
                                               _%hd149128149158%_
                                               _%hd149125149150%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g149117149134%_
                                                 _%g149118149137%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149117149134%_
                                         _%g149118149137%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149117149134%_ _%g149118149137%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149117149134%_ _%g149118149137%_))))))
          (declare (not safe))
          (_%g149116149188%_ _%stx149115%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self149060%_ _%stx149061%_)
        (let* ((_%g149063149076%_
                (lambda (_%g149064149073%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149064149073%_))))
               (_%g149062149111%_
                (lambda (_%g149064149079%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149064149079%_))
                      (let ((_%e149068149081%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149064149079%_))))
                        (let ((_%hd149067149084%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149068149081%_)))
                              (_%tl149066149086%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149068149081%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149066149086%_))
                              (let ((_%e149071149089%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149066149086%_))))
                                (let ((_%hd149070149092%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149071149089%_)))
                                      (_%tl149069149094%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149071149089%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149069149094%_))
                                      ((lambda (_%L149097%_)
                                         (let* ((_%eid149109%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L149097%_)))
                                                (__tmp150356
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self149060%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp150356
                                            _%eid149109%_
                                            1+
                                            '0)))
                                       _%hd149070149092%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g149063149076%_
                                         _%g149064149079%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149063149076%_ _%g149064149079%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149063149076%_ _%g149064149079%_))))))
          (declare (not safe))
          (_%g149062149111%_ _%stx149061%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self148990%_ _%stx148991%_)
        (let* ((_%g148993149010%_
                (lambda (_%g148994149007%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148994149007%_))))
               (_%g148992149057%_
                (lambda (_%g148994149013%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148994149013%_))
                      (let ((_%e148999149015%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148994149013%_))))
                        (let ((_%hd148998149018%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148999149015%_)))
                              (_%tl148997149020%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148999149015%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148997149020%_))
                              (let ((_%e149002149023%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148997149020%_))))
                                (let ((_%hd149001149026%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149002149023%_)))
                                      (_%tl149000149028%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149002149023%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149000149028%_))
                                      (let ((_%e149005149031%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149000149028%_))))
                                        (let ((_%hd149004149034%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149005149031%_)))
                                              (_%tl149003149036%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149005149031%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149003149036%_))
                                              ((lambda (_%L149039%_
                                                        _%L149040%_)
                                                 (let ((_%eid149055%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L149040%_))))
                                                   (let ((__tmp150357
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self148990%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp150357
                                                      _%eid149055%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self148990%_
                                                      _%L149039%_))))
                                               _%hd149004149034%_
                                               _%hd149001149026%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g148993149010%_
                                                 _%g148994149013%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g148993149010%_
                                         _%g148994149013%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g148993149010%_ _%g148994149013%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g148993149010%_ _%g148994149013%_))))))
          (declare (not safe))
          (_%g148992149057%_ _%stx148991%_))))
    (define gxc#find-body%
      (lambda (_%self148903%_ _%stx148904%_)
        (let* ((_%g148906148925%_
                (lambda (_%g148907148922%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148907148922%_))))
               (_%g148905148987%_
                (lambda (_%g148907148928%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148907148928%_))
                      (let ((_%e148911148930%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148907148928%_))))
                        (let ((_%hd148910148933%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148911148930%_)))
                              (_%tl148909148935%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148911148930%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl148909148935%_))
                              (let ((_g150358_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl148909148935%_
                                        '0))))
                                (begin
                                  (let ((_g150359_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g150358_)
                                               (##vector-length _g150358_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g150359_ 2)))
                                        (error "Context expects 2 values"
                                               _g150359_)))
                                  (let ((_%target148912148938%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g150358_ 0)))
                                        (_%tl148914148940%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g150358_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl148914148940%_))
                                        (letrec ((_%loop148915148943%_
                                                  (lambda (_%hd148913148946%_
                                                           _%expr148919148948%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd148913148946%_))
                                                        (let ((_%e148916148951%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd148913148946%_))))
                  (let ((_%lp-hd148917148954%_
                         (let ()
                           (declare (not safe))
                           (##car _%e148916148951%_)))
                        (_%lp-tl148918148956%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e148916148951%_))))
                    (let ((__tmp150360
                           (cons _%lp-hd148917148954%_ _%expr148919148948%_)))
                      (declare (not safe))
                      (_%loop148915148943%_
                       _%lp-tl148918148956%_
                       __tmp150360))))
                (let ((_%expr148920148959%_ (reverse _%expr148919148948%_)))
                  ((lambda (_%L148962%_)
                     (let ((__tmp150363
                            (lambda (_%g148975148977%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self148903%_
                                 _%g148975148977%_))))
                           (__tmp150361
                            (let ((__tmp150362
                                   (lambda (_%g148979148982%_
                                            _%g148980148984%_)
                                     (cons _%g148979148982%_
                                           _%g148980148984%_))))
                              (declare (not safe))
                              (__foldr1 __tmp150362 '() _%L148962%_))))
                       (declare (not safe))
                       (__ormap1 __tmp150363 __tmp150361)))
                   _%expr148920148959%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%loop148915148943%_
                                             _%target148912148938%_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_%g148906148925%_
                                           _%g148907148928%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g148906148925%_ _%g148907148928%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g148906148925%_ _%g148907148928%_))))))
          (declare (not safe))
          (_%g148905148987%_ _%stx148904%_))))
    (define gxc#find-let-values%
      (lambda (_%self148753%_ _%stx148754%_)
        (let* ((_%g148756148791%_
                (lambda (_%g148757148788%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148757148788%_))))
               (_%g148755148900%_
                (lambda (_%g148757148794%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148757148794%_))
                      (let ((_%e148763148796%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148757148794%_))))
                        (let ((_%hd148762148799%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148763148796%_)))
                              (_%tl148761148801%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148763148796%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148761148801%_))
                              (let ((_%e148766148804%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148761148801%_))))
                                (let ((_%hd148765148807%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148766148804%_)))
                                      (_%tl148764148809%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148766148804%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd148765148807%_))
                                      (let ((_g150364_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd148765148807%_
                                                '0))))
                                        (begin
                                          (let ((_g150365_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g150364_)
                                                       (##vector-length
                                                        _g150364_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g150365_ 2)))
                                                (error "Context expects 2 values"
                                                       _g150365_)))
                                          (let ((_%target148767148812%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g150364_ 0)))
                                                (_%tl148769148814%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g150364_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl148769148814%_))
                                                (letrec ((_%loop148770148817%_
                                                          (lambda (_%hd148768148820%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr148774148822%_
                           _%bind148775148824%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd148768148820%_))
                        (let ((_%e148771148827%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd148768148820%_))))
                          (let ((_%lp-hd148772148830%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e148771148827%_)))
                                (_%lp-tl148773148832%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e148771148827%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd148772148830%_))
                                (let ((_%e148780148835%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd148772148830%_))))
                                  (let ((_%hd148779148838%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e148780148835%_)))
                                        (_%tl148778148840%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e148780148835%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl148778148840%_))
                                        (let ((_%e148783148843%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl148778148840%_))))
                                          (let ((_%hd148782148846%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e148783148843%_)))
                                                (_%tl148781148848%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e148783148843%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl148781148848%_))
                                                (let ((__tmp150367
                                                       (cons _%hd148782148846%_
                                                             _%expr148774148822%_))
                                                      (__tmp150366
                                                       (cons _%hd148779148838%_
                                                             _%bind148775148824%_)))
                                                  (declare (not safe))
                                                  (_%loop148770148817%_
                                                   _%lp-tl148773148832%_
                                                   __tmp150367
                                                   __tmp150366))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g148756148791%_
                                                   _%g148757148794%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g148756148791%_
                                           _%g148757148794%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g148756148791%_ _%g148757148794%_)))))
                        (let ((_%expr148776148851%_
                               (reverse _%expr148774148822%_))
                              (_%bind148777148853%_
                               (reverse _%bind148775148824%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148764148809%_))
                              (let ((_%e148786148856%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148764148809%_))))
                                (let ((_%hd148785148859%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148786148856%_)))
                                      (_%tl148784148861%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148786148856%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl148784148861%_))
                                      ((lambda (_%L148864%_
                                                _%L148865%_
                                                _%L148866%_)
                                         (let ((_%$e148897%_
                                                (let ((__tmp150370
                                                       (lambda (_%g148885148887%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self148753%_
                                                            _%g148885148887%_))))
                                                      (__tmp150368
                                                       (let ((__tmp150369
                                                              (lambda (_%g148889148892%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g148890148894%_)
                        (cons _%g148889148892%_ _%g148890148894%_))))
                 (declare (not safe))
                 (__foldr1 __tmp150369 '() _%L148865%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp150370
                                                   __tmp150368))))
                                           (if _%$e148897%_
                                               _%$e148897%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self148753%_
                                                  _%L148864%_)))))
                                       _%hd148785148859%_
                                       _%expr148776148851%_
                                       _%bind148777148853%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g148756148791%_
                                         _%g148757148794%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g148756148791%_ _%g148757148794%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop148770148817%_
                                                     _%target148767148812%_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g148756148791%_
                                                   _%g148757148794%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g148756148791%_
                                         _%g148757148794%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g148756148791%_ _%g148757148794%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g148756148791%_ _%g148757148794%_))))))
          (declare (not safe))
          (_%g148755148900%_ _%stx148754%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self148697%_ _%stx148698%_)
        (let* ((_%g148700148713%_
                (lambda (_%g148701148710%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148701148710%_))))
               (_%g148699148750%_
                (lambda (_%g148701148716%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148701148716%_))
                      (let ((_%e148705148718%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148701148716%_))))
                        (let ((_%hd148704148721%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148705148718%_)))
                              (_%tl148703148723%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148705148718%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148703148723%_))
                              (let ((_%e148708148726%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148703148723%_))))
                                (let ((_%hd148707148729%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148708148726%_)))
                                      (_%tl148706148731%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148708148726%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl148706148731%_))
                                      ((lambda (_%L148734%_)
                                         (let ((__tmp150372
                                                (lambda (_%g148745148747%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L148734%_
                                                     _%g148745148747%_))))
                                               (__tmp150371
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self148697%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp150372 __tmp150371)))
                                       _%hd148707148729%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g148700148713%_
                                         _%g148701148716%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g148700148713%_ _%g148701148716%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g148700148713%_ _%g148701148716%_))))))
          (declare (not safe))
          (_%g148699148750%_ _%stx148698%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self148622%_ _%stx148623%_)
        (let* ((_%g148625148642%_
                (lambda (_%g148626148639%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148626148639%_))))
               (_%g148624148694%_
                (lambda (_%g148626148645%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148626148645%_))
                      (let ((_%e148631148647%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148626148645%_))))
                        (let ((_%hd148630148650%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148631148647%_)))
                              (_%tl148629148652%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148631148647%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148629148652%_))
                              (let ((_%e148634148655%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148629148652%_))))
                                (let ((_%hd148633148658%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148634148655%_)))
                                      (_%tl148632148660%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148634148655%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148632148660%_))
                                      (let ((_%e148637148663%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148632148660%_))))
                                        (let ((_%hd148636148666%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148637148663%_)))
                                              (_%tl148635148668%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148637148663%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148635148668%_))
                                              ((lambda (_%L148671%_
                                                        _%L148672%_)
                                                 (let ((_%$e148691%_
                                                        (let ((__tmp150374
                                                               (lambda (_%g148686148688%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L148672%_
                            _%g148686148688%_))))
                      (__tmp150373
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self148622%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp150374 __tmp150373))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e148691%_
                                                       _%$e148691%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self148622%_
                                                          _%L148671%_)))))
                                               _%hd148636148666%_
                                               _%hd148633148658%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g148625148642%_
                                                 _%g148626148645%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g148625148642%_
                                         _%g148626148645%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g148625148642%_ _%g148626148645%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g148625148642%_ _%g148626148645%_))))))
          (declare (not safe))
          (_%g148624148694%_ _%stx148623%_))))))
