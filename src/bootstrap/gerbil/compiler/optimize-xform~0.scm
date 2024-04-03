(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1712161242)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp150537 (list gxc#::void::t))
            (__tmp150536 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp150537
         '()
         __tmp150536
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args150277%_
        (apply make-instance gxc#::collect-mutators::t _%$args150277%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp150538
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
        (__make-promise __tmp150538)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx150269%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self150272%_
                (let ((__obj150524
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj150524))
               (__tmp150539
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self150272%_ _%stx150269%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150539
           gxc#current-compile-method
           _%self150272%_))))
    (define gxc#::collect-methods::t
      (let ((__tmp150541 (list gxc#::void::t))
            (__tmp150540 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-methods::t
         '::collect-methods
         __tmp150541
         '()
         __tmp150540
         '#f)))
    (define gxc#::collect-methods?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-methods::t)))
    (define gxc#make-::collect-methods
      (lambda _%$args150266%_
        (apply make-instance gxc#::collect-methods::t _%$args150266%_)))
    (define gxc#::collect-methods-bind-methods!
      (let ((__tmp150542
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
        (__make-promise __tmp150542)))
    (define gxc#apply-collect-methods
      (lambda (_%stx150258%_)
        (force gxc#::collect-methods-bind-methods!)
        (let* ((_%self150261%_
                (let ((__obj150526
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-methods::t))))
                  __obj150526))
               (__tmp150543
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self150261%_ _%stx150258%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150543
           gxc#current-compile-method
           _%self150261%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp150545 (list gxc#::basic-xform-expression::t))
            (__tmp150544 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp150545
         '(id new-id)
         __tmp150544
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args150255%_
        (apply make-instance gxc#::expression-subst::t _%$args150255%_)))
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
      (let ((__tmp150546
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
        (__make-promise __tmp150546)))
    (define gxc#apply-expression-subst__%
      (lambda (_%_150224%_
               _%id150220150226%_
               _%new-id150221150228%_
               _%stx150230%_)
        (let* ((_%id150233%_
                (if (eq? _%id150220150226%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id150220150226%_))
               (_%new-id150235%_
                (if (eq? _%new-id150221150228%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id150221150228%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self150237%_
                  (let ((__obj150528
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150528
                       _%id150233%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150528
                       _%new-id150235%_
                       '2
                       '#f
                       '#f))
                    __obj150528))
                 (__tmp150547
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150237%_ _%stx150230%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150547
             gxc#current-compile-method
             _%self150237%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords150244%_ . _%args150245%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords150244%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords150244%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150244%_
                  'new-id:
                  absent-value))
               _%args150245%_)))
    (define gxc#apply-expression-subst
      (lambda _%args150222150251%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args150222150251%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp150549 (list gxc#::basic-xform-expression::t))
            (__tmp150548 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp150549
         '(subst)
         __tmp150548
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args150216%_
        (apply make-instance gxc#::expression-subst*::t _%$args150216%_)))
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
      (let ((__tmp150550
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
        (__make-promise __tmp150550)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%_150189%_ _%subst150186150191%_ _%stx150193%_)
        (let ((_%subst150196%_
               (if (eq? _%subst150186150191%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst150186150191%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self150198%_
                  (let ((__obj150530
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150530
                       _%subst150196%_
                       '1
                       '#f
                       '#f))
                    __obj150530))
                 (__tmp150551
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150198%_ _%stx150193%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150551
             gxc#current-compile-method
             _%self150198%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords150205%_ . _%args150206%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords150205%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150205%_
                  'subst:
                  absent-value))
               _%args150206%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args150187150212%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args150187150212%_)))
    (define gxc#::find-expression::t
      (let ((__tmp150552 (list gxc#::false-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp150552
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args150182%_
        (apply make-instance gxc#::find-expression::t _%$args150182%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp150553
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
        (__make-promise __tmp150553)))
    (define gxc#::find-var-refs::t
      (let ((__tmp150555 (list gxc#::find-expression::t))
            (__tmp150554 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp150555
         '(ids)
         __tmp150554
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args150178%_
        (apply make-instance gxc#::find-var-refs::t _%$args150178%_)))
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
      (let ((__tmp150556
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
        (__make-promise __tmp150556)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%_150151%_ _%ids150148150153%_ _%stx150155%_)
        (let ((_%ids150158%_
               (if (eq? _%ids150148150153%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids150148150153%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self150160%_
                  (let ((__obj150533
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150533
                       _%ids150158%_
                       '1
                       '#f
                       '#f))
                    __obj150533))
                 (__tmp150557
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150160%_ _%stx150155%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150557
             gxc#current-compile-method
             _%self150160%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords150167%_ . _%args150168%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords150167%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords150167%_ 'ids: absent-value))
               _%args150168%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args150149150174%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args150149150174%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp150559 (list gxc#::collect-expression-refs::t))
            (__tmp150558 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp150559
         '()
         __tmp150558
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args150144%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args150144%_)))
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
      (let ((__tmp150560
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
        (__make-promise __tmp150560)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%_150117%_ _%table150114150119%_ _%stx150121%_)
        (let ((_%table150124%_
               (if (eq? _%table150114150119%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table150114150119%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self150126%_
                  (let ((__obj150535
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150535
                       _%table150124%_
                       '1
                       '#f
                       '#f))
                    __obj150535))
                 (__tmp150561
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150126%_ _%stx150121%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150561
             gxc#current-compile-method
             _%self150126%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords150133%_ . _%args150134%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords150133%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150133%_
                  'table:
                  absent-value))
               _%args150134%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args150115150140%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args150115150140%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self150043%_ _%stx150044%_)
        (let* ((_%g150046150063%_
                (lambda (_%g150047150060%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150047150060%_))))
               (_%g150045150110%_
                (lambda (_%g150047150066%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150047150066%_))
                      (let ((_%e150052150068%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150047150066%_))))
                        (let ((_%hd150051150071%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150052150068%_)))
                              (_%tl150050150073%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150052150068%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150050150073%_))
                              (let ((_%e150055150076%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150050150073%_))))
                                (let ((_%hd150054150079%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150055150076%_)))
                                      (_%tl150053150081%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150055150076%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150053150081%_))
                                      (let ((_%e150058150084%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150053150081%_))))
                                        (let ((_%hd150057150087%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150058150084%_)))
                                              (_%tl150056150089%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150058150084%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150056150089%_))
                                              ((lambda (_%L150092%_
                                                        _%L150093%_)
                                                 (let ((_%sym150108%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L150093%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym150108%_))
                                                   (let ((__tmp150562
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp150562
                                                      _%sym150108%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self150043%_
                                                      _%L150092%_))))
                                               _%hd150057150087%_
                                               _%hd150054150079%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g150046150063%_
                                                 _%g150047150066%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g150046150063%_
                                         _%g150047150066%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g150046150063%_ _%g150047150066%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g150046150063%_ _%g150047150066%_))))))
          (declare (not safe))
          (_%g150045150110%_ _%stx150044%_))))
    (define gxc#collect-methods-call%
      (lambda (_%self149596%_ _%stx149597%_)
        (let* ((_%__stx150280150281%_ _%stx149597%_)
               (_%g149601149703%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx150280150281%_)))))
          (let ((_%__kont150282150283%_
                 (lambda (_%L149993%_
                          _%L149994%_
                          _%L149995%_
                          _%L149996%_
                          _%L149997%_)
                   (let ((__tmp150563
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _%L149994%_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp150563))))
                (_%__kont150284150285%_
                 (lambda (_%L149819%_ _%L149820%_ _%L149821%_ _%L149822%_)
                   (let ((__tmp150564
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _%L149819%_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp150564))))
                (_%__kont150286150287%_ (lambda () '#!void)))
            (let ((_%__match150415150416%_
                   (lambda (_%e149610149865%_
                            _%hd149609149868%_
                            _%tl149608149870%_
                            _%e149613149873%_
                            _%hd149612149876%_
                            _%tl149611149878%_
                            _%e149616149881%_
                            _%hd149615149884%_
                            _%tl149614149886%_
                            _%e149619149889%_
                            _%hd149618149892%_
                            _%tl149617149894%_
                            _%e149622149897%_
                            _%hd149621149900%_
                            _%tl149620149902%_
                            _%e149625149905%_
                            _%hd149624149908%_
                            _%tl149623149910%_
                            _%e149628149913%_
                            _%hd149627149916%_
                            _%tl149626149918%_
                            _%e149631149921%_
                            _%hd149630149924%_
                            _%tl149629149926%_
                            _%e149634149929%_
                            _%hd149633149932%_
                            _%tl149632149934%_
                            _%e149637149937%_
                            _%hd149636149940%_
                            _%tl149635149942%_
                            _%e149640149945%_
                            _%hd149639149948%_
                            _%tl149638149950%_
                            _%e149643149953%_
                            _%hd149642149956%_
                            _%tl149641149958%_
                            _%e149646149961%_
                            _%hd149645149964%_
                            _%tl149644149966%_
                            _%e149649149969%_
                            _%hd149648149972%_
                            _%tl149647149974%_
                            _%e149652149977%_
                            _%hd149651149980%_
                            _%tl149650149982%_
                            _%e149655149985%_
                            _%hd149654149988%_
                            _%tl149653149990%_)
                     (let ((_%L149993%_ _%hd149654149988%_)
                           (_%L149994%_ _%hd149645149964%_)
                           (_%L149995%_ _%hd149636149940%_)
                           (_%L149996%_ _%hd149627149916%_)
                           (_%L149997%_ _%hd149618149892%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L149997%_
                              'bind-method!))
                           (_%__kont150282150283%_
                            _%L149993%_
                            _%L149994%_
                            _%L149995%_
                            _%L149996%_
                            _%L149997%_)
                           (_%__kont150286150287%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx150280150281%_))
                  (let ((_%e149610149865%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx150280150281%_))))
                    (let ((_%tl149608149870%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e149610149865%_)))
                          (_%hd149609149868%_
                           (let ()
                             (declare (not safe))
                             (##car _%e149610149865%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl149608149870%_))
                          (let ((_%e149613149873%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl149608149870%_))))
                            (let ((_%tl149611149878%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e149613149873%_)))
                                  (_%hd149612149876%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e149613149873%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd149612149876%_))
                                  (let ((_%e149616149881%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd149612149876%_))))
                                    (let ((_%tl149614149886%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e149616149881%_)))
                                          (_%hd149615149884%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e149616149881%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd149615149884%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd149615149884%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl149614149886%_))
                                                  (let ((_%e149619149889%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl149614149886%_))))
                                                    (let ((_%tl149617149894%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e149619149889%_)))
                                                          (_%hd149618149892%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e149619149889%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl149617149894%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl149611149878%_))
                      (let ((_%e149622149897%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl149611149878%_))))
                        (let ((_%tl149620149902%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149622149897%_)))
                              (_%hd149621149900%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149622149897%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd149621149900%_))
                              (let ((_%e149625149905%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd149621149900%_))))
                                (let ((_%tl149623149910%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149625149905%_)))
                                      (_%hd149624149908%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149625149905%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd149624149908%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd149624149908%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl149623149910%_))
                                              (let ((_%e149628149913%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl149623149910%_))))
                                                (let ((_%tl149626149918%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e149628149913%_)))
                                                      (_%hd149627149916%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e149628149913%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl149626149918%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl149620149902%_))
                                                          (let ((_%e149631149921%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl149620149902%_))))
                    (let ((_%tl149629149926%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e149631149921%_)))
                          (_%hd149630149924%_
                           (let ()
                             (declare (not safe))
                             (##car _%e149631149921%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd149630149924%_))
                          (let ((_%e149634149929%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd149630149924%_))))
                            (let ((_%tl149632149934%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e149634149929%_)))
                                  (_%hd149633149932%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e149634149929%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd149633149932%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd149633149932%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl149632149934%_))
                                          (let ((_%e149637149937%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl149632149934%_))))
                                            (let ((_%tl149635149942%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e149637149937%_)))
                                                  (_%hd149636149940%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e149637149937%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl149635149942%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl149629149926%_))
                                                      (let ((_%e149640149945%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl149629149926%_))))
                (let ((_%tl149638149950%_
                       (let () (declare (not safe)) (##cdr _%e149640149945%_)))
                      (_%hd149639149948%_
                       (let ()
                         (declare (not safe))
                         (##car _%e149640149945%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd149639149948%_))
                      (let ((_%e149643149953%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd149639149948%_))))
                        (let ((_%tl149641149958%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149643149953%_)))
                              (_%hd149642149956%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149643149953%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd149642149956%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd149642149956%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149641149958%_))
                                      (let ((_%e149646149961%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149641149958%_))))
                                        (let ((_%tl149644149966%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149646149961%_)))
                                              (_%hd149645149964%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149646149961%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149644149966%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl149638149950%_))
                                                  (let ((_%e149649149969%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl149638149950%_))))
                                                    (let ((_%tl149647149974%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e149649149969%_)))
                                                          (_%hd149648149972%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e149649149969%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd149648149972%_))
                                                          (let ((_%e149652149977%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd149648149972%_))))
                    (let ((_%tl149650149982%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e149652149977%_)))
                          (_%hd149651149980%_
                           (let ()
                             (declare (not safe))
                             (##car _%e149652149977%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd149651149980%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd149651149980%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl149650149982%_))
                                  (let ((_%e149655149985%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl149650149982%_))))
                                    (let ((_%tl149653149990%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e149655149985%_)))
                                          (_%hd149654149988%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e149655149985%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl149653149990%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149647149974%_))
                                              (_%__match150415150416%_
                                               _%e149610149865%_
                                               _%hd149609149868%_
                                               _%tl149608149870%_
                                               _%e149613149873%_
                                               _%hd149612149876%_
                                               _%tl149611149878%_
                                               _%e149616149881%_
                                               _%hd149615149884%_
                                               _%tl149614149886%_
                                               _%e149619149889%_
                                               _%hd149618149892%_
                                               _%tl149617149894%_
                                               _%e149622149897%_
                                               _%hd149621149900%_
                                               _%tl149620149902%_
                                               _%e149625149905%_
                                               _%hd149624149908%_
                                               _%tl149623149910%_
                                               _%e149628149913%_
                                               _%hd149627149916%_
                                               _%tl149626149918%_
                                               _%e149631149921%_
                                               _%hd149630149924%_
                                               _%tl149629149926%_
                                               _%e149634149929%_
                                               _%hd149633149932%_
                                               _%tl149632149934%_
                                               _%e149637149937%_
                                               _%hd149636149940%_
                                               _%tl149635149942%_
                                               _%e149640149945%_
                                               _%hd149639149948%_
                                               _%tl149638149950%_
                                               _%e149643149953%_
                                               _%hd149642149956%_
                                               _%tl149641149958%_
                                               _%e149646149961%_
                                               _%hd149645149964%_
                                               _%tl149644149966%_
                                               _%e149649149969%_
                                               _%hd149648149972%_
                                               _%tl149647149974%_
                                               _%e149652149977%_
                                               _%hd149651149980%_
                                               _%tl149650149982%_
                                               _%e149655149985%_
                                               _%hd149654149988%_
                                               _%tl149653149990%_)
                                              (_%__kont150286150287%_))
                                          (_%__kont150286150287%_))))
                                  (_%__kont150286150287%_))
                              (_%__kont150286150287%_))
                          (_%__kont150286150287%_))))
                  (_%__kont150286150287%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl149638149950%_))
                                                      (if (let ((__tmp150565
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp150565 'bind-method!))
                  (let ((_%L149819%_ _%hd149645149964%_)
                        (_%L149820%_ _%hd149636149940%_)
                        (_%L149821%_ _%hd149627149916%_)
                        (_%L149822%_ _%hd149618149892%_))
                    (_%__kont150284150285%_
                     _%L149819%_
                     _%L149820%_
                     _%L149821%_
                     _%L149822%_))
                  (_%__kont150286150287%_))
              (_%__kont150286150287%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont150286150287%_))))
                                      (_%__kont150286150287%_))
                                  (_%__kont150286150287%_))
                              (_%__kont150286150287%_))))
                      (_%__kont150286150287%_))))
              (_%__kont150286150287%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont150286150287%_))))
                                          (_%__kont150286150287%_))
                                      (_%__kont150286150287%_))
                                  (_%__kont150286150287%_))))
                          (_%__kont150286150287%_))))
                  (_%__kont150286150287%_))
              (_%__kont150286150287%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont150286150287%_))
                                          (_%__kont150286150287%_))
                                      (_%__kont150286150287%_))))
                              (_%__kont150286150287%_))))
                      (_%__kont150286150287%_))
                  (_%__kont150286150287%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont150286150287%_))
                                              (_%__kont150286150287%_))
                                          (_%__kont150286150287%_))))
                                  (_%__kont150286150287%_))))
                          (_%__kont150286150287%_))))
                  (_%__kont150286150287%_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_%self149544%_ _%stx149545%_)
        (let* ((_%g149547149560%_
                (lambda (_%g149548149557%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149548149557%_))))
               (_%g149546149593%_
                (lambda (_%g149548149563%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149548149563%_))
                      (let ((_%e149552149565%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149548149563%_))))
                        (let ((_%hd149551149568%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149552149565%_)))
                              (_%tl149550149570%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149552149565%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149550149570%_))
                              (let ((_%e149555149573%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149550149570%_))))
                                (let ((_%hd149554149576%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149555149573%_)))
                                      (_%tl149553149578%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149555149573%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149553149578%_))
                                      ((lambda (_%L149581%_)
                                         (if (let ((__tmp150566
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self149544%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L149581%_
                                                __tmp150566))
                                             (let ((__tmp150567
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self149544%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp150567
                                                _%stx149545%_))
                                             _%stx149545%_))
                                       _%hd149554149576%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g149547149560%_
                                         _%g149548149563%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149547149560%_ _%g149548149563%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149547149560%_ _%g149548149563%_))))))
          (declare (not safe))
          (_%g149546149593%_ _%stx149545%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self149484%_ _%stx149485%_)
        (let* ((_%g149487149500%_
                (lambda (_%g149488149497%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149488149497%_))))
               (_%g149486149541%_
                (lambda (_%g149488149503%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149488149503%_))
                      (let ((_%e149492149505%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149488149503%_))))
                        (let ((_%hd149491149508%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149492149505%_)))
                              (_%tl149490149510%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149492149505%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149490149510%_))
                              (let ((_%e149495149513%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149490149510%_))))
                                (let ((_%hd149494149516%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149495149513%_)))
                                      (_%tl149493149518%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149495149513%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149493149518%_))
                                      ((lambda (_%L149521%_)
                                         (let ((_%$e149535%_
                                                (let ((__tmp150569
                                                       (lambda (_%sub149533%_)
                                                         (let ((__tmp150570
                                                                (car _%sub149533%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L149521%_
                                                            __tmp150570))))
                                                      (__tmp150568
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self149484%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp150569
                                                          __tmp150568))))
                                           (if _%$e149535%_
                                               ((lambda (_%sub149538%_)
                                                  (let ((__tmp150571
                                                         (cons '%#ref
                                                               (cons (cdr _%sub149538%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp150571
                                                     _%stx149485%_)))
                                                _%$e149535%_)
                                               (let () _%stx149485%_))))
                                       _%hd149494149516%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g149487149500%_
                                         _%g149488149503%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149487149500%_ _%g149488149503%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149487149500%_ _%g149488149503%_))))))
          (declare (not safe))
          (_%g149486149541%_ _%stx149485%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self149413%_ _%stx149414%_)
        (let* ((_%g149416149433%_
                (lambda (_%g149417149430%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149417149430%_))))
               (_%g149415149481%_
                (lambda (_%g149417149436%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149417149436%_))
                      (let ((_%e149422149438%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149417149436%_))))
                        (let ((_%hd149421149441%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149422149438%_)))
                              (_%tl149420149443%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149422149438%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149420149443%_))
                              (let ((_%e149425149446%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149420149443%_))))
                                (let ((_%hd149424149449%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149425149446%_)))
                                      (_%tl149423149451%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149425149446%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149423149451%_))
                                      (let ((_%e149428149454%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149423149451%_))))
                                        (let ((_%hd149427149457%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149428149454%_)))
                                              (_%tl149426149459%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149428149454%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149426149459%_))
                                              ((lambda (_%L149462%_
                                                        _%L149463%_)
                                                 (let ((_%new-expr149478%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self149413%_
                                                           _%L149462%_)))
                                                       (_%new-xid149479%_
                                                        (if (let ((__tmp150572
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self149413%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L149463%_ __tmp150572))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self149413%_ 'new-id))
                    _%L149463%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp150573
                                                          (cons '%#set!
                                                                (cons _%new-xid149479%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr149478%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp150573
                                                      _%stx149414%_))))
                                               _%hd149427149457%_
                                               _%hd149424149449%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g149416149433%_
                                                 _%g149417149436%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149416149433%_
                                         _%g149417149436%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149416149433%_ _%g149417149436%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149416149433%_ _%g149417149436%_))))))
          (declare (not safe))
          (_%g149415149481%_ _%stx149414%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self149336%_ _%stx149337%_)
        (let* ((_%g149339149356%_
                (lambda (_%g149340149353%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149340149353%_))))
               (_%g149338149410%_
                (lambda (_%g149340149359%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149340149359%_))
                      (let ((_%e149345149361%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149340149359%_))))
                        (let ((_%hd149344149364%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149345149361%_)))
                              (_%tl149343149366%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149345149361%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149343149366%_))
                              (let ((_%e149348149369%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149343149366%_))))
                                (let ((_%hd149347149372%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149348149369%_)))
                                      (_%tl149346149374%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149348149369%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149346149374%_))
                                      (let ((_%e149351149377%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149346149374%_))))
                                        (let ((_%hd149350149380%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149351149377%_)))
                                              (_%tl149349149382%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149351149377%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149349149382%_))
                                              ((lambda (_%L149385%_
                                                        _%L149386%_)
                                                 (let ((_%new-expr149407%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self149336%_
                                                           _%L149385%_)))
                                                       (_%new-xid149408%_
                                                        (let ((_%$e149403%_
                                                               (let ((__tmp150575
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub149401%_)
                                (let ((__tmp150576 (car _%sub149401%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L149386%_
                                   __tmp150576))))
                             (__tmp150574
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self149336%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp150575 __tmp150574))))
                  (if _%$e149403%_ (cdr _%$e149403%_) (let () _%L149386%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp150577
                                                          (cons '%#set!
                                                                (cons _%new-xid149408%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr149407%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp150577
                                                      _%stx149337%_))))
                                               _%hd149350149380%_
                                               _%hd149347149372%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g149339149356%_
                                                 _%g149340149359%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149339149356%_
                                         _%g149340149359%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149339149356%_ _%g149340149359%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149339149356%_ _%g149340149359%_))))))
          (declare (not safe))
          (_%g149338149410%_ _%stx149337%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self149282%_ _%stx149283%_)
        (let* ((_%g149285149298%_
                (lambda (_%g149286149295%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149286149295%_))))
               (_%g149284149333%_
                (lambda (_%g149286149301%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149286149301%_))
                      (let ((_%e149290149303%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149286149301%_))))
                        (let ((_%hd149289149306%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149290149303%_)))
                              (_%tl149288149308%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149290149303%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149288149308%_))
                              (let ((_%e149293149311%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149288149308%_))))
                                (let ((_%hd149292149314%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149293149311%_)))
                                      (_%tl149291149316%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149293149311%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149291149316%_))
                                      ((lambda (_%L149319%_)
                                         (let* ((_%eid149331%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L149319%_)))
                                                (__tmp150578
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self149282%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp150578
                                            _%eid149331%_
                                            1+
                                            '0)))
                                       _%hd149292149314%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g149285149298%_
                                         _%g149286149301%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149285149298%_ _%g149286149301%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149285149298%_ _%g149286149301%_))))))
          (declare (not safe))
          (_%g149284149333%_ _%stx149283%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self149212%_ _%stx149213%_)
        (let* ((_%g149215149232%_
                (lambda (_%g149216149229%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149216149229%_))))
               (_%g149214149279%_
                (lambda (_%g149216149235%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149216149235%_))
                      (let ((_%e149221149237%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149216149235%_))))
                        (let ((_%hd149220149240%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149221149237%_)))
                              (_%tl149219149242%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149221149237%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149219149242%_))
                              (let ((_%e149224149245%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149219149242%_))))
                                (let ((_%hd149223149248%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149224149245%_)))
                                      (_%tl149222149250%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149224149245%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149222149250%_))
                                      (let ((_%e149227149253%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149222149250%_))))
                                        (let ((_%hd149226149256%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149227149253%_)))
                                              (_%tl149225149258%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149227149253%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149225149258%_))
                                              ((lambda (_%L149261%_
                                                        _%L149262%_)
                                                 (let ((_%eid149277%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L149262%_))))
                                                   (let ((__tmp150579
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self149212%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp150579
                                                      _%eid149277%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self149212%_
                                                      _%L149261%_))))
                                               _%hd149226149256%_
                                               _%hd149223149248%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g149215149232%_
                                                 _%g149216149235%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149215149232%_
                                         _%g149216149235%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149215149232%_ _%g149216149235%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149215149232%_ _%g149216149235%_))))))
          (declare (not safe))
          (_%g149214149279%_ _%stx149213%_))))
    (define gxc#find-body%
      (lambda (_%self149125%_ _%stx149126%_)
        (let* ((_%g149128149147%_
                (lambda (_%g149129149144%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149129149144%_))))
               (_%g149127149209%_
                (lambda (_%g149129149150%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149129149150%_))
                      (let ((_%e149133149152%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149129149150%_))))
                        (let ((_%hd149132149155%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149133149152%_)))
                              (_%tl149131149157%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149133149152%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl149131149157%_))
                              (let ((_g150580_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl149131149157%_
                                        '0))))
                                (begin
                                  (let ((_g150581_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g150580_)
                                               (##vector-length _g150580_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g150581_ 2)))
                                        (error "Context expects 2 values"
                                               _g150581_)))
                                  (let ((_%target149134149160%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g150580_ 0)))
                                        (_%tl149136149162%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g150580_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl149136149162%_))
                                        (letrec ((_%loop149137149165%_
                                                  (lambda (_%hd149135149168%_
                                                           _%expr149141149170%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd149135149168%_))
                                                        (let ((_%e149138149173%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd149135149168%_))))
                  (let ((_%lp-hd149139149176%_
                         (let ()
                           (declare (not safe))
                           (##car _%e149138149173%_)))
                        (_%lp-tl149140149178%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e149138149173%_))))
                    (let ((__tmp150582
                           (cons _%lp-hd149139149176%_ _%expr149141149170%_)))
                      (declare (not safe))
                      (_%loop149137149165%_
                       _%lp-tl149140149178%_
                       __tmp150582))))
                (let ((_%expr149142149181%_ (reverse _%expr149141149170%_)))
                  ((lambda (_%L149184%_)
                     (let ((__tmp150585
                            (lambda (_%g149197149199%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self149125%_
                                 _%g149197149199%_))))
                           (__tmp150583
                            (let ((__tmp150584
                                   (lambda (_%g149201149204%_
                                            _%g149202149206%_)
                                     (cons _%g149201149204%_
                                           _%g149202149206%_))))
                              (declare (not safe))
                              (__foldr1 __tmp150584 '() _%L149184%_))))
                       (declare (not safe))
                       (__ormap1 __tmp150585 __tmp150583)))
                   _%expr149142149181%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%loop149137149165%_
                                             _%target149134149160%_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_%g149128149147%_
                                           _%g149129149150%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g149128149147%_ _%g149129149150%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149128149147%_ _%g149129149150%_))))))
          (declare (not safe))
          (_%g149127149209%_ _%stx149126%_))))
    (define gxc#find-let-values%
      (lambda (_%self148975%_ _%stx148976%_)
        (let* ((_%g148978149013%_
                (lambda (_%g148979149010%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148979149010%_))))
               (_%g148977149122%_
                (lambda (_%g148979149016%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148979149016%_))
                      (let ((_%e148985149018%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148979149016%_))))
                        (let ((_%hd148984149021%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148985149018%_)))
                              (_%tl148983149023%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148985149018%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148983149023%_))
                              (let ((_%e148988149026%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148983149023%_))))
                                (let ((_%hd148987149029%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148988149026%_)))
                                      (_%tl148986149031%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148988149026%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd148987149029%_))
                                      (let ((_g150586_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd148987149029%_
                                                '0))))
                                        (begin
                                          (let ((_g150587_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g150586_)
                                                       (##vector-length
                                                        _g150586_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g150587_ 2)))
                                                (error "Context expects 2 values"
                                                       _g150587_)))
                                          (let ((_%target148989149034%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g150586_ 0)))
                                                (_%tl148991149036%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g150586_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl148991149036%_))
                                                (letrec ((_%loop148992149039%_
                                                          (lambda (_%hd148990149042%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr148996149044%_
                           _%bind148997149046%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd148990149042%_))
                        (let ((_%e148993149049%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd148990149042%_))))
                          (let ((_%lp-hd148994149052%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e148993149049%_)))
                                (_%lp-tl148995149054%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e148993149049%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd148994149052%_))
                                (let ((_%e149002149057%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd148994149052%_))))
                                  (let ((_%hd149001149060%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e149002149057%_)))
                                        (_%tl149000149062%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e149002149057%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl149000149062%_))
                                        (let ((_%e149005149065%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl149000149062%_))))
                                          (let ((_%hd149004149068%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e149005149065%_)))
                                                (_%tl149003149070%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e149005149065%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl149003149070%_))
                                                (let ((__tmp150589
                                                       (cons _%hd149004149068%_
                                                             _%expr148996149044%_))
                                                      (__tmp150588
                                                       (cons _%hd149001149060%_
                                                             _%bind148997149046%_)))
                                                  (declare (not safe))
                                                  (_%loop148992149039%_
                                                   _%lp-tl148995149054%_
                                                   __tmp150589
                                                   __tmp150588))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g148978149013%_
                                                   _%g148979149016%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g148978149013%_
                                           _%g148979149016%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g148978149013%_ _%g148979149016%_)))))
                        (let ((_%expr148998149073%_
                               (reverse _%expr148996149044%_))
                              (_%bind148999149075%_
                               (reverse _%bind148997149046%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148986149031%_))
                              (let ((_%e149008149078%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148986149031%_))))
                                (let ((_%hd149007149081%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149008149078%_)))
                                      (_%tl149006149083%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149008149078%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149006149083%_))
                                      ((lambda (_%L149086%_
                                                _%L149087%_
                                                _%L149088%_)
                                         (let ((_%$e149119%_
                                                (let ((__tmp150592
                                                       (lambda (_%g149107149109%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self148975%_
                                                            _%g149107149109%_))))
                                                      (__tmp150590
                                                       (let ((__tmp150591
                                                              (lambda (_%g149111149114%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g149112149116%_)
                        (cons _%g149111149114%_ _%g149112149116%_))))
                 (declare (not safe))
                 (__foldr1 __tmp150591 '() _%L149087%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp150592
                                                   __tmp150590))))
                                           (if _%$e149119%_
                                               _%$e149119%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self148975%_
                                                  _%L149086%_)))))
                                       _%hd149007149081%_
                                       _%expr148998149073%_
                                       _%bind148999149075%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g148978149013%_
                                         _%g148979149016%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g148978149013%_ _%g148979149016%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop148992149039%_
                                                     _%target148989149034%_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g148978149013%_
                                                   _%g148979149016%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g148978149013%_
                                         _%g148979149016%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g148978149013%_ _%g148979149016%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g148978149013%_ _%g148979149016%_))))))
          (declare (not safe))
          (_%g148977149122%_ _%stx148976%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self148919%_ _%stx148920%_)
        (let* ((_%g148922148935%_
                (lambda (_%g148923148932%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148923148932%_))))
               (_%g148921148972%_
                (lambda (_%g148923148938%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148923148938%_))
                      (let ((_%e148927148940%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148923148938%_))))
                        (let ((_%hd148926148943%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148927148940%_)))
                              (_%tl148925148945%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148927148940%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148925148945%_))
                              (let ((_%e148930148948%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148925148945%_))))
                                (let ((_%hd148929148951%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148930148948%_)))
                                      (_%tl148928148953%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148930148948%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl148928148953%_))
                                      ((lambda (_%L148956%_)
                                         (let ((__tmp150594
                                                (lambda (_%g148967148969%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L148956%_
                                                     _%g148967148969%_))))
                                               (__tmp150593
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self148919%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp150594 __tmp150593)))
                                       _%hd148929148951%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g148922148935%_
                                         _%g148923148938%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g148922148935%_ _%g148923148938%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g148922148935%_ _%g148923148938%_))))))
          (declare (not safe))
          (_%g148921148972%_ _%stx148920%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self148844%_ _%stx148845%_)
        (let* ((_%g148847148864%_
                (lambda (_%g148848148861%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148848148861%_))))
               (_%g148846148916%_
                (lambda (_%g148848148867%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148848148867%_))
                      (let ((_%e148853148869%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148848148867%_))))
                        (let ((_%hd148852148872%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148853148869%_)))
                              (_%tl148851148874%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148853148869%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148851148874%_))
                              (let ((_%e148856148877%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148851148874%_))))
                                (let ((_%hd148855148880%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148856148877%_)))
                                      (_%tl148854148882%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148856148877%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148854148882%_))
                                      (let ((_%e148859148885%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148854148882%_))))
                                        (let ((_%hd148858148888%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148859148885%_)))
                                              (_%tl148857148890%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148859148885%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148857148890%_))
                                              ((lambda (_%L148893%_
                                                        _%L148894%_)
                                                 (let ((_%$e148913%_
                                                        (let ((__tmp150596
                                                               (lambda (_%g148908148910%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L148894%_
                            _%g148908148910%_))))
                      (__tmp150595
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self148844%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp150596 __tmp150595))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e148913%_
                                                       _%$e148913%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self148844%_
                                                          _%L148893%_)))))
                                               _%hd148858148888%_
                                               _%hd148855148880%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g148847148864%_
                                                 _%g148848148867%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g148847148864%_
                                         _%g148848148867%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g148847148864%_ _%g148848148867%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g148847148864%_ _%g148848148867%_))))))
          (declare (not safe))
          (_%g148846148916%_ _%stx148845%_))))))
