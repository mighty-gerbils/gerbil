(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1712121900)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp150421 (list gxc#::void::t))
            (__tmp150420 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp150421
         '()
         __tmp150420
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args150161%_
        (apply make-instance gxc#::collect-mutators::t _%$args150161%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp150422
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
        (__make-promise __tmp150422)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx150153%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self150156%_
                (let ((__obj150408
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj150408))
               (__tmp150423
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self150156%_ _%stx150153%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150423
           gxc#current-compile-method
           _%self150156%_))))
    (define gxc#::collect-methods::t
      (let ((__tmp150425 (list gxc#::void::t))
            (__tmp150424 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-methods::t
         '::collect-methods
         __tmp150425
         '()
         __tmp150424
         '#f)))
    (define gxc#::collect-methods?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-methods::t)))
    (define gxc#make-::collect-methods
      (lambda _%$args150150%_
        (apply make-instance gxc#::collect-methods::t _%$args150150%_)))
    (define gxc#::collect-methods-bind-methods!
      (let ((__tmp150426
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
        (__make-promise __tmp150426)))
    (define gxc#apply-collect-methods
      (lambda (_%stx150142%_)
        (force gxc#::collect-methods-bind-methods!)
        (let* ((_%self150145%_
                (let ((__obj150410
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-methods::t))))
                  __obj150410))
               (__tmp150427
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self150145%_ _%stx150142%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150427
           gxc#current-compile-method
           _%self150145%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp150429 (list gxc#::basic-xform-expression::t))
            (__tmp150428 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp150429
         '(id new-id)
         __tmp150428
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args150139%_
        (apply make-instance gxc#::expression-subst::t _%$args150139%_)))
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
      (let ((__tmp150430
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
        (__make-promise __tmp150430)))
    (define gxc#apply-expression-subst__%
      (lambda (_%_150108%_
               _%id150104150110%_
               _%new-id150105150112%_
               _%stx150114%_)
        (let* ((_%id150117%_
                (if (eq? _%id150104150110%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id150104150110%_))
               (_%new-id150119%_
                (if (eq? _%new-id150105150112%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id150105150112%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self150121%_
                  (let ((__obj150412
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150412
                       _%id150117%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150412
                       _%new-id150119%_
                       '2
                       '#f
                       '#f))
                    __obj150412))
                 (__tmp150431
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150121%_ _%stx150114%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150431
             gxc#current-compile-method
             _%self150121%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords150128%_ . _%args150129%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords150128%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords150128%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150128%_
                  'new-id:
                  absent-value))
               _%args150129%_)))
    (define gxc#apply-expression-subst
      (lambda _%args150106150135%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args150106150135%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp150433 (list gxc#::basic-xform-expression::t))
            (__tmp150432 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp150433
         '(subst)
         __tmp150432
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args150100%_
        (apply make-instance gxc#::expression-subst*::t _%$args150100%_)))
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
      (let ((__tmp150434
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
        (__make-promise __tmp150434)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%_150073%_ _%subst150070150075%_ _%stx150077%_)
        (let ((_%subst150080%_
               (if (eq? _%subst150070150075%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst150070150075%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self150082%_
                  (let ((__obj150414
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150414
                       _%subst150080%_
                       '1
                       '#f
                       '#f))
                    __obj150414))
                 (__tmp150435
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150082%_ _%stx150077%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150435
             gxc#current-compile-method
             _%self150082%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords150089%_ . _%args150090%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords150089%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150089%_
                  'subst:
                  absent-value))
               _%args150090%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args150071150096%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args150071150096%_)))
    (define gxc#::find-expression::t
      (let ((__tmp150436 (list gxc#::false-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp150436
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args150066%_
        (apply make-instance gxc#::find-expression::t _%$args150066%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp150437
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
        (__make-promise __tmp150437)))
    (define gxc#::find-var-refs::t
      (let ((__tmp150439 (list gxc#::find-expression::t))
            (__tmp150438 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp150439
         '(ids)
         __tmp150438
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args150062%_
        (apply make-instance gxc#::find-var-refs::t _%$args150062%_)))
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
      (let ((__tmp150440
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
        (__make-promise __tmp150440)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%_150035%_ _%ids150032150037%_ _%stx150039%_)
        (let ((_%ids150042%_
               (if (eq? _%ids150032150037%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids150032150037%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self150044%_
                  (let ((__obj150417
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150417
                       _%ids150042%_
                       '1
                       '#f
                       '#f))
                    __obj150417))
                 (__tmp150441
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150044%_ _%stx150039%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150441
             gxc#current-compile-method
             _%self150044%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords150051%_ . _%args150052%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords150051%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords150051%_ 'ids: absent-value))
               _%args150052%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args150033150058%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args150033150058%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp150443 (list gxc#::collect-expression-refs::t))
            (__tmp150442 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp150443
         '()
         __tmp150442
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args150028%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args150028%_)))
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
      (let ((__tmp150444
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
        (__make-promise __tmp150444)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%_150001%_ _%table149998150003%_ _%stx150005%_)
        (let ((_%table150008%_
               (if (eq? _%table149998150003%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table149998150003%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self150010%_
                  (let ((__obj150419
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150419
                       _%table150008%_
                       '1
                       '#f
                       '#f))
                    __obj150419))
                 (__tmp150445
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150010%_ _%stx150005%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150445
             gxc#current-compile-method
             _%self150010%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords150017%_ . _%args150018%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords150017%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150017%_
                  'table:
                  absent-value))
               _%args150018%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args149999150024%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args149999150024%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self149927%_ _%stx149928%_)
        (let* ((_%g149930149947%_
                (lambda (_%g149931149944%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149931149944%_))))
               (_%g149929149994%_
                (lambda (_%g149931149950%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149931149950%_))
                      (let ((_%e149936149952%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149931149950%_))))
                        (let ((_%hd149935149955%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149936149952%_)))
                              (_%tl149934149957%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149936149952%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149934149957%_))
                              (let ((_%e149939149960%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149934149957%_))))
                                (let ((_%hd149938149963%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149939149960%_)))
                                      (_%tl149937149965%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149939149960%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149937149965%_))
                                      (let ((_%e149942149968%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149937149965%_))))
                                        (let ((_%hd149941149971%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149942149968%_)))
                                              (_%tl149940149973%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149942149968%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149940149973%_))
                                              ((lambda (_%L149976%_
                                                        _%L149977%_)
                                                 (let ((_%sym149992%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L149977%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym149992%_))
                                                   (let ((__tmp150446
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp150446
                                                      _%sym149992%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self149927%_
                                                      _%L149976%_))))
                                               _%hd149941149971%_
                                               _%hd149938149963%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g149930149947%_
                                                 _%g149931149950%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149930149947%_
                                         _%g149931149950%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149930149947%_ _%g149931149950%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149930149947%_ _%g149931149950%_))))))
          (declare (not safe))
          (_%g149929149994%_ _%stx149928%_))))
    (define gxc#collect-methods-call%
      (lambda (_%self149480%_ _%stx149481%_)
        (let* ((_%__stx150164150165%_ _%stx149481%_)
               (_%g149485149587%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx150164150165%_)))))
          (let ((_%__kont150166150167%_
                 (lambda (_%L149877%_
                          _%L149878%_
                          _%L149879%_
                          _%L149880%_
                          _%L149881%_)
                   (let ((__tmp150447
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _%L149878%_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp150447))))
                (_%__kont150168150169%_
                 (lambda (_%L149703%_ _%L149704%_ _%L149705%_ _%L149706%_)
                   (let ((__tmp150448
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _%L149703%_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp150448))))
                (_%__kont150170150171%_ (lambda () '#!void)))
            (let ((_%__match150299150300%_
                   (lambda (_%e149494149749%_
                            _%hd149493149752%_
                            _%tl149492149754%_
                            _%e149497149757%_
                            _%hd149496149760%_
                            _%tl149495149762%_
                            _%e149500149765%_
                            _%hd149499149768%_
                            _%tl149498149770%_
                            _%e149503149773%_
                            _%hd149502149776%_
                            _%tl149501149778%_
                            _%e149506149781%_
                            _%hd149505149784%_
                            _%tl149504149786%_
                            _%e149509149789%_
                            _%hd149508149792%_
                            _%tl149507149794%_
                            _%e149512149797%_
                            _%hd149511149800%_
                            _%tl149510149802%_
                            _%e149515149805%_
                            _%hd149514149808%_
                            _%tl149513149810%_
                            _%e149518149813%_
                            _%hd149517149816%_
                            _%tl149516149818%_
                            _%e149521149821%_
                            _%hd149520149824%_
                            _%tl149519149826%_
                            _%e149524149829%_
                            _%hd149523149832%_
                            _%tl149522149834%_
                            _%e149527149837%_
                            _%hd149526149840%_
                            _%tl149525149842%_
                            _%e149530149845%_
                            _%hd149529149848%_
                            _%tl149528149850%_
                            _%e149533149853%_
                            _%hd149532149856%_
                            _%tl149531149858%_
                            _%e149536149861%_
                            _%hd149535149864%_
                            _%tl149534149866%_
                            _%e149539149869%_
                            _%hd149538149872%_
                            _%tl149537149874%_)
                     (let ((_%L149877%_ _%hd149538149872%_)
                           (_%L149878%_ _%hd149529149848%_)
                           (_%L149879%_ _%hd149520149824%_)
                           (_%L149880%_ _%hd149511149800%_)
                           (_%L149881%_ _%hd149502149776%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L149881%_
                              'bind-method!))
                           (_%__kont150166150167%_
                            _%L149877%_
                            _%L149878%_
                            _%L149879%_
                            _%L149880%_
                            _%L149881%_)
                           (_%__kont150170150171%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx150164150165%_))
                  (let ((_%e149494149749%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx150164150165%_))))
                    (let ((_%tl149492149754%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e149494149749%_)))
                          (_%hd149493149752%_
                           (let ()
                             (declare (not safe))
                             (##car _%e149494149749%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl149492149754%_))
                          (let ((_%e149497149757%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl149492149754%_))))
                            (let ((_%tl149495149762%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e149497149757%_)))
                                  (_%hd149496149760%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e149497149757%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd149496149760%_))
                                  (let ((_%e149500149765%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd149496149760%_))))
                                    (let ((_%tl149498149770%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e149500149765%_)))
                                          (_%hd149499149768%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e149500149765%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd149499149768%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd149499149768%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl149498149770%_))
                                                  (let ((_%e149503149773%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl149498149770%_))))
                                                    (let ((_%tl149501149778%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e149503149773%_)))
                                                          (_%hd149502149776%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e149503149773%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl149501149778%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl149495149762%_))
                      (let ((_%e149506149781%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl149495149762%_))))
                        (let ((_%tl149504149786%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149506149781%_)))
                              (_%hd149505149784%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149506149781%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd149505149784%_))
                              (let ((_%e149509149789%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd149505149784%_))))
                                (let ((_%tl149507149794%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149509149789%_)))
                                      (_%hd149508149792%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149509149789%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd149508149792%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd149508149792%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl149507149794%_))
                                              (let ((_%e149512149797%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl149507149794%_))))
                                                (let ((_%tl149510149802%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e149512149797%_)))
                                                      (_%hd149511149800%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e149512149797%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl149510149802%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl149504149786%_))
                                                          (let ((_%e149515149805%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl149504149786%_))))
                    (let ((_%tl149513149810%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e149515149805%_)))
                          (_%hd149514149808%_
                           (let ()
                             (declare (not safe))
                             (##car _%e149515149805%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd149514149808%_))
                          (let ((_%e149518149813%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd149514149808%_))))
                            (let ((_%tl149516149818%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e149518149813%_)))
                                  (_%hd149517149816%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e149518149813%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd149517149816%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd149517149816%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl149516149818%_))
                                          (let ((_%e149521149821%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl149516149818%_))))
                                            (let ((_%tl149519149826%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e149521149821%_)))
                                                  (_%hd149520149824%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e149521149821%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl149519149826%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl149513149810%_))
                                                      (let ((_%e149524149829%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl149513149810%_))))
                (let ((_%tl149522149834%_
                       (let () (declare (not safe)) (##cdr _%e149524149829%_)))
                      (_%hd149523149832%_
                       (let ()
                         (declare (not safe))
                         (##car _%e149524149829%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd149523149832%_))
                      (let ((_%e149527149837%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd149523149832%_))))
                        (let ((_%tl149525149842%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149527149837%_)))
                              (_%hd149526149840%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149527149837%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd149526149840%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd149526149840%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149525149842%_))
                                      (let ((_%e149530149845%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149525149842%_))))
                                        (let ((_%tl149528149850%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149530149845%_)))
                                              (_%hd149529149848%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149530149845%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149528149850%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl149522149834%_))
                                                  (let ((_%e149533149853%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl149522149834%_))))
                                                    (let ((_%tl149531149858%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e149533149853%_)))
                                                          (_%hd149532149856%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e149533149853%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd149532149856%_))
                                                          (let ((_%e149536149861%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd149532149856%_))))
                    (let ((_%tl149534149866%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e149536149861%_)))
                          (_%hd149535149864%_
                           (let ()
                             (declare (not safe))
                             (##car _%e149536149861%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd149535149864%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd149535149864%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl149534149866%_))
                                  (let ((_%e149539149869%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl149534149866%_))))
                                    (let ((_%tl149537149874%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e149539149869%_)))
                                          (_%hd149538149872%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e149539149869%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl149537149874%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149531149858%_))
                                              (_%__match150299150300%_
                                               _%e149494149749%_
                                               _%hd149493149752%_
                                               _%tl149492149754%_
                                               _%e149497149757%_
                                               _%hd149496149760%_
                                               _%tl149495149762%_
                                               _%e149500149765%_
                                               _%hd149499149768%_
                                               _%tl149498149770%_
                                               _%e149503149773%_
                                               _%hd149502149776%_
                                               _%tl149501149778%_
                                               _%e149506149781%_
                                               _%hd149505149784%_
                                               _%tl149504149786%_
                                               _%e149509149789%_
                                               _%hd149508149792%_
                                               _%tl149507149794%_
                                               _%e149512149797%_
                                               _%hd149511149800%_
                                               _%tl149510149802%_
                                               _%e149515149805%_
                                               _%hd149514149808%_
                                               _%tl149513149810%_
                                               _%e149518149813%_
                                               _%hd149517149816%_
                                               _%tl149516149818%_
                                               _%e149521149821%_
                                               _%hd149520149824%_
                                               _%tl149519149826%_
                                               _%e149524149829%_
                                               _%hd149523149832%_
                                               _%tl149522149834%_
                                               _%e149527149837%_
                                               _%hd149526149840%_
                                               _%tl149525149842%_
                                               _%e149530149845%_
                                               _%hd149529149848%_
                                               _%tl149528149850%_
                                               _%e149533149853%_
                                               _%hd149532149856%_
                                               _%tl149531149858%_
                                               _%e149536149861%_
                                               _%hd149535149864%_
                                               _%tl149534149866%_
                                               _%e149539149869%_
                                               _%hd149538149872%_
                                               _%tl149537149874%_)
                                              (_%__kont150170150171%_))
                                          (_%__kont150170150171%_))))
                                  (_%__kont150170150171%_))
                              (_%__kont150170150171%_))
                          (_%__kont150170150171%_))))
                  (_%__kont150170150171%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl149522149834%_))
                                                      (if (let ((__tmp150449
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp150449 'bind-method!))
                  (let ((_%L149703%_ _%hd149529149848%_)
                        (_%L149704%_ _%hd149520149824%_)
                        (_%L149705%_ _%hd149511149800%_)
                        (_%L149706%_ _%hd149502149776%_))
                    (_%__kont150168150169%_
                     _%L149703%_
                     _%L149704%_
                     _%L149705%_
                     _%L149706%_))
                  (_%__kont150170150171%_))
              (_%__kont150170150171%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont150170150171%_))))
                                      (_%__kont150170150171%_))
                                  (_%__kont150170150171%_))
                              (_%__kont150170150171%_))))
                      (_%__kont150170150171%_))))
              (_%__kont150170150171%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont150170150171%_))))
                                          (_%__kont150170150171%_))
                                      (_%__kont150170150171%_))
                                  (_%__kont150170150171%_))))
                          (_%__kont150170150171%_))))
                  (_%__kont150170150171%_))
              (_%__kont150170150171%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont150170150171%_))
                                          (_%__kont150170150171%_))
                                      (_%__kont150170150171%_))))
                              (_%__kont150170150171%_))))
                      (_%__kont150170150171%_))
                  (_%__kont150170150171%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont150170150171%_))
                                              (_%__kont150170150171%_))
                                          (_%__kont150170150171%_))))
                                  (_%__kont150170150171%_))))
                          (_%__kont150170150171%_))))
                  (_%__kont150170150171%_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_%self149428%_ _%stx149429%_)
        (let* ((_%g149431149444%_
                (lambda (_%g149432149441%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149432149441%_))))
               (_%g149430149477%_
                (lambda (_%g149432149447%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149432149447%_))
                      (let ((_%e149436149449%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149432149447%_))))
                        (let ((_%hd149435149452%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149436149449%_)))
                              (_%tl149434149454%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149436149449%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149434149454%_))
                              (let ((_%e149439149457%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149434149454%_))))
                                (let ((_%hd149438149460%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149439149457%_)))
                                      (_%tl149437149462%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149439149457%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149437149462%_))
                                      ((lambda (_%L149465%_)
                                         (if (let ((__tmp150450
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self149428%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L149465%_
                                                __tmp150450))
                                             (let ((__tmp150451
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self149428%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp150451
                                                _%stx149429%_))
                                             _%stx149429%_))
                                       _%hd149438149460%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g149431149444%_
                                         _%g149432149447%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149431149444%_ _%g149432149447%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149431149444%_ _%g149432149447%_))))))
          (declare (not safe))
          (_%g149430149477%_ _%stx149429%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self149368%_ _%stx149369%_)
        (let* ((_%g149371149384%_
                (lambda (_%g149372149381%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149372149381%_))))
               (_%g149370149425%_
                (lambda (_%g149372149387%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149372149387%_))
                      (let ((_%e149376149389%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149372149387%_))))
                        (let ((_%hd149375149392%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149376149389%_)))
                              (_%tl149374149394%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149376149389%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149374149394%_))
                              (let ((_%e149379149397%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149374149394%_))))
                                (let ((_%hd149378149400%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149379149397%_)))
                                      (_%tl149377149402%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149379149397%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149377149402%_))
                                      ((lambda (_%L149405%_)
                                         (let ((_%$e149419%_
                                                (let ((__tmp150453
                                                       (lambda (_%sub149417%_)
                                                         (let ((__tmp150454
                                                                (car _%sub149417%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L149405%_
                                                            __tmp150454))))
                                                      (__tmp150452
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self149368%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp150453
                                                          __tmp150452))))
                                           (if _%$e149419%_
                                               ((lambda (_%sub149422%_)
                                                  (let ((__tmp150455
                                                         (cons '%#ref
                                                               (cons (cdr _%sub149422%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp150455
                                                     _%stx149369%_)))
                                                _%$e149419%_)
                                               (let () _%stx149369%_))))
                                       _%hd149378149400%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g149371149384%_
                                         _%g149372149387%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149371149384%_ _%g149372149387%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149371149384%_ _%g149372149387%_))))))
          (declare (not safe))
          (_%g149370149425%_ _%stx149369%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self149297%_ _%stx149298%_)
        (let* ((_%g149300149317%_
                (lambda (_%g149301149314%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149301149314%_))))
               (_%g149299149365%_
                (lambda (_%g149301149320%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149301149320%_))
                      (let ((_%e149306149322%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149301149320%_))))
                        (let ((_%hd149305149325%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149306149322%_)))
                              (_%tl149304149327%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149306149322%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149304149327%_))
                              (let ((_%e149309149330%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149304149327%_))))
                                (let ((_%hd149308149333%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149309149330%_)))
                                      (_%tl149307149335%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149309149330%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149307149335%_))
                                      (let ((_%e149312149338%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149307149335%_))))
                                        (let ((_%hd149311149341%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149312149338%_)))
                                              (_%tl149310149343%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149312149338%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149310149343%_))
                                              ((lambda (_%L149346%_
                                                        _%L149347%_)
                                                 (let ((_%new-expr149362%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self149297%_
                                                           _%L149346%_)))
                                                       (_%new-xid149363%_
                                                        (if (let ((__tmp150456
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self149297%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L149347%_ __tmp150456))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self149297%_ 'new-id))
                    _%L149347%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp150457
                                                          (cons '%#set!
                                                                (cons _%new-xid149363%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr149362%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp150457
                                                      _%stx149298%_))))
                                               _%hd149311149341%_
                                               _%hd149308149333%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g149300149317%_
                                                 _%g149301149320%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149300149317%_
                                         _%g149301149320%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149300149317%_ _%g149301149320%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149300149317%_ _%g149301149320%_))))))
          (declare (not safe))
          (_%g149299149365%_ _%stx149298%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self149220%_ _%stx149221%_)
        (let* ((_%g149223149240%_
                (lambda (_%g149224149237%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149224149237%_))))
               (_%g149222149294%_
                (lambda (_%g149224149243%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149224149243%_))
                      (let ((_%e149229149245%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149224149243%_))))
                        (let ((_%hd149228149248%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149229149245%_)))
                              (_%tl149227149250%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149229149245%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149227149250%_))
                              (let ((_%e149232149253%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149227149250%_))))
                                (let ((_%hd149231149256%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149232149253%_)))
                                      (_%tl149230149258%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149232149253%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149230149258%_))
                                      (let ((_%e149235149261%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149230149258%_))))
                                        (let ((_%hd149234149264%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149235149261%_)))
                                              (_%tl149233149266%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149235149261%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149233149266%_))
                                              ((lambda (_%L149269%_
                                                        _%L149270%_)
                                                 (let ((_%new-expr149291%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self149220%_
                                                           _%L149269%_)))
                                                       (_%new-xid149292%_
                                                        (let ((_%$e149287%_
                                                               (let ((__tmp150459
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub149285%_)
                                (let ((__tmp150460 (car _%sub149285%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L149270%_
                                   __tmp150460))))
                             (__tmp150458
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self149220%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp150459 __tmp150458))))
                  (if _%$e149287%_ (cdr _%$e149287%_) (let () _%L149270%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp150461
                                                          (cons '%#set!
                                                                (cons _%new-xid149292%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr149291%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp150461
                                                      _%stx149221%_))))
                                               _%hd149234149264%_
                                               _%hd149231149256%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g149223149240%_
                                                 _%g149224149243%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149223149240%_
                                         _%g149224149243%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149223149240%_ _%g149224149243%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149223149240%_ _%g149224149243%_))))))
          (declare (not safe))
          (_%g149222149294%_ _%stx149221%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self149166%_ _%stx149167%_)
        (let* ((_%g149169149182%_
                (lambda (_%g149170149179%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149170149179%_))))
               (_%g149168149217%_
                (lambda (_%g149170149185%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149170149185%_))
                      (let ((_%e149174149187%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149170149185%_))))
                        (let ((_%hd149173149190%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149174149187%_)))
                              (_%tl149172149192%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149174149187%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149172149192%_))
                              (let ((_%e149177149195%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149172149192%_))))
                                (let ((_%hd149176149198%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149177149195%_)))
                                      (_%tl149175149200%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149177149195%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149175149200%_))
                                      ((lambda (_%L149203%_)
                                         (let* ((_%eid149215%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L149203%_)))
                                                (__tmp150462
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self149166%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp150462
                                            _%eid149215%_
                                            1+
                                            '0)))
                                       _%hd149176149198%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g149169149182%_
                                         _%g149170149185%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149169149182%_ _%g149170149185%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149169149182%_ _%g149170149185%_))))))
          (declare (not safe))
          (_%g149168149217%_ _%stx149167%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self149096%_ _%stx149097%_)
        (let* ((_%g149099149116%_
                (lambda (_%g149100149113%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149100149113%_))))
               (_%g149098149163%_
                (lambda (_%g149100149119%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149100149119%_))
                      (let ((_%e149105149121%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149100149119%_))))
                        (let ((_%hd149104149124%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149105149121%_)))
                              (_%tl149103149126%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149105149121%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149103149126%_))
                              (let ((_%e149108149129%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149103149126%_))))
                                (let ((_%hd149107149132%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149108149129%_)))
                                      (_%tl149106149134%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149108149129%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149106149134%_))
                                      (let ((_%e149111149137%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149106149134%_))))
                                        (let ((_%hd149110149140%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149111149137%_)))
                                              (_%tl149109149142%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149111149137%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149109149142%_))
                                              ((lambda (_%L149145%_
                                                        _%L149146%_)
                                                 (let ((_%eid149161%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L149146%_))))
                                                   (let ((__tmp150463
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self149096%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp150463
                                                      _%eid149161%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self149096%_
                                                      _%L149145%_))))
                                               _%hd149110149140%_
                                               _%hd149107149132%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g149099149116%_
                                                 _%g149100149119%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149099149116%_
                                         _%g149100149119%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149099149116%_ _%g149100149119%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149099149116%_ _%g149100149119%_))))))
          (declare (not safe))
          (_%g149098149163%_ _%stx149097%_))))
    (define gxc#find-body%
      (lambda (_%self149009%_ _%stx149010%_)
        (let* ((_%g149012149031%_
                (lambda (_%g149013149028%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149013149028%_))))
               (_%g149011149093%_
                (lambda (_%g149013149034%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149013149034%_))
                      (let ((_%e149017149036%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149013149034%_))))
                        (let ((_%hd149016149039%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149017149036%_)))
                              (_%tl149015149041%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149017149036%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl149015149041%_))
                              (let ((_g150464_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl149015149041%_
                                        '0))))
                                (begin
                                  (let ((_g150465_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g150464_)
                                               (##vector-length _g150464_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g150465_ 2)))
                                        (error "Context expects 2 values"
                                               _g150465_)))
                                  (let ((_%target149018149044%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g150464_ 0)))
                                        (_%tl149020149046%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g150464_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl149020149046%_))
                                        (letrec ((_%loop149021149049%_
                                                  (lambda (_%hd149019149052%_
                                                           _%expr149025149054%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd149019149052%_))
                                                        (let ((_%e149022149057%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd149019149052%_))))
                  (let ((_%lp-hd149023149060%_
                         (let ()
                           (declare (not safe))
                           (##car _%e149022149057%_)))
                        (_%lp-tl149024149062%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e149022149057%_))))
                    (let ((__tmp150466
                           (cons _%lp-hd149023149060%_ _%expr149025149054%_)))
                      (declare (not safe))
                      (_%loop149021149049%_
                       _%lp-tl149024149062%_
                       __tmp150466))))
                (let ((_%expr149026149065%_ (reverse _%expr149025149054%_)))
                  ((lambda (_%L149068%_)
                     (let ((__tmp150469
                            (lambda (_%g149081149083%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self149009%_
                                 _%g149081149083%_))))
                           (__tmp150467
                            (let ((__tmp150468
                                   (lambda (_%g149085149088%_
                                            _%g149086149090%_)
                                     (cons _%g149085149088%_
                                           _%g149086149090%_))))
                              (declare (not safe))
                              (__foldr1 __tmp150468 '() _%L149068%_))))
                       (declare (not safe))
                       (__ormap1 __tmp150469 __tmp150467)))
                   _%expr149026149065%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%loop149021149049%_
                                             _%target149018149044%_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_%g149012149031%_
                                           _%g149013149034%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g149012149031%_ _%g149013149034%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149012149031%_ _%g149013149034%_))))))
          (declare (not safe))
          (_%g149011149093%_ _%stx149010%_))))
    (define gxc#find-let-values%
      (lambda (_%self148859%_ _%stx148860%_)
        (let* ((_%g148862148897%_
                (lambda (_%g148863148894%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148863148894%_))))
               (_%g148861149006%_
                (lambda (_%g148863148900%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148863148900%_))
                      (let ((_%e148869148902%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148863148900%_))))
                        (let ((_%hd148868148905%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148869148902%_)))
                              (_%tl148867148907%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148869148902%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148867148907%_))
                              (let ((_%e148872148910%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148867148907%_))))
                                (let ((_%hd148871148913%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148872148910%_)))
                                      (_%tl148870148915%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148872148910%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd148871148913%_))
                                      (let ((_g150470_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd148871148913%_
                                                '0))))
                                        (begin
                                          (let ((_g150471_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g150470_)
                                                       (##vector-length
                                                        _g150470_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g150471_ 2)))
                                                (error "Context expects 2 values"
                                                       _g150471_)))
                                          (let ((_%target148873148918%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g150470_ 0)))
                                                (_%tl148875148920%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g150470_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl148875148920%_))
                                                (letrec ((_%loop148876148923%_
                                                          (lambda (_%hd148874148926%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr148880148928%_
                           _%bind148881148930%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd148874148926%_))
                        (let ((_%e148877148933%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd148874148926%_))))
                          (let ((_%lp-hd148878148936%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e148877148933%_)))
                                (_%lp-tl148879148938%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e148877148933%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd148878148936%_))
                                (let ((_%e148886148941%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd148878148936%_))))
                                  (let ((_%hd148885148944%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e148886148941%_)))
                                        (_%tl148884148946%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e148886148941%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl148884148946%_))
                                        (let ((_%e148889148949%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl148884148946%_))))
                                          (let ((_%hd148888148952%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e148889148949%_)))
                                                (_%tl148887148954%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e148889148949%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl148887148954%_))
                                                (let ((__tmp150473
                                                       (cons _%hd148888148952%_
                                                             _%expr148880148928%_))
                                                      (__tmp150472
                                                       (cons _%hd148885148944%_
                                                             _%bind148881148930%_)))
                                                  (declare (not safe))
                                                  (_%loop148876148923%_
                                                   _%lp-tl148879148938%_
                                                   __tmp150473
                                                   __tmp150472))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g148862148897%_
                                                   _%g148863148900%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g148862148897%_
                                           _%g148863148900%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g148862148897%_ _%g148863148900%_)))))
                        (let ((_%expr148882148957%_
                               (reverse _%expr148880148928%_))
                              (_%bind148883148959%_
                               (reverse _%bind148881148930%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148870148915%_))
                              (let ((_%e148892148962%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148870148915%_))))
                                (let ((_%hd148891148965%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148892148962%_)))
                                      (_%tl148890148967%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148892148962%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl148890148967%_))
                                      ((lambda (_%L148970%_
                                                _%L148971%_
                                                _%L148972%_)
                                         (let ((_%$e149003%_
                                                (let ((__tmp150476
                                                       (lambda (_%g148991148993%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self148859%_
                                                            _%g148991148993%_))))
                                                      (__tmp150474
                                                       (let ((__tmp150475
                                                              (lambda (_%g148995148998%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g148996149000%_)
                        (cons _%g148995148998%_ _%g148996149000%_))))
                 (declare (not safe))
                 (__foldr1 __tmp150475 '() _%L148971%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp150476
                                                   __tmp150474))))
                                           (if _%$e149003%_
                                               _%$e149003%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self148859%_
                                                  _%L148970%_)))))
                                       _%hd148891148965%_
                                       _%expr148882148957%_
                                       _%bind148883148959%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g148862148897%_
                                         _%g148863148900%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g148862148897%_ _%g148863148900%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop148876148923%_
                                                     _%target148873148918%_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g148862148897%_
                                                   _%g148863148900%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g148862148897%_
                                         _%g148863148900%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g148862148897%_ _%g148863148900%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g148862148897%_ _%g148863148900%_))))))
          (declare (not safe))
          (_%g148861149006%_ _%stx148860%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self148803%_ _%stx148804%_)
        (let* ((_%g148806148819%_
                (lambda (_%g148807148816%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148807148816%_))))
               (_%g148805148856%_
                (lambda (_%g148807148822%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148807148822%_))
                      (let ((_%e148811148824%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148807148822%_))))
                        (let ((_%hd148810148827%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148811148824%_)))
                              (_%tl148809148829%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148811148824%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148809148829%_))
                              (let ((_%e148814148832%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148809148829%_))))
                                (let ((_%hd148813148835%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148814148832%_)))
                                      (_%tl148812148837%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148814148832%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl148812148837%_))
                                      ((lambda (_%L148840%_)
                                         (let ((__tmp150478
                                                (lambda (_%g148851148853%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L148840%_
                                                     _%g148851148853%_))))
                                               (__tmp150477
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self148803%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp150478 __tmp150477)))
                                       _%hd148813148835%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g148806148819%_
                                         _%g148807148822%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g148806148819%_ _%g148807148822%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g148806148819%_ _%g148807148822%_))))))
          (declare (not safe))
          (_%g148805148856%_ _%stx148804%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self148728%_ _%stx148729%_)
        (let* ((_%g148731148748%_
                (lambda (_%g148732148745%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148732148745%_))))
               (_%g148730148800%_
                (lambda (_%g148732148751%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148732148751%_))
                      (let ((_%e148737148753%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148732148751%_))))
                        (let ((_%hd148736148756%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148737148753%_)))
                              (_%tl148735148758%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148737148753%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148735148758%_))
                              (let ((_%e148740148761%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148735148758%_))))
                                (let ((_%hd148739148764%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148740148761%_)))
                                      (_%tl148738148766%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148740148761%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148738148766%_))
                                      (let ((_%e148743148769%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148738148766%_))))
                                        (let ((_%hd148742148772%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148743148769%_)))
                                              (_%tl148741148774%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148743148769%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148741148774%_))
                                              ((lambda (_%L148777%_
                                                        _%L148778%_)
                                                 (let ((_%$e148797%_
                                                        (let ((__tmp150480
                                                               (lambda (_%g148792148794%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L148778%_
                            _%g148792148794%_))))
                      (__tmp150479
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self148728%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp150480 __tmp150479))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e148797%_
                                                       _%$e148797%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self148728%_
                                                          _%L148777%_)))))
                                               _%hd148742148772%_
                                               _%hd148739148764%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g148731148748%_
                                                 _%g148732148751%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g148731148748%_
                                         _%g148732148751%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g148731148748%_ _%g148732148751%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g148731148748%_ _%g148732148751%_))))))
          (declare (not safe))
          (_%g148730148800%_ _%stx148729%_))))))
