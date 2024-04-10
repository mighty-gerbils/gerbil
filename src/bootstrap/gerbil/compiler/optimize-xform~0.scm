(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1712773527)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp150602 (list gxc#::void::t))
            (__tmp150601 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp150602
         '()
         __tmp150601
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args150588%_
        (apply make-instance gxc#::collect-mutators::t _%$args150588%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp150603
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
        (__make-promise __tmp150603)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx150580%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self150583%_
                (let ((__obj150591
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj150591))
               (__tmp150604
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self150583%_ _%stx150580%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150604
           gxc#current-compile-method
           _%self150583%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp150606 (list gxc#::basic-xform-expression::t))
            (__tmp150605 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp150606
         '(id new-id)
         __tmp150605
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args150577%_
        (apply make-instance gxc#::expression-subst::t _%$args150577%_)))
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
      (let ((__tmp150607
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
        (__make-promise __tmp150607)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords150547%_
               _%id150543150548%_
               _%new-id150544150550%_
               _%stx150552%_)
        (let* ((_%id150555%_
                (if (eq? _%id150543150548%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id150543150548%_))
               (_%new-id150557%_
                (if (eq? _%new-id150544150550%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id150544150550%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self150559%_
                  (let ((__obj150593
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150593
                       _%id150555%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150593
                       _%new-id150557%_
                       '2
                       '#f
                       '#f))
                    __obj150593))
                 (__tmp150608
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150559%_ _%stx150552%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150608
             gxc#current-compile-method
             _%self150559%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords150566%_ . _%args150567%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords150566%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords150566%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150566%_
                  'new-id:
                  absent-value))
               _%args150567%_)))
    (define gxc#apply-expression-subst
      (lambda _%args150545150573%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args150545150573%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp150610 (list gxc#::basic-xform-expression::t))
            (__tmp150609 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp150610
         '(subst)
         __tmp150609
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args150539%_
        (apply make-instance gxc#::expression-subst*::t _%$args150539%_)))
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
      (let ((__tmp150611
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
        (__make-promise __tmp150611)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords150513%_ _%subst150510150514%_ _%stx150516%_)
        (let ((_%subst150519%_
               (if (eq? _%subst150510150514%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst150510150514%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self150521%_
                  (let ((__obj150595
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150595
                       _%subst150519%_
                       '1
                       '#f
                       '#f))
                    __obj150595))
                 (__tmp150612
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150521%_ _%stx150516%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150612
             gxc#current-compile-method
             _%self150521%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords150528%_ . _%args150529%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords150528%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150528%_
                  'subst:
                  absent-value))
               _%args150529%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args150511150535%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args150511150535%_)))
    (define gxc#::find-expression::t
      (let ((__tmp150613 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp150613
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args150506%_
        (apply make-instance gxc#::find-expression::t _%$args150506%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp150614
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
        (__make-promise __tmp150614)))
    (define gxc#::find-var-refs::t
      (let ((__tmp150616 (list gxc#::find-expression::t))
            (__tmp150615 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp150616
         '(ids)
         __tmp150615
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args150502%_
        (apply make-instance gxc#::find-var-refs::t _%$args150502%_)))
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
      (let ((__tmp150617
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
        (__make-promise __tmp150617)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords150476%_ _%ids150473150477%_ _%stx150479%_)
        (let ((_%ids150482%_
               (if (eq? _%ids150473150477%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids150473150477%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self150484%_
                  (let ((__obj150598
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150598
                       _%ids150482%_
                       '1
                       '#f
                       '#f))
                    __obj150598))
                 (__tmp150618
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150484%_ _%stx150479%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150618
             gxc#current-compile-method
             _%self150484%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords150491%_ . _%args150492%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords150491%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords150491%_ 'ids: absent-value))
               _%args150492%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args150474150498%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args150474150498%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp150620 (list gxc#::collect-expression-refs::t))
            (__tmp150619 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp150620
         '()
         __tmp150619
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args150469%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args150469%_)))
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
      (let ((__tmp150621
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
        (__make-promise __tmp150621)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords150443%_ _%table150440150444%_ _%stx150446%_)
        (let ((_%table150449%_
               (if (eq? _%table150440150444%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table150440150444%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self150451%_
                  (let ((__obj150600
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150600
                       _%table150449%_
                       '1
                       '#f
                       '#f))
                    __obj150600))
                 (__tmp150622
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150451%_ _%stx150446%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150622
             gxc#current-compile-method
             _%self150451%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords150458%_ . _%args150459%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords150458%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150458%_
                  'table:
                  absent-value))
               _%args150459%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args150441150465%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args150441150465%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self150369%_ _%stx150370%_)
        (let* ((_%g150372150389%_
                (lambda (_%g150373150386%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150373150386%_))))
               (_%g150371150436%_
                (lambda (_%g150373150392%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150373150392%_))
                      (let ((_%e150376150394%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150373150392%_))))
                        (let ((_%hd150377150397%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150376150394%_)))
                              (_%tl150378150399%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150376150394%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150378150399%_))
                              (let ((_%e150379150402%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150378150399%_))))
                                (let ((_%hd150380150405%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150379150402%_)))
                                      (_%tl150381150407%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150379150402%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150381150407%_))
                                      (let ((_%e150382150410%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150381150407%_))))
                                        (let ((_%hd150383150413%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150382150410%_)))
                                              (_%tl150384150415%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150382150410%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150384150415%_))
                                              ((lambda (_%L150418%_
                                                        _%L150419%_)
                                                 (let ((_%sym150434%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L150419%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym150434%_))
                                                   (let ((__tmp150623
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp150623
                                                      _%sym150434%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self150369%_
                                                      _%L150418%_))))
                                               _%hd150383150413%_
                                               _%hd150380150405%_)
                                              (_%g150372150389%_
                                               _%g150373150392%_))))
                                      (_%g150372150389%_ _%g150373150392%_))))
                              (_%g150372150389%_ _%g150373150392%_))))
                      (_%g150372150389%_ _%g150373150392%_)))))
          (_%g150371150436%_ _%stx150370%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self150317%_ _%stx150318%_)
        (let* ((_%g150320150333%_
                (lambda (_%g150321150330%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150321150330%_))))
               (_%g150319150366%_
                (lambda (_%g150321150336%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150321150336%_))
                      (let ((_%e150323150338%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150321150336%_))))
                        (let ((_%hd150324150341%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150323150338%_)))
                              (_%tl150325150343%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150323150338%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150325150343%_))
                              (let ((_%e150326150346%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150325150343%_))))
                                (let ((_%hd150327150349%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150326150346%_)))
                                      (_%tl150328150351%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150326150346%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl150328150351%_))
                                      ((lambda (_%L150354%_)
                                         (if (let ((__tmp150624
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self150317%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L150354%_
                                                __tmp150624))
                                             (let ((__tmp150625
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self150317%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp150625
                                                _%stx150318%_))
                                             _%stx150318%_))
                                       _%hd150327150349%_)
                                      (_%g150320150333%_ _%g150321150336%_))))
                              (_%g150320150333%_ _%g150321150336%_))))
                      (_%g150320150333%_ _%g150321150336%_)))))
          (_%g150319150366%_ _%stx150318%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self150257%_ _%stx150258%_)
        (let* ((_%g150260150273%_
                (lambda (_%g150261150270%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150261150270%_))))
               (_%g150259150314%_
                (lambda (_%g150261150276%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150261150276%_))
                      (let ((_%e150263150278%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150261150276%_))))
                        (let ((_%hd150264150281%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150263150278%_)))
                              (_%tl150265150283%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150263150278%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150265150283%_))
                              (let ((_%e150266150286%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150265150283%_))))
                                (let ((_%hd150267150289%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150266150286%_)))
                                      (_%tl150268150291%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150266150286%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl150268150291%_))
                                      ((lambda (_%L150294%_)
                                         (let ((_%$e150308%_
                                                (let ((__tmp150627
                                                       (lambda (_%sub150306%_)
                                                         (let ((__tmp150628
                                                                (car _%sub150306%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L150294%_
                                                            __tmp150628))))
                                                      (__tmp150626
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self150257%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp150627
                                                          __tmp150626))))
                                           (if _%$e150308%_
                                               ((lambda (_%sub150311%_)
                                                  (let ((__tmp150629
                                                         (cons '%#ref
                                                               (cons (cdr _%sub150311%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp150629
                                                     _%stx150258%_)))
                                                _%$e150308%_)
                                               _%stx150258%_)))
                                       _%hd150267150289%_)
                                      (_%g150260150273%_ _%g150261150276%_))))
                              (_%g150260150273%_ _%g150261150276%_))))
                      (_%g150260150273%_ _%g150261150276%_)))))
          (_%g150259150314%_ _%stx150258%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self150186%_ _%stx150187%_)
        (let* ((_%g150189150206%_
                (lambda (_%g150190150203%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150190150203%_))))
               (_%g150188150254%_
                (lambda (_%g150190150209%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150190150209%_))
                      (let ((_%e150193150211%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150190150209%_))))
                        (let ((_%hd150194150214%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150193150211%_)))
                              (_%tl150195150216%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150193150211%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150195150216%_))
                              (let ((_%e150196150219%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150195150216%_))))
                                (let ((_%hd150197150222%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150196150219%_)))
                                      (_%tl150198150224%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150196150219%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150198150224%_))
                                      (let ((_%e150199150227%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150198150224%_))))
                                        (let ((_%hd150200150230%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150199150227%_)))
                                              (_%tl150201150232%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150199150227%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150201150232%_))
                                              ((lambda (_%L150235%_
                                                        _%L150236%_)
                                                 (let ((_%new-expr150251%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self150186%_
                                                           _%L150235%_)))
                                                       (_%new-xid150252%_
                                                        (if (let ((__tmp150630
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self150186%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L150236%_ __tmp150630))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self150186%_ 'new-id))
                    _%L150236%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp150631
                                                          (cons '%#set!
                                                                (cons _%new-xid150252%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr150251%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp150631
                                                      _%stx150187%_))))
                                               _%hd150200150230%_
                                               _%hd150197150222%_)
                                              (_%g150189150206%_
                                               _%g150190150209%_))))
                                      (_%g150189150206%_ _%g150190150209%_))))
                              (_%g150189150206%_ _%g150190150209%_))))
                      (_%g150189150206%_ _%g150190150209%_)))))
          (_%g150188150254%_ _%stx150187%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self150109%_ _%stx150110%_)
        (let* ((_%g150112150129%_
                (lambda (_%g150113150126%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150113150126%_))))
               (_%g150111150183%_
                (lambda (_%g150113150132%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150113150132%_))
                      (let ((_%e150116150134%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150113150132%_))))
                        (let ((_%hd150117150137%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150116150134%_)))
                              (_%tl150118150139%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150116150134%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150118150139%_))
                              (let ((_%e150119150142%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150118150139%_))))
                                (let ((_%hd150120150145%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150119150142%_)))
                                      (_%tl150121150147%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150119150142%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150121150147%_))
                                      (let ((_%e150122150150%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150121150147%_))))
                                        (let ((_%hd150123150153%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150122150150%_)))
                                              (_%tl150124150155%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150122150150%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150124150155%_))
                                              ((lambda (_%L150158%_
                                                        _%L150159%_)
                                                 (let ((_%new-expr150180%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self150109%_
                                                           _%L150158%_)))
                                                       (_%new-xid150181%_
                                                        (let ((_%$e150176%_
                                                               (let ((__tmp150633
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub150174%_)
                                (let ((__tmp150634 (car _%sub150174%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L150159%_
                                   __tmp150634))))
                             (__tmp150632
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self150109%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp150633 __tmp150632))))
                  (if _%$e150176%_ (cdr _%$e150176%_) _%L150159%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp150635
                                                          (cons '%#set!
                                                                (cons _%new-xid150181%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr150180%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp150635
                                                      _%stx150110%_))))
                                               _%hd150123150153%_
                                               _%hd150120150145%_)
                                              (_%g150112150129%_
                                               _%g150113150132%_))))
                                      (_%g150112150129%_ _%g150113150132%_))))
                              (_%g150112150129%_ _%g150113150132%_))))
                      (_%g150112150129%_ _%g150113150132%_)))))
          (_%g150111150183%_ _%stx150110%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self150055%_ _%stx150056%_)
        (let* ((_%g150058150071%_
                (lambda (_%g150059150068%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150059150068%_))))
               (_%g150057150106%_
                (lambda (_%g150059150074%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150059150074%_))
                      (let ((_%e150061150076%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150059150074%_))))
                        (let ((_%hd150062150079%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150061150076%_)))
                              (_%tl150063150081%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150061150076%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150063150081%_))
                              (let ((_%e150064150084%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150063150081%_))))
                                (let ((_%hd150065150087%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150064150084%_)))
                                      (_%tl150066150089%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150064150084%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl150066150089%_))
                                      ((lambda (_%L150092%_)
                                         (let* ((_%eid150104%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L150092%_)))
                                                (__tmp150636
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self150055%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp150636
                                            _%eid150104%_
                                            1+
                                            '0)))
                                       _%hd150065150087%_)
                                      (_%g150058150071%_ _%g150059150074%_))))
                              (_%g150058150071%_ _%g150059150074%_))))
                      (_%g150058150071%_ _%g150059150074%_)))))
          (_%g150057150106%_ _%stx150056%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self149985%_ _%stx149986%_)
        (let* ((_%g149988150005%_
                (lambda (_%g149989150002%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149989150002%_))))
               (_%g149987150052%_
                (lambda (_%g149989150008%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149989150008%_))
                      (let ((_%e149992150010%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149989150008%_))))
                        (let ((_%hd149993150013%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149992150010%_)))
                              (_%tl149994150015%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149992150010%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149994150015%_))
                              (let ((_%e149995150018%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149994150015%_))))
                                (let ((_%hd149996150021%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149995150018%_)))
                                      (_%tl149997150023%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149995150018%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149997150023%_))
                                      (let ((_%e149998150026%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149997150023%_))))
                                        (let ((_%hd149999150029%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149998150026%_)))
                                              (_%tl150000150031%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149998150026%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150000150031%_))
                                              ((lambda (_%L150034%_
                                                        _%L150035%_)
                                                 (let ((_%eid150050%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L150035%_))))
                                                   (let ((__tmp150637
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self149985%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp150637
                                                      _%eid150050%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self149985%_
                                                      _%L150034%_))))
                                               _%hd149999150029%_
                                               _%hd149996150021%_)
                                              (_%g149988150005%_
                                               _%g149989150008%_))))
                                      (_%g149988150005%_ _%g149989150008%_))))
                              (_%g149988150005%_ _%g149989150008%_))))
                      (_%g149988150005%_ _%g149989150008%_)))))
          (_%g149987150052%_ _%stx149986%_))))
    (define gxc#find-body%
      (lambda (_%self149898%_ _%stx149899%_)
        (let* ((_%g149901149920%_
                (lambda (_%g149902149917%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149902149917%_))))
               (_%g149900149982%_
                (lambda (_%g149902149923%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149902149923%_))
                      (let ((_%e149904149925%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149902149923%_))))
                        (let ((_%hd149905149928%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149904149925%_)))
                              (_%tl149906149930%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149904149925%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl149906149930%_))
                              (let ((_g150638_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl149906149930%_
                                        '0))))
                                (begin
                                  (let ((_g150639_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g150638_)
                                               (##vector-length _g150638_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g150639_ 2)))
                                        (error "Context expects 2 values"
                                               _g150639_)))
                                  (let ((_%target149907149933%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g150638_ 0)))
                                        (_%tl149909149935%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g150638_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl149909149935%_))
                                        (letrec ((_%loop149910149938%_
                                                  (lambda (_%hd149908149941%_
                                                           _%expr149914149943%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd149908149941%_))
                                                        (let ((_%e149911149946%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd149908149941%_))))
                  (let ((_%lp-hd149912149949%_
                         (let ()
                           (declare (not safe))
                           (##car _%e149911149946%_)))
                        (_%lp-tl149913149951%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e149911149946%_))))
                    (_%loop149910149938%_
                     _%lp-tl149913149951%_
                     (cons _%lp-hd149912149949%_ _%expr149914149943%_))))
                (let ((_%expr149915149954%_ (reverse _%expr149914149943%_)))
                  ((lambda (_%L149957%_)
                     (let ((__tmp150642
                            (lambda (_%g149970149972%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self149898%_
                                 _%g149970149972%_))))
                           (__tmp150640
                            (let ((__tmp150641
                                   (lambda (_%g149974149977%_
                                            _%g149975149979%_)
                                     (cons _%g149974149977%_
                                           _%g149975149979%_))))
                              (declare (not safe))
                              (__foldr1 __tmp150641 '() _%L149957%_))))
                       (declare (not safe))
                       (__ormap1 __tmp150642 __tmp150640)))
                   _%expr149915149954%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop149910149938%_
                                           _%target149907149933%_
                                           '()))
                                        (_%g149901149920%_
                                         _%g149902149923%_)))))
                              (_%g149901149920%_ _%g149902149923%_))))
                      (_%g149901149920%_ _%g149902149923%_)))))
          (_%g149900149982%_ _%stx149899%_))))
    (define gxc#find-let-values%
      (lambda (_%self149748%_ _%stx149749%_)
        (let* ((_%g149751149786%_
                (lambda (_%g149752149783%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149752149783%_))))
               (_%g149750149895%_
                (lambda (_%g149752149789%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149752149789%_))
                      (let ((_%e149756149791%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149752149789%_))))
                        (let ((_%hd149757149794%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149756149791%_)))
                              (_%tl149758149796%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149756149791%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149758149796%_))
                              (let ((_%e149759149799%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149758149796%_))))
                                (let ((_%hd149760149802%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149759149799%_)))
                                      (_%tl149761149804%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149759149799%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd149760149802%_))
                                      (let ((_g150643_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd149760149802%_
                                                '0))))
                                        (begin
                                          (let ((_g150644_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g150643_)
                                                       (##vector-length
                                                        _g150643_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g150644_ 2)))
                                                (error "Context expects 2 values"
                                                       _g150644_)))
                                          (let ((_%target149762149807%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g150643_ 0)))
                                                (_%tl149764149809%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g150643_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl149764149809%_))
                                                (letrec ((_%loop149765149812%_
                                                          (lambda (_%hd149763149815%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr149769149817%_
                           _%bind149770149819%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd149763149815%_))
                        (let ((_%e149766149822%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd149763149815%_))))
                          (let ((_%lp-hd149767149825%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e149766149822%_)))
                                (_%lp-tl149768149827%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e149766149822%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd149767149825%_))
                                (let ((_%e149776149830%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd149767149825%_))))
                                  (let ((_%hd149777149833%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e149776149830%_)))
                                        (_%tl149778149835%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e149776149830%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl149778149835%_))
                                        (let ((_%e149779149838%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl149778149835%_))))
                                          (let ((_%hd149780149841%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e149779149838%_)))
                                                (_%tl149781149843%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e149779149838%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl149781149843%_))
                                                (_%loop149765149812%_
                                                 _%lp-tl149768149827%_
                                                 (cons _%hd149780149841%_
                                                       _%expr149769149817%_)
                                                 (cons _%hd149777149833%_
                                                       _%bind149770149819%_))
                                                (_%g149751149786%_
                                                 _%g149752149789%_))))
                                        (_%g149751149786%_
                                         _%g149752149789%_))))
                                (_%g149751149786%_ _%g149752149789%_))))
                        (let ((_%expr149771149846%_
                               (reverse _%expr149769149817%_))
                              (_%bind149772149848%_
                               (reverse _%bind149770149819%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149761149804%_))
                              (let ((_%e149773149851%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149761149804%_))))
                                (let ((_%hd149774149854%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149773149851%_)))
                                      (_%tl149775149856%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149773149851%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149775149856%_))
                                      ((lambda (_%L149859%_
                                                _%L149860%_
                                                _%L149861%_)
                                         (let ((_%$e149892%_
                                                (let ((__tmp150647
                                                       (lambda (_%g149880149882%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self149748%_
                                                            _%g149880149882%_))))
                                                      (__tmp150645
                                                       (let ((__tmp150646
                                                              (lambda (_%g149884149887%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g149885149889%_)
                        (cons _%g149884149887%_ _%g149885149889%_))))
                 (declare (not safe))
                 (__foldr1 __tmp150646 '() _%L149860%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp150647
                                                   __tmp150645))))
                                           (if _%$e149892%_
                                               _%$e149892%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self149748%_
                                                  _%L149859%_)))))
                                       _%hd149774149854%_
                                       _%expr149771149846%_
                                       _%bind149772149848%_)
                                      (_%g149751149786%_ _%g149752149789%_))))
                              (_%g149751149786%_ _%g149752149789%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop149765149812%_
                                                   _%target149762149807%_
                                                   '()
                                                   '()))
                                                (_%g149751149786%_
                                                 _%g149752149789%_)))))
                                      (_%g149751149786%_ _%g149752149789%_))))
                              (_%g149751149786%_ _%g149752149789%_))))
                      (_%g149751149786%_ _%g149752149789%_)))))
          (_%g149750149895%_ _%stx149749%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self149692%_ _%stx149693%_)
        (let* ((_%g149695149708%_
                (lambda (_%g149696149705%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149696149705%_))))
               (_%g149694149745%_
                (lambda (_%g149696149711%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149696149711%_))
                      (let ((_%e149698149713%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149696149711%_))))
                        (let ((_%hd149699149716%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149698149713%_)))
                              (_%tl149700149718%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149698149713%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149700149718%_))
                              (let ((_%e149701149721%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149700149718%_))))
                                (let ((_%hd149702149724%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149701149721%_)))
                                      (_%tl149703149726%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149701149721%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149703149726%_))
                                      ((lambda (_%L149729%_)
                                         (let ((__tmp150649
                                                (lambda (_%g149740149742%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L149729%_
                                                     _%g149740149742%_))))
                                               (__tmp150648
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self149692%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp150649 __tmp150648)))
                                       _%hd149702149724%_)
                                      (_%g149695149708%_ _%g149696149711%_))))
                              (_%g149695149708%_ _%g149696149711%_))))
                      (_%g149695149708%_ _%g149696149711%_)))))
          (_%g149694149745%_ _%stx149693%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self149617%_ _%stx149618%_)
        (let* ((_%g149620149637%_
                (lambda (_%g149621149634%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149621149634%_))))
               (_%g149619149689%_
                (lambda (_%g149621149640%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149621149640%_))
                      (let ((_%e149624149642%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149621149640%_))))
                        (let ((_%hd149625149645%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149624149642%_)))
                              (_%tl149626149647%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149624149642%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149626149647%_))
                              (let ((_%e149627149650%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149626149647%_))))
                                (let ((_%hd149628149653%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149627149650%_)))
                                      (_%tl149629149655%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149627149650%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149629149655%_))
                                      (let ((_%e149630149658%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149629149655%_))))
                                        (let ((_%hd149631149661%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149630149658%_)))
                                              (_%tl149632149663%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149630149658%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149632149663%_))
                                              ((lambda (_%L149666%_
                                                        _%L149667%_)
                                                 (let ((_%$e149686%_
                                                        (let ((__tmp150651
                                                               (lambda (_%g149681149683%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L149667%_
                            _%g149681149683%_))))
                      (__tmp150650
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self149617%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp150651 __tmp150650))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e149686%_
                                                       _%$e149686%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self149617%_
                                                          _%L149666%_)))))
                                               _%hd149631149661%_
                                               _%hd149628149653%_)
                                              (_%g149620149637%_
                                               _%g149621149640%_))))
                                      (_%g149620149637%_ _%g149621149640%_))))
                              (_%g149620149637%_ _%g149621149640%_))))
                      (_%g149620149637%_ _%g149621149640%_)))))
          (_%g149619149689%_ _%stx149618%_))))))
