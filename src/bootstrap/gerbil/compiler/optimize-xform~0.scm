(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1712702632)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp150328 (list gxc#::void::t))
            (__tmp150327 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp150328
         '()
         __tmp150327
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args150068%_
        (apply make-instance gxc#::collect-mutators::t _%$args150068%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp150329
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
        (__make-promise __tmp150329)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx150060%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self150063%_
                (let ((__obj150315
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj150315))
               (__tmp150330
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self150063%_ _%stx150060%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150330
           gxc#current-compile-method
           _%self150063%_))))
    (define gxc#::collect-methods::t
      (let ((__tmp150332 (list gxc#::void::t))
            (__tmp150331 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-methods::t
         '::collect-methods
         __tmp150332
         '()
         __tmp150331
         '#f)))
    (define gxc#::collect-methods?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-methods::t)))
    (define gxc#make-::collect-methods
      (lambda _%$args150057%_
        (apply make-instance gxc#::collect-methods::t _%$args150057%_)))
    (define gxc#::collect-methods-bind-methods!
      (let ((__tmp150333
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
        (__make-promise __tmp150333)))
    (define gxc#apply-collect-methods
      (lambda (_%stx150049%_)
        (force gxc#::collect-methods-bind-methods!)
        (let* ((_%self150052%_
                (let ((__obj150317
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-methods::t))))
                  __obj150317))
               (__tmp150334
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self150052%_ _%stx150049%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150334
           gxc#current-compile-method
           _%self150052%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp150336 (list gxc#::basic-xform-expression::t))
            (__tmp150335 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp150336
         '(id new-id)
         __tmp150335
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args150046%_
        (apply make-instance gxc#::expression-subst::t _%$args150046%_)))
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
      (let ((__tmp150337
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
        (__make-promise __tmp150337)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords150016%_
               _%id150012150017%_
               _%new-id150013150019%_
               _%stx150021%_)
        (let* ((_%id150024%_
                (if (eq? _%id150012150017%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id150012150017%_))
               (_%new-id150026%_
                (if (eq? _%new-id150013150019%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id150013150019%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self150028%_
                  (let ((__obj150319
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150319
                       _%id150024%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150319
                       _%new-id150026%_
                       '2
                       '#f
                       '#f))
                    __obj150319))
                 (__tmp150338
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self150028%_ _%stx150021%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150338
             gxc#current-compile-method
             _%self150028%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords150035%_ . _%args150036%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords150035%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords150035%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords150035%_
                  'new-id:
                  absent-value))
               _%args150036%_)))
    (define gxc#apply-expression-subst
      (lambda _%args150014150042%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args150014150042%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp150340 (list gxc#::basic-xform-expression::t))
            (__tmp150339 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp150340
         '(subst)
         __tmp150339
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args150008%_
        (apply make-instance gxc#::expression-subst*::t _%$args150008%_)))
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
      (let ((__tmp150341
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
        (__make-promise __tmp150341)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords149982%_ _%subst149979149983%_ _%stx149985%_)
        (let ((_%subst149988%_
               (if (eq? _%subst149979149983%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst149979149983%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self149990%_
                  (let ((__obj150321
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150321
                       _%subst149988%_
                       '1
                       '#f
                       '#f))
                    __obj150321))
                 (__tmp150342
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self149990%_ _%stx149985%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150342
             gxc#current-compile-method
             _%self149990%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords149997%_ . _%args149998%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords149997%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords149997%_
                  'subst:
                  absent-value))
               _%args149998%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args149980150004%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args149980150004%_)))
    (define gxc#::find-expression::t
      (let ((__tmp150343 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp150343
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args149975%_
        (apply make-instance gxc#::find-expression::t _%$args149975%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp150344
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
        (__make-promise __tmp150344)))
    (define gxc#::find-var-refs::t
      (let ((__tmp150346 (list gxc#::find-expression::t))
            (__tmp150345 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp150346
         '(ids)
         __tmp150345
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args149971%_
        (apply make-instance gxc#::find-var-refs::t _%$args149971%_)))
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
      (let ((__tmp150347
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
        (__make-promise __tmp150347)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords149945%_ _%ids149942149946%_ _%stx149948%_)
        (let ((_%ids149951%_
               (if (eq? _%ids149942149946%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids149942149946%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self149953%_
                  (let ((__obj150324
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150324
                       _%ids149951%_
                       '1
                       '#f
                       '#f))
                    __obj150324))
                 (__tmp150348
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self149953%_ _%stx149948%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150348
             gxc#current-compile-method
             _%self149953%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords149960%_ . _%args149961%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords149960%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords149960%_ 'ids: absent-value))
               _%args149961%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args149943149967%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args149943149967%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp150350 (list gxc#::collect-expression-refs::t))
            (__tmp150349 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp150350
         '()
         __tmp150349
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args149938%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args149938%_)))
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
      (let ((__tmp150351
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
        (__make-promise __tmp150351)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords149912%_ _%table149909149913%_ _%stx149915%_)
        (let ((_%table149918%_
               (if (eq? _%table149909149913%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table149909149913%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self149920%_
                  (let ((__obj150326
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150326
                       _%table149918%_
                       '1
                       '#f
                       '#f))
                    __obj150326))
                 (__tmp150352
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self149920%_ _%stx149915%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150352
             gxc#current-compile-method
             _%self149920%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords149927%_ . _%args149928%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords149927%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords149927%_
                  'table:
                  absent-value))
               _%args149928%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args149910149934%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args149910149934%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self149838%_ _%stx149839%_)
        (let* ((_%g149841149858%_
                (lambda (_%g149842149855%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149842149855%_))))
               (_%g149840149905%_
                (lambda (_%g149842149861%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149842149861%_))
                      (let ((_%e149845149863%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149842149861%_))))
                        (let ((_%hd149846149866%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149845149863%_)))
                              (_%tl149847149868%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149845149863%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149847149868%_))
                              (let ((_%e149848149871%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149847149868%_))))
                                (let ((_%hd149849149874%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149848149871%_)))
                                      (_%tl149850149876%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149848149871%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149850149876%_))
                                      (let ((_%e149851149879%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149850149876%_))))
                                        (let ((_%hd149852149882%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149851149879%_)))
                                              (_%tl149853149884%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149851149879%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149853149884%_))
                                              ((lambda (_%L149887%_
                                                        _%L149888%_)
                                                 (let ((_%sym149903%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L149888%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym149903%_))
                                                   (let ((__tmp150353
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp150353
                                                      _%sym149903%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self149838%_
                                                      _%L149887%_))))
                                               _%hd149852149882%_
                                               _%hd149849149874%_)
                                              (_%g149841149858%_
                                               _%g149842149861%_))))
                                      (_%g149841149858%_ _%g149842149861%_))))
                              (_%g149841149858%_ _%g149842149861%_))))
                      (_%g149841149858%_ _%g149842149861%_)))))
          (_%g149840149905%_ _%stx149839%_))))
    (define gxc#collect-methods-call%
      (lambda (_%self149391%_ _%stx149392%_)
        (let* ((_%__stx150071150072%_ _%stx149392%_)
               (_%g149396149498%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx150071150072%_)))))
          (let ((_%__kont150073150074%_
                 (lambda (_%L149788%_
                          _%L149789%_
                          _%L149790%_
                          _%L149791%_
                          _%L149792%_)
                   (let ((__tmp150354
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _%L149789%_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp150354))))
                (_%__kont150075150076%_
                 (lambda (_%L149614%_ _%L149615%_ _%L149616%_ _%L149617%_)
                   (let ((__tmp150355
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _%L149614%_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp150355))))
                (_%__kont150077150078%_ (lambda () '#!void)))
            (let ((_%__match150206150207%_
                   (lambda (_%e149403149660%_
                            _%hd149404149663%_
                            _%tl149405149665%_
                            _%e149406149668%_
                            _%hd149407149671%_
                            _%tl149408149673%_
                            _%e149409149676%_
                            _%hd149410149679%_
                            _%tl149411149681%_
                            _%e149412149684%_
                            _%hd149413149687%_
                            _%tl149414149689%_
                            _%e149415149692%_
                            _%hd149416149695%_
                            _%tl149417149697%_
                            _%e149418149700%_
                            _%hd149419149703%_
                            _%tl149420149705%_
                            _%e149421149708%_
                            _%hd149422149711%_
                            _%tl149423149713%_
                            _%e149424149716%_
                            _%hd149425149719%_
                            _%tl149426149721%_
                            _%e149427149724%_
                            _%hd149428149727%_
                            _%tl149429149729%_
                            _%e149430149732%_
                            _%hd149431149735%_
                            _%tl149432149737%_
                            _%e149433149740%_
                            _%hd149434149743%_
                            _%tl149435149745%_
                            _%e149436149748%_
                            _%hd149437149751%_
                            _%tl149438149753%_
                            _%e149439149756%_
                            _%hd149440149759%_
                            _%tl149441149761%_
                            _%e149442149764%_
                            _%hd149443149767%_
                            _%tl149444149769%_
                            _%e149445149772%_
                            _%hd149446149775%_
                            _%tl149447149777%_
                            _%e149448149780%_
                            _%hd149449149783%_
                            _%tl149450149785%_)
                     (let ((_%L149788%_ _%hd149449149783%_)
                           (_%L149789%_ _%hd149440149759%_)
                           (_%L149790%_ _%hd149431149735%_)
                           (_%L149791%_ _%hd149422149711%_)
                           (_%L149792%_ _%hd149413149687%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L149792%_
                              'bind-method!))
                           (_%__kont150073150074%_
                            _%L149788%_
                            _%L149789%_
                            _%L149790%_
                            _%L149791%_
                            _%L149792%_)
                           (_%__kont150077150078%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx150071150072%_))
                  (let ((_%e149403149660%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx150071150072%_))))
                    (let ((_%tl149405149665%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e149403149660%_)))
                          (_%hd149404149663%_
                           (let ()
                             (declare (not safe))
                             (##car _%e149403149660%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl149405149665%_))
                          (let ((_%e149406149668%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl149405149665%_))))
                            (let ((_%tl149408149673%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e149406149668%_)))
                                  (_%hd149407149671%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e149406149668%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd149407149671%_))
                                  (let ((_%e149409149676%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd149407149671%_))))
                                    (let ((_%tl149411149681%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e149409149676%_)))
                                          (_%hd149410149679%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e149409149676%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd149410149679%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd149410149679%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl149411149681%_))
                                                  (let ((_%e149412149684%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl149411149681%_))))
                                                    (let ((_%tl149414149689%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e149412149684%_)))
                                                          (_%hd149413149687%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e149412149684%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl149414149689%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl149408149673%_))
                      (let ((_%e149415149692%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl149408149673%_))))
                        (let ((_%tl149417149697%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149415149692%_)))
                              (_%hd149416149695%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149415149692%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd149416149695%_))
                              (let ((_%e149418149700%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd149416149695%_))))
                                (let ((_%tl149420149705%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149418149700%_)))
                                      (_%hd149419149703%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149418149700%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd149419149703%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd149419149703%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl149420149705%_))
                                              (let ((_%e149421149708%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl149420149705%_))))
                                                (let ((_%tl149423149713%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e149421149708%_)))
                                                      (_%hd149422149711%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e149421149708%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl149423149713%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl149417149697%_))
                                                          (let ((_%e149424149716%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl149417149697%_))))
                    (let ((_%tl149426149721%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e149424149716%_)))
                          (_%hd149425149719%_
                           (let ()
                             (declare (not safe))
                             (##car _%e149424149716%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd149425149719%_))
                          (let ((_%e149427149724%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd149425149719%_))))
                            (let ((_%tl149429149729%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e149427149724%_)))
                                  (_%hd149428149727%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e149427149724%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd149428149727%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd149428149727%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl149429149729%_))
                                          (let ((_%e149430149732%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl149429149729%_))))
                                            (let ((_%tl149432149737%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e149430149732%_)))
                                                  (_%hd149431149735%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e149430149732%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl149432149737%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl149426149721%_))
                                                      (let ((_%e149433149740%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl149426149721%_))))
                (let ((_%tl149435149745%_
                       (let () (declare (not safe)) (##cdr _%e149433149740%_)))
                      (_%hd149434149743%_
                       (let ()
                         (declare (not safe))
                         (##car _%e149433149740%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd149434149743%_))
                      (let ((_%e149436149748%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd149434149743%_))))
                        (let ((_%tl149438149753%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149436149748%_)))
                              (_%hd149437149751%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149436149748%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd149437149751%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd149437149751%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149438149753%_))
                                      (let ((_%e149439149756%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149438149753%_))))
                                        (let ((_%tl149441149761%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149439149756%_)))
                                              (_%hd149440149759%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149439149756%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149441149761%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl149435149745%_))
                                                  (let ((_%e149442149764%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl149435149745%_))))
                                                    (let ((_%tl149444149769%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e149442149764%_)))
                                                          (_%hd149443149767%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e149442149764%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd149443149767%_))
                                                          (let ((_%e149445149772%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd149443149767%_))))
                    (let ((_%tl149447149777%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e149445149772%_)))
                          (_%hd149446149775%_
                           (let ()
                             (declare (not safe))
                             (##car _%e149445149772%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd149446149775%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd149446149775%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl149447149777%_))
                                  (let ((_%e149448149780%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl149447149777%_))))
                                    (let ((_%tl149450149785%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e149448149780%_)))
                                          (_%hd149449149783%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e149448149780%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl149450149785%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149444149769%_))
                                              (_%__match150206150207%_
                                               _%e149403149660%_
                                               _%hd149404149663%_
                                               _%tl149405149665%_
                                               _%e149406149668%_
                                               _%hd149407149671%_
                                               _%tl149408149673%_
                                               _%e149409149676%_
                                               _%hd149410149679%_
                                               _%tl149411149681%_
                                               _%e149412149684%_
                                               _%hd149413149687%_
                                               _%tl149414149689%_
                                               _%e149415149692%_
                                               _%hd149416149695%_
                                               _%tl149417149697%_
                                               _%e149418149700%_
                                               _%hd149419149703%_
                                               _%tl149420149705%_
                                               _%e149421149708%_
                                               _%hd149422149711%_
                                               _%tl149423149713%_
                                               _%e149424149716%_
                                               _%hd149425149719%_
                                               _%tl149426149721%_
                                               _%e149427149724%_
                                               _%hd149428149727%_
                                               _%tl149429149729%_
                                               _%e149430149732%_
                                               _%hd149431149735%_
                                               _%tl149432149737%_
                                               _%e149433149740%_
                                               _%hd149434149743%_
                                               _%tl149435149745%_
                                               _%e149436149748%_
                                               _%hd149437149751%_
                                               _%tl149438149753%_
                                               _%e149439149756%_
                                               _%hd149440149759%_
                                               _%tl149441149761%_
                                               _%e149442149764%_
                                               _%hd149443149767%_
                                               _%tl149444149769%_
                                               _%e149445149772%_
                                               _%hd149446149775%_
                                               _%tl149447149777%_
                                               _%e149448149780%_
                                               _%hd149449149783%_
                                               _%tl149450149785%_)
                                              (_%__kont150077150078%_))
                                          (_%__kont150077150078%_))))
                                  (_%__kont150077150078%_))
                              (_%__kont150077150078%_))
                          (_%__kont150077150078%_))))
                  (_%__kont150077150078%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl149435149745%_))
                                                      (if (let ((__tmp150356
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp150356 'bind-method!))
                  (let ((_%L149614%_ _%hd149440149759%_)
                        (_%L149615%_ _%hd149431149735%_)
                        (_%L149616%_ _%hd149422149711%_)
                        (_%L149617%_ _%hd149413149687%_))
                    (_%__kont150075150076%_
                     _%L149614%_
                     _%L149615%_
                     _%L149616%_
                     _%L149617%_))
                  (_%__kont150077150078%_))
              (_%__kont150077150078%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont150077150078%_))))
                                      (_%__kont150077150078%_))
                                  (_%__kont150077150078%_))
                              (_%__kont150077150078%_))))
                      (_%__kont150077150078%_))))
              (_%__kont150077150078%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont150077150078%_))))
                                          (_%__kont150077150078%_))
                                      (_%__kont150077150078%_))
                                  (_%__kont150077150078%_))))
                          (_%__kont150077150078%_))))
                  (_%__kont150077150078%_))
              (_%__kont150077150078%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont150077150078%_))
                                          (_%__kont150077150078%_))
                                      (_%__kont150077150078%_))))
                              (_%__kont150077150078%_))))
                      (_%__kont150077150078%_))
                  (_%__kont150077150078%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont150077150078%_))
                                              (_%__kont150077150078%_))
                                          (_%__kont150077150078%_))))
                                  (_%__kont150077150078%_))))
                          (_%__kont150077150078%_))))
                  (_%__kont150077150078%_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_%self149339%_ _%stx149340%_)
        (let* ((_%g149342149355%_
                (lambda (_%g149343149352%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149343149352%_))))
               (_%g149341149388%_
                (lambda (_%g149343149358%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149343149358%_))
                      (let ((_%e149345149360%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149343149358%_))))
                        (let ((_%hd149346149363%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149345149360%_)))
                              (_%tl149347149365%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149345149360%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149347149365%_))
                              (let ((_%e149348149368%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149347149365%_))))
                                (let ((_%hd149349149371%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149348149368%_)))
                                      (_%tl149350149373%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149348149368%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149350149373%_))
                                      ((lambda (_%L149376%_)
                                         (if (let ((__tmp150357
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self149339%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L149376%_
                                                __tmp150357))
                                             (let ((__tmp150358
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self149339%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp150358
                                                _%stx149340%_))
                                             _%stx149340%_))
                                       _%hd149349149371%_)
                                      (_%g149342149355%_ _%g149343149358%_))))
                              (_%g149342149355%_ _%g149343149358%_))))
                      (_%g149342149355%_ _%g149343149358%_)))))
          (_%g149341149388%_ _%stx149340%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self149279%_ _%stx149280%_)
        (let* ((_%g149282149295%_
                (lambda (_%g149283149292%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149283149292%_))))
               (_%g149281149336%_
                (lambda (_%g149283149298%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149283149298%_))
                      (let ((_%e149285149300%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149283149298%_))))
                        (let ((_%hd149286149303%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149285149300%_)))
                              (_%tl149287149305%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149285149300%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149287149305%_))
                              (let ((_%e149288149308%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149287149305%_))))
                                (let ((_%hd149289149311%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149288149308%_)))
                                      (_%tl149290149313%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149288149308%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149290149313%_))
                                      ((lambda (_%L149316%_)
                                         (let ((_%$e149330%_
                                                (let ((__tmp150360
                                                       (lambda (_%sub149328%_)
                                                         (let ((__tmp150361
                                                                (car _%sub149328%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L149316%_
                                                            __tmp150361))))
                                                      (__tmp150359
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self149279%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp150360
                                                          __tmp150359))))
                                           (if _%$e149330%_
                                               ((lambda (_%sub149333%_)
                                                  (let ((__tmp150362
                                                         (cons '%#ref
                                                               (cons (cdr _%sub149333%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp150362
                                                     _%stx149280%_)))
                                                _%$e149330%_)
                                               _%stx149280%_)))
                                       _%hd149289149311%_)
                                      (_%g149282149295%_ _%g149283149298%_))))
                              (_%g149282149295%_ _%g149283149298%_))))
                      (_%g149282149295%_ _%g149283149298%_)))))
          (_%g149281149336%_ _%stx149280%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self149208%_ _%stx149209%_)
        (let* ((_%g149211149228%_
                (lambda (_%g149212149225%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149212149225%_))))
               (_%g149210149276%_
                (lambda (_%g149212149231%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149212149231%_))
                      (let ((_%e149215149233%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149212149231%_))))
                        (let ((_%hd149216149236%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149215149233%_)))
                              (_%tl149217149238%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149215149233%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149217149238%_))
                              (let ((_%e149218149241%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149217149238%_))))
                                (let ((_%hd149219149244%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149218149241%_)))
                                      (_%tl149220149246%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149218149241%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149220149246%_))
                                      (let ((_%e149221149249%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149220149246%_))))
                                        (let ((_%hd149222149252%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149221149249%_)))
                                              (_%tl149223149254%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149221149249%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149223149254%_))
                                              ((lambda (_%L149257%_
                                                        _%L149258%_)
                                                 (let ((_%new-expr149273%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self149208%_
                                                           _%L149257%_)))
                                                       (_%new-xid149274%_
                                                        (if (let ((__tmp150363
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self149208%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L149258%_ __tmp150363))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self149208%_ 'new-id))
                    _%L149258%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp150364
                                                          (cons '%#set!
                                                                (cons _%new-xid149274%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr149273%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp150364
                                                      _%stx149209%_))))
                                               _%hd149222149252%_
                                               _%hd149219149244%_)
                                              (_%g149211149228%_
                                               _%g149212149231%_))))
                                      (_%g149211149228%_ _%g149212149231%_))))
                              (_%g149211149228%_ _%g149212149231%_))))
                      (_%g149211149228%_ _%g149212149231%_)))))
          (_%g149210149276%_ _%stx149209%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self149131%_ _%stx149132%_)
        (let* ((_%g149134149151%_
                (lambda (_%g149135149148%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149135149148%_))))
               (_%g149133149205%_
                (lambda (_%g149135149154%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149135149154%_))
                      (let ((_%e149138149156%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149135149154%_))))
                        (let ((_%hd149139149159%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149138149156%_)))
                              (_%tl149140149161%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149138149156%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149140149161%_))
                              (let ((_%e149141149164%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149140149161%_))))
                                (let ((_%hd149142149167%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149141149164%_)))
                                      (_%tl149143149169%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149141149164%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149143149169%_))
                                      (let ((_%e149144149172%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149143149169%_))))
                                        (let ((_%hd149145149175%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149144149172%_)))
                                              (_%tl149146149177%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149144149172%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149146149177%_))
                                              ((lambda (_%L149180%_
                                                        _%L149181%_)
                                                 (let ((_%new-expr149202%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self149131%_
                                                           _%L149180%_)))
                                                       (_%new-xid149203%_
                                                        (let ((_%$e149198%_
                                                               (let ((__tmp150366
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub149196%_)
                                (let ((__tmp150367 (car _%sub149196%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L149181%_
                                   __tmp150367))))
                             (__tmp150365
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self149131%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp150366 __tmp150365))))
                  (if _%$e149198%_ (cdr _%$e149198%_) _%L149181%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp150368
                                                          (cons '%#set!
                                                                (cons _%new-xid149203%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr149202%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp150368
                                                      _%stx149132%_))))
                                               _%hd149145149175%_
                                               _%hd149142149167%_)
                                              (_%g149134149151%_
                                               _%g149135149154%_))))
                                      (_%g149134149151%_ _%g149135149154%_))))
                              (_%g149134149151%_ _%g149135149154%_))))
                      (_%g149134149151%_ _%g149135149154%_)))))
          (_%g149133149205%_ _%stx149132%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self149077%_ _%stx149078%_)
        (let* ((_%g149080149093%_
                (lambda (_%g149081149090%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149081149090%_))))
               (_%g149079149128%_
                (lambda (_%g149081149096%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149081149096%_))
                      (let ((_%e149083149098%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149081149096%_))))
                        (let ((_%hd149084149101%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149083149098%_)))
                              (_%tl149085149103%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149083149098%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149085149103%_))
                              (let ((_%e149086149106%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149085149103%_))))
                                (let ((_%hd149087149109%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149086149106%_)))
                                      (_%tl149088149111%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149086149106%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149088149111%_))
                                      ((lambda (_%L149114%_)
                                         (let* ((_%eid149126%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L149114%_)))
                                                (__tmp150369
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self149077%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp150369
                                            _%eid149126%_
                                            1+
                                            '0)))
                                       _%hd149087149109%_)
                                      (_%g149080149093%_ _%g149081149096%_))))
                              (_%g149080149093%_ _%g149081149096%_))))
                      (_%g149080149093%_ _%g149081149096%_)))))
          (_%g149079149128%_ _%stx149078%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self149007%_ _%stx149008%_)
        (let* ((_%g149010149027%_
                (lambda (_%g149011149024%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149011149024%_))))
               (_%g149009149074%_
                (lambda (_%g149011149030%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149011149030%_))
                      (let ((_%e149014149032%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149011149030%_))))
                        (let ((_%hd149015149035%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149014149032%_)))
                              (_%tl149016149037%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149014149032%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149016149037%_))
                              (let ((_%e149017149040%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149016149037%_))))
                                (let ((_%hd149018149043%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149017149040%_)))
                                      (_%tl149019149045%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149017149040%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149019149045%_))
                                      (let ((_%e149020149048%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149019149045%_))))
                                        (let ((_%hd149021149051%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149020149048%_)))
                                              (_%tl149022149053%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149020149048%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149022149053%_))
                                              ((lambda (_%L149056%_
                                                        _%L149057%_)
                                                 (let ((_%eid149072%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L149057%_))))
                                                   (let ((__tmp150370
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self149007%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp150370
                                                      _%eid149072%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self149007%_
                                                      _%L149056%_))))
                                               _%hd149021149051%_
                                               _%hd149018149043%_)
                                              (_%g149010149027%_
                                               _%g149011149030%_))))
                                      (_%g149010149027%_ _%g149011149030%_))))
                              (_%g149010149027%_ _%g149011149030%_))))
                      (_%g149010149027%_ _%g149011149030%_)))))
          (_%g149009149074%_ _%stx149008%_))))
    (define gxc#find-body%
      (lambda (_%self148920%_ _%stx148921%_)
        (let* ((_%g148923148942%_
                (lambda (_%g148924148939%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148924148939%_))))
               (_%g148922149004%_
                (lambda (_%g148924148945%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148924148945%_))
                      (let ((_%e148926148947%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148924148945%_))))
                        (let ((_%hd148927148950%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148926148947%_)))
                              (_%tl148928148952%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148926148947%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl148928148952%_))
                              (let ((_g150371_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl148928148952%_
                                        '0))))
                                (begin
                                  (let ((_g150372_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g150371_)
                                               (##vector-length _g150371_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g150372_ 2)))
                                        (error "Context expects 2 values"
                                               _g150372_)))
                                  (let ((_%target148929148955%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g150371_ 0)))
                                        (_%tl148931148957%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g150371_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl148931148957%_))
                                        (letrec ((_%loop148932148960%_
                                                  (lambda (_%hd148930148963%_
                                                           _%expr148936148965%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd148930148963%_))
                                                        (let ((_%e148933148968%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd148930148963%_))))
                  (let ((_%lp-hd148934148971%_
                         (let ()
                           (declare (not safe))
                           (##car _%e148933148968%_)))
                        (_%lp-tl148935148973%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e148933148968%_))))
                    (_%loop148932148960%_
                     _%lp-tl148935148973%_
                     (cons _%lp-hd148934148971%_ _%expr148936148965%_))))
                (let ((_%expr148937148976%_ (reverse _%expr148936148965%_)))
                  ((lambda (_%L148979%_)
                     (let ((__tmp150375
                            (lambda (_%g148992148994%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self148920%_
                                 _%g148992148994%_))))
                           (__tmp150373
                            (let ((__tmp150374
                                   (lambda (_%g148996148999%_
                                            _%g148997149001%_)
                                     (cons _%g148996148999%_
                                           _%g148997149001%_))))
                              (declare (not safe))
                              (__foldr1 __tmp150374 '() _%L148979%_))))
                       (declare (not safe))
                       (__ormap1 __tmp150375 __tmp150373)))
                   _%expr148937148976%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop148932148960%_
                                           _%target148929148955%_
                                           '()))
                                        (_%g148923148942%_
                                         _%g148924148945%_)))))
                              (_%g148923148942%_ _%g148924148945%_))))
                      (_%g148923148942%_ _%g148924148945%_)))))
          (_%g148922149004%_ _%stx148921%_))))
    (define gxc#find-let-values%
      (lambda (_%self148770%_ _%stx148771%_)
        (let* ((_%g148773148808%_
                (lambda (_%g148774148805%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148774148805%_))))
               (_%g148772148917%_
                (lambda (_%g148774148811%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148774148811%_))
                      (let ((_%e148778148813%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148774148811%_))))
                        (let ((_%hd148779148816%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148778148813%_)))
                              (_%tl148780148818%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148778148813%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148780148818%_))
                              (let ((_%e148781148821%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148780148818%_))))
                                (let ((_%hd148782148824%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148781148821%_)))
                                      (_%tl148783148826%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148781148821%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd148782148824%_))
                                      (let ((_g150376_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd148782148824%_
                                                '0))))
                                        (begin
                                          (let ((_g150377_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g150376_)
                                                       (##vector-length
                                                        _g150376_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g150377_ 2)))
                                                (error "Context expects 2 values"
                                                       _g150377_)))
                                          (let ((_%target148784148829%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g150376_ 0)))
                                                (_%tl148786148831%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g150376_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl148786148831%_))
                                                (letrec ((_%loop148787148834%_
                                                          (lambda (_%hd148785148837%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr148791148839%_
                           _%bind148792148841%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd148785148837%_))
                        (let ((_%e148788148844%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd148785148837%_))))
                          (let ((_%lp-hd148789148847%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e148788148844%_)))
                                (_%lp-tl148790148849%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e148788148844%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd148789148847%_))
                                (let ((_%e148798148852%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd148789148847%_))))
                                  (let ((_%hd148799148855%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e148798148852%_)))
                                        (_%tl148800148857%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e148798148852%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl148800148857%_))
                                        (let ((_%e148801148860%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl148800148857%_))))
                                          (let ((_%hd148802148863%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e148801148860%_)))
                                                (_%tl148803148865%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e148801148860%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl148803148865%_))
                                                (_%loop148787148834%_
                                                 _%lp-tl148790148849%_
                                                 (cons _%hd148802148863%_
                                                       _%expr148791148839%_)
                                                 (cons _%hd148799148855%_
                                                       _%bind148792148841%_))
                                                (_%g148773148808%_
                                                 _%g148774148811%_))))
                                        (_%g148773148808%_
                                         _%g148774148811%_))))
                                (_%g148773148808%_ _%g148774148811%_))))
                        (let ((_%expr148793148868%_
                               (reverse _%expr148791148839%_))
                              (_%bind148794148870%_
                               (reverse _%bind148792148841%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148783148826%_))
                              (let ((_%e148795148873%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148783148826%_))))
                                (let ((_%hd148796148876%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148795148873%_)))
                                      (_%tl148797148878%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148795148873%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl148797148878%_))
                                      ((lambda (_%L148881%_
                                                _%L148882%_
                                                _%L148883%_)
                                         (let ((_%$e148914%_
                                                (let ((__tmp150380
                                                       (lambda (_%g148902148904%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self148770%_
                                                            _%g148902148904%_))))
                                                      (__tmp150378
                                                       (let ((__tmp150379
                                                              (lambda (_%g148906148909%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g148907148911%_)
                        (cons _%g148906148909%_ _%g148907148911%_))))
                 (declare (not safe))
                 (__foldr1 __tmp150379 '() _%L148882%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp150380
                                                   __tmp150378))))
                                           (if _%$e148914%_
                                               _%$e148914%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self148770%_
                                                  _%L148881%_)))))
                                       _%hd148796148876%_
                                       _%expr148793148868%_
                                       _%bind148794148870%_)
                                      (_%g148773148808%_ _%g148774148811%_))))
                              (_%g148773148808%_ _%g148774148811%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop148787148834%_
                                                   _%target148784148829%_
                                                   '()
                                                   '()))
                                                (_%g148773148808%_
                                                 _%g148774148811%_)))))
                                      (_%g148773148808%_ _%g148774148811%_))))
                              (_%g148773148808%_ _%g148774148811%_))))
                      (_%g148773148808%_ _%g148774148811%_)))))
          (_%g148772148917%_ _%stx148771%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self148714%_ _%stx148715%_)
        (let* ((_%g148717148730%_
                (lambda (_%g148718148727%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148718148727%_))))
               (_%g148716148767%_
                (lambda (_%g148718148733%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148718148733%_))
                      (let ((_%e148720148735%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148718148733%_))))
                        (let ((_%hd148721148738%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148720148735%_)))
                              (_%tl148722148740%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148720148735%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148722148740%_))
                              (let ((_%e148723148743%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148722148740%_))))
                                (let ((_%hd148724148746%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148723148743%_)))
                                      (_%tl148725148748%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148723148743%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl148725148748%_))
                                      ((lambda (_%L148751%_)
                                         (let ((__tmp150382
                                                (lambda (_%g148762148764%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L148751%_
                                                     _%g148762148764%_))))
                                               (__tmp150381
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self148714%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp150382 __tmp150381)))
                                       _%hd148724148746%_)
                                      (_%g148717148730%_ _%g148718148733%_))))
                              (_%g148717148730%_ _%g148718148733%_))))
                      (_%g148717148730%_ _%g148718148733%_)))))
          (_%g148716148767%_ _%stx148715%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self148639%_ _%stx148640%_)
        (let* ((_%g148642148659%_
                (lambda (_%g148643148656%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148643148656%_))))
               (_%g148641148711%_
                (lambda (_%g148643148662%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148643148662%_))
                      (let ((_%e148646148664%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148643148662%_))))
                        (let ((_%hd148647148667%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148646148664%_)))
                              (_%tl148648148669%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148646148664%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148648148669%_))
                              (let ((_%e148649148672%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148648148669%_))))
                                (let ((_%hd148650148675%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148649148672%_)))
                                      (_%tl148651148677%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148649148672%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148651148677%_))
                                      (let ((_%e148652148680%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148651148677%_))))
                                        (let ((_%hd148653148683%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148652148680%_)))
                                              (_%tl148654148685%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148652148680%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148654148685%_))
                                              ((lambda (_%L148688%_
                                                        _%L148689%_)
                                                 (let ((_%$e148708%_
                                                        (let ((__tmp150384
                                                               (lambda (_%g148703148705%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L148689%_
                            _%g148703148705%_))))
                      (__tmp150383
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self148639%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp150384 __tmp150383))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e148708%_
                                                       _%$e148708%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self148639%_
                                                          _%L148688%_)))))
                                               _%hd148653148683%_
                                               _%hd148650148675%_)
                                              (_%g148642148659%_
                                               _%g148643148662%_))))
                                      (_%g148642148659%_ _%g148643148662%_))))
                              (_%g148642148659%_ _%g148643148662%_))))
                      (_%g148642148659%_ _%g148643148662%_)))))
          (_%g148641148711%_ _%stx148640%_))))))
