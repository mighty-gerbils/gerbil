(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1712093478)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp150510 (list gxc#::void::t))
            (__tmp150509 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp150510
         '()
         __tmp150509
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args150250%_
        (apply make-instance gxc#::collect-mutators::t _%$args150250%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp150511
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
        (__make-promise __tmp150511)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx150242%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self150245%_
                (let ((__obj150497
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj150497))
               (__tmp150512
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self150245%_ _%stx150242%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150512
           gxc#current-compile-method
           _%self150245%_))))
    (define gxc#::collect-methods::t
      (let ((__tmp150514 (list gxc#::void::t))
            (__tmp150513 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-methods::t
         '::collect-methods
         __tmp150514
         '()
         __tmp150513
         '#f)))
    (define gxc#::collect-methods?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-methods::t)))
    (define gxc#make-::collect-methods
      (lambda _%$args150239%_
        (apply make-instance gxc#::collect-methods::t _%$args150239%_)))
    (define gxc#::collect-methods-bind-methods!
      (let ((__tmp150515
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
        (__make-promise __tmp150515)))
    (define gxc#apply-collect-methods
      (lambda (_%stx150231%_)
        (force gxc#::collect-methods-bind-methods!)
        (let* ((_%self150234%_
                (let ((__obj150499
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-methods::t))))
                  __obj150499))
               (__tmp150516
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self150234%_ _%stx150231%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150516
           gxc#current-compile-method
           _%self150234%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp150518 (list gxc#::basic-xform-expression::t))
            (__tmp150517 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp150518
         '(id new-id)
         __tmp150517
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args150228%_
        (apply make-instance gxc#::expression-subst::t _%$args150228%_)))
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
      (let ((__tmp150519
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
        (__make-promise __tmp150519)))
    (define gxc#apply-expression-subst__%
      (lambda (_%_150197%_
               _%id150193150199%_
               _%new-id150194150201%_
               _%stx150203%_)
        (let* ((_%id150206%_
                (if (eq? _%id150193150199%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id150193150199%_))
               (_%new-id150208%_
                (if (eq? _%new-id150194150201%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id150194150201%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self150210%_
                  (let ((__obj150501
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150501
                       _%id150206%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150501
                       _%new-id150208%_
                       '2
                       '#f
                       '#f))
                    __obj150501))
                 (__tmp150520
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150210%_ _%stx150203%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150520
             gxc#current-compile-method
             _%self150210%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords150217%_ . _%args150218%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords150217%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords150217%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150217%_
                  'new-id:
                  absent-value))
               _%args150218%_)))
    (define gxc#apply-expression-subst
      (lambda _%args150195150224%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args150195150224%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp150522 (list gxc#::basic-xform-expression::t))
            (__tmp150521 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp150522
         '(subst)
         __tmp150521
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args150189%_
        (apply make-instance gxc#::expression-subst*::t _%$args150189%_)))
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
      (let ((__tmp150523
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
        (__make-promise __tmp150523)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%_150162%_ _%subst150159150164%_ _%stx150166%_)
        (let ((_%subst150169%_
               (if (eq? _%subst150159150164%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst150159150164%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self150171%_
                  (let ((__obj150503
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150503
                       _%subst150169%_
                       '1
                       '#f
                       '#f))
                    __obj150503))
                 (__tmp150524
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150171%_ _%stx150166%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150524
             gxc#current-compile-method
             _%self150171%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords150178%_ . _%args150179%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords150178%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150178%_
                  'subst:
                  absent-value))
               _%args150179%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args150160150185%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args150160150185%_)))
    (define gxc#::find-expression::t
      (let ((__tmp150525 (list gxc#::false-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp150525
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args150155%_
        (apply make-instance gxc#::find-expression::t _%$args150155%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp150526
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
        (__make-promise __tmp150526)))
    (define gxc#::find-var-refs::t
      (let ((__tmp150528 (list gxc#::find-expression::t))
            (__tmp150527 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp150528
         '(ids)
         __tmp150527
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args150151%_
        (apply make-instance gxc#::find-var-refs::t _%$args150151%_)))
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
      (let ((__tmp150529
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
        (__make-promise __tmp150529)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%_150124%_ _%ids150121150126%_ _%stx150128%_)
        (let ((_%ids150131%_
               (if (eq? _%ids150121150126%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids150121150126%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self150133%_
                  (let ((__obj150506
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150506
                       _%ids150131%_
                       '1
                       '#f
                       '#f))
                    __obj150506))
                 (__tmp150530
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150133%_ _%stx150128%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150530
             gxc#current-compile-method
             _%self150133%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords150140%_ . _%args150141%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords150140%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords150140%_ 'ids: absent-value))
               _%args150141%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args150122150147%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args150122150147%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp150532 (list gxc#::collect-expression-refs::t))
            (__tmp150531 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp150532
         '()
         __tmp150531
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args150117%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args150117%_)))
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
      (let ((__tmp150533
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
        (__make-promise __tmp150533)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%_150090%_ _%table150087150092%_ _%stx150094%_)
        (let ((_%table150097%_
               (if (eq? _%table150087150092%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table150087150092%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self150099%_
                  (let ((__obj150508
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150508
                       _%table150097%_
                       '1
                       '#f
                       '#f))
                    __obj150508))
                 (__tmp150534
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150099%_ _%stx150094%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150534
             gxc#current-compile-method
             _%self150099%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords150106%_ . _%args150107%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords150106%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150106%_
                  'table:
                  absent-value))
               _%args150107%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args150088150113%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args150088150113%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self150016%_ _%stx150017%_)
        (let* ((_%g150019150036%_
                (lambda (_%g150020150033%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150020150033%_))))
               (_%g150018150083%_
                (lambda (_%g150020150039%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150020150039%_))
                      (let ((_%e150025150041%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150020150039%_))))
                        (let ((_%hd150024150044%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150025150041%_)))
                              (_%tl150023150046%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150025150041%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150023150046%_))
                              (let ((_%e150028150049%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150023150046%_))))
                                (let ((_%hd150027150052%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150028150049%_)))
                                      (_%tl150026150054%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150028150049%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150026150054%_))
                                      (let ((_%e150031150057%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150026150054%_))))
                                        (let ((_%hd150030150060%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150031150057%_)))
                                              (_%tl150029150062%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150031150057%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150029150062%_))
                                              ((lambda (_%L150065%_
                                                        _%L150066%_)
                                                 (let ((_%sym150081%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L150066%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym150081%_))
                                                   (let ((__tmp150535
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp150535
                                                      _%sym150081%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self150016%_
                                                      _%L150065%_))))
                                               _%hd150030150060%_
                                               _%hd150027150052%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g150019150036%_
                                                 _%g150020150039%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g150019150036%_
                                         _%g150020150039%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g150019150036%_ _%g150020150039%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g150019150036%_ _%g150020150039%_))))))
          (declare (not safe))
          (_%g150018150083%_ _%stx150017%_))))
    (define gxc#collect-methods-call%
      (lambda (_%self149569%_ _%stx149570%_)
        (let* ((_%__stx150253150254%_ _%stx149570%_)
               (_%g149574149676%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx150253150254%_)))))
          (let ((_%__kont150255150256%_
                 (lambda (_%L149966%_
                          _%L149967%_
                          _%L149968%_
                          _%L149969%_
                          _%L149970%_)
                   (let ((__tmp150536
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _%L149967%_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp150536))))
                (_%__kont150257150258%_
                 (lambda (_%L149792%_ _%L149793%_ _%L149794%_ _%L149795%_)
                   (let ((__tmp150537
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _%L149792%_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp150537))))
                (_%__kont150259150260%_ (lambda () '#!void)))
            (let ((_%__match150388150389%_
                   (lambda (_%e149583149838%_
                            _%hd149582149841%_
                            _%tl149581149843%_
                            _%e149586149846%_
                            _%hd149585149849%_
                            _%tl149584149851%_
                            _%e149589149854%_
                            _%hd149588149857%_
                            _%tl149587149859%_
                            _%e149592149862%_
                            _%hd149591149865%_
                            _%tl149590149867%_
                            _%e149595149870%_
                            _%hd149594149873%_
                            _%tl149593149875%_
                            _%e149598149878%_
                            _%hd149597149881%_
                            _%tl149596149883%_
                            _%e149601149886%_
                            _%hd149600149889%_
                            _%tl149599149891%_
                            _%e149604149894%_
                            _%hd149603149897%_
                            _%tl149602149899%_
                            _%e149607149902%_
                            _%hd149606149905%_
                            _%tl149605149907%_
                            _%e149610149910%_
                            _%hd149609149913%_
                            _%tl149608149915%_
                            _%e149613149918%_
                            _%hd149612149921%_
                            _%tl149611149923%_
                            _%e149616149926%_
                            _%hd149615149929%_
                            _%tl149614149931%_
                            _%e149619149934%_
                            _%hd149618149937%_
                            _%tl149617149939%_
                            _%e149622149942%_
                            _%hd149621149945%_
                            _%tl149620149947%_
                            _%e149625149950%_
                            _%hd149624149953%_
                            _%tl149623149955%_
                            _%e149628149958%_
                            _%hd149627149961%_
                            _%tl149626149963%_)
                     (let ((_%L149966%_ _%hd149627149961%_)
                           (_%L149967%_ _%hd149618149937%_)
                           (_%L149968%_ _%hd149609149913%_)
                           (_%L149969%_ _%hd149600149889%_)
                           (_%L149970%_ _%hd149591149865%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L149970%_
                              'bind-method!))
                           (_%__kont150255150256%_
                            _%L149966%_
                            _%L149967%_
                            _%L149968%_
                            _%L149969%_
                            _%L149970%_)
                           (_%__kont150259150260%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx150253150254%_))
                  (let ((_%e149583149838%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx150253150254%_))))
                    (let ((_%tl149581149843%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e149583149838%_)))
                          (_%hd149582149841%_
                           (let ()
                             (declare (not safe))
                             (##car _%e149583149838%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl149581149843%_))
                          (let ((_%e149586149846%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl149581149843%_))))
                            (let ((_%tl149584149851%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e149586149846%_)))
                                  (_%hd149585149849%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e149586149846%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd149585149849%_))
                                  (let ((_%e149589149854%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd149585149849%_))))
                                    (let ((_%tl149587149859%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e149589149854%_)))
                                          (_%hd149588149857%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e149589149854%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd149588149857%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd149588149857%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl149587149859%_))
                                                  (let ((_%e149592149862%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl149587149859%_))))
                                                    (let ((_%tl149590149867%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e149592149862%_)))
                                                          (_%hd149591149865%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e149592149862%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl149590149867%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl149584149851%_))
                      (let ((_%e149595149870%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl149584149851%_))))
                        (let ((_%tl149593149875%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149595149870%_)))
                              (_%hd149594149873%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149595149870%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd149594149873%_))
                              (let ((_%e149598149878%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd149594149873%_))))
                                (let ((_%tl149596149883%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149598149878%_)))
                                      (_%hd149597149881%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149598149878%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd149597149881%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd149597149881%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl149596149883%_))
                                              (let ((_%e149601149886%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl149596149883%_))))
                                                (let ((_%tl149599149891%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e149601149886%_)))
                                                      (_%hd149600149889%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e149601149886%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl149599149891%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl149593149875%_))
                                                          (let ((_%e149604149894%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl149593149875%_))))
                    (let ((_%tl149602149899%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e149604149894%_)))
                          (_%hd149603149897%_
                           (let ()
                             (declare (not safe))
                             (##car _%e149604149894%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd149603149897%_))
                          (let ((_%e149607149902%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd149603149897%_))))
                            (let ((_%tl149605149907%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e149607149902%_)))
                                  (_%hd149606149905%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e149607149902%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd149606149905%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd149606149905%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl149605149907%_))
                                          (let ((_%e149610149910%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl149605149907%_))))
                                            (let ((_%tl149608149915%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e149610149910%_)))
                                                  (_%hd149609149913%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e149610149910%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl149608149915%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl149602149899%_))
                                                      (let ((_%e149613149918%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl149602149899%_))))
                (let ((_%tl149611149923%_
                       (let () (declare (not safe)) (##cdr _%e149613149918%_)))
                      (_%hd149612149921%_
                       (let ()
                         (declare (not safe))
                         (##car _%e149613149918%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd149612149921%_))
                      (let ((_%e149616149926%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd149612149921%_))))
                        (let ((_%tl149614149931%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149616149926%_)))
                              (_%hd149615149929%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149616149926%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd149615149929%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd149615149929%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149614149931%_))
                                      (let ((_%e149619149934%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149614149931%_))))
                                        (let ((_%tl149617149939%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149619149934%_)))
                                              (_%hd149618149937%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149619149934%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149617149939%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl149611149923%_))
                                                  (let ((_%e149622149942%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl149611149923%_))))
                                                    (let ((_%tl149620149947%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e149622149942%_)))
                                                          (_%hd149621149945%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e149622149942%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd149621149945%_))
                                                          (let ((_%e149625149950%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd149621149945%_))))
                    (let ((_%tl149623149955%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e149625149950%_)))
                          (_%hd149624149953%_
                           (let ()
                             (declare (not safe))
                             (##car _%e149625149950%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd149624149953%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd149624149953%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl149623149955%_))
                                  (let ((_%e149628149958%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl149623149955%_))))
                                    (let ((_%tl149626149963%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e149628149958%_)))
                                          (_%hd149627149961%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e149628149958%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl149626149963%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149620149947%_))
                                              (_%__match150388150389%_
                                               _%e149583149838%_
                                               _%hd149582149841%_
                                               _%tl149581149843%_
                                               _%e149586149846%_
                                               _%hd149585149849%_
                                               _%tl149584149851%_
                                               _%e149589149854%_
                                               _%hd149588149857%_
                                               _%tl149587149859%_
                                               _%e149592149862%_
                                               _%hd149591149865%_
                                               _%tl149590149867%_
                                               _%e149595149870%_
                                               _%hd149594149873%_
                                               _%tl149593149875%_
                                               _%e149598149878%_
                                               _%hd149597149881%_
                                               _%tl149596149883%_
                                               _%e149601149886%_
                                               _%hd149600149889%_
                                               _%tl149599149891%_
                                               _%e149604149894%_
                                               _%hd149603149897%_
                                               _%tl149602149899%_
                                               _%e149607149902%_
                                               _%hd149606149905%_
                                               _%tl149605149907%_
                                               _%e149610149910%_
                                               _%hd149609149913%_
                                               _%tl149608149915%_
                                               _%e149613149918%_
                                               _%hd149612149921%_
                                               _%tl149611149923%_
                                               _%e149616149926%_
                                               _%hd149615149929%_
                                               _%tl149614149931%_
                                               _%e149619149934%_
                                               _%hd149618149937%_
                                               _%tl149617149939%_
                                               _%e149622149942%_
                                               _%hd149621149945%_
                                               _%tl149620149947%_
                                               _%e149625149950%_
                                               _%hd149624149953%_
                                               _%tl149623149955%_
                                               _%e149628149958%_
                                               _%hd149627149961%_
                                               _%tl149626149963%_)
                                              (_%__kont150259150260%_))
                                          (_%__kont150259150260%_))))
                                  (_%__kont150259150260%_))
                              (_%__kont150259150260%_))
                          (_%__kont150259150260%_))))
                  (_%__kont150259150260%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl149611149923%_))
                                                      (if (let ((__tmp150538
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp150538 'bind-method!))
                  (let ((_%L149792%_ _%hd149618149937%_)
                        (_%L149793%_ _%hd149609149913%_)
                        (_%L149794%_ _%hd149600149889%_)
                        (_%L149795%_ _%hd149591149865%_))
                    (_%__kont150257150258%_
                     _%L149792%_
                     _%L149793%_
                     _%L149794%_
                     _%L149795%_))
                  (_%__kont150259150260%_))
              (_%__kont150259150260%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont150259150260%_))))
                                      (_%__kont150259150260%_))
                                  (_%__kont150259150260%_))
                              (_%__kont150259150260%_))))
                      (_%__kont150259150260%_))))
              (_%__kont150259150260%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont150259150260%_))))
                                          (_%__kont150259150260%_))
                                      (_%__kont150259150260%_))
                                  (_%__kont150259150260%_))))
                          (_%__kont150259150260%_))))
                  (_%__kont150259150260%_))
              (_%__kont150259150260%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont150259150260%_))
                                          (_%__kont150259150260%_))
                                      (_%__kont150259150260%_))))
                              (_%__kont150259150260%_))))
                      (_%__kont150259150260%_))
                  (_%__kont150259150260%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont150259150260%_))
                                              (_%__kont150259150260%_))
                                          (_%__kont150259150260%_))))
                                  (_%__kont150259150260%_))))
                          (_%__kont150259150260%_))))
                  (_%__kont150259150260%_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_%self149517%_ _%stx149518%_)
        (let* ((_%g149520149533%_
                (lambda (_%g149521149530%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149521149530%_))))
               (_%g149519149566%_
                (lambda (_%g149521149536%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149521149536%_))
                      (let ((_%e149525149538%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149521149536%_))))
                        (let ((_%hd149524149541%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149525149538%_)))
                              (_%tl149523149543%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149525149538%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149523149543%_))
                              (let ((_%e149528149546%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149523149543%_))))
                                (let ((_%hd149527149549%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149528149546%_)))
                                      (_%tl149526149551%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149528149546%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149526149551%_))
                                      ((lambda (_%L149554%_)
                                         (if (let ((__tmp150539
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self149517%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L149554%_
                                                __tmp150539))
                                             (let ((__tmp150540
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self149517%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp150540
                                                _%stx149518%_))
                                             _%stx149518%_))
                                       _%hd149527149549%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g149520149533%_
                                         _%g149521149536%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149520149533%_ _%g149521149536%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149520149533%_ _%g149521149536%_))))))
          (declare (not safe))
          (_%g149519149566%_ _%stx149518%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self149457%_ _%stx149458%_)
        (let* ((_%g149460149473%_
                (lambda (_%g149461149470%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149461149470%_))))
               (_%g149459149514%_
                (lambda (_%g149461149476%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149461149476%_))
                      (let ((_%e149465149478%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149461149476%_))))
                        (let ((_%hd149464149481%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149465149478%_)))
                              (_%tl149463149483%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149465149478%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149463149483%_))
                              (let ((_%e149468149486%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149463149483%_))))
                                (let ((_%hd149467149489%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149468149486%_)))
                                      (_%tl149466149491%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149468149486%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149466149491%_))
                                      ((lambda (_%L149494%_)
                                         (let ((_%$e149508%_
                                                (let ((__tmp150542
                                                       (lambda (_%sub149506%_)
                                                         (let ((__tmp150543
                                                                (car _%sub149506%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L149494%_
                                                            __tmp150543))))
                                                      (__tmp150541
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self149457%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp150542
                                                          __tmp150541))))
                                           (if _%$e149508%_
                                               ((lambda (_%sub149511%_)
                                                  (let ((__tmp150544
                                                         (cons '%#ref
                                                               (cons (cdr _%sub149511%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp150544
                                                     _%stx149458%_)))
                                                _%$e149508%_)
                                               (let () _%stx149458%_))))
                                       _%hd149467149489%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g149460149473%_
                                         _%g149461149476%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149460149473%_ _%g149461149476%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149460149473%_ _%g149461149476%_))))))
          (declare (not safe))
          (_%g149459149514%_ _%stx149458%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self149386%_ _%stx149387%_)
        (let* ((_%g149389149406%_
                (lambda (_%g149390149403%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149390149403%_))))
               (_%g149388149454%_
                (lambda (_%g149390149409%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149390149409%_))
                      (let ((_%e149395149411%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149390149409%_))))
                        (let ((_%hd149394149414%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149395149411%_)))
                              (_%tl149393149416%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149395149411%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149393149416%_))
                              (let ((_%e149398149419%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149393149416%_))))
                                (let ((_%hd149397149422%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149398149419%_)))
                                      (_%tl149396149424%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149398149419%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149396149424%_))
                                      (let ((_%e149401149427%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149396149424%_))))
                                        (let ((_%hd149400149430%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149401149427%_)))
                                              (_%tl149399149432%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149401149427%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149399149432%_))
                                              ((lambda (_%L149435%_
                                                        _%L149436%_)
                                                 (let ((_%new-expr149451%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self149386%_
                                                           _%L149435%_)))
                                                       (_%new-xid149452%_
                                                        (if (let ((__tmp150545
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self149386%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L149436%_ __tmp150545))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self149386%_ 'new-id))
                    _%L149436%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp150546
                                                          (cons '%#set!
                                                                (cons _%new-xid149452%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr149451%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp150546
                                                      _%stx149387%_))))
                                               _%hd149400149430%_
                                               _%hd149397149422%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g149389149406%_
                                                 _%g149390149409%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149389149406%_
                                         _%g149390149409%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149389149406%_ _%g149390149409%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149389149406%_ _%g149390149409%_))))))
          (declare (not safe))
          (_%g149388149454%_ _%stx149387%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self149309%_ _%stx149310%_)
        (let* ((_%g149312149329%_
                (lambda (_%g149313149326%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149313149326%_))))
               (_%g149311149383%_
                (lambda (_%g149313149332%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149313149332%_))
                      (let ((_%e149318149334%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149313149332%_))))
                        (let ((_%hd149317149337%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149318149334%_)))
                              (_%tl149316149339%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149318149334%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149316149339%_))
                              (let ((_%e149321149342%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149316149339%_))))
                                (let ((_%hd149320149345%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149321149342%_)))
                                      (_%tl149319149347%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149321149342%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149319149347%_))
                                      (let ((_%e149324149350%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149319149347%_))))
                                        (let ((_%hd149323149353%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149324149350%_)))
                                              (_%tl149322149355%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149324149350%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149322149355%_))
                                              ((lambda (_%L149358%_
                                                        _%L149359%_)
                                                 (let ((_%new-expr149380%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self149309%_
                                                           _%L149358%_)))
                                                       (_%new-xid149381%_
                                                        (let ((_%$e149376%_
                                                               (let ((__tmp150548
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub149374%_)
                                (let ((__tmp150549 (car _%sub149374%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L149359%_
                                   __tmp150549))))
                             (__tmp150547
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self149309%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp150548 __tmp150547))))
                  (if _%$e149376%_ (cdr _%$e149376%_) (let () _%L149359%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp150550
                                                          (cons '%#set!
                                                                (cons _%new-xid149381%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr149380%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp150550
                                                      _%stx149310%_))))
                                               _%hd149323149353%_
                                               _%hd149320149345%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g149312149329%_
                                                 _%g149313149332%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149312149329%_
                                         _%g149313149332%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149312149329%_ _%g149313149332%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149312149329%_ _%g149313149332%_))))))
          (declare (not safe))
          (_%g149311149383%_ _%stx149310%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self149255%_ _%stx149256%_)
        (let* ((_%g149258149271%_
                (lambda (_%g149259149268%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149259149268%_))))
               (_%g149257149306%_
                (lambda (_%g149259149274%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149259149274%_))
                      (let ((_%e149263149276%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149259149274%_))))
                        (let ((_%hd149262149279%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149263149276%_)))
                              (_%tl149261149281%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149263149276%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149261149281%_))
                              (let ((_%e149266149284%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149261149281%_))))
                                (let ((_%hd149265149287%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149266149284%_)))
                                      (_%tl149264149289%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149266149284%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149264149289%_))
                                      ((lambda (_%L149292%_)
                                         (let* ((_%eid149304%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L149292%_)))
                                                (__tmp150551
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self149255%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp150551
                                            _%eid149304%_
                                            1+
                                            '0)))
                                       _%hd149265149287%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g149258149271%_
                                         _%g149259149274%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149258149271%_ _%g149259149274%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149258149271%_ _%g149259149274%_))))))
          (declare (not safe))
          (_%g149257149306%_ _%stx149256%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self149185%_ _%stx149186%_)
        (let* ((_%g149188149205%_
                (lambda (_%g149189149202%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149189149202%_))))
               (_%g149187149252%_
                (lambda (_%g149189149208%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149189149208%_))
                      (let ((_%e149194149210%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149189149208%_))))
                        (let ((_%hd149193149213%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149194149210%_)))
                              (_%tl149192149215%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149194149210%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149192149215%_))
                              (let ((_%e149197149218%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149192149215%_))))
                                (let ((_%hd149196149221%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149197149218%_)))
                                      (_%tl149195149223%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149197149218%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149195149223%_))
                                      (let ((_%e149200149226%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149195149223%_))))
                                        (let ((_%hd149199149229%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149200149226%_)))
                                              (_%tl149198149231%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149200149226%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149198149231%_))
                                              ((lambda (_%L149234%_
                                                        _%L149235%_)
                                                 (let ((_%eid149250%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L149235%_))))
                                                   (let ((__tmp150552
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self149185%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp150552
                                                      _%eid149250%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self149185%_
                                                      _%L149234%_))))
                                               _%hd149199149229%_
                                               _%hd149196149221%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g149188149205%_
                                                 _%g149189149208%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149188149205%_
                                         _%g149189149208%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149188149205%_ _%g149189149208%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149188149205%_ _%g149189149208%_))))))
          (declare (not safe))
          (_%g149187149252%_ _%stx149186%_))))
    (define gxc#find-body%
      (lambda (_%self149098%_ _%stx149099%_)
        (let* ((_%g149101149120%_
                (lambda (_%g149102149117%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149102149117%_))))
               (_%g149100149182%_
                (lambda (_%g149102149123%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149102149123%_))
                      (let ((_%e149106149125%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149102149123%_))))
                        (let ((_%hd149105149128%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149106149125%_)))
                              (_%tl149104149130%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149106149125%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl149104149130%_))
                              (let ((_g150553_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl149104149130%_
                                        '0))))
                                (begin
                                  (let ((_g150554_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g150553_)
                                               (##vector-length _g150553_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g150554_ 2)))
                                        (error "Context expects 2 values"
                                               _g150554_)))
                                  (let ((_%target149107149133%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g150553_ 0)))
                                        (_%tl149109149135%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g150553_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl149109149135%_))
                                        (letrec ((_%loop149110149138%_
                                                  (lambda (_%hd149108149141%_
                                                           _%expr149114149143%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd149108149141%_))
                                                        (let ((_%e149111149146%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd149108149141%_))))
                  (let ((_%lp-hd149112149149%_
                         (let ()
                           (declare (not safe))
                           (##car _%e149111149146%_)))
                        (_%lp-tl149113149151%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e149111149146%_))))
                    (let ((__tmp150555
                           (cons _%lp-hd149112149149%_ _%expr149114149143%_)))
                      (declare (not safe))
                      (_%loop149110149138%_
                       _%lp-tl149113149151%_
                       __tmp150555))))
                (let ((_%expr149115149154%_ (reverse _%expr149114149143%_)))
                  ((lambda (_%L149157%_)
                     (let ((__tmp150558
                            (lambda (_%g149170149172%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self149098%_
                                 _%g149170149172%_))))
                           (__tmp150556
                            (let ((__tmp150557
                                   (lambda (_%g149174149177%_
                                            _%g149175149179%_)
                                     (cons _%g149174149177%_
                                           _%g149175149179%_))))
                              (declare (not safe))
                              (__foldr1 __tmp150557 '() _%L149157%_))))
                       (declare (not safe))
                       (__ormap1 __tmp150558 __tmp150556)))
                   _%expr149115149154%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%loop149110149138%_
                                             _%target149107149133%_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_%g149101149120%_
                                           _%g149102149123%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g149101149120%_ _%g149102149123%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149101149120%_ _%g149102149123%_))))))
          (declare (not safe))
          (_%g149100149182%_ _%stx149099%_))))
    (define gxc#find-let-values%
      (lambda (_%self148948%_ _%stx148949%_)
        (let* ((_%g148951148986%_
                (lambda (_%g148952148983%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148952148983%_))))
               (_%g148950149095%_
                (lambda (_%g148952148989%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148952148989%_))
                      (let ((_%e148958148991%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148952148989%_))))
                        (let ((_%hd148957148994%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148958148991%_)))
                              (_%tl148956148996%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148958148991%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148956148996%_))
                              (let ((_%e148961148999%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148956148996%_))))
                                (let ((_%hd148960149002%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148961148999%_)))
                                      (_%tl148959149004%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148961148999%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd148960149002%_))
                                      (let ((_g150559_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd148960149002%_
                                                '0))))
                                        (begin
                                          (let ((_g150560_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g150559_)
                                                       (##vector-length
                                                        _g150559_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g150560_ 2)))
                                                (error "Context expects 2 values"
                                                       _g150560_)))
                                          (let ((_%target148962149007%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g150559_ 0)))
                                                (_%tl148964149009%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g150559_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl148964149009%_))
                                                (letrec ((_%loop148965149012%_
                                                          (lambda (_%hd148963149015%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr148969149017%_
                           _%bind148970149019%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd148963149015%_))
                        (let ((_%e148966149022%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd148963149015%_))))
                          (let ((_%lp-hd148967149025%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e148966149022%_)))
                                (_%lp-tl148968149027%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e148966149022%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd148967149025%_))
                                (let ((_%e148975149030%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd148967149025%_))))
                                  (let ((_%hd148974149033%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e148975149030%_)))
                                        (_%tl148973149035%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e148975149030%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl148973149035%_))
                                        (let ((_%e148978149038%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl148973149035%_))))
                                          (let ((_%hd148977149041%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e148978149038%_)))
                                                (_%tl148976149043%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e148978149038%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl148976149043%_))
                                                (let ((__tmp150562
                                                       (cons _%hd148977149041%_
                                                             _%expr148969149017%_))
                                                      (__tmp150561
                                                       (cons _%hd148974149033%_
                                                             _%bind148970149019%_)))
                                                  (declare (not safe))
                                                  (_%loop148965149012%_
                                                   _%lp-tl148968149027%_
                                                   __tmp150562
                                                   __tmp150561))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g148951148986%_
                                                   _%g148952148989%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g148951148986%_
                                           _%g148952148989%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g148951148986%_ _%g148952148989%_)))))
                        (let ((_%expr148971149046%_
                               (reverse _%expr148969149017%_))
                              (_%bind148972149048%_
                               (reverse _%bind148970149019%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148959149004%_))
                              (let ((_%e148981149051%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148959149004%_))))
                                (let ((_%hd148980149054%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148981149051%_)))
                                      (_%tl148979149056%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148981149051%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl148979149056%_))
                                      ((lambda (_%L149059%_
                                                _%L149060%_
                                                _%L149061%_)
                                         (let ((_%$e149092%_
                                                (let ((__tmp150565
                                                       (lambda (_%g149080149082%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self148948%_
                                                            _%g149080149082%_))))
                                                      (__tmp150563
                                                       (let ((__tmp150564
                                                              (lambda (_%g149084149087%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g149085149089%_)
                        (cons _%g149084149087%_ _%g149085149089%_))))
                 (declare (not safe))
                 (__foldr1 __tmp150564 '() _%L149060%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp150565
                                                   __tmp150563))))
                                           (if _%$e149092%_
                                               _%$e149092%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self148948%_
                                                  _%L149059%_)))))
                                       _%hd148980149054%_
                                       _%expr148971149046%_
                                       _%bind148972149048%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g148951148986%_
                                         _%g148952148989%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g148951148986%_ _%g148952148989%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop148965149012%_
                                                     _%target148962149007%_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g148951148986%_
                                                   _%g148952148989%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g148951148986%_
                                         _%g148952148989%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g148951148986%_ _%g148952148989%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g148951148986%_ _%g148952148989%_))))))
          (declare (not safe))
          (_%g148950149095%_ _%stx148949%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self148892%_ _%stx148893%_)
        (let* ((_%g148895148908%_
                (lambda (_%g148896148905%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148896148905%_))))
               (_%g148894148945%_
                (lambda (_%g148896148911%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148896148911%_))
                      (let ((_%e148900148913%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148896148911%_))))
                        (let ((_%hd148899148916%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148900148913%_)))
                              (_%tl148898148918%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148900148913%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148898148918%_))
                              (let ((_%e148903148921%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148898148918%_))))
                                (let ((_%hd148902148924%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148903148921%_)))
                                      (_%tl148901148926%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148903148921%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl148901148926%_))
                                      ((lambda (_%L148929%_)
                                         (let ((__tmp150567
                                                (lambda (_%g148940148942%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L148929%_
                                                     _%g148940148942%_))))
                                               (__tmp150566
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self148892%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp150567 __tmp150566)))
                                       _%hd148902148924%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g148895148908%_
                                         _%g148896148911%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g148895148908%_ _%g148896148911%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g148895148908%_ _%g148896148911%_))))))
          (declare (not safe))
          (_%g148894148945%_ _%stx148893%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self148817%_ _%stx148818%_)
        (let* ((_%g148820148837%_
                (lambda (_%g148821148834%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148821148834%_))))
               (_%g148819148889%_
                (lambda (_%g148821148840%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148821148840%_))
                      (let ((_%e148826148842%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148821148840%_))))
                        (let ((_%hd148825148845%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148826148842%_)))
                              (_%tl148824148847%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148826148842%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148824148847%_))
                              (let ((_%e148829148850%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148824148847%_))))
                                (let ((_%hd148828148853%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148829148850%_)))
                                      (_%tl148827148855%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148829148850%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148827148855%_))
                                      (let ((_%e148832148858%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148827148855%_))))
                                        (let ((_%hd148831148861%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148832148858%_)))
                                              (_%tl148830148863%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148832148858%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148830148863%_))
                                              ((lambda (_%L148866%_
                                                        _%L148867%_)
                                                 (let ((_%$e148886%_
                                                        (let ((__tmp150569
                                                               (lambda (_%g148881148883%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L148867%_
                            _%g148881148883%_))))
                      (__tmp150568
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self148817%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp150569 __tmp150568))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e148886%_
                                                       _%$e148886%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self148817%_
                                                          _%L148866%_)))))
                                               _%hd148831148861%_
                                               _%hd148828148853%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g148820148837%_
                                                 _%g148821148840%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g148820148837%_
                                         _%g148821148840%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g148820148837%_ _%g148821148840%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g148820148837%_ _%g148821148840%_))))))
          (declare (not safe))
          (_%g148819148889%_ _%stx148818%_))))))
