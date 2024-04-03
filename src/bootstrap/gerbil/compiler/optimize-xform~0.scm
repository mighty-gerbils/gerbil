(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1712124236)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp150456 (list gxc#::void::t))
            (__tmp150455 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp150456
         '()
         __tmp150455
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args150196%_
        (apply make-instance gxc#::collect-mutators::t _%$args150196%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp150457
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
        (__make-promise __tmp150457)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx150188%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self150191%_
                (let ((__obj150443
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj150443))
               (__tmp150458
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self150191%_ _%stx150188%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150458
           gxc#current-compile-method
           _%self150191%_))))
    (define gxc#::collect-methods::t
      (let ((__tmp150460 (list gxc#::void::t))
            (__tmp150459 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-methods::t
         '::collect-methods
         __tmp150460
         '()
         __tmp150459
         '#f)))
    (define gxc#::collect-methods?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-methods::t)))
    (define gxc#make-::collect-methods
      (lambda _%$args150185%_
        (apply make-instance gxc#::collect-methods::t _%$args150185%_)))
    (define gxc#::collect-methods-bind-methods!
      (let ((__tmp150461
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
        (__make-promise __tmp150461)))
    (define gxc#apply-collect-methods
      (lambda (_%stx150177%_)
        (force gxc#::collect-methods-bind-methods!)
        (let* ((_%self150180%_
                (let ((__obj150445
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-methods::t))))
                  __obj150445))
               (__tmp150462
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self150180%_ _%stx150177%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150462
           gxc#current-compile-method
           _%self150180%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp150464 (list gxc#::basic-xform-expression::t))
            (__tmp150463 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp150464
         '(id new-id)
         __tmp150463
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args150174%_
        (apply make-instance gxc#::expression-subst::t _%$args150174%_)))
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
      (let ((__tmp150465
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
        (__make-promise __tmp150465)))
    (define gxc#apply-expression-subst__%
      (lambda (_%_150143%_
               _%id150139150145%_
               _%new-id150140150147%_
               _%stx150149%_)
        (let* ((_%id150152%_
                (if (eq? _%id150139150145%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id150139150145%_))
               (_%new-id150154%_
                (if (eq? _%new-id150140150147%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id150140150147%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self150156%_
                  (let ((__obj150447
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150447
                       _%id150152%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150447
                       _%new-id150154%_
                       '2
                       '#f
                       '#f))
                    __obj150447))
                 (__tmp150466
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150156%_ _%stx150149%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150466
             gxc#current-compile-method
             _%self150156%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords150163%_ . _%args150164%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords150163%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords150163%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150163%_
                  'new-id:
                  absent-value))
               _%args150164%_)))
    (define gxc#apply-expression-subst
      (lambda _%args150141150170%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args150141150170%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp150468 (list gxc#::basic-xform-expression::t))
            (__tmp150467 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp150468
         '(subst)
         __tmp150467
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args150135%_
        (apply make-instance gxc#::expression-subst*::t _%$args150135%_)))
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
      (let ((__tmp150469
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
        (__make-promise __tmp150469)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%_150108%_ _%subst150105150110%_ _%stx150112%_)
        (let ((_%subst150115%_
               (if (eq? _%subst150105150110%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst150105150110%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self150117%_
                  (let ((__obj150449
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150449
                       _%subst150115%_
                       '1
                       '#f
                       '#f))
                    __obj150449))
                 (__tmp150470
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150117%_ _%stx150112%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150470
             gxc#current-compile-method
             _%self150117%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords150124%_ . _%args150125%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords150124%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150124%_
                  'subst:
                  absent-value))
               _%args150125%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args150106150131%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args150106150131%_)))
    (define gxc#::find-expression::t
      (let ((__tmp150471 (list gxc#::false-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp150471
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args150101%_
        (apply make-instance gxc#::find-expression::t _%$args150101%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp150472
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
        (__make-promise __tmp150472)))
    (define gxc#::find-var-refs::t
      (let ((__tmp150474 (list gxc#::find-expression::t))
            (__tmp150473 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp150474
         '(ids)
         __tmp150473
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args150097%_
        (apply make-instance gxc#::find-var-refs::t _%$args150097%_)))
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
      (let ((__tmp150475
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
        (__make-promise __tmp150475)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%_150070%_ _%ids150067150072%_ _%stx150074%_)
        (let ((_%ids150077%_
               (if (eq? _%ids150067150072%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids150067150072%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self150079%_
                  (let ((__obj150452
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150452
                       _%ids150077%_
                       '1
                       '#f
                       '#f))
                    __obj150452))
                 (__tmp150476
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150079%_ _%stx150074%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150476
             gxc#current-compile-method
             _%self150079%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords150086%_ . _%args150087%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords150086%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords150086%_ 'ids: absent-value))
               _%args150087%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args150068150093%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args150068150093%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp150478 (list gxc#::collect-expression-refs::t))
            (__tmp150477 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp150478
         '()
         __tmp150477
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args150063%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args150063%_)))
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
      (let ((__tmp150479
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
        (__make-promise __tmp150479)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%_150036%_ _%table150033150038%_ _%stx150040%_)
        (let ((_%table150043%_
               (if (eq? _%table150033150038%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table150033150038%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self150045%_
                  (let ((__obj150454
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150454
                       _%table150043%_
                       '1
                       '#f
                       '#f))
                    __obj150454))
                 (__tmp150480
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150045%_ _%stx150040%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150480
             gxc#current-compile-method
             _%self150045%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords150052%_ . _%args150053%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords150052%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150052%_
                  'table:
                  absent-value))
               _%args150053%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args150034150059%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args150034150059%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self149962%_ _%stx149963%_)
        (let* ((_%g149965149982%_
                (lambda (_%g149966149979%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149966149979%_))))
               (_%g149964150029%_
                (lambda (_%g149966149985%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149966149985%_))
                      (let ((_%e149971149987%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149966149985%_))))
                        (let ((_%hd149970149990%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149971149987%_)))
                              (_%tl149969149992%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149971149987%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149969149992%_))
                              (let ((_%e149974149995%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149969149992%_))))
                                (let ((_%hd149973149998%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149974149995%_)))
                                      (_%tl149972150000%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149974149995%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149972150000%_))
                                      (let ((_%e149977150003%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149972150000%_))))
                                        (let ((_%hd149976150006%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149977150003%_)))
                                              (_%tl149975150008%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149977150003%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149975150008%_))
                                              ((lambda (_%L150011%_
                                                        _%L150012%_)
                                                 (let ((_%sym150027%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L150012%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym150027%_))
                                                   (let ((__tmp150481
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp150481
                                                      _%sym150027%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self149962%_
                                                      _%L150011%_))))
                                               _%hd149976150006%_
                                               _%hd149973149998%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g149965149982%_
                                                 _%g149966149985%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149965149982%_
                                         _%g149966149985%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149965149982%_ _%g149966149985%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149965149982%_ _%g149966149985%_))))))
          (declare (not safe))
          (_%g149964150029%_ _%stx149963%_))))
    (define gxc#collect-methods-call%
      (lambda (_%self149515%_ _%stx149516%_)
        (let* ((_%__stx150199150200%_ _%stx149516%_)
               (_%g149520149622%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx150199150200%_)))))
          (let ((_%__kont150201150202%_
                 (lambda (_%L149912%_
                          _%L149913%_
                          _%L149914%_
                          _%L149915%_
                          _%L149916%_)
                   (let ((__tmp150482
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _%L149913%_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp150482))))
                (_%__kont150203150204%_
                 (lambda (_%L149738%_ _%L149739%_ _%L149740%_ _%L149741%_)
                   (let ((__tmp150483
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _%L149738%_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp150483))))
                (_%__kont150205150206%_ (lambda () '#!void)))
            (let ((_%__match150334150335%_
                   (lambda (_%e149529149784%_
                            _%hd149528149787%_
                            _%tl149527149789%_
                            _%e149532149792%_
                            _%hd149531149795%_
                            _%tl149530149797%_
                            _%e149535149800%_
                            _%hd149534149803%_
                            _%tl149533149805%_
                            _%e149538149808%_
                            _%hd149537149811%_
                            _%tl149536149813%_
                            _%e149541149816%_
                            _%hd149540149819%_
                            _%tl149539149821%_
                            _%e149544149824%_
                            _%hd149543149827%_
                            _%tl149542149829%_
                            _%e149547149832%_
                            _%hd149546149835%_
                            _%tl149545149837%_
                            _%e149550149840%_
                            _%hd149549149843%_
                            _%tl149548149845%_
                            _%e149553149848%_
                            _%hd149552149851%_
                            _%tl149551149853%_
                            _%e149556149856%_
                            _%hd149555149859%_
                            _%tl149554149861%_
                            _%e149559149864%_
                            _%hd149558149867%_
                            _%tl149557149869%_
                            _%e149562149872%_
                            _%hd149561149875%_
                            _%tl149560149877%_
                            _%e149565149880%_
                            _%hd149564149883%_
                            _%tl149563149885%_
                            _%e149568149888%_
                            _%hd149567149891%_
                            _%tl149566149893%_
                            _%e149571149896%_
                            _%hd149570149899%_
                            _%tl149569149901%_
                            _%e149574149904%_
                            _%hd149573149907%_
                            _%tl149572149909%_)
                     (let ((_%L149912%_ _%hd149573149907%_)
                           (_%L149913%_ _%hd149564149883%_)
                           (_%L149914%_ _%hd149555149859%_)
                           (_%L149915%_ _%hd149546149835%_)
                           (_%L149916%_ _%hd149537149811%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L149916%_
                              'bind-method!))
                           (_%__kont150201150202%_
                            _%L149912%_
                            _%L149913%_
                            _%L149914%_
                            _%L149915%_
                            _%L149916%_)
                           (_%__kont150205150206%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx150199150200%_))
                  (let ((_%e149529149784%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx150199150200%_))))
                    (let ((_%tl149527149789%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e149529149784%_)))
                          (_%hd149528149787%_
                           (let ()
                             (declare (not safe))
                             (##car _%e149529149784%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl149527149789%_))
                          (let ((_%e149532149792%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl149527149789%_))))
                            (let ((_%tl149530149797%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e149532149792%_)))
                                  (_%hd149531149795%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e149532149792%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd149531149795%_))
                                  (let ((_%e149535149800%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd149531149795%_))))
                                    (let ((_%tl149533149805%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e149535149800%_)))
                                          (_%hd149534149803%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e149535149800%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd149534149803%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd149534149803%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl149533149805%_))
                                                  (let ((_%e149538149808%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl149533149805%_))))
                                                    (let ((_%tl149536149813%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e149538149808%_)))
                                                          (_%hd149537149811%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e149538149808%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl149536149813%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl149530149797%_))
                      (let ((_%e149541149816%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl149530149797%_))))
                        (let ((_%tl149539149821%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149541149816%_)))
                              (_%hd149540149819%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149541149816%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd149540149819%_))
                              (let ((_%e149544149824%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd149540149819%_))))
                                (let ((_%tl149542149829%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149544149824%_)))
                                      (_%hd149543149827%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149544149824%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd149543149827%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd149543149827%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl149542149829%_))
                                              (let ((_%e149547149832%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl149542149829%_))))
                                                (let ((_%tl149545149837%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e149547149832%_)))
                                                      (_%hd149546149835%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e149547149832%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl149545149837%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl149539149821%_))
                                                          (let ((_%e149550149840%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl149539149821%_))))
                    (let ((_%tl149548149845%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e149550149840%_)))
                          (_%hd149549149843%_
                           (let ()
                             (declare (not safe))
                             (##car _%e149550149840%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd149549149843%_))
                          (let ((_%e149553149848%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd149549149843%_))))
                            (let ((_%tl149551149853%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e149553149848%_)))
                                  (_%hd149552149851%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e149553149848%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd149552149851%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd149552149851%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl149551149853%_))
                                          (let ((_%e149556149856%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl149551149853%_))))
                                            (let ((_%tl149554149861%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e149556149856%_)))
                                                  (_%hd149555149859%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e149556149856%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl149554149861%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl149548149845%_))
                                                      (let ((_%e149559149864%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl149548149845%_))))
                (let ((_%tl149557149869%_
                       (let () (declare (not safe)) (##cdr _%e149559149864%_)))
                      (_%hd149558149867%_
                       (let ()
                         (declare (not safe))
                         (##car _%e149559149864%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd149558149867%_))
                      (let ((_%e149562149872%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd149558149867%_))))
                        (let ((_%tl149560149877%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149562149872%_)))
                              (_%hd149561149875%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149562149872%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd149561149875%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd149561149875%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149560149877%_))
                                      (let ((_%e149565149880%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149560149877%_))))
                                        (let ((_%tl149563149885%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149565149880%_)))
                                              (_%hd149564149883%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149565149880%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149563149885%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl149557149869%_))
                                                  (let ((_%e149568149888%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl149557149869%_))))
                                                    (let ((_%tl149566149893%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e149568149888%_)))
                                                          (_%hd149567149891%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e149568149888%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd149567149891%_))
                                                          (let ((_%e149571149896%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd149567149891%_))))
                    (let ((_%tl149569149901%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e149571149896%_)))
                          (_%hd149570149899%_
                           (let ()
                             (declare (not safe))
                             (##car _%e149571149896%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd149570149899%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd149570149899%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl149569149901%_))
                                  (let ((_%e149574149904%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl149569149901%_))))
                                    (let ((_%tl149572149909%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e149574149904%_)))
                                          (_%hd149573149907%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e149574149904%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl149572149909%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149566149893%_))
                                              (_%__match150334150335%_
                                               _%e149529149784%_
                                               _%hd149528149787%_
                                               _%tl149527149789%_
                                               _%e149532149792%_
                                               _%hd149531149795%_
                                               _%tl149530149797%_
                                               _%e149535149800%_
                                               _%hd149534149803%_
                                               _%tl149533149805%_
                                               _%e149538149808%_
                                               _%hd149537149811%_
                                               _%tl149536149813%_
                                               _%e149541149816%_
                                               _%hd149540149819%_
                                               _%tl149539149821%_
                                               _%e149544149824%_
                                               _%hd149543149827%_
                                               _%tl149542149829%_
                                               _%e149547149832%_
                                               _%hd149546149835%_
                                               _%tl149545149837%_
                                               _%e149550149840%_
                                               _%hd149549149843%_
                                               _%tl149548149845%_
                                               _%e149553149848%_
                                               _%hd149552149851%_
                                               _%tl149551149853%_
                                               _%e149556149856%_
                                               _%hd149555149859%_
                                               _%tl149554149861%_
                                               _%e149559149864%_
                                               _%hd149558149867%_
                                               _%tl149557149869%_
                                               _%e149562149872%_
                                               _%hd149561149875%_
                                               _%tl149560149877%_
                                               _%e149565149880%_
                                               _%hd149564149883%_
                                               _%tl149563149885%_
                                               _%e149568149888%_
                                               _%hd149567149891%_
                                               _%tl149566149893%_
                                               _%e149571149896%_
                                               _%hd149570149899%_
                                               _%tl149569149901%_
                                               _%e149574149904%_
                                               _%hd149573149907%_
                                               _%tl149572149909%_)
                                              (_%__kont150205150206%_))
                                          (_%__kont150205150206%_))))
                                  (_%__kont150205150206%_))
                              (_%__kont150205150206%_))
                          (_%__kont150205150206%_))))
                  (_%__kont150205150206%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl149557149869%_))
                                                      (if (let ((__tmp150484
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp150484 'bind-method!))
                  (let ((_%L149738%_ _%hd149564149883%_)
                        (_%L149739%_ _%hd149555149859%_)
                        (_%L149740%_ _%hd149546149835%_)
                        (_%L149741%_ _%hd149537149811%_))
                    (_%__kont150203150204%_
                     _%L149738%_
                     _%L149739%_
                     _%L149740%_
                     _%L149741%_))
                  (_%__kont150205150206%_))
              (_%__kont150205150206%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont150205150206%_))))
                                      (_%__kont150205150206%_))
                                  (_%__kont150205150206%_))
                              (_%__kont150205150206%_))))
                      (_%__kont150205150206%_))))
              (_%__kont150205150206%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont150205150206%_))))
                                          (_%__kont150205150206%_))
                                      (_%__kont150205150206%_))
                                  (_%__kont150205150206%_))))
                          (_%__kont150205150206%_))))
                  (_%__kont150205150206%_))
              (_%__kont150205150206%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont150205150206%_))
                                          (_%__kont150205150206%_))
                                      (_%__kont150205150206%_))))
                              (_%__kont150205150206%_))))
                      (_%__kont150205150206%_))
                  (_%__kont150205150206%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont150205150206%_))
                                              (_%__kont150205150206%_))
                                          (_%__kont150205150206%_))))
                                  (_%__kont150205150206%_))))
                          (_%__kont150205150206%_))))
                  (_%__kont150205150206%_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_%self149463%_ _%stx149464%_)
        (let* ((_%g149466149479%_
                (lambda (_%g149467149476%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149467149476%_))))
               (_%g149465149512%_
                (lambda (_%g149467149482%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149467149482%_))
                      (let ((_%e149471149484%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149467149482%_))))
                        (let ((_%hd149470149487%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149471149484%_)))
                              (_%tl149469149489%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149471149484%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149469149489%_))
                              (let ((_%e149474149492%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149469149489%_))))
                                (let ((_%hd149473149495%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149474149492%_)))
                                      (_%tl149472149497%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149474149492%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149472149497%_))
                                      ((lambda (_%L149500%_)
                                         (if (let ((__tmp150485
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self149463%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L149500%_
                                                __tmp150485))
                                             (let ((__tmp150486
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self149463%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp150486
                                                _%stx149464%_))
                                             _%stx149464%_))
                                       _%hd149473149495%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g149466149479%_
                                         _%g149467149482%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149466149479%_ _%g149467149482%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149466149479%_ _%g149467149482%_))))))
          (declare (not safe))
          (_%g149465149512%_ _%stx149464%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self149403%_ _%stx149404%_)
        (let* ((_%g149406149419%_
                (lambda (_%g149407149416%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149407149416%_))))
               (_%g149405149460%_
                (lambda (_%g149407149422%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149407149422%_))
                      (let ((_%e149411149424%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149407149422%_))))
                        (let ((_%hd149410149427%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149411149424%_)))
                              (_%tl149409149429%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149411149424%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149409149429%_))
                              (let ((_%e149414149432%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149409149429%_))))
                                (let ((_%hd149413149435%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149414149432%_)))
                                      (_%tl149412149437%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149414149432%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149412149437%_))
                                      ((lambda (_%L149440%_)
                                         (let ((_%$e149454%_
                                                (let ((__tmp150488
                                                       (lambda (_%sub149452%_)
                                                         (let ((__tmp150489
                                                                (car _%sub149452%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L149440%_
                                                            __tmp150489))))
                                                      (__tmp150487
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self149403%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp150488
                                                          __tmp150487))))
                                           (if _%$e149454%_
                                               ((lambda (_%sub149457%_)
                                                  (let ((__tmp150490
                                                         (cons '%#ref
                                                               (cons (cdr _%sub149457%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp150490
                                                     _%stx149404%_)))
                                                _%$e149454%_)
                                               (let () _%stx149404%_))))
                                       _%hd149413149435%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g149406149419%_
                                         _%g149407149422%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149406149419%_ _%g149407149422%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149406149419%_ _%g149407149422%_))))))
          (declare (not safe))
          (_%g149405149460%_ _%stx149404%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self149332%_ _%stx149333%_)
        (let* ((_%g149335149352%_
                (lambda (_%g149336149349%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149336149349%_))))
               (_%g149334149400%_
                (lambda (_%g149336149355%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149336149355%_))
                      (let ((_%e149341149357%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149336149355%_))))
                        (let ((_%hd149340149360%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149341149357%_)))
                              (_%tl149339149362%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149341149357%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149339149362%_))
                              (let ((_%e149344149365%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149339149362%_))))
                                (let ((_%hd149343149368%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149344149365%_)))
                                      (_%tl149342149370%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149344149365%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149342149370%_))
                                      (let ((_%e149347149373%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149342149370%_))))
                                        (let ((_%hd149346149376%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149347149373%_)))
                                              (_%tl149345149378%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149347149373%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149345149378%_))
                                              ((lambda (_%L149381%_
                                                        _%L149382%_)
                                                 (let ((_%new-expr149397%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self149332%_
                                                           _%L149381%_)))
                                                       (_%new-xid149398%_
                                                        (if (let ((__tmp150491
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self149332%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L149382%_ __tmp150491))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self149332%_ 'new-id))
                    _%L149382%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp150492
                                                          (cons '%#set!
                                                                (cons _%new-xid149398%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr149397%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp150492
                                                      _%stx149333%_))))
                                               _%hd149346149376%_
                                               _%hd149343149368%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g149335149352%_
                                                 _%g149336149355%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149335149352%_
                                         _%g149336149355%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149335149352%_ _%g149336149355%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149335149352%_ _%g149336149355%_))))))
          (declare (not safe))
          (_%g149334149400%_ _%stx149333%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self149255%_ _%stx149256%_)
        (let* ((_%g149258149275%_
                (lambda (_%g149259149272%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149259149272%_))))
               (_%g149257149329%_
                (lambda (_%g149259149278%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149259149278%_))
                      (let ((_%e149264149280%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149259149278%_))))
                        (let ((_%hd149263149283%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149264149280%_)))
                              (_%tl149262149285%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149264149280%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149262149285%_))
                              (let ((_%e149267149288%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149262149285%_))))
                                (let ((_%hd149266149291%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149267149288%_)))
                                      (_%tl149265149293%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149267149288%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149265149293%_))
                                      (let ((_%e149270149296%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149265149293%_))))
                                        (let ((_%hd149269149299%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149270149296%_)))
                                              (_%tl149268149301%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149270149296%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149268149301%_))
                                              ((lambda (_%L149304%_
                                                        _%L149305%_)
                                                 (let ((_%new-expr149326%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self149255%_
                                                           _%L149304%_)))
                                                       (_%new-xid149327%_
                                                        (let ((_%$e149322%_
                                                               (let ((__tmp150494
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub149320%_)
                                (let ((__tmp150495 (car _%sub149320%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L149305%_
                                   __tmp150495))))
                             (__tmp150493
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self149255%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp150494 __tmp150493))))
                  (if _%$e149322%_ (cdr _%$e149322%_) (let () _%L149305%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp150496
                                                          (cons '%#set!
                                                                (cons _%new-xid149327%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr149326%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp150496
                                                      _%stx149256%_))))
                                               _%hd149269149299%_
                                               _%hd149266149291%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g149258149275%_
                                                 _%g149259149278%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149258149275%_
                                         _%g149259149278%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149258149275%_ _%g149259149278%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149258149275%_ _%g149259149278%_))))))
          (declare (not safe))
          (_%g149257149329%_ _%stx149256%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self149201%_ _%stx149202%_)
        (let* ((_%g149204149217%_
                (lambda (_%g149205149214%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149205149214%_))))
               (_%g149203149252%_
                (lambda (_%g149205149220%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149205149220%_))
                      (let ((_%e149209149222%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149205149220%_))))
                        (let ((_%hd149208149225%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149209149222%_)))
                              (_%tl149207149227%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149209149222%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149207149227%_))
                              (let ((_%e149212149230%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149207149227%_))))
                                (let ((_%hd149211149233%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149212149230%_)))
                                      (_%tl149210149235%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149212149230%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149210149235%_))
                                      ((lambda (_%L149238%_)
                                         (let* ((_%eid149250%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L149238%_)))
                                                (__tmp150497
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self149201%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp150497
                                            _%eid149250%_
                                            1+
                                            '0)))
                                       _%hd149211149233%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g149204149217%_
                                         _%g149205149220%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149204149217%_ _%g149205149220%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149204149217%_ _%g149205149220%_))))))
          (declare (not safe))
          (_%g149203149252%_ _%stx149202%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self149131%_ _%stx149132%_)
        (let* ((_%g149134149151%_
                (lambda (_%g149135149148%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149135149148%_))))
               (_%g149133149198%_
                (lambda (_%g149135149154%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149135149154%_))
                      (let ((_%e149140149156%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149135149154%_))))
                        (let ((_%hd149139149159%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149140149156%_)))
                              (_%tl149138149161%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149140149156%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149138149161%_))
                              (let ((_%e149143149164%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149138149161%_))))
                                (let ((_%hd149142149167%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149143149164%_)))
                                      (_%tl149141149169%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149143149164%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149141149169%_))
                                      (let ((_%e149146149172%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149141149169%_))))
                                        (let ((_%hd149145149175%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149146149172%_)))
                                              (_%tl149144149177%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149146149172%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149144149177%_))
                                              ((lambda (_%L149180%_
                                                        _%L149181%_)
                                                 (let ((_%eid149196%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L149181%_))))
                                                   (let ((__tmp150498
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self149131%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp150498
                                                      _%eid149196%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self149131%_
                                                      _%L149180%_))))
                                               _%hd149145149175%_
                                               _%hd149142149167%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g149134149151%_
                                                 _%g149135149154%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149134149151%_
                                         _%g149135149154%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149134149151%_ _%g149135149154%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149134149151%_ _%g149135149154%_))))))
          (declare (not safe))
          (_%g149133149198%_ _%stx149132%_))))
    (define gxc#find-body%
      (lambda (_%self149044%_ _%stx149045%_)
        (let* ((_%g149047149066%_
                (lambda (_%g149048149063%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149048149063%_))))
               (_%g149046149128%_
                (lambda (_%g149048149069%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149048149069%_))
                      (let ((_%e149052149071%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149048149069%_))))
                        (let ((_%hd149051149074%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149052149071%_)))
                              (_%tl149050149076%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149052149071%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl149050149076%_))
                              (let ((_g150499_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl149050149076%_
                                        '0))))
                                (begin
                                  (let ((_g150500_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g150499_)
                                               (##vector-length _g150499_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g150500_ 2)))
                                        (error "Context expects 2 values"
                                               _g150500_)))
                                  (let ((_%target149053149079%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g150499_ 0)))
                                        (_%tl149055149081%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g150499_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl149055149081%_))
                                        (letrec ((_%loop149056149084%_
                                                  (lambda (_%hd149054149087%_
                                                           _%expr149060149089%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd149054149087%_))
                                                        (let ((_%e149057149092%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd149054149087%_))))
                  (let ((_%lp-hd149058149095%_
                         (let ()
                           (declare (not safe))
                           (##car _%e149057149092%_)))
                        (_%lp-tl149059149097%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e149057149092%_))))
                    (let ((__tmp150501
                           (cons _%lp-hd149058149095%_ _%expr149060149089%_)))
                      (declare (not safe))
                      (_%loop149056149084%_
                       _%lp-tl149059149097%_
                       __tmp150501))))
                (let ((_%expr149061149100%_ (reverse _%expr149060149089%_)))
                  ((lambda (_%L149103%_)
                     (let ((__tmp150504
                            (lambda (_%g149116149118%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self149044%_
                                 _%g149116149118%_))))
                           (__tmp150502
                            (let ((__tmp150503
                                   (lambda (_%g149120149123%_
                                            _%g149121149125%_)
                                     (cons _%g149120149123%_
                                           _%g149121149125%_))))
                              (declare (not safe))
                              (__foldr1 __tmp150503 '() _%L149103%_))))
                       (declare (not safe))
                       (__ormap1 __tmp150504 __tmp150502)))
                   _%expr149061149100%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%loop149056149084%_
                                             _%target149053149079%_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_%g149047149066%_
                                           _%g149048149069%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g149047149066%_ _%g149048149069%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149047149066%_ _%g149048149069%_))))))
          (declare (not safe))
          (_%g149046149128%_ _%stx149045%_))))
    (define gxc#find-let-values%
      (lambda (_%self148894%_ _%stx148895%_)
        (let* ((_%g148897148932%_
                (lambda (_%g148898148929%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148898148929%_))))
               (_%g148896149041%_
                (lambda (_%g148898148935%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148898148935%_))
                      (let ((_%e148904148937%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148898148935%_))))
                        (let ((_%hd148903148940%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148904148937%_)))
                              (_%tl148902148942%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148904148937%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148902148942%_))
                              (let ((_%e148907148945%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148902148942%_))))
                                (let ((_%hd148906148948%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148907148945%_)))
                                      (_%tl148905148950%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148907148945%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd148906148948%_))
                                      (let ((_g150505_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd148906148948%_
                                                '0))))
                                        (begin
                                          (let ((_g150506_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g150505_)
                                                       (##vector-length
                                                        _g150505_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g150506_ 2)))
                                                (error "Context expects 2 values"
                                                       _g150506_)))
                                          (let ((_%target148908148953%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g150505_ 0)))
                                                (_%tl148910148955%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g150505_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl148910148955%_))
                                                (letrec ((_%loop148911148958%_
                                                          (lambda (_%hd148909148961%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr148915148963%_
                           _%bind148916148965%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd148909148961%_))
                        (let ((_%e148912148968%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd148909148961%_))))
                          (let ((_%lp-hd148913148971%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e148912148968%_)))
                                (_%lp-tl148914148973%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e148912148968%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd148913148971%_))
                                (let ((_%e148921148976%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd148913148971%_))))
                                  (let ((_%hd148920148979%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e148921148976%_)))
                                        (_%tl148919148981%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e148921148976%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl148919148981%_))
                                        (let ((_%e148924148984%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl148919148981%_))))
                                          (let ((_%hd148923148987%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e148924148984%_)))
                                                (_%tl148922148989%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e148924148984%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl148922148989%_))
                                                (let ((__tmp150508
                                                       (cons _%hd148923148987%_
                                                             _%expr148915148963%_))
                                                      (__tmp150507
                                                       (cons _%hd148920148979%_
                                                             _%bind148916148965%_)))
                                                  (declare (not safe))
                                                  (_%loop148911148958%_
                                                   _%lp-tl148914148973%_
                                                   __tmp150508
                                                   __tmp150507))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g148897148932%_
                                                   _%g148898148935%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g148897148932%_
                                           _%g148898148935%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g148897148932%_ _%g148898148935%_)))))
                        (let ((_%expr148917148992%_
                               (reverse _%expr148915148963%_))
                              (_%bind148918148994%_
                               (reverse _%bind148916148965%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148905148950%_))
                              (let ((_%e148927148997%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148905148950%_))))
                                (let ((_%hd148926149000%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148927148997%_)))
                                      (_%tl148925149002%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148927148997%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl148925149002%_))
                                      ((lambda (_%L149005%_
                                                _%L149006%_
                                                _%L149007%_)
                                         (let ((_%$e149038%_
                                                (let ((__tmp150511
                                                       (lambda (_%g149026149028%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self148894%_
                                                            _%g149026149028%_))))
                                                      (__tmp150509
                                                       (let ((__tmp150510
                                                              (lambda (_%g149030149033%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g149031149035%_)
                        (cons _%g149030149033%_ _%g149031149035%_))))
                 (declare (not safe))
                 (__foldr1 __tmp150510 '() _%L149006%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp150511
                                                   __tmp150509))))
                                           (if _%$e149038%_
                                               _%$e149038%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self148894%_
                                                  _%L149005%_)))))
                                       _%hd148926149000%_
                                       _%expr148917148992%_
                                       _%bind148918148994%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g148897148932%_
                                         _%g148898148935%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g148897148932%_ _%g148898148935%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop148911148958%_
                                                     _%target148908148953%_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g148897148932%_
                                                   _%g148898148935%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g148897148932%_
                                         _%g148898148935%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g148897148932%_ _%g148898148935%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g148897148932%_ _%g148898148935%_))))))
          (declare (not safe))
          (_%g148896149041%_ _%stx148895%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self148838%_ _%stx148839%_)
        (let* ((_%g148841148854%_
                (lambda (_%g148842148851%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148842148851%_))))
               (_%g148840148891%_
                (lambda (_%g148842148857%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148842148857%_))
                      (let ((_%e148846148859%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148842148857%_))))
                        (let ((_%hd148845148862%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148846148859%_)))
                              (_%tl148844148864%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148846148859%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148844148864%_))
                              (let ((_%e148849148867%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148844148864%_))))
                                (let ((_%hd148848148870%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148849148867%_)))
                                      (_%tl148847148872%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148849148867%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl148847148872%_))
                                      ((lambda (_%L148875%_)
                                         (let ((__tmp150513
                                                (lambda (_%g148886148888%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L148875%_
                                                     _%g148886148888%_))))
                                               (__tmp150512
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self148838%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp150513 __tmp150512)))
                                       _%hd148848148870%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g148841148854%_
                                         _%g148842148857%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g148841148854%_ _%g148842148857%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g148841148854%_ _%g148842148857%_))))))
          (declare (not safe))
          (_%g148840148891%_ _%stx148839%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self148763%_ _%stx148764%_)
        (let* ((_%g148766148783%_
                (lambda (_%g148767148780%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148767148780%_))))
               (_%g148765148835%_
                (lambda (_%g148767148786%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148767148786%_))
                      (let ((_%e148772148788%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148767148786%_))))
                        (let ((_%hd148771148791%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148772148788%_)))
                              (_%tl148770148793%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148772148788%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148770148793%_))
                              (let ((_%e148775148796%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148770148793%_))))
                                (let ((_%hd148774148799%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148775148796%_)))
                                      (_%tl148773148801%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148775148796%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148773148801%_))
                                      (let ((_%e148778148804%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148773148801%_))))
                                        (let ((_%hd148777148807%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148778148804%_)))
                                              (_%tl148776148809%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148778148804%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148776148809%_))
                                              ((lambda (_%L148812%_
                                                        _%L148813%_)
                                                 (let ((_%$e148832%_
                                                        (let ((__tmp150515
                                                               (lambda (_%g148827148829%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L148813%_
                            _%g148827148829%_))))
                      (__tmp150514
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self148763%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp150515 __tmp150514))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e148832%_
                                                       _%$e148832%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self148763%_
                                                          _%L148812%_)))))
                                               _%hd148777148807%_
                                               _%hd148774148799%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g148766148783%_
                                                 _%g148767148786%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g148766148783%_
                                         _%g148767148786%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g148766148783%_ _%g148767148786%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g148766148783%_ _%g148767148786%_))))))
          (declare (not safe))
          (_%g148765148835%_ _%stx148764%_))))))
