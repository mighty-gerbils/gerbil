(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1713453202)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp152567 (list gxc#::void::t))
            (__tmp152566 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp152567
         '()
         __tmp152566
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args152553%_
        (apply make-instance gxc#::collect-mutators::t _%$args152553%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp152568
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
        (__make-promise __tmp152568)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx152545%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self152548%_
                (let ((__obj152556
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj152556))
               (__tmp152569
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self152548%_ _%stx152545%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp152569
           gxc#current-compile-method
           _%self152548%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp152571 (list gxc#::basic-xform-expression::t))
            (__tmp152570 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp152571
         '(id new-id)
         __tmp152570
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args152542%_
        (apply make-instance gxc#::expression-subst::t _%$args152542%_)))
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
      (let ((__tmp152572
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
        (__make-promise __tmp152572)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords152512%_
               _%id152508152513%_
               _%new-id152509152515%_
               _%stx152517%_)
        (let* ((_%id152520%_
                (if (eq? _%id152508152513%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id152508152513%_))
               (_%new-id152522%_
                (if (eq? _%new-id152509152515%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id152509152515%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self152524%_
                  (let ((__obj152558
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj152558
                       _%id152520%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj152558
                       _%new-id152522%_
                       '2
                       '#f
                       '#f))
                    __obj152558))
                 (__tmp152573
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self152524%_ _%stx152517%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp152573
             gxc#current-compile-method
             _%self152524%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords152531%_ . _%args152532%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords152531%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords152531%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords152531%_
                  'new-id:
                  absent-value))
               _%args152532%_)))
    (define gxc#apply-expression-subst
      (lambda _%args152510152538%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args152510152538%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp152575 (list gxc#::basic-xform-expression::t))
            (__tmp152574 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp152575
         '(subst)
         __tmp152574
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args152504%_
        (apply make-instance gxc#::expression-subst*::t _%$args152504%_)))
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
      (let ((__tmp152576
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
        (__make-promise __tmp152576)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords152478%_ _%subst152475152479%_ _%stx152481%_)
        (let ((_%subst152484%_
               (if (eq? _%subst152475152479%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst152475152479%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self152486%_
                  (let ((__obj152560
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj152560
                       _%subst152484%_
                       '1
                       '#f
                       '#f))
                    __obj152560))
                 (__tmp152577
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self152486%_ _%stx152481%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp152577
             gxc#current-compile-method
             _%self152486%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords152493%_ . _%args152494%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords152493%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords152493%_
                  'subst:
                  absent-value))
               _%args152494%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args152476152500%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args152476152500%_)))
    (define gxc#::find-expression::t
      (let ((__tmp152578 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp152578
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args152471%_
        (apply make-instance gxc#::find-expression::t _%$args152471%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp152579
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
        (__make-promise __tmp152579)))
    (define gxc#::find-var-refs::t
      (let ((__tmp152581 (list gxc#::find-expression::t))
            (__tmp152580 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp152581
         '(ids)
         __tmp152580
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args152467%_
        (apply make-instance gxc#::find-var-refs::t _%$args152467%_)))
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
      (let ((__tmp152582
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
        (__make-promise __tmp152582)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords152441%_ _%ids152438152442%_ _%stx152444%_)
        (let ((_%ids152447%_
               (if (eq? _%ids152438152442%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids152438152442%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self152449%_
                  (let ((__obj152563
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj152563
                       _%ids152447%_
                       '1
                       '#f
                       '#f))
                    __obj152563))
                 (__tmp152583
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self152449%_ _%stx152444%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp152583
             gxc#current-compile-method
             _%self152449%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords152456%_ . _%args152457%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords152456%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords152456%_ 'ids: absent-value))
               _%args152457%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args152439152463%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args152439152463%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp152585 (list gxc#::collect-expression-refs::t))
            (__tmp152584 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp152585
         '()
         __tmp152584
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args152434%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args152434%_)))
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
      (let ((__tmp152586
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
        (__make-promise __tmp152586)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords152408%_ _%table152405152409%_ _%stx152411%_)
        (let ((_%table152414%_
               (if (eq? _%table152405152409%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table152405152409%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self152416%_
                  (let ((__obj152565
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj152565
                       _%table152414%_
                       '1
                       '#f
                       '#f))
                    __obj152565))
                 (__tmp152587
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self152416%_ _%stx152411%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp152587
             gxc#current-compile-method
             _%self152416%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords152423%_ . _%args152424%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords152423%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords152423%_
                  'table:
                  absent-value))
               _%args152424%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args152406152430%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args152406152430%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self152334%_ _%stx152335%_)
        (let* ((_%g152337152354%_
                (lambda (_%g152338152351%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152338152351%_))))
               (_%g152336152401%_
                (lambda (_%g152338152357%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152338152357%_))
                      (let ((_%e152341152359%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152338152357%_))))
                        (let ((_%hd152342152362%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152341152359%_)))
                              (_%tl152343152364%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152341152359%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl152343152364%_))
                              (let ((_%e152344152367%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl152343152364%_))))
                                (let ((_%hd152345152370%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152344152367%_)))
                                      (_%tl152346152372%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152344152367%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl152346152372%_))
                                      (let ((_%e152347152375%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl152346152372%_))))
                                        (let ((_%hd152348152378%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e152347152375%_)))
                                              (_%tl152349152380%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e152347152375%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl152349152380%_))
                                              ((lambda (_%L152383%_
                                                        _%L152384%_)
                                                 (let ((_%sym152399%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L152384%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym152399%_))
                                                   (let ((__tmp152588
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp152588
                                                      _%sym152399%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self152334%_
                                                      _%L152383%_))))
                                               _%hd152348152378%_
                                               _%hd152345152370%_)
                                              (_%g152337152354%_
                                               _%g152338152357%_))))
                                      (_%g152337152354%_ _%g152338152357%_))))
                              (_%g152337152354%_ _%g152338152357%_))))
                      (_%g152337152354%_ _%g152338152357%_)))))
          (_%g152336152401%_ _%stx152335%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self152282%_ _%stx152283%_)
        (let* ((_%g152285152298%_
                (lambda (_%g152286152295%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152286152295%_))))
               (_%g152284152331%_
                (lambda (_%g152286152301%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152286152301%_))
                      (let ((_%e152288152303%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152286152301%_))))
                        (let ((_%hd152289152306%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152288152303%_)))
                              (_%tl152290152308%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152288152303%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl152290152308%_))
                              (let ((_%e152291152311%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl152290152308%_))))
                                (let ((_%hd152292152314%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152291152311%_)))
                                      (_%tl152293152316%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152291152311%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl152293152316%_))
                                      ((lambda (_%L152319%_)
                                         (if (let ((__tmp152589
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self152282%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L152319%_
                                                __tmp152589))
                                             (let ((__tmp152590
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self152282%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp152590
                                                _%stx152283%_))
                                             _%stx152283%_))
                                       _%hd152292152314%_)
                                      (_%g152285152298%_ _%g152286152301%_))))
                              (_%g152285152298%_ _%g152286152301%_))))
                      (_%g152285152298%_ _%g152286152301%_)))))
          (_%g152284152331%_ _%stx152283%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self152222%_ _%stx152223%_)
        (let* ((_%g152225152238%_
                (lambda (_%g152226152235%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152226152235%_))))
               (_%g152224152279%_
                (lambda (_%g152226152241%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152226152241%_))
                      (let ((_%e152228152243%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152226152241%_))))
                        (let ((_%hd152229152246%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152228152243%_)))
                              (_%tl152230152248%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152228152243%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl152230152248%_))
                              (let ((_%e152231152251%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl152230152248%_))))
                                (let ((_%hd152232152254%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152231152251%_)))
                                      (_%tl152233152256%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152231152251%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl152233152256%_))
                                      ((lambda (_%L152259%_)
                                         (let ((_%$e152273%_
                                                (let ((__tmp152592
                                                       (lambda (_%sub152271%_)
                                                         (let ((__tmp152593
                                                                (car _%sub152271%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L152259%_
                                                            __tmp152593))))
                                                      (__tmp152591
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self152222%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp152592
                                                          __tmp152591))))
                                           (if _%$e152273%_
                                               ((lambda (_%sub152276%_)
                                                  (let ((__tmp152594
                                                         (cons '%#ref
                                                               (cons (cdr _%sub152276%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp152594
                                                     _%stx152223%_)))
                                                _%$e152273%_)
                                               _%stx152223%_)))
                                       _%hd152232152254%_)
                                      (_%g152225152238%_ _%g152226152241%_))))
                              (_%g152225152238%_ _%g152226152241%_))))
                      (_%g152225152238%_ _%g152226152241%_)))))
          (_%g152224152279%_ _%stx152223%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self152151%_ _%stx152152%_)
        (let* ((_%g152154152171%_
                (lambda (_%g152155152168%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152155152168%_))))
               (_%g152153152219%_
                (lambda (_%g152155152174%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152155152174%_))
                      (let ((_%e152158152176%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152155152174%_))))
                        (let ((_%hd152159152179%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152158152176%_)))
                              (_%tl152160152181%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152158152176%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl152160152181%_))
                              (let ((_%e152161152184%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl152160152181%_))))
                                (let ((_%hd152162152187%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152161152184%_)))
                                      (_%tl152163152189%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152161152184%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl152163152189%_))
                                      (let ((_%e152164152192%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl152163152189%_))))
                                        (let ((_%hd152165152195%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e152164152192%_)))
                                              (_%tl152166152197%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e152164152192%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl152166152197%_))
                                              ((lambda (_%L152200%_
                                                        _%L152201%_)
                                                 (let ((_%new-expr152216%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self152151%_
                                                           _%L152200%_)))
                                                       (_%new-xid152217%_
                                                        (if (let ((__tmp152595
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self152151%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L152201%_ __tmp152595))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self152151%_ 'new-id))
                    _%L152201%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp152596
                                                          (cons '%#set!
                                                                (cons _%new-xid152217%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr152216%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp152596
                                                      _%stx152152%_))))
                                               _%hd152165152195%_
                                               _%hd152162152187%_)
                                              (_%g152154152171%_
                                               _%g152155152174%_))))
                                      (_%g152154152171%_ _%g152155152174%_))))
                              (_%g152154152171%_ _%g152155152174%_))))
                      (_%g152154152171%_ _%g152155152174%_)))))
          (_%g152153152219%_ _%stx152152%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self152074%_ _%stx152075%_)
        (let* ((_%g152077152094%_
                (lambda (_%g152078152091%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152078152091%_))))
               (_%g152076152148%_
                (lambda (_%g152078152097%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152078152097%_))
                      (let ((_%e152081152099%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152078152097%_))))
                        (let ((_%hd152082152102%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152081152099%_)))
                              (_%tl152083152104%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152081152099%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl152083152104%_))
                              (let ((_%e152084152107%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl152083152104%_))))
                                (let ((_%hd152085152110%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152084152107%_)))
                                      (_%tl152086152112%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152084152107%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl152086152112%_))
                                      (let ((_%e152087152115%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl152086152112%_))))
                                        (let ((_%hd152088152118%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e152087152115%_)))
                                              (_%tl152089152120%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e152087152115%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl152089152120%_))
                                              ((lambda (_%L152123%_
                                                        _%L152124%_)
                                                 (let ((_%new-expr152145%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self152074%_
                                                           _%L152123%_)))
                                                       (_%new-xid152146%_
                                                        (let ((_%$e152141%_
                                                               (let ((__tmp152598
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub152139%_)
                                (let ((__tmp152599 (car _%sub152139%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L152124%_
                                   __tmp152599))))
                             (__tmp152597
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self152074%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp152598 __tmp152597))))
                  (if _%$e152141%_ (cdr _%$e152141%_) _%L152124%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp152600
                                                          (cons '%#set!
                                                                (cons _%new-xid152146%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr152145%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp152600
                                                      _%stx152075%_))))
                                               _%hd152088152118%_
                                               _%hd152085152110%_)
                                              (_%g152077152094%_
                                               _%g152078152097%_))))
                                      (_%g152077152094%_ _%g152078152097%_))))
                              (_%g152077152094%_ _%g152078152097%_))))
                      (_%g152077152094%_ _%g152078152097%_)))))
          (_%g152076152148%_ _%stx152075%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self152020%_ _%stx152021%_)
        (let* ((_%g152023152036%_
                (lambda (_%g152024152033%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152024152033%_))))
               (_%g152022152071%_
                (lambda (_%g152024152039%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152024152039%_))
                      (let ((_%e152026152041%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152024152039%_))))
                        (let ((_%hd152027152044%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152026152041%_)))
                              (_%tl152028152046%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152026152041%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl152028152046%_))
                              (let ((_%e152029152049%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl152028152046%_))))
                                (let ((_%hd152030152052%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152029152049%_)))
                                      (_%tl152031152054%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152029152049%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl152031152054%_))
                                      ((lambda (_%L152057%_)
                                         (let* ((_%eid152069%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L152057%_)))
                                                (__tmp152601
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self152020%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp152601
                                            _%eid152069%_
                                            1+
                                            '0)))
                                       _%hd152030152052%_)
                                      (_%g152023152036%_ _%g152024152039%_))))
                              (_%g152023152036%_ _%g152024152039%_))))
                      (_%g152023152036%_ _%g152024152039%_)))))
          (_%g152022152071%_ _%stx152021%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self151950%_ _%stx151951%_)
        (let* ((_%g151953151970%_
                (lambda (_%g151954151967%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151954151967%_))))
               (_%g151952152017%_
                (lambda (_%g151954151973%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151954151973%_))
                      (let ((_%e151957151975%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151954151973%_))))
                        (let ((_%hd151958151978%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151957151975%_)))
                              (_%tl151959151980%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151957151975%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151959151980%_))
                              (let ((_%e151960151983%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151959151980%_))))
                                (let ((_%hd151961151986%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151960151983%_)))
                                      (_%tl151962151988%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151960151983%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151962151988%_))
                                      (let ((_%e151963151991%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151962151988%_))))
                                        (let ((_%hd151964151994%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151963151991%_)))
                                              (_%tl151965151996%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151963151991%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151965151996%_))
                                              ((lambda (_%L151999%_
                                                        _%L152000%_)
                                                 (let ((_%eid152015%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L152000%_))))
                                                   (let ((__tmp152602
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self151950%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp152602
                                                      _%eid152015%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self151950%_
                                                      _%L151999%_))))
                                               _%hd151964151994%_
                                               _%hd151961151986%_)
                                              (_%g151953151970%_
                                               _%g151954151973%_))))
                                      (_%g151953151970%_ _%g151954151973%_))))
                              (_%g151953151970%_ _%g151954151973%_))))
                      (_%g151953151970%_ _%g151954151973%_)))))
          (_%g151952152017%_ _%stx151951%_))))
    (define gxc#find-body%
      (lambda (_%self151863%_ _%stx151864%_)
        (let* ((_%g151866151885%_
                (lambda (_%g151867151882%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151867151882%_))))
               (_%g151865151947%_
                (lambda (_%g151867151888%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151867151888%_))
                      (let ((_%e151869151890%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151867151888%_))))
                        (let ((_%hd151870151893%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151869151890%_)))
                              (_%tl151871151895%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151869151890%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl151871151895%_))
                              (let ((_g152603_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl151871151895%_
                                        '0))))
                                (begin
                                  (let ((_g152604_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g152603_)
                                               (##vector-length _g152603_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g152604_ 2)))
                                        (error "Context expects 2 values"
                                               _g152604_)))
                                  (let ((_%target151872151898%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g152603_ 0)))
                                        (_%tl151874151900%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g152603_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl151874151900%_))
                                        (letrec ((_%loop151875151903%_
                                                  (lambda (_%hd151873151906%_
                                                           _%expr151879151908%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd151873151906%_))
                                                        (let ((_%e151876151911%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd151873151906%_))))
                  (let ((_%lp-hd151877151914%_
                         (let ()
                           (declare (not safe))
                           (##car _%e151876151911%_)))
                        (_%lp-tl151878151916%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e151876151911%_))))
                    (_%loop151875151903%_
                     _%lp-tl151878151916%_
                     (cons _%lp-hd151877151914%_ _%expr151879151908%_))))
                (let ((_%expr151880151919%_ (reverse _%expr151879151908%_)))
                  ((lambda (_%L151922%_)
                     (let ((__tmp152607
                            (lambda (_%g151935151937%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self151863%_
                                 _%g151935151937%_))))
                           (__tmp152605
                            (let ((__tmp152606
                                   (lambda (_%g151939151942%_
                                            _%g151940151944%_)
                                     (cons _%g151939151942%_
                                           _%g151940151944%_))))
                              (declare (not safe))
                              (__foldr1 __tmp152606 '() _%L151922%_))))
                       (declare (not safe))
                       (__ormap1 __tmp152607 __tmp152605)))
                   _%expr151880151919%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop151875151903%_
                                           _%target151872151898%_
                                           '()))
                                        (_%g151866151885%_
                                         _%g151867151888%_)))))
                              (_%g151866151885%_ _%g151867151888%_))))
                      (_%g151866151885%_ _%g151867151888%_)))))
          (_%g151865151947%_ _%stx151864%_))))
    (define gxc#find-let-values%
      (lambda (_%self151713%_ _%stx151714%_)
        (let* ((_%g151716151751%_
                (lambda (_%g151717151748%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151717151748%_))))
               (_%g151715151860%_
                (lambda (_%g151717151754%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151717151754%_))
                      (let ((_%e151721151756%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151717151754%_))))
                        (let ((_%hd151722151759%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151721151756%_)))
                              (_%tl151723151761%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151721151756%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151723151761%_))
                              (let ((_%e151724151764%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151723151761%_))))
                                (let ((_%hd151725151767%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151724151764%_)))
                                      (_%tl151726151769%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151724151764%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd151725151767%_))
                                      (let ((_g152608_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd151725151767%_
                                                '0))))
                                        (begin
                                          (let ((_g152609_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g152608_)
                                                       (##vector-length
                                                        _g152608_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g152609_ 2)))
                                                (error "Context expects 2 values"
                                                       _g152609_)))
                                          (let ((_%target151727151772%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g152608_ 0)))
                                                (_%tl151729151774%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g152608_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl151729151774%_))
                                                (letrec ((_%loop151730151777%_
                                                          (lambda (_%hd151728151780%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr151734151782%_
                           _%bind151735151784%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd151728151780%_))
                        (let ((_%e151731151787%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd151728151780%_))))
                          (let ((_%lp-hd151732151790%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e151731151787%_)))
                                (_%lp-tl151733151792%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e151731151787%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd151732151790%_))
                                (let ((_%e151741151795%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd151732151790%_))))
                                  (let ((_%hd151742151798%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e151741151795%_)))
                                        (_%tl151743151800%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e151741151795%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl151743151800%_))
                                        (let ((_%e151744151803%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl151743151800%_))))
                                          (let ((_%hd151745151806%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e151744151803%_)))
                                                (_%tl151746151808%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e151744151803%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl151746151808%_))
                                                (_%loop151730151777%_
                                                 _%lp-tl151733151792%_
                                                 (cons _%hd151745151806%_
                                                       _%expr151734151782%_)
                                                 (cons _%hd151742151798%_
                                                       _%bind151735151784%_))
                                                (_%g151716151751%_
                                                 _%g151717151754%_))))
                                        (_%g151716151751%_
                                         _%g151717151754%_))))
                                (_%g151716151751%_ _%g151717151754%_))))
                        (let ((_%expr151736151811%_
                               (reverse _%expr151734151782%_))
                              (_%bind151737151813%_
                               (reverse _%bind151735151784%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151726151769%_))
                              (let ((_%e151738151816%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151726151769%_))))
                                (let ((_%hd151739151819%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151738151816%_)))
                                      (_%tl151740151821%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151738151816%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl151740151821%_))
                                      ((lambda (_%L151824%_
                                                _%L151825%_
                                                _%L151826%_)
                                         (let ((_%$e151857%_
                                                (let ((__tmp152612
                                                       (lambda (_%g151845151847%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self151713%_
                                                            _%g151845151847%_))))
                                                      (__tmp152610
                                                       (let ((__tmp152611
                                                              (lambda (_%g151849151852%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g151850151854%_)
                        (cons _%g151849151852%_ _%g151850151854%_))))
                 (declare (not safe))
                 (__foldr1 __tmp152611 '() _%L151825%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp152612
                                                   __tmp152610))))
                                           (if _%$e151857%_
                                               _%$e151857%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self151713%_
                                                  _%L151824%_)))))
                                       _%hd151739151819%_
                                       _%expr151736151811%_
                                       _%bind151737151813%_)
                                      (_%g151716151751%_ _%g151717151754%_))))
                              (_%g151716151751%_ _%g151717151754%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop151730151777%_
                                                   _%target151727151772%_
                                                   '()
                                                   '()))
                                                (_%g151716151751%_
                                                 _%g151717151754%_)))))
                                      (_%g151716151751%_ _%g151717151754%_))))
                              (_%g151716151751%_ _%g151717151754%_))))
                      (_%g151716151751%_ _%g151717151754%_)))))
          (_%g151715151860%_ _%stx151714%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self151657%_ _%stx151658%_)
        (let* ((_%g151660151673%_
                (lambda (_%g151661151670%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151661151670%_))))
               (_%g151659151710%_
                (lambda (_%g151661151676%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151661151676%_))
                      (let ((_%e151663151678%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151661151676%_))))
                        (let ((_%hd151664151681%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151663151678%_)))
                              (_%tl151665151683%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151663151678%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151665151683%_))
                              (let ((_%e151666151686%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151665151683%_))))
                                (let ((_%hd151667151689%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151666151686%_)))
                                      (_%tl151668151691%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151666151686%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl151668151691%_))
                                      ((lambda (_%L151694%_)
                                         (let ((__tmp152614
                                                (lambda (_%g151705151707%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L151694%_
                                                     _%g151705151707%_))))
                                               (__tmp152613
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self151657%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp152614 __tmp152613)))
                                       _%hd151667151689%_)
                                      (_%g151660151673%_ _%g151661151676%_))))
                              (_%g151660151673%_ _%g151661151676%_))))
                      (_%g151660151673%_ _%g151661151676%_)))))
          (_%g151659151710%_ _%stx151658%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self151582%_ _%stx151583%_)
        (let* ((_%g151585151602%_
                (lambda (_%g151586151599%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151586151599%_))))
               (_%g151584151654%_
                (lambda (_%g151586151605%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151586151605%_))
                      (let ((_%e151589151607%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151586151605%_))))
                        (let ((_%hd151590151610%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151589151607%_)))
                              (_%tl151591151612%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151589151607%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151591151612%_))
                              (let ((_%e151592151615%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151591151612%_))))
                                (let ((_%hd151593151618%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151592151615%_)))
                                      (_%tl151594151620%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151592151615%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151594151620%_))
                                      (let ((_%e151595151623%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151594151620%_))))
                                        (let ((_%hd151596151626%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151595151623%_)))
                                              (_%tl151597151628%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151595151623%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151597151628%_))
                                              ((lambda (_%L151631%_
                                                        _%L151632%_)
                                                 (let ((_%$e151651%_
                                                        (let ((__tmp152616
                                                               (lambda (_%g151646151648%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L151632%_
                            _%g151646151648%_))))
                      (__tmp152615
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self151582%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp152616 __tmp152615))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e151651%_
                                                       _%$e151651%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self151582%_
                                                          _%L151631%_)))))
                                               _%hd151596151626%_
                                               _%hd151593151618%_)
                                              (_%g151585151602%_
                                               _%g151586151605%_))))
                                      (_%g151585151602%_ _%g151586151605%_))))
                              (_%g151585151602%_ _%g151586151605%_))))
                      (_%g151585151602%_ _%g151586151605%_)))))
          (_%g151584151654%_ _%stx151583%_))))))
