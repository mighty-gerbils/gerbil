(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1755903078)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp158476 (list gxc#::void::t))
            (__tmp158475 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp158476
         '()
         __tmp158475
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args158462%_
        (apply make-instance gxc#::collect-mutators::t _%$args158462%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp158477
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
        (__make-promise __tmp158477)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx158454%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self158457%_
                (let ((__obj158465
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj158465))
               (__tmp158478
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self158457%_ _%stx158454%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp158478
           gxc#current-compile-method
           _%self158457%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp158480 (list gxc#::basic-xform-expression::t))
            (__tmp158479 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp158480
         '(id new-id)
         __tmp158479
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args158451%_
        (apply make-instance gxc#::expression-subst::t _%$args158451%_)))
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
      (let ((__tmp158481
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
        (__make-promise __tmp158481)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords158421%_
               _%id158417158422%_
               _%new-id158418158424%_
               _%stx158426%_)
        (let* ((_%id158429%_
                (if (eq? _%id158417158422%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id158417158422%_))
               (_%new-id158431%_
                (if (eq? _%new-id158418158424%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id158418158424%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self158433%_
                  (let ((__obj158467
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj158467
                       _%id158429%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj158467
                       _%new-id158431%_
                       '2
                       '#f
                       '#f))
                    __obj158467))
                 (__tmp158482
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self158433%_ _%stx158426%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp158482
             gxc#current-compile-method
             _%self158433%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords158440%_ . _%args158441%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords158440%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords158440%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords158440%_
                  'new-id:
                  absent-value))
               _%args158441%_)))
    (define gxc#apply-expression-subst
      (lambda _%args158419158447%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args158419158447%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp158484 (list gxc#::basic-xform-expression::t))
            (__tmp158483 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp158484
         '(subst)
         __tmp158483
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args158413%_
        (apply make-instance gxc#::expression-subst*::t _%$args158413%_)))
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
      (let ((__tmp158485
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
        (__make-promise __tmp158485)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords158387%_ _%subst158384158388%_ _%stx158390%_)
        (let ((_%subst158393%_
               (if (eq? _%subst158384158388%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst158384158388%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self158395%_
                  (let ((__obj158469
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj158469
                       _%subst158393%_
                       '1
                       '#f
                       '#f))
                    __obj158469))
                 (__tmp158486
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self158395%_ _%stx158390%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp158486
             gxc#current-compile-method
             _%self158395%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords158402%_ . _%args158403%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords158402%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords158402%_
                  'subst:
                  absent-value))
               _%args158403%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args158385158409%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args158385158409%_)))
    (define gxc#::find-expression::t
      (let ((__tmp158487 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp158487
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args158380%_
        (apply make-instance gxc#::find-expression::t _%$args158380%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp158488
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
        (__make-promise __tmp158488)))
    (define gxc#::find-var-refs::t
      (let ((__tmp158490 (list gxc#::find-expression::t))
            (__tmp158489 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp158490
         '(ids)
         __tmp158489
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args158376%_
        (apply make-instance gxc#::find-var-refs::t _%$args158376%_)))
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
      (let ((__tmp158491
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
        (__make-promise __tmp158491)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords158350%_ _%ids158347158351%_ _%stx158353%_)
        (let ((_%ids158356%_
               (if (eq? _%ids158347158351%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids158347158351%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self158358%_
                  (let ((__obj158472
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj158472
                       _%ids158356%_
                       '1
                       '#f
                       '#f))
                    __obj158472))
                 (__tmp158492
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self158358%_ _%stx158353%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp158492
             gxc#current-compile-method
             _%self158358%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords158365%_ . _%args158366%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords158365%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords158365%_ 'ids: absent-value))
               _%args158366%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args158348158372%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args158348158372%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp158494 (list gxc#::collect-expression-refs::t))
            (__tmp158493 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp158494
         '()
         __tmp158493
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args158343%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args158343%_)))
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
      (let ((__tmp158495
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
        (__make-promise __tmp158495)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords158317%_ _%table158314158318%_ _%stx158320%_)
        (let ((_%table158323%_
               (if (eq? _%table158314158318%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table158314158318%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self158325%_
                  (let ((__obj158474
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj158474
                       _%table158323%_
                       '1
                       '#f
                       '#f))
                    __obj158474))
                 (__tmp158496
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self158325%_ _%stx158320%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp158496
             gxc#current-compile-method
             _%self158325%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords158332%_ . _%args158333%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords158332%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords158332%_
                  'table:
                  absent-value))
               _%args158333%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args158315158339%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args158315158339%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self158243%_ _%stx158244%_)
        (let* ((_%g158246158263%_
                (lambda (_%g158247158260%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g158247158260%_))))
               (_%g158245158310%_
                (lambda (_%g158247158266%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g158247158266%_))
                      (let ((_%e158250158268%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g158247158266%_))))
                        (let ((_%hd158251158271%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e158250158268%_)))
                              (_%tl158252158273%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e158250158268%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl158252158273%_))
                              (let ((_%e158253158276%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl158252158273%_))))
                                (let ((_%hd158254158279%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e158253158276%_)))
                                      (_%tl158255158281%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e158253158276%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl158255158281%_))
                                      (let ((_%e158256158284%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl158255158281%_))))
                                        (let ((_%hd158257158287%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e158256158284%_)))
                                              (_%tl158258158289%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e158256158284%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl158258158289%_))
                                              ((lambda (_%L158292%_
                                                        _%L158293%_)
                                                 (let ((_%sym158308%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L158293%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym158308%_))
                                                   (let ((__tmp158497
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp158497
                                                      _%sym158308%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self158243%_
                                                      _%L158292%_))))
                                               _%hd158257158287%_
                                               _%hd158254158279%_)
                                              (_%g158246158263%_
                                               _%g158247158266%_))))
                                      (_%g158246158263%_ _%g158247158266%_))))
                              (_%g158246158263%_ _%g158247158266%_))))
                      (_%g158246158263%_ _%g158247158266%_)))))
          (_%g158245158310%_ _%stx158244%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self158191%_ _%stx158192%_)
        (let* ((_%g158194158207%_
                (lambda (_%g158195158204%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g158195158204%_))))
               (_%g158193158240%_
                (lambda (_%g158195158210%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g158195158210%_))
                      (let ((_%e158197158212%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g158195158210%_))))
                        (let ((_%hd158198158215%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e158197158212%_)))
                              (_%tl158199158217%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e158197158212%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl158199158217%_))
                              (let ((_%e158200158220%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl158199158217%_))))
                                (let ((_%hd158201158223%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e158200158220%_)))
                                      (_%tl158202158225%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e158200158220%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl158202158225%_))
                                      ((lambda (_%L158228%_)
                                         (if (let ((__tmp158498
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self158191%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L158228%_
                                                __tmp158498))
                                             (let ((__tmp158499
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self158191%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp158499
                                                _%stx158192%_))
                                             _%stx158192%_))
                                       _%hd158201158223%_)
                                      (_%g158194158207%_ _%g158195158210%_))))
                              (_%g158194158207%_ _%g158195158210%_))))
                      (_%g158194158207%_ _%g158195158210%_)))))
          (_%g158193158240%_ _%stx158192%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self158131%_ _%stx158132%_)
        (let* ((_%g158134158147%_
                (lambda (_%g158135158144%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g158135158144%_))))
               (_%g158133158188%_
                (lambda (_%g158135158150%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g158135158150%_))
                      (let ((_%e158137158152%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g158135158150%_))))
                        (let ((_%hd158138158155%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e158137158152%_)))
                              (_%tl158139158157%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e158137158152%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl158139158157%_))
                              (let ((_%e158140158160%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl158139158157%_))))
                                (let ((_%hd158141158163%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e158140158160%_)))
                                      (_%tl158142158165%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e158140158160%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl158142158165%_))
                                      ((lambda (_%L158168%_)
                                         (let ((_%$e158182%_
                                                (let ((__tmp158501
                                                       (lambda (_%sub158180%_)
                                                         (let ((__tmp158502
                                                                (car _%sub158180%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L158168%_
                                                            __tmp158502))))
                                                      (__tmp158500
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self158131%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp158501
                                                          __tmp158500))))
                                           (if _%$e158182%_
                                               ((lambda (_%sub158185%_)
                                                  (let ((__tmp158503
                                                         (cons '%#ref
                                                               (cons (cdr _%sub158185%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp158503
                                                     _%stx158132%_)))
                                                _%$e158182%_)
                                               _%stx158132%_)))
                                       _%hd158141158163%_)
                                      (_%g158134158147%_ _%g158135158150%_))))
                              (_%g158134158147%_ _%g158135158150%_))))
                      (_%g158134158147%_ _%g158135158150%_)))))
          (_%g158133158188%_ _%stx158132%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self158060%_ _%stx158061%_)
        (let* ((_%g158063158080%_
                (lambda (_%g158064158077%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g158064158077%_))))
               (_%g158062158128%_
                (lambda (_%g158064158083%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g158064158083%_))
                      (let ((_%e158067158085%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g158064158083%_))))
                        (let ((_%hd158068158088%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e158067158085%_)))
                              (_%tl158069158090%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e158067158085%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl158069158090%_))
                              (let ((_%e158070158093%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl158069158090%_))))
                                (let ((_%hd158071158096%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e158070158093%_)))
                                      (_%tl158072158098%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e158070158093%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl158072158098%_))
                                      (let ((_%e158073158101%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl158072158098%_))))
                                        (let ((_%hd158074158104%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e158073158101%_)))
                                              (_%tl158075158106%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e158073158101%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl158075158106%_))
                                              ((lambda (_%L158109%_
                                                        _%L158110%_)
                                                 (let ((_%new-expr158125%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self158060%_
                                                           _%L158109%_)))
                                                       (_%new-xid158126%_
                                                        (if (let ((__tmp158504
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self158060%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L158110%_ __tmp158504))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self158060%_ 'new-id))
                    _%L158110%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp158505
                                                          (cons '%#set!
                                                                (cons _%new-xid158126%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr158125%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp158505
                                                      _%stx158061%_))))
                                               _%hd158074158104%_
                                               _%hd158071158096%_)
                                              (_%g158063158080%_
                                               _%g158064158083%_))))
                                      (_%g158063158080%_ _%g158064158083%_))))
                              (_%g158063158080%_ _%g158064158083%_))))
                      (_%g158063158080%_ _%g158064158083%_)))))
          (_%g158062158128%_ _%stx158061%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self157983%_ _%stx157984%_)
        (let* ((_%g157986158003%_
                (lambda (_%g157987158000%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g157987158000%_))))
               (_%g157985158057%_
                (lambda (_%g157987158006%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g157987158006%_))
                      (let ((_%e157990158008%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g157987158006%_))))
                        (let ((_%hd157991158011%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e157990158008%_)))
                              (_%tl157992158013%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e157990158008%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl157992158013%_))
                              (let ((_%e157993158016%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl157992158013%_))))
                                (let ((_%hd157994158019%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e157993158016%_)))
                                      (_%tl157995158021%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e157993158016%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl157995158021%_))
                                      (let ((_%e157996158024%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl157995158021%_))))
                                        (let ((_%hd157997158027%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e157996158024%_)))
                                              (_%tl157998158029%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e157996158024%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl157998158029%_))
                                              ((lambda (_%L158032%_
                                                        _%L158033%_)
                                                 (let ((_%new-expr158054%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self157983%_
                                                           _%L158032%_)))
                                                       (_%new-xid158055%_
                                                        (let ((_%$e158050%_
                                                               (let ((__tmp158507
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub158048%_)
                                (let ((__tmp158508 (car _%sub158048%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L158033%_
                                   __tmp158508))))
                             (__tmp158506
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self157983%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp158507 __tmp158506))))
                  (if _%$e158050%_ (cdr _%$e158050%_) _%L158033%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp158509
                                                          (cons '%#set!
                                                                (cons _%new-xid158055%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr158054%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp158509
                                                      _%stx157984%_))))
                                               _%hd157997158027%_
                                               _%hd157994158019%_)
                                              (_%g157986158003%_
                                               _%g157987158006%_))))
                                      (_%g157986158003%_ _%g157987158006%_))))
                              (_%g157986158003%_ _%g157987158006%_))))
                      (_%g157986158003%_ _%g157987158006%_)))))
          (_%g157985158057%_ _%stx157984%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self157929%_ _%stx157930%_)
        (let* ((_%g157932157945%_
                (lambda (_%g157933157942%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g157933157942%_))))
               (_%g157931157980%_
                (lambda (_%g157933157948%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g157933157948%_))
                      (let ((_%e157935157950%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g157933157948%_))))
                        (let ((_%hd157936157953%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e157935157950%_)))
                              (_%tl157937157955%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e157935157950%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl157937157955%_))
                              (let ((_%e157938157958%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl157937157955%_))))
                                (let ((_%hd157939157961%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e157938157958%_)))
                                      (_%tl157940157963%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e157938157958%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl157940157963%_))
                                      ((lambda (_%L157966%_)
                                         (let* ((_%eid157978%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L157966%_)))
                                                (__tmp158510
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self157929%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp158510
                                            _%eid157978%_
                                            1+
                                            '0)))
                                       _%hd157939157961%_)
                                      (_%g157932157945%_ _%g157933157948%_))))
                              (_%g157932157945%_ _%g157933157948%_))))
                      (_%g157932157945%_ _%g157933157948%_)))))
          (_%g157931157980%_ _%stx157930%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self157859%_ _%stx157860%_)
        (let* ((_%g157862157879%_
                (lambda (_%g157863157876%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g157863157876%_))))
               (_%g157861157926%_
                (lambda (_%g157863157882%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g157863157882%_))
                      (let ((_%e157866157884%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g157863157882%_))))
                        (let ((_%hd157867157887%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e157866157884%_)))
                              (_%tl157868157889%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e157866157884%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl157868157889%_))
                              (let ((_%e157869157892%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl157868157889%_))))
                                (let ((_%hd157870157895%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e157869157892%_)))
                                      (_%tl157871157897%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e157869157892%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl157871157897%_))
                                      (let ((_%e157872157900%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl157871157897%_))))
                                        (let ((_%hd157873157903%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e157872157900%_)))
                                              (_%tl157874157905%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e157872157900%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl157874157905%_))
                                              ((lambda (_%L157908%_
                                                        _%L157909%_)
                                                 (let ((_%eid157924%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L157909%_))))
                                                   (let ((__tmp158511
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self157859%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp158511
                                                      _%eid157924%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self157859%_
                                                      _%L157908%_))))
                                               _%hd157873157903%_
                                               _%hd157870157895%_)
                                              (_%g157862157879%_
                                               _%g157863157882%_))))
                                      (_%g157862157879%_ _%g157863157882%_))))
                              (_%g157862157879%_ _%g157863157882%_))))
                      (_%g157862157879%_ _%g157863157882%_)))))
          (_%g157861157926%_ _%stx157860%_))))
    (define gxc#find-body%
      (lambda (_%self157772%_ _%stx157773%_)
        (let* ((_%g157775157794%_
                (lambda (_%g157776157791%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g157776157791%_))))
               (_%g157774157856%_
                (lambda (_%g157776157797%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g157776157797%_))
                      (let ((_%e157778157799%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g157776157797%_))))
                        (let ((_%hd157779157802%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e157778157799%_)))
                              (_%tl157780157804%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e157778157799%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl157780157804%_))
                              (let ((_g158512_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl157780157804%_
                                        '0))))
                                (begin
                                  (let ((_g158513_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g158512_)
                                               (##values-length _g158512_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g158513_ 2)))
                                        (error "Context expects 2 values"
                                               _g158513_)))
                                  (let ((_%target157781157807%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g158512_ 0)))
                                        (_%tl157783157809%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g158512_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl157783157809%_))
                                        (letrec ((_%loop157784157812%_
                                                  (lambda (_%hd157782157815%_
                                                           _%expr157788157817%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd157782157815%_))
                                                        (let ((_%e157785157820%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd157782157815%_))))
                  (let ((_%lp-hd157786157823%_
                         (let ()
                           (declare (not safe))
                           (##car _%e157785157820%_)))
                        (_%lp-tl157787157825%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e157785157820%_))))
                    (_%loop157784157812%_
                     _%lp-tl157787157825%_
                     (cons _%lp-hd157786157823%_ _%expr157788157817%_))))
                (let ((_%expr157789157828%_ (reverse _%expr157788157817%_)))
                  ((lambda (_%L157831%_)
                     (let ((__tmp158516
                            (lambda (_%g157844157846%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self157772%_
                                 _%g157844157846%_))))
                           (__tmp158514
                            (let ((__tmp158515
                                   (lambda (_%g157848157851%_
                                            _%g157849157853%_)
                                     (cons _%g157848157851%_
                                           _%g157849157853%_))))
                              (declare (not safe))
                              (__foldr1 __tmp158515 '() _%L157831%_))))
                       (declare (not safe))
                       (__ormap1 __tmp158516 __tmp158514)))
                   _%expr157789157828%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop157784157812%_
                                           _%target157781157807%_
                                           '()))
                                        (_%g157775157794%_
                                         _%g157776157797%_)))))
                              (_%g157775157794%_ _%g157776157797%_))))
                      (_%g157775157794%_ _%g157776157797%_)))))
          (_%g157774157856%_ _%stx157773%_))))
    (define gxc#find-let-values%
      (lambda (_%self157622%_ _%stx157623%_)
        (let* ((_%g157625157660%_
                (lambda (_%g157626157657%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g157626157657%_))))
               (_%g157624157769%_
                (lambda (_%g157626157663%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g157626157663%_))
                      (let ((_%e157630157665%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g157626157663%_))))
                        (let ((_%hd157631157668%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e157630157665%_)))
                              (_%tl157632157670%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e157630157665%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl157632157670%_))
                              (let ((_%e157633157673%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl157632157670%_))))
                                (let ((_%hd157634157676%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e157633157673%_)))
                                      (_%tl157635157678%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e157633157673%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd157634157676%_))
                                      (let ((_g158517_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd157634157676%_
                                                '0))))
                                        (begin
                                          (let ((_g158518_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g158517_)
                                                       (##values-length
                                                        _g158517_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g158518_ 2)))
                                                (error "Context expects 2 values"
                                                       _g158518_)))
                                          (let ((_%target157636157681%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g158517_ 0)))
                                                (_%tl157638157683%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g158517_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl157638157683%_))
                                                (letrec ((_%loop157639157686%_
                                                          (lambda (_%hd157637157689%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr157643157691%_
                           _%bind157644157693%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd157637157689%_))
                        (let ((_%e157640157696%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd157637157689%_))))
                          (let ((_%lp-hd157641157699%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e157640157696%_)))
                                (_%lp-tl157642157701%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e157640157696%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd157641157699%_))
                                (let ((_%e157647157704%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd157641157699%_))))
                                  (let ((_%hd157648157707%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e157647157704%_)))
                                        (_%tl157649157709%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e157647157704%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl157649157709%_))
                                        (let ((_%e157650157712%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl157649157709%_))))
                                          (let ((_%hd157651157715%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e157650157712%_)))
                                                (_%tl157652157717%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e157650157712%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl157652157717%_))
                                                (_%loop157639157686%_
                                                 _%lp-tl157642157701%_
                                                 (cons _%hd157651157715%_
                                                       _%expr157643157691%_)
                                                 (cons _%hd157648157707%_
                                                       _%bind157644157693%_))
                                                (_%g157625157660%_
                                                 _%g157626157663%_))))
                                        (_%g157625157660%_
                                         _%g157626157663%_))))
                                (_%g157625157660%_ _%g157626157663%_))))
                        (let ((_%expr157645157720%_
                               (reverse _%expr157643157691%_))
                              (_%bind157646157722%_
                               (reverse _%bind157644157693%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl157635157678%_))
                              (let ((_%e157653157725%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl157635157678%_))))
                                (let ((_%hd157654157728%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e157653157725%_)))
                                      (_%tl157655157730%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e157653157725%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl157655157730%_))
                                      ((lambda (_%L157733%_
                                                _%L157734%_
                                                _%L157735%_)
                                         (let ((_%$e157766%_
                                                (let ((__tmp158521
                                                       (lambda (_%g157754157756%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self157622%_
                                                            _%g157754157756%_))))
                                                      (__tmp158519
                                                       (let ((__tmp158520
                                                              (lambda (_%g157758157761%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g157759157763%_)
                        (cons _%g157758157761%_ _%g157759157763%_))))
                 (declare (not safe))
                 (__foldr1 __tmp158520 '() _%L157734%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp158521
                                                   __tmp158519))))
                                           (if _%$e157766%_
                                               _%$e157766%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self157622%_
                                                  _%L157733%_)))))
                                       _%hd157654157728%_
                                       _%expr157645157720%_
                                       _%bind157646157722%_)
                                      (_%g157625157660%_ _%g157626157663%_))))
                              (_%g157625157660%_ _%g157626157663%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop157639157686%_
                                                   _%target157636157681%_
                                                   '()
                                                   '()))
                                                (_%g157625157660%_
                                                 _%g157626157663%_)))))
                                      (_%g157625157660%_ _%g157626157663%_))))
                              (_%g157625157660%_ _%g157626157663%_))))
                      (_%g157625157660%_ _%g157626157663%_)))))
          (_%g157624157769%_ _%stx157623%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self157566%_ _%stx157567%_)
        (let* ((_%g157569157582%_
                (lambda (_%g157570157579%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g157570157579%_))))
               (_%g157568157619%_
                (lambda (_%g157570157585%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g157570157585%_))
                      (let ((_%e157572157587%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g157570157585%_))))
                        (let ((_%hd157573157590%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e157572157587%_)))
                              (_%tl157574157592%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e157572157587%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl157574157592%_))
                              (let ((_%e157575157595%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl157574157592%_))))
                                (let ((_%hd157576157598%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e157575157595%_)))
                                      (_%tl157577157600%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e157575157595%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl157577157600%_))
                                      ((lambda (_%L157603%_)
                                         (let ((__tmp158523
                                                (lambda (_%g157614157616%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L157603%_
                                                     _%g157614157616%_))))
                                               (__tmp158522
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self157566%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp158523 __tmp158522)))
                                       _%hd157576157598%_)
                                      (_%g157569157582%_ _%g157570157585%_))))
                              (_%g157569157582%_ _%g157570157585%_))))
                      (_%g157569157582%_ _%g157570157585%_)))))
          (_%g157568157619%_ _%stx157567%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self157491%_ _%stx157492%_)
        (let* ((_%g157494157511%_
                (lambda (_%g157495157508%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g157495157508%_))))
               (_%g157493157563%_
                (lambda (_%g157495157514%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g157495157514%_))
                      (let ((_%e157498157516%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g157495157514%_))))
                        (let ((_%hd157499157519%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e157498157516%_)))
                              (_%tl157500157521%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e157498157516%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl157500157521%_))
                              (let ((_%e157501157524%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl157500157521%_))))
                                (let ((_%hd157502157527%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e157501157524%_)))
                                      (_%tl157503157529%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e157501157524%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl157503157529%_))
                                      (let ((_%e157504157532%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl157503157529%_))))
                                        (let ((_%hd157505157535%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e157504157532%_)))
                                              (_%tl157506157537%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e157504157532%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl157506157537%_))
                                              ((lambda (_%L157540%_
                                                        _%L157541%_)
                                                 (let ((_%$e157560%_
                                                        (let ((__tmp158525
                                                               (lambda (_%g157555157557%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L157541%_
                            _%g157555157557%_))))
                      (__tmp158524
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self157491%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp158525 __tmp158524))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e157560%_
                                                       _%$e157560%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self157491%_
                                                          _%L157540%_)))))
                                               _%hd157505157535%_
                                               _%hd157502157527%_)
                                              (_%g157494157511%_
                                               _%g157495157514%_))))
                                      (_%g157494157511%_ _%g157495157514%_))))
                              (_%g157494157511%_ _%g157495157514%_))))
                      (_%g157494157511%_ _%g157495157514%_)))))
          (_%g157493157563%_ _%stx157492%_))))))
