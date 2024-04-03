(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1712147679)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp150514 (list gxc#::void::t))
            (__tmp150513 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp150514
         '()
         __tmp150513
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args150254%_
        (apply make-instance gxc#::collect-mutators::t _%$args150254%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp150515
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
        (__make-promise __tmp150515)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx150246%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self150249%_
                (let ((__obj150501
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj150501))
               (__tmp150516
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self150249%_ _%stx150246%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150516
           gxc#current-compile-method
           _%self150249%_))))
    (define gxc#::collect-methods::t
      (let ((__tmp150518 (list gxc#::void::t))
            (__tmp150517 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-methods::t
         '::collect-methods
         __tmp150518
         '()
         __tmp150517
         '#f)))
    (define gxc#::collect-methods?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-methods::t)))
    (define gxc#make-::collect-methods
      (lambda _%$args150243%_
        (apply make-instance gxc#::collect-methods::t _%$args150243%_)))
    (define gxc#::collect-methods-bind-methods!
      (let ((__tmp150519
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
        (__make-promise __tmp150519)))
    (define gxc#apply-collect-methods
      (lambda (_%stx150235%_)
        (force gxc#::collect-methods-bind-methods!)
        (let* ((_%self150238%_
                (let ((__obj150503
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-methods::t))))
                  __obj150503))
               (__tmp150520
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self150238%_ _%stx150235%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150520
           gxc#current-compile-method
           _%self150238%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp150522 (list gxc#::basic-xform-expression::t))
            (__tmp150521 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp150522
         '(id new-id)
         __tmp150521
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args150232%_
        (apply make-instance gxc#::expression-subst::t _%$args150232%_)))
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
      (let ((__tmp150523
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
        (__make-promise __tmp150523)))
    (define gxc#apply-expression-subst__%
      (lambda (_%_150201%_
               _%id150197150203%_
               _%new-id150198150205%_
               _%stx150207%_)
        (let* ((_%id150210%_
                (if (eq? _%id150197150203%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id150197150203%_))
               (_%new-id150212%_
                (if (eq? _%new-id150198150205%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id150198150205%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self150214%_
                  (let ((__obj150505
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150505
                       _%id150210%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150505
                       _%new-id150212%_
                       '2
                       '#f
                       '#f))
                    __obj150505))
                 (__tmp150524
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150214%_ _%stx150207%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150524
             gxc#current-compile-method
             _%self150214%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords150221%_ . _%args150222%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords150221%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords150221%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150221%_
                  'new-id:
                  absent-value))
               _%args150222%_)))
    (define gxc#apply-expression-subst
      (lambda _%args150199150228%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args150199150228%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp150526 (list gxc#::basic-xform-expression::t))
            (__tmp150525 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp150526
         '(subst)
         __tmp150525
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args150193%_
        (apply make-instance gxc#::expression-subst*::t _%$args150193%_)))
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
      (let ((__tmp150527
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
        (__make-promise __tmp150527)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%_150166%_ _%subst150163150168%_ _%stx150170%_)
        (let ((_%subst150173%_
               (if (eq? _%subst150163150168%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst150163150168%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self150175%_
                  (let ((__obj150507
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150507
                       _%subst150173%_
                       '1
                       '#f
                       '#f))
                    __obj150507))
                 (__tmp150528
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150175%_ _%stx150170%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150528
             gxc#current-compile-method
             _%self150175%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords150182%_ . _%args150183%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords150182%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150182%_
                  'subst:
                  absent-value))
               _%args150183%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args150164150189%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args150164150189%_)))
    (define gxc#::find-expression::t
      (let ((__tmp150529 (list gxc#::false-expression::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp150529
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args150159%_
        (apply make-instance gxc#::find-expression::t _%$args150159%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp150530
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
        (__make-promise __tmp150530)))
    (define gxc#::find-var-refs::t
      (let ((__tmp150532 (list gxc#::find-expression::t))
            (__tmp150531 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp150532
         '(ids)
         __tmp150531
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args150155%_
        (apply make-instance gxc#::find-var-refs::t _%$args150155%_)))
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
      (let ((__tmp150533
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
        (__make-promise __tmp150533)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%_150128%_ _%ids150125150130%_ _%stx150132%_)
        (let ((_%ids150135%_
               (if (eq? _%ids150125150130%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids150125150130%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self150137%_
                  (let ((__obj150510
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150510
                       _%ids150135%_
                       '1
                       '#f
                       '#f))
                    __obj150510))
                 (__tmp150534
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150137%_ _%stx150132%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150534
             gxc#current-compile-method
             _%self150137%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords150144%_ . _%args150145%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords150144%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords150144%_ 'ids: absent-value))
               _%args150145%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args150126150151%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args150126150151%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp150536 (list gxc#::collect-expression-refs::t))
            (__tmp150535 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp150536
         '()
         __tmp150535
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args150121%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args150121%_)))
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
      (let ((__tmp150537
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
        (__make-promise __tmp150537)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%_150094%_ _%table150091150096%_ _%stx150098%_)
        (let ((_%table150101%_
               (if (eq? _%table150091150096%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table150091150096%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self150103%_
                  (let ((__obj150512
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150512
                       _%table150101%_
                       '1
                       '#f
                       '#f))
                    __obj150512))
                 (__tmp150538
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150103%_ _%stx150098%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150538
             gxc#current-compile-method
             _%self150103%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords150110%_ . _%args150111%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords150110%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150110%_
                  'table:
                  absent-value))
               _%args150111%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args150092150117%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args150092150117%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self150020%_ _%stx150021%_)
        (let* ((_%g150023150040%_
                (lambda (_%g150024150037%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150024150037%_))))
               (_%g150022150087%_
                (lambda (_%g150024150043%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150024150043%_))
                      (let ((_%e150029150045%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150024150043%_))))
                        (let ((_%hd150028150048%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150029150045%_)))
                              (_%tl150027150050%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150029150045%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150027150050%_))
                              (let ((_%e150032150053%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150027150050%_))))
                                (let ((_%hd150031150056%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150032150053%_)))
                                      (_%tl150030150058%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150032150053%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150030150058%_))
                                      (let ((_%e150035150061%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150030150058%_))))
                                        (let ((_%hd150034150064%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150035150061%_)))
                                              (_%tl150033150066%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150035150061%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150033150066%_))
                                              ((lambda (_%L150069%_
                                                        _%L150070%_)
                                                 (let ((_%sym150085%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L150070%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym150085%_))
                                                   (let ((__tmp150539
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp150539
                                                      _%sym150085%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self150020%_
                                                      _%L150069%_))))
                                               _%hd150034150064%_
                                               _%hd150031150056%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g150023150040%_
                                                 _%g150024150043%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g150023150040%_
                                         _%g150024150043%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g150023150040%_ _%g150024150043%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g150023150040%_ _%g150024150043%_))))))
          (declare (not safe))
          (_%g150022150087%_ _%stx150021%_))))
    (define gxc#collect-methods-call%
      (lambda (_%self149573%_ _%stx149574%_)
        (let* ((_%__stx150257150258%_ _%stx149574%_)
               (_%g149578149680%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx150257150258%_)))))
          (let ((_%__kont150259150260%_
                 (lambda (_%L149970%_
                          _%L149971%_
                          _%L149972%_
                          _%L149973%_
                          _%L149974%_)
                   (let ((__tmp150540
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _%L149971%_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp150540))))
                (_%__kont150261150262%_
                 (lambda (_%L149796%_ _%L149797%_ _%L149798%_ _%L149799%_)
                   (let ((__tmp150541
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _%L149796%_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp150541))))
                (_%__kont150263150264%_ (lambda () '#!void)))
            (let ((_%__match150392150393%_
                   (lambda (_%e149587149842%_
                            _%hd149586149845%_
                            _%tl149585149847%_
                            _%e149590149850%_
                            _%hd149589149853%_
                            _%tl149588149855%_
                            _%e149593149858%_
                            _%hd149592149861%_
                            _%tl149591149863%_
                            _%e149596149866%_
                            _%hd149595149869%_
                            _%tl149594149871%_
                            _%e149599149874%_
                            _%hd149598149877%_
                            _%tl149597149879%_
                            _%e149602149882%_
                            _%hd149601149885%_
                            _%tl149600149887%_
                            _%e149605149890%_
                            _%hd149604149893%_
                            _%tl149603149895%_
                            _%e149608149898%_
                            _%hd149607149901%_
                            _%tl149606149903%_
                            _%e149611149906%_
                            _%hd149610149909%_
                            _%tl149609149911%_
                            _%e149614149914%_
                            _%hd149613149917%_
                            _%tl149612149919%_
                            _%e149617149922%_
                            _%hd149616149925%_
                            _%tl149615149927%_
                            _%e149620149930%_
                            _%hd149619149933%_
                            _%tl149618149935%_
                            _%e149623149938%_
                            _%hd149622149941%_
                            _%tl149621149943%_
                            _%e149626149946%_
                            _%hd149625149949%_
                            _%tl149624149951%_
                            _%e149629149954%_
                            _%hd149628149957%_
                            _%tl149627149959%_
                            _%e149632149962%_
                            _%hd149631149965%_
                            _%tl149630149967%_)
                     (let ((_%L149970%_ _%hd149631149965%_)
                           (_%L149971%_ _%hd149622149941%_)
                           (_%L149972%_ _%hd149613149917%_)
                           (_%L149973%_ _%hd149604149893%_)
                           (_%L149974%_ _%hd149595149869%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L149974%_
                              'bind-method!))
                           (_%__kont150259150260%_
                            _%L149970%_
                            _%L149971%_
                            _%L149972%_
                            _%L149973%_
                            _%L149974%_)
                           (_%__kont150263150264%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx150257150258%_))
                  (let ((_%e149587149842%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx150257150258%_))))
                    (let ((_%tl149585149847%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e149587149842%_)))
                          (_%hd149586149845%_
                           (let ()
                             (declare (not safe))
                             (##car _%e149587149842%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl149585149847%_))
                          (let ((_%e149590149850%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl149585149847%_))))
                            (let ((_%tl149588149855%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e149590149850%_)))
                                  (_%hd149589149853%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e149590149850%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd149589149853%_))
                                  (let ((_%e149593149858%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd149589149853%_))))
                                    (let ((_%tl149591149863%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e149593149858%_)))
                                          (_%hd149592149861%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e149593149858%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd149592149861%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd149592149861%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl149591149863%_))
                                                  (let ((_%e149596149866%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl149591149863%_))))
                                                    (let ((_%tl149594149871%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e149596149866%_)))
                                                          (_%hd149595149869%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e149596149866%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl149594149871%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl149588149855%_))
                      (let ((_%e149599149874%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl149588149855%_))))
                        (let ((_%tl149597149879%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149599149874%_)))
                              (_%hd149598149877%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149599149874%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd149598149877%_))
                              (let ((_%e149602149882%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd149598149877%_))))
                                (let ((_%tl149600149887%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149602149882%_)))
                                      (_%hd149601149885%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149602149882%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd149601149885%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd149601149885%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl149600149887%_))
                                              (let ((_%e149605149890%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl149600149887%_))))
                                                (let ((_%tl149603149895%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e149605149890%_)))
                                                      (_%hd149604149893%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e149605149890%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl149603149895%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl149597149879%_))
                                                          (let ((_%e149608149898%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl149597149879%_))))
                    (let ((_%tl149606149903%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e149608149898%_)))
                          (_%hd149607149901%_
                           (let ()
                             (declare (not safe))
                             (##car _%e149608149898%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd149607149901%_))
                          (let ((_%e149611149906%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd149607149901%_))))
                            (let ((_%tl149609149911%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e149611149906%_)))
                                  (_%hd149610149909%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e149611149906%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd149610149909%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd149610149909%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl149609149911%_))
                                          (let ((_%e149614149914%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl149609149911%_))))
                                            (let ((_%tl149612149919%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e149614149914%_)))
                                                  (_%hd149613149917%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e149614149914%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl149612149919%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl149606149903%_))
                                                      (let ((_%e149617149922%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl149606149903%_))))
                (let ((_%tl149615149927%_
                       (let () (declare (not safe)) (##cdr _%e149617149922%_)))
                      (_%hd149616149925%_
                       (let ()
                         (declare (not safe))
                         (##car _%e149617149922%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd149616149925%_))
                      (let ((_%e149620149930%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd149616149925%_))))
                        (let ((_%tl149618149935%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149620149930%_)))
                              (_%hd149619149933%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149620149930%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd149619149933%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd149619149933%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149618149935%_))
                                      (let ((_%e149623149938%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149618149935%_))))
                                        (let ((_%tl149621149943%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149623149938%_)))
                                              (_%hd149622149941%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149623149938%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149621149943%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl149615149927%_))
                                                  (let ((_%e149626149946%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl149615149927%_))))
                                                    (let ((_%tl149624149951%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e149626149946%_)))
                                                          (_%hd149625149949%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e149626149946%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd149625149949%_))
                                                          (let ((_%e149629149954%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd149625149949%_))))
                    (let ((_%tl149627149959%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e149629149954%_)))
                          (_%hd149628149957%_
                           (let ()
                             (declare (not safe))
                             (##car _%e149629149954%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd149628149957%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd149628149957%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl149627149959%_))
                                  (let ((_%e149632149962%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl149627149959%_))))
                                    (let ((_%tl149630149967%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e149632149962%_)))
                                          (_%hd149631149965%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e149632149962%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl149630149967%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149624149951%_))
                                              (_%__match150392150393%_
                                               _%e149587149842%_
                                               _%hd149586149845%_
                                               _%tl149585149847%_
                                               _%e149590149850%_
                                               _%hd149589149853%_
                                               _%tl149588149855%_
                                               _%e149593149858%_
                                               _%hd149592149861%_
                                               _%tl149591149863%_
                                               _%e149596149866%_
                                               _%hd149595149869%_
                                               _%tl149594149871%_
                                               _%e149599149874%_
                                               _%hd149598149877%_
                                               _%tl149597149879%_
                                               _%e149602149882%_
                                               _%hd149601149885%_
                                               _%tl149600149887%_
                                               _%e149605149890%_
                                               _%hd149604149893%_
                                               _%tl149603149895%_
                                               _%e149608149898%_
                                               _%hd149607149901%_
                                               _%tl149606149903%_
                                               _%e149611149906%_
                                               _%hd149610149909%_
                                               _%tl149609149911%_
                                               _%e149614149914%_
                                               _%hd149613149917%_
                                               _%tl149612149919%_
                                               _%e149617149922%_
                                               _%hd149616149925%_
                                               _%tl149615149927%_
                                               _%e149620149930%_
                                               _%hd149619149933%_
                                               _%tl149618149935%_
                                               _%e149623149938%_
                                               _%hd149622149941%_
                                               _%tl149621149943%_
                                               _%e149626149946%_
                                               _%hd149625149949%_
                                               _%tl149624149951%_
                                               _%e149629149954%_
                                               _%hd149628149957%_
                                               _%tl149627149959%_
                                               _%e149632149962%_
                                               _%hd149631149965%_
                                               _%tl149630149967%_)
                                              (_%__kont150263150264%_))
                                          (_%__kont150263150264%_))))
                                  (_%__kont150263150264%_))
                              (_%__kont150263150264%_))
                          (_%__kont150263150264%_))))
                  (_%__kont150263150264%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl149615149927%_))
                                                      (if (let ((__tmp150542
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp150542 'bind-method!))
                  (let ((_%L149796%_ _%hd149622149941%_)
                        (_%L149797%_ _%hd149613149917%_)
                        (_%L149798%_ _%hd149604149893%_)
                        (_%L149799%_ _%hd149595149869%_))
                    (_%__kont150261150262%_
                     _%L149796%_
                     _%L149797%_
                     _%L149798%_
                     _%L149799%_))
                  (_%__kont150263150264%_))
              (_%__kont150263150264%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont150263150264%_))))
                                      (_%__kont150263150264%_))
                                  (_%__kont150263150264%_))
                              (_%__kont150263150264%_))))
                      (_%__kont150263150264%_))))
              (_%__kont150263150264%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont150263150264%_))))
                                          (_%__kont150263150264%_))
                                      (_%__kont150263150264%_))
                                  (_%__kont150263150264%_))))
                          (_%__kont150263150264%_))))
                  (_%__kont150263150264%_))
              (_%__kont150263150264%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont150263150264%_))
                                          (_%__kont150263150264%_))
                                      (_%__kont150263150264%_))))
                              (_%__kont150263150264%_))))
                      (_%__kont150263150264%_))
                  (_%__kont150263150264%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont150263150264%_))
                                              (_%__kont150263150264%_))
                                          (_%__kont150263150264%_))))
                                  (_%__kont150263150264%_))))
                          (_%__kont150263150264%_))))
                  (_%__kont150263150264%_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_%self149521%_ _%stx149522%_)
        (let* ((_%g149524149537%_
                (lambda (_%g149525149534%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149525149534%_))))
               (_%g149523149570%_
                (lambda (_%g149525149540%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149525149540%_))
                      (let ((_%e149529149542%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149525149540%_))))
                        (let ((_%hd149528149545%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149529149542%_)))
                              (_%tl149527149547%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149529149542%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149527149547%_))
                              (let ((_%e149532149550%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149527149547%_))))
                                (let ((_%hd149531149553%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149532149550%_)))
                                      (_%tl149530149555%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149532149550%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149530149555%_))
                                      ((lambda (_%L149558%_)
                                         (if (let ((__tmp150543
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self149521%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L149558%_
                                                __tmp150543))
                                             (let ((__tmp150544
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self149521%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp150544
                                                _%stx149522%_))
                                             _%stx149522%_))
                                       _%hd149531149553%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g149524149537%_
                                         _%g149525149540%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149524149537%_ _%g149525149540%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149524149537%_ _%g149525149540%_))))))
          (declare (not safe))
          (_%g149523149570%_ _%stx149522%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self149461%_ _%stx149462%_)
        (let* ((_%g149464149477%_
                (lambda (_%g149465149474%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149465149474%_))))
               (_%g149463149518%_
                (lambda (_%g149465149480%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149465149480%_))
                      (let ((_%e149469149482%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149465149480%_))))
                        (let ((_%hd149468149485%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149469149482%_)))
                              (_%tl149467149487%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149469149482%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149467149487%_))
                              (let ((_%e149472149490%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149467149487%_))))
                                (let ((_%hd149471149493%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149472149490%_)))
                                      (_%tl149470149495%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149472149490%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149470149495%_))
                                      ((lambda (_%L149498%_)
                                         (let ((_%$e149512%_
                                                (let ((__tmp150546
                                                       (lambda (_%sub149510%_)
                                                         (let ((__tmp150547
                                                                (car _%sub149510%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L149498%_
                                                            __tmp150547))))
                                                      (__tmp150545
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self149461%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp150546
                                                          __tmp150545))))
                                           (if _%$e149512%_
                                               ((lambda (_%sub149515%_)
                                                  (let ((__tmp150548
                                                         (cons '%#ref
                                                               (cons (cdr _%sub149515%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp150548
                                                     _%stx149462%_)))
                                                _%$e149512%_)
                                               (let () _%stx149462%_))))
                                       _%hd149471149493%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g149464149477%_
                                         _%g149465149480%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149464149477%_ _%g149465149480%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149464149477%_ _%g149465149480%_))))))
          (declare (not safe))
          (_%g149463149518%_ _%stx149462%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self149390%_ _%stx149391%_)
        (let* ((_%g149393149410%_
                (lambda (_%g149394149407%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149394149407%_))))
               (_%g149392149458%_
                (lambda (_%g149394149413%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149394149413%_))
                      (let ((_%e149399149415%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149394149413%_))))
                        (let ((_%hd149398149418%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149399149415%_)))
                              (_%tl149397149420%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149399149415%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149397149420%_))
                              (let ((_%e149402149423%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149397149420%_))))
                                (let ((_%hd149401149426%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149402149423%_)))
                                      (_%tl149400149428%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149402149423%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149400149428%_))
                                      (let ((_%e149405149431%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149400149428%_))))
                                        (let ((_%hd149404149434%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149405149431%_)))
                                              (_%tl149403149436%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149405149431%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149403149436%_))
                                              ((lambda (_%L149439%_
                                                        _%L149440%_)
                                                 (let ((_%new-expr149455%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self149390%_
                                                           _%L149439%_)))
                                                       (_%new-xid149456%_
                                                        (if (let ((__tmp150549
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self149390%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L149440%_ __tmp150549))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self149390%_ 'new-id))
                    _%L149440%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp150550
                                                          (cons '%#set!
                                                                (cons _%new-xid149456%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr149455%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp150550
                                                      _%stx149391%_))))
                                               _%hd149404149434%_
                                               _%hd149401149426%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g149393149410%_
                                                 _%g149394149413%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149393149410%_
                                         _%g149394149413%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149393149410%_ _%g149394149413%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149393149410%_ _%g149394149413%_))))))
          (declare (not safe))
          (_%g149392149458%_ _%stx149391%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self149313%_ _%stx149314%_)
        (let* ((_%g149316149333%_
                (lambda (_%g149317149330%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149317149330%_))))
               (_%g149315149387%_
                (lambda (_%g149317149336%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149317149336%_))
                      (let ((_%e149322149338%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149317149336%_))))
                        (let ((_%hd149321149341%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149322149338%_)))
                              (_%tl149320149343%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149322149338%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149320149343%_))
                              (let ((_%e149325149346%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149320149343%_))))
                                (let ((_%hd149324149349%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149325149346%_)))
                                      (_%tl149323149351%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149325149346%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149323149351%_))
                                      (let ((_%e149328149354%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149323149351%_))))
                                        (let ((_%hd149327149357%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149328149354%_)))
                                              (_%tl149326149359%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149328149354%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149326149359%_))
                                              ((lambda (_%L149362%_
                                                        _%L149363%_)
                                                 (let ((_%new-expr149384%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self149313%_
                                                           _%L149362%_)))
                                                       (_%new-xid149385%_
                                                        (let ((_%$e149380%_
                                                               (let ((__tmp150552
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub149378%_)
                                (let ((__tmp150553 (car _%sub149378%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L149363%_
                                   __tmp150553))))
                             (__tmp150551
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self149313%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp150552 __tmp150551))))
                  (if _%$e149380%_ (cdr _%$e149380%_) (let () _%L149363%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp150554
                                                          (cons '%#set!
                                                                (cons _%new-xid149385%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr149384%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp150554
                                                      _%stx149314%_))))
                                               _%hd149327149357%_
                                               _%hd149324149349%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g149316149333%_
                                                 _%g149317149336%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149316149333%_
                                         _%g149317149336%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149316149333%_ _%g149317149336%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149316149333%_ _%g149317149336%_))))))
          (declare (not safe))
          (_%g149315149387%_ _%stx149314%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self149259%_ _%stx149260%_)
        (let* ((_%g149262149275%_
                (lambda (_%g149263149272%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149263149272%_))))
               (_%g149261149310%_
                (lambda (_%g149263149278%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149263149278%_))
                      (let ((_%e149267149280%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149263149278%_))))
                        (let ((_%hd149266149283%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149267149280%_)))
                              (_%tl149265149285%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149267149280%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149265149285%_))
                              (let ((_%e149270149288%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149265149285%_))))
                                (let ((_%hd149269149291%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149270149288%_)))
                                      (_%tl149268149293%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149270149288%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149268149293%_))
                                      ((lambda (_%L149296%_)
                                         (let* ((_%eid149308%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L149296%_)))
                                                (__tmp150555
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self149259%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp150555
                                            _%eid149308%_
                                            1+
                                            '0)))
                                       _%hd149269149291%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g149262149275%_
                                         _%g149263149278%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149262149275%_ _%g149263149278%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149262149275%_ _%g149263149278%_))))))
          (declare (not safe))
          (_%g149261149310%_ _%stx149260%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self149189%_ _%stx149190%_)
        (let* ((_%g149192149209%_
                (lambda (_%g149193149206%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149193149206%_))))
               (_%g149191149256%_
                (lambda (_%g149193149212%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149193149212%_))
                      (let ((_%e149198149214%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149193149212%_))))
                        (let ((_%hd149197149217%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149198149214%_)))
                              (_%tl149196149219%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149198149214%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149196149219%_))
                              (let ((_%e149201149222%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149196149219%_))))
                                (let ((_%hd149200149225%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149201149222%_)))
                                      (_%tl149199149227%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149201149222%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149199149227%_))
                                      (let ((_%e149204149230%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149199149227%_))))
                                        (let ((_%hd149203149233%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149204149230%_)))
                                              (_%tl149202149235%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149204149230%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149202149235%_))
                                              ((lambda (_%L149238%_
                                                        _%L149239%_)
                                                 (let ((_%eid149254%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L149239%_))))
                                                   (let ((__tmp150556
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self149189%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp150556
                                                      _%eid149254%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self149189%_
                                                      _%L149238%_))))
                                               _%hd149203149233%_
                                               _%hd149200149225%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g149192149209%_
                                                 _%g149193149212%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g149192149209%_
                                         _%g149193149212%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g149192149209%_ _%g149193149212%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149192149209%_ _%g149193149212%_))))))
          (declare (not safe))
          (_%g149191149256%_ _%stx149190%_))))
    (define gxc#find-body%
      (lambda (_%self149102%_ _%stx149103%_)
        (let* ((_%g149105149124%_
                (lambda (_%g149106149121%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149106149121%_))))
               (_%g149104149186%_
                (lambda (_%g149106149127%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149106149127%_))
                      (let ((_%e149110149129%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149106149127%_))))
                        (let ((_%hd149109149132%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149110149129%_)))
                              (_%tl149108149134%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149110149129%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl149108149134%_))
                              (let ((_g150557_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl149108149134%_
                                        '0))))
                                (begin
                                  (let ((_g150558_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g150557_)
                                               (##vector-length _g150557_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g150558_ 2)))
                                        (error "Context expects 2 values"
                                               _g150558_)))
                                  (let ((_%target149111149137%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g150557_ 0)))
                                        (_%tl149113149139%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g150557_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl149113149139%_))
                                        (letrec ((_%loop149114149142%_
                                                  (lambda (_%hd149112149145%_
                                                           _%expr149118149147%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd149112149145%_))
                                                        (let ((_%e149115149150%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd149112149145%_))))
                  (let ((_%lp-hd149116149153%_
                         (let ()
                           (declare (not safe))
                           (##car _%e149115149150%_)))
                        (_%lp-tl149117149155%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e149115149150%_))))
                    (let ((__tmp150559
                           (cons _%lp-hd149116149153%_ _%expr149118149147%_)))
                      (declare (not safe))
                      (_%loop149114149142%_
                       _%lp-tl149117149155%_
                       __tmp150559))))
                (let ((_%expr149119149158%_ (reverse _%expr149118149147%_)))
                  ((lambda (_%L149161%_)
                     (let ((__tmp150562
                            (lambda (_%g149174149176%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self149102%_
                                 _%g149174149176%_))))
                           (__tmp150560
                            (let ((__tmp150561
                                   (lambda (_%g149178149181%_
                                            _%g149179149183%_)
                                     (cons _%g149178149181%_
                                           _%g149179149183%_))))
                              (declare (not safe))
                              (__foldr1 __tmp150561 '() _%L149161%_))))
                       (declare (not safe))
                       (__ormap1 __tmp150562 __tmp150560)))
                   _%expr149119149158%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_%loop149114149142%_
                                             _%target149111149137%_
                                             '())))
                                        (let ()
                                          (declare (not safe))
                                          (_%g149105149124%_
                                           _%g149106149127%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g149105149124%_ _%g149106149127%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g149105149124%_ _%g149106149127%_))))))
          (declare (not safe))
          (_%g149104149186%_ _%stx149103%_))))
    (define gxc#find-let-values%
      (lambda (_%self148952%_ _%stx148953%_)
        (let* ((_%g148955148990%_
                (lambda (_%g148956148987%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148956148987%_))))
               (_%g148954149099%_
                (lambda (_%g148956148993%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148956148993%_))
                      (let ((_%e148962148995%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148956148993%_))))
                        (let ((_%hd148961148998%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148962148995%_)))
                              (_%tl148960149000%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148962148995%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148960149000%_))
                              (let ((_%e148965149003%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148960149000%_))))
                                (let ((_%hd148964149006%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148965149003%_)))
                                      (_%tl148963149008%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148965149003%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd148964149006%_))
                                      (let ((_g150563_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd148964149006%_
                                                '0))))
                                        (begin
                                          (let ((_g150564_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g150563_)
                                                       (##vector-length
                                                        _g150563_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g150564_ 2)))
                                                (error "Context expects 2 values"
                                                       _g150564_)))
                                          (let ((_%target148966149011%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g150563_ 0)))
                                                (_%tl148968149013%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g150563_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl148968149013%_))
                                                (letrec ((_%loop148969149016%_
                                                          (lambda (_%hd148967149019%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr148973149021%_
                           _%bind148974149023%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd148967149019%_))
                        (let ((_%e148970149026%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd148967149019%_))))
                          (let ((_%lp-hd148971149029%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e148970149026%_)))
                                (_%lp-tl148972149031%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e148970149026%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd148971149029%_))
                                (let ((_%e148979149034%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd148971149029%_))))
                                  (let ((_%hd148978149037%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e148979149034%_)))
                                        (_%tl148977149039%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e148979149034%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl148977149039%_))
                                        (let ((_%e148982149042%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl148977149039%_))))
                                          (let ((_%hd148981149045%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e148982149042%_)))
                                                (_%tl148980149047%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e148982149042%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl148980149047%_))
                                                (let ((__tmp150566
                                                       (cons _%hd148981149045%_
                                                             _%expr148973149021%_))
                                                      (__tmp150565
                                                       (cons _%hd148978149037%_
                                                             _%bind148974149023%_)))
                                                  (declare (not safe))
                                                  (_%loop148969149016%_
                                                   _%lp-tl148972149031%_
                                                   __tmp150566
                                                   __tmp150565))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g148955148990%_
                                                   _%g148956148993%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g148955148990%_
                                           _%g148956148993%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g148955148990%_ _%g148956148993%_)))))
                        (let ((_%expr148975149050%_
                               (reverse _%expr148973149021%_))
                              (_%bind148976149052%_
                               (reverse _%bind148974149023%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148963149008%_))
                              (let ((_%e148985149055%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148963149008%_))))
                                (let ((_%hd148984149058%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148985149055%_)))
                                      (_%tl148983149060%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148985149055%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl148983149060%_))
                                      ((lambda (_%L149063%_
                                                _%L149064%_
                                                _%L149065%_)
                                         (let ((_%$e149096%_
                                                (let ((__tmp150569
                                                       (lambda (_%g149084149086%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self148952%_
                                                            _%g149084149086%_))))
                                                      (__tmp150567
                                                       (let ((__tmp150568
                                                              (lambda (_%g149088149091%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g149089149093%_)
                        (cons _%g149088149091%_ _%g149089149093%_))))
                 (declare (not safe))
                 (__foldr1 __tmp150568 '() _%L149064%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp150569
                                                   __tmp150567))))
                                           (if _%$e149096%_
                                               _%$e149096%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self148952%_
                                                  _%L149063%_)))))
                                       _%hd148984149058%_
                                       _%expr148975149050%_
                                       _%bind148976149052%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g148955148990%_
                                         _%g148956148993%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g148955148990%_ _%g148956148993%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%loop148969149016%_
                                                     _%target148966149011%_
                                                     '()
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g148955148990%_
                                                   _%g148956148993%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g148955148990%_
                                         _%g148956148993%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g148955148990%_ _%g148956148993%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g148955148990%_ _%g148956148993%_))))))
          (declare (not safe))
          (_%g148954149099%_ _%stx148953%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self148896%_ _%stx148897%_)
        (let* ((_%g148899148912%_
                (lambda (_%g148900148909%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148900148909%_))))
               (_%g148898148949%_
                (lambda (_%g148900148915%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148900148915%_))
                      (let ((_%e148904148917%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148900148915%_))))
                        (let ((_%hd148903148920%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148904148917%_)))
                              (_%tl148902148922%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148904148917%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148902148922%_))
                              (let ((_%e148907148925%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148902148922%_))))
                                (let ((_%hd148906148928%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148907148925%_)))
                                      (_%tl148905148930%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148907148925%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl148905148930%_))
                                      ((lambda (_%L148933%_)
                                         (let ((__tmp150571
                                                (lambda (_%g148944148946%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L148933%_
                                                     _%g148944148946%_))))
                                               (__tmp150570
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self148896%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp150571 __tmp150570)))
                                       _%hd148906148928%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g148899148912%_
                                         _%g148900148915%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g148899148912%_ _%g148900148915%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g148899148912%_ _%g148900148915%_))))))
          (declare (not safe))
          (_%g148898148949%_ _%stx148897%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self148821%_ _%stx148822%_)
        (let* ((_%g148824148841%_
                (lambda (_%g148825148838%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148825148838%_))))
               (_%g148823148893%_
                (lambda (_%g148825148844%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148825148844%_))
                      (let ((_%e148830148846%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148825148844%_))))
                        (let ((_%hd148829148849%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148830148846%_)))
                              (_%tl148828148851%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148830148846%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148828148851%_))
                              (let ((_%e148833148854%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148828148851%_))))
                                (let ((_%hd148832148857%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148833148854%_)))
                                      (_%tl148831148859%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148833148854%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148831148859%_))
                                      (let ((_%e148836148862%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148831148859%_))))
                                        (let ((_%hd148835148865%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148836148862%_)))
                                              (_%tl148834148867%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148836148862%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148834148867%_))
                                              ((lambda (_%L148870%_
                                                        _%L148871%_)
                                                 (let ((_%$e148890%_
                                                        (let ((__tmp150573
                                                               (lambda (_%g148885148887%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L148871%_
                            _%g148885148887%_))))
                      (__tmp150572
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self148821%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp150573 __tmp150572))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e148890%_
                                                       _%$e148890%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self148821%_
                                                          _%L148870%_)))))
                                               _%hd148835148865%_
                                               _%hd148832148857%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g148824148841%_
                                                 _%g148825148844%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g148824148841%_
                                         _%g148825148844%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g148824148841%_ _%g148825148844%_)))))
                      (let ()
                        (declare (not safe))
                        (_%g148824148841%_ _%g148825148844%_))))))
          (declare (not safe))
          (_%g148823148893%_ _%stx148822%_))))))
