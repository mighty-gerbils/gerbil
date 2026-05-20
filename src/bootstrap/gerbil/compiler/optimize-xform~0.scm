(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1779274774)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp212601 (list gxc#::void::t))
            (__tmp212600 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp212601
         '()
         __tmp212600
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args212587%_
        (apply make-instance gxc#::collect-mutators::t _%$args212587%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp212602
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
        (__make-atomic-promise __tmp212602)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx212579%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self212582%_
                (let ((__obj212590
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj212590))
               (__tmp212603
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self212582%_ _%stx212579%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp212603
           gxc#current-compile-method
           _%self212582%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp212605 (list gxc#::basic-xform-expression::t))
            (__tmp212604 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp212605
         '(id new-id)
         __tmp212604
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args212576%_
        (apply make-instance gxc#::expression-subst::t _%$args212576%_)))
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
      (let ((__tmp212606
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
        (__make-atomic-promise __tmp212606)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords212548%_
               _%id212544212549%_
               _%new-id212545212550%_
               _%stx212551%_)
        (let* ((_%id212554%_
                (if (eq? _%id212544212549%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id212544212549%_))
               (_%new-id212556%_
                (if (eq? _%new-id212545212550%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id212545212550%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self212558%_
                  (let ((__obj212592
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj212592
                       _%id212554%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj212592
                       _%new-id212556%_
                       '2
                       '#f
                       '#f))
                    __obj212592))
                 (__tmp212607
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self212558%_ _%stx212551%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp212607
             gxc#current-compile-method
             _%self212558%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords212565%_ . _%args212566%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords212565%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords212565%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords212565%_
                  'new-id:
                  absent-value))
               _%args212566%_)))
    (define gxc#apply-expression-subst
      (lambda _%args212546212572%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args212546212572%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp212609 (list gxc#::basic-xform-expression::t))
            (__tmp212608 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp212609
         '(subst)
         __tmp212608
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args212540%_
        (apply make-instance gxc#::expression-subst*::t _%$args212540%_)))
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
      (let ((__tmp212610
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
        (__make-atomic-promise __tmp212610)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords212515%_ _%subst212512212516%_ _%stx212517%_)
        (let ((_%subst212520%_
               (if (eq? _%subst212512212516%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst212512212516%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self212522%_
                  (let ((__obj212594
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj212594
                       _%subst212520%_
                       '1
                       '#f
                       '#f))
                    __obj212594))
                 (__tmp212611
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self212522%_ _%stx212517%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp212611
             gxc#current-compile-method
             _%self212522%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords212529%_ . _%args212530%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords212529%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords212529%_
                  'subst:
                  absent-value))
               _%args212530%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args212513212536%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args212513212536%_)))
    (define gxc#::find-expression::t
      (let ((__tmp212612 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp212612
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args212508%_
        (apply make-instance gxc#::find-expression::t _%$args212508%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp212613
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
        (__make-atomic-promise __tmp212613)))
    (define gxc#::find-var-refs::t
      (let ((__tmp212615 (list gxc#::find-expression::t))
            (__tmp212614 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp212615
         '(ids)
         __tmp212614
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args212504%_
        (apply make-instance gxc#::find-var-refs::t _%$args212504%_)))
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
      (let ((__tmp212616
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
        (__make-atomic-promise __tmp212616)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords212479%_ _%ids212476212480%_ _%stx212481%_)
        (let ((_%ids212484%_
               (if (eq? _%ids212476212480%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids212476212480%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self212486%_
                  (let ((__obj212597
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj212597
                       _%ids212484%_
                       '1
                       '#f
                       '#f))
                    __obj212597))
                 (__tmp212617
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self212486%_ _%stx212481%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp212617
             gxc#current-compile-method
             _%self212486%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords212493%_ . _%args212494%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords212493%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords212493%_ 'ids: absent-value))
               _%args212494%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args212477212500%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args212477212500%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp212619 (list gxc#::collect-expression-refs::t))
            (__tmp212618 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp212619
         '()
         __tmp212618
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args212472%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args212472%_)))
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
      (let ((__tmp212620
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
        (__make-atomic-promise __tmp212620)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords212447%_ _%table212444212448%_ _%stx212449%_)
        (let ((_%table212452%_
               (if (eq? _%table212444212448%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table212444212448%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self212454%_
                  (let ((__obj212599
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj212599
                       _%table212452%_
                       '1
                       '#f
                       '#f))
                    __obj212599))
                 (__tmp212621
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self212454%_ _%stx212449%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp212621
             gxc#current-compile-method
             _%self212454%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords212461%_ . _%args212462%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords212461%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords212461%_
                  'table:
                  absent-value))
               _%args212462%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args212445212468%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args212445212468%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self212373%_ _%stx212374%_)
        (let* ((_%g212376212393%_
                (lambda (_%g212377212390%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212377212390%_))))
               (_%g212375212440%_
                (lambda (_%g212377212396%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212377212396%_))
                      (let ((_%e212380212398%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g212377212396%_))))
                        (let ((_%hd212381212401%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212380212398%_)))
                              (_%tl212382212403%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212380212398%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212382212403%_))
                              (let ((_%e212383212406%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl212382212403%_))))
                                (let ((_%hd212384212409%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212383212406%_)))
                                      (_%tl212385212411%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212383212406%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl212385212411%_))
                                      (let ((_%e212386212414%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl212385212411%_))))
                                        (let ((_%hd212387212417%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e212386212414%_)))
                                              (_%tl212388212419%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e212386212414%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl212388212419%_))
                                              ((lambda (_%g212378212422%_
                                                        _%g212379212423%_)
                                                 (let ((_%sym212438%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g212379212423%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym212438%_))
                                                   (let ((__tmp212622
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp212622
                                                      _%sym212438%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self212373%_
                                                      _%g212378212422%_))))
                                               _%hd212387212417%_
                                               _%hd212384212409%_)
                                              (_%g212376212393%_
                                               _%g212377212396%_))))
                                      (_%g212376212393%_ _%g212377212396%_))))
                              (_%g212376212393%_ _%g212377212396%_))))
                      (_%g212376212393%_ _%g212377212396%_)))))
          (_%g212375212440%_ _%stx212374%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self212321%_ _%stx212322%_)
        (let* ((_%g212324212337%_
                (lambda (_%g212325212334%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212325212334%_))))
               (_%g212323212370%_
                (lambda (_%g212325212340%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212325212340%_))
                      (let ((_%e212327212342%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g212325212340%_))))
                        (let ((_%hd212328212345%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212327212342%_)))
                              (_%tl212329212347%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212327212342%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212329212347%_))
                              (let ((_%e212330212350%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl212329212347%_))))
                                (let ((_%hd212331212353%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212330212350%_)))
                                      (_%tl212332212355%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212330212350%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl212332212355%_))
                                      ((lambda (_%g212326212358%_)
                                         (if (let ((__tmp212623
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self212321%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g212326212358%_
                                                __tmp212623))
                                             (let ((__tmp212624
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self212321%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp212624
                                                _%stx212322%_))
                                             _%stx212322%_))
                                       _%hd212331212353%_)
                                      (_%g212324212337%_ _%g212325212340%_))))
                              (_%g212324212337%_ _%g212325212340%_))))
                      (_%g212324212337%_ _%g212325212340%_)))))
          (_%g212323212370%_ _%stx212322%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self212261%_ _%stx212262%_)
        (let* ((_%g212264212277%_
                (lambda (_%g212265212274%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212265212274%_))))
               (_%g212263212318%_
                (lambda (_%g212265212280%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212265212280%_))
                      (let ((_%e212267212282%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g212265212280%_))))
                        (let ((_%hd212268212285%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212267212282%_)))
                              (_%tl212269212287%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212267212282%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212269212287%_))
                              (let ((_%e212270212290%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl212269212287%_))))
                                (let ((_%hd212271212293%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212270212290%_)))
                                      (_%tl212272212295%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212270212290%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl212272212295%_))
                                      ((lambda (_%g212266212298%_)
                                         (let ((_%$e212312%_
                                                (let ((__tmp212626
                                                       (lambda (_%sub212310%_)
                                                         (let ((__tmp212627
                                                                (car _%sub212310%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%g212266212298%_
                                                            __tmp212627))))
                                                      (__tmp212625
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self212261%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp212626
                                                          __tmp212625))))
                                           (if _%$e212312%_
                                               ((lambda (_%sub212315%_)
                                                  (let ((__tmp212628
                                                         (cons '%#ref
                                                               (cons (cdr _%sub212315%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp212628
                                                     _%stx212262%_)))
                                                _%$e212312%_)
                                               _%stx212262%_)))
                                       _%hd212271212293%_)
                                      (_%g212264212277%_ _%g212265212280%_))))
                              (_%g212264212277%_ _%g212265212280%_))))
                      (_%g212264212277%_ _%g212265212280%_)))))
          (_%g212263212318%_ _%stx212262%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self212190%_ _%stx212191%_)
        (let* ((_%g212193212210%_
                (lambda (_%g212194212207%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212194212207%_))))
               (_%g212192212258%_
                (lambda (_%g212194212213%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212194212213%_))
                      (let ((_%e212197212215%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g212194212213%_))))
                        (let ((_%hd212198212218%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212197212215%_)))
                              (_%tl212199212220%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212197212215%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212199212220%_))
                              (let ((_%e212200212223%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl212199212220%_))))
                                (let ((_%hd212201212226%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212200212223%_)))
                                      (_%tl212202212228%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212200212223%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl212202212228%_))
                                      (let ((_%e212203212231%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl212202212228%_))))
                                        (let ((_%hd212204212234%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e212203212231%_)))
                                              (_%tl212205212236%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e212203212231%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl212205212236%_))
                                              ((lambda (_%g212195212239%_
                                                        _%g212196212240%_)
                                                 (let ((_%new-expr212255%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self212190%_
                                                           _%g212195212239%_)))
                                                       (_%new-xid212256%_
                                                        (if (let ((__tmp212629
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self212190%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%g212196212240%_ __tmp212629))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self212190%_ 'new-id))
                    _%g212196212240%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp212630
                                                          (cons '%#set!
                                                                (cons _%new-xid212256%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr212255%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp212630
                                                      _%stx212191%_))))
                                               _%hd212204212234%_
                                               _%hd212201212226%_)
                                              (_%g212193212210%_
                                               _%g212194212213%_))))
                                      (_%g212193212210%_ _%g212194212213%_))))
                              (_%g212193212210%_ _%g212194212213%_))))
                      (_%g212193212210%_ _%g212194212213%_)))))
          (_%g212192212258%_ _%stx212191%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self212113%_ _%stx212114%_)
        (let* ((_%g212116212133%_
                (lambda (_%g212117212130%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212117212130%_))))
               (_%g212115212187%_
                (lambda (_%g212117212136%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212117212136%_))
                      (let ((_%e212120212138%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g212117212136%_))))
                        (let ((_%hd212121212141%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212120212138%_)))
                              (_%tl212122212143%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212120212138%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212122212143%_))
                              (let ((_%e212123212146%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl212122212143%_))))
                                (let ((_%hd212124212149%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212123212146%_)))
                                      (_%tl212125212151%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212123212146%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl212125212151%_))
                                      (let ((_%e212126212154%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl212125212151%_))))
                                        (let ((_%hd212127212157%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e212126212154%_)))
                                              (_%tl212128212159%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e212126212154%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl212128212159%_))
                                              ((lambda (_%g212118212162%_
                                                        _%g212119212163%_)
                                                 (let ((_%new-expr212184%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self212113%_
                                                           _%g212118212162%_)))
                                                       (_%new-xid212185%_
                                                        (let ((_%$e212180%_
                                                               (let ((__tmp212632
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub212178%_)
                                (let ((__tmp212633 (car _%sub212178%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%g212119212163%_
                                   __tmp212633))))
                             (__tmp212631
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self212113%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp212632 __tmp212631))))
                  (if _%$e212180%_ (cdr _%$e212180%_) _%g212119212163%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp212634
                                                          (cons '%#set!
                                                                (cons _%new-xid212185%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr212184%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp212634
                                                      _%stx212114%_))))
                                               _%hd212127212157%_
                                               _%hd212124212149%_)
                                              (_%g212116212133%_
                                               _%g212117212136%_))))
                                      (_%g212116212133%_ _%g212117212136%_))))
                              (_%g212116212133%_ _%g212117212136%_))))
                      (_%g212116212133%_ _%g212117212136%_)))))
          (_%g212115212187%_ _%stx212114%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self212059%_ _%stx212060%_)
        (let* ((_%g212062212075%_
                (lambda (_%g212063212072%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g212063212072%_))))
               (_%g212061212110%_
                (lambda (_%g212063212078%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g212063212078%_))
                      (let ((_%e212065212080%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g212063212078%_))))
                        (let ((_%hd212066212083%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e212065212080%_)))
                              (_%tl212067212085%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e212065212080%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl212067212085%_))
                              (let ((_%e212068212088%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl212067212085%_))))
                                (let ((_%hd212069212091%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e212068212088%_)))
                                      (_%tl212070212093%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e212068212088%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl212070212093%_))
                                      ((lambda (_%g212064212096%_)
                                         (let* ((_%eid212108%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g212064212096%_)))
                                                (__tmp212635
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self212059%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp212635
                                            _%eid212108%_
                                            1+
                                            '0)))
                                       _%hd212069212091%_)
                                      (_%g212062212075%_ _%g212063212078%_))))
                              (_%g212062212075%_ _%g212063212078%_))))
                      (_%g212062212075%_ _%g212063212078%_)))))
          (_%g212061212110%_ _%stx212060%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self211989%_ _%stx211990%_)
        (let* ((_%g211992212009%_
                (lambda (_%g211993212006%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211993212006%_))))
               (_%g211991212056%_
                (lambda (_%g211993212012%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211993212012%_))
                      (let ((_%e211996212014%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g211993212012%_))))
                        (let ((_%hd211997212017%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211996212014%_)))
                              (_%tl211998212019%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211996212014%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211998212019%_))
                              (let ((_%e211999212022%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl211998212019%_))))
                                (let ((_%hd212000212025%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211999212022%_)))
                                      (_%tl212001212027%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211999212022%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl212001212027%_))
                                      (let ((_%e212002212030%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl212001212027%_))))
                                        (let ((_%hd212003212033%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e212002212030%_)))
                                              (_%tl212004212035%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e212002212030%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl212004212035%_))
                                              ((lambda (_%g211994212038%_
                                                        _%g211995212039%_)
                                                 (let ((_%eid212054%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g211995212039%_))))
                                                   (let ((__tmp212636
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self211989%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp212636
                                                      _%eid212054%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self211989%_
                                                      _%g211994212038%_))))
                                               _%hd212003212033%_
                                               _%hd212000212025%_)
                                              (_%g211992212009%_
                                               _%g211993212012%_))))
                                      (_%g211992212009%_ _%g211993212012%_))))
                              (_%g211992212009%_ _%g211993212012%_))))
                      (_%g211992212009%_ _%g211993212012%_)))))
          (_%g211991212056%_ _%stx211990%_))))
    (define gxc#find-body%
      (lambda (_%self211904%_ _%stx211905%_)
        (let* ((_%g211907211926%_
                (lambda (_%g211908211923%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211908211923%_))))
               (_%g211906211986%_
                (lambda (_%g211908211929%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211908211929%_))
                      (let ((_%e211910211931%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g211908211929%_))))
                        (let ((_%hd211911211934%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211910211931%_)))
                              (_%tl211912211936%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211910211931%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl211912211936%_))
                              (let ((_g212637_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl211912211936%_
                                        '0))))
                                (begin
                                  (let ((_g212638_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g212637_)
                                               (##values-length _g212637_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g212638_ 2)))
                                        (error "Context expects 2 values"
                                               _g212638_)))
                                  (let ((_%target211913211939%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g212637_ 0)))
                                        (_%tl211915211941%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g212637_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl211915211941%_))
                                        (letrec ((_%loop211916211944%_
                                                  (lambda (_%hd211914211947%_
                                                           _%expr211920211949%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd211914211947%_))
                                                        (let ((_%e211917211951%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd211914211947%_))))
                  (let ((_%lp-hd211918211954%_
                         (let ()
                           (declare (not safe))
                           (##car _%e211917211951%_)))
                        (_%lp-tl211919211956%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e211917211951%_))))
                    (_%loop211916211944%_
                     _%lp-tl211919211956%_
                     (cons _%lp-hd211918211954%_ _%expr211920211949%_))))
                (let ((_%expr211921211959%_ (reverse _%expr211920211949%_)))
                  ((lambda (_%g211909211961%_)
                     (let ((__tmp212641
                            (lambda (_%g211974211976%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self211904%_
                                 _%g211974211976%_))))
                           (__tmp212639
                            (let ((__tmp212640
                                   (lambda (_%g211978211981%_
                                            _%g211979211983%_)
                                     (cons _%g211978211981%_
                                           _%g211979211983%_))))
                              (declare (not safe))
                              (foldr__0 __tmp212640 '() _%g211909211961%_))))
                       (declare (not safe))
                       (ormap__0 __tmp212641 __tmp212639)))
                   _%expr211921211959%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop211916211944%_
                                           _%target211913211939%_
                                           '()))
                                        (_%g211907211926%_
                                         _%g211908211929%_)))))
                              (_%g211907211926%_ _%g211908211929%_))))
                      (_%g211907211926%_ _%g211908211929%_)))))
          (_%g211906211986%_ _%stx211905%_))))
    (define gxc#find-let-values%
      (lambda (_%self211758%_ _%stx211759%_)
        (let* ((_%g211761211796%_
                (lambda (_%g211762211793%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211762211793%_))))
               (_%g211760211901%_
                (lambda (_%g211762211799%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211762211799%_))
                      (let ((_%e211766211801%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g211762211799%_))))
                        (let ((_%hd211767211804%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211766211801%_)))
                              (_%tl211768211806%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211766211801%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211768211806%_))
                              (let ((_%e211769211809%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl211768211806%_))))
                                (let ((_%hd211770211812%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211769211809%_)))
                                      (_%tl211771211814%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211769211809%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd211770211812%_))
                                      (let ((_g212642_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd211770211812%_
                                                '0))))
                                        (begin
                                          (let ((_g212643_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g212642_)
                                                       (##values-length
                                                        _g212642_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g212643_ 2)))
                                                (error "Context expects 2 values"
                                                       _g212643_)))
                                          (let ((_%target211772211817%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g212642_ 0)))
                                                (_%tl211774211819%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g212642_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl211774211819%_))
                                                (letrec ((_%loop211775211822%_
                                                          (lambda (_%hd211773211825%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr211779211827%_
                           _%bind211780211828%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd211773211825%_))
                        (let ((_%e211776211830%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd211773211825%_))))
                          (let ((_%lp-hd211777211833%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e211776211830%_)))
                                (_%lp-tl211778211835%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e211776211830%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd211777211833%_))
                                (let ((_%e211783211838%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd211777211833%_))))
                                  (let ((_%hd211784211841%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e211783211838%_)))
                                        (_%tl211785211843%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e211783211838%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl211785211843%_))
                                        (let ((_%e211786211846%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl211785211843%_))))
                                          (let ((_%hd211787211849%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e211786211846%_)))
                                                (_%tl211788211851%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e211786211846%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl211788211851%_))
                                                (_%loop211775211822%_
                                                 _%lp-tl211778211835%_
                                                 (cons _%hd211787211849%_
                                                       _%expr211779211827%_)
                                                 (cons _%hd211784211841%_
                                                       _%bind211780211828%_))
                                                (_%g211761211796%_
                                                 _%g211762211799%_))))
                                        (_%g211761211796%_
                                         _%g211762211799%_))))
                                (_%g211761211796%_ _%g211762211799%_))))
                        (let ((_%expr211781211854%_
                               (reverse _%expr211779211827%_))
                              (_%bind211782211855%_
                               (reverse _%bind211780211828%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211771211814%_))
                              (let ((_%e211789211857%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl211771211814%_))))
                                (let ((_%hd211790211860%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211789211857%_)))
                                      (_%tl211791211862%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211789211857%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl211791211862%_))
                                      ((lambda (_%g211763211865%_
                                                _%g211764211866%_
                                                _%g211765211867%_)
                                         (let ((_%$e211898%_
                                                (let ((__tmp212646
                                                       (lambda (_%g211886211888%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self211758%_
                                                            _%g211886211888%_))))
                                                      (__tmp212644
                                                       (let ((__tmp212645
                                                              (lambda (_%g211890211893%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g211891211895%_)
                        (cons _%g211890211893%_ _%g211891211895%_))))
                 (declare (not safe))
                 (foldr__0 __tmp212645 '() _%g211764211866%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap__0
                                                   __tmp212646
                                                   __tmp212644))))
                                           (if _%$e211898%_
                                               _%$e211898%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self211758%_
                                                  _%g211763211865%_)))))
                                       _%hd211790211860%_
                                       _%expr211781211854%_
                                       _%bind211782211855%_)
                                      (_%g211761211796%_ _%g211762211799%_))))
                              (_%g211761211796%_ _%g211762211799%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop211775211822%_
                                                   _%target211772211817%_
                                                   '()
                                                   '()))
                                                (_%g211761211796%_
                                                 _%g211762211799%_)))))
                                      (_%g211761211796%_ _%g211762211799%_))))
                              (_%g211761211796%_ _%g211762211799%_))))
                      (_%g211761211796%_ _%g211762211799%_)))))
          (_%g211760211901%_ _%stx211759%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self211702%_ _%stx211703%_)
        (let* ((_%g211705211718%_
                (lambda (_%g211706211715%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211706211715%_))))
               (_%g211704211755%_
                (lambda (_%g211706211721%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211706211721%_))
                      (let ((_%e211708211723%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g211706211721%_))))
                        (let ((_%hd211709211726%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211708211723%_)))
                              (_%tl211710211728%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211708211723%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211710211728%_))
                              (let ((_%e211711211731%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl211710211728%_))))
                                (let ((_%hd211712211734%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211711211731%_)))
                                      (_%tl211713211736%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211711211731%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl211713211736%_))
                                      ((lambda (_%g211707211739%_)
                                         (let ((__tmp212648
                                                (lambda (_%g211750211752%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g211707211739%_
                                                     _%g211750211752%_))))
                                               (__tmp212647
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self211702%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp212648 __tmp212647)))
                                       _%hd211712211734%_)
                                      (_%g211705211718%_ _%g211706211721%_))))
                              (_%g211705211718%_ _%g211706211721%_))))
                      (_%g211705211718%_ _%g211706211721%_)))))
          (_%g211704211755%_ _%stx211703%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self211627%_ _%stx211628%_)
        (let* ((_%g211630211647%_
                (lambda (_%g211631211644%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211631211644%_))))
               (_%g211629211699%_
                (lambda (_%g211631211650%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211631211650%_))
                      (let ((_%e211634211652%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g211631211650%_))))
                        (let ((_%hd211635211655%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211634211652%_)))
                              (_%tl211636211657%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211634211652%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211636211657%_))
                              (let ((_%e211637211660%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl211636211657%_))))
                                (let ((_%hd211638211663%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211637211660%_)))
                                      (_%tl211639211665%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211637211660%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl211639211665%_))
                                      (let ((_%e211640211668%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl211639211665%_))))
                                        (let ((_%hd211641211671%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e211640211668%_)))
                                              (_%tl211642211673%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e211640211668%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl211642211673%_))
                                              ((lambda (_%g211632211676%_
                                                        _%g211633211677%_)
                                                 (let ((_%$e211696%_
                                                        (let ((__tmp212650
                                                               (lambda (_%g211691211693%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%g211633211677%_
                            _%g211691211693%_))))
                      (__tmp212649
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self211627%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp212650 __tmp212649))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e211696%_
                                                       _%$e211696%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self211627%_
                                                          _%g211632211676%_)))))
                                               _%hd211641211671%_
                                               _%hd211638211663%_)
                                              (_%g211630211647%_
                                               _%g211631211650%_))))
                                      (_%g211630211647%_ _%g211631211650%_))))
                              (_%g211630211647%_ _%g211631211650%_))))
                      (_%g211630211647%_ _%g211631211650%_)))))
          (_%g211629211699%_ _%stx211628%_))))))
