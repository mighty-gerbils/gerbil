(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1771101406)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp211685 (list gxc#::void::t))
            (__tmp211684 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp211685
         '()
         __tmp211684
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args211671%_
        (apply make-instance gxc#::collect-mutators::t _%$args211671%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp211686
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
        (__make-atomic-promise __tmp211686)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx211663%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self211666%_
                (let ((__obj211674
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj211674))
               (__tmp211687
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self211666%_ _%stx211663%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp211687
           gxc#current-compile-method
           _%self211666%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp211689 (list gxc#::basic-xform-expression::t))
            (__tmp211688 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp211689
         '(id new-id)
         __tmp211688
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args211660%_
        (apply make-instance gxc#::expression-subst::t _%$args211660%_)))
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
      (let ((__tmp211690
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
        (__make-atomic-promise __tmp211690)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords211632%_
               _%id211628211633%_
               _%new-id211629211634%_
               _%stx211635%_)
        (let* ((_%id211638%_
                (if (eq? _%id211628211633%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id211628211633%_))
               (_%new-id211640%_
                (if (eq? _%new-id211629211634%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id211629211634%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self211642%_
                  (let ((__obj211676
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj211676
                       _%id211638%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj211676
                       _%new-id211640%_
                       '2
                       '#f
                       '#f))
                    __obj211676))
                 (__tmp211691
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self211642%_ _%stx211635%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp211691
             gxc#current-compile-method
             _%self211642%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords211649%_ . _%args211650%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords211649%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords211649%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords211649%_
                  'new-id:
                  absent-value))
               _%args211650%_)))
    (define gxc#apply-expression-subst
      (lambda _%args211630211656%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args211630211656%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp211693 (list gxc#::basic-xform-expression::t))
            (__tmp211692 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp211693
         '(subst)
         __tmp211692
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args211624%_
        (apply make-instance gxc#::expression-subst*::t _%$args211624%_)))
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
      (let ((__tmp211694
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
        (__make-atomic-promise __tmp211694)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords211599%_ _%subst211596211600%_ _%stx211601%_)
        (let ((_%subst211604%_
               (if (eq? _%subst211596211600%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst211596211600%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self211606%_
                  (let ((__obj211678
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj211678
                       _%subst211604%_
                       '1
                       '#f
                       '#f))
                    __obj211678))
                 (__tmp211695
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self211606%_ _%stx211601%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp211695
             gxc#current-compile-method
             _%self211606%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords211613%_ . _%args211614%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords211613%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords211613%_
                  'subst:
                  absent-value))
               _%args211614%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args211597211620%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args211597211620%_)))
    (define gxc#::find-expression::t
      (let ((__tmp211696 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp211696
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args211592%_
        (apply make-instance gxc#::find-expression::t _%$args211592%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp211697
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
        (__make-atomic-promise __tmp211697)))
    (define gxc#::find-var-refs::t
      (let ((__tmp211699 (list gxc#::find-expression::t))
            (__tmp211698 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp211699
         '(ids)
         __tmp211698
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args211588%_
        (apply make-instance gxc#::find-var-refs::t _%$args211588%_)))
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
      (let ((__tmp211700
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
        (__make-atomic-promise __tmp211700)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords211563%_ _%ids211560211564%_ _%stx211565%_)
        (let ((_%ids211568%_
               (if (eq? _%ids211560211564%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids211560211564%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self211570%_
                  (let ((__obj211681
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj211681
                       _%ids211568%_
                       '1
                       '#f
                       '#f))
                    __obj211681))
                 (__tmp211701
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self211570%_ _%stx211565%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp211701
             gxc#current-compile-method
             _%self211570%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords211577%_ . _%args211578%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords211577%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords211577%_ 'ids: absent-value))
               _%args211578%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args211561211584%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args211561211584%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp211703 (list gxc#::collect-expression-refs::t))
            (__tmp211702 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp211703
         '()
         __tmp211702
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args211556%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args211556%_)))
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
      (let ((__tmp211704
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
        (__make-atomic-promise __tmp211704)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords211531%_ _%table211528211532%_ _%stx211533%_)
        (let ((_%table211536%_
               (if (eq? _%table211528211532%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table211528211532%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self211538%_
                  (let ((__obj211683
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj211683
                       _%table211536%_
                       '1
                       '#f
                       '#f))
                    __obj211683))
                 (__tmp211705
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self211538%_ _%stx211533%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp211705
             gxc#current-compile-method
             _%self211538%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords211545%_ . _%args211546%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords211545%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords211545%_
                  'table:
                  absent-value))
               _%args211546%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args211529211552%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args211529211552%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self211457%_ _%stx211458%_)
        (let* ((_%g211460211477%_
                (lambda (_%g211461211474%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211461211474%_))))
               (_%g211459211524%_
                (lambda (_%g211461211480%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211461211480%_))
                      (let ((_%e211464211482%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g211461211480%_))))
                        (let ((_%hd211465211485%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211464211482%_)))
                              (_%tl211466211487%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211464211482%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211466211487%_))
                              (let ((_%e211467211490%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl211466211487%_))))
                                (let ((_%hd211468211493%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211467211490%_)))
                                      (_%tl211469211495%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211467211490%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl211469211495%_))
                                      (let ((_%e211470211498%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl211469211495%_))))
                                        (let ((_%hd211471211501%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e211470211498%_)))
                                              (_%tl211472211503%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e211470211498%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl211472211503%_))
                                              ((lambda (_%g211462211506%_
                                                        _%g211463211507%_)
                                                 (let ((_%sym211522%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g211463211507%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym211522%_))
                                                   (let ((__tmp211706
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp211706
                                                      _%sym211522%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self211457%_
                                                      _%g211462211506%_))))
                                               _%hd211471211501%_
                                               _%hd211468211493%_)
                                              (_%g211460211477%_
                                               _%g211461211480%_))))
                                      (_%g211460211477%_ _%g211461211480%_))))
                              (_%g211460211477%_ _%g211461211480%_))))
                      (_%g211460211477%_ _%g211461211480%_)))))
          (_%g211459211524%_ _%stx211458%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self211405%_ _%stx211406%_)
        (let* ((_%g211408211421%_
                (lambda (_%g211409211418%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211409211418%_))))
               (_%g211407211454%_
                (lambda (_%g211409211424%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211409211424%_))
                      (let ((_%e211411211426%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g211409211424%_))))
                        (let ((_%hd211412211429%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211411211426%_)))
                              (_%tl211413211431%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211411211426%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211413211431%_))
                              (let ((_%e211414211434%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl211413211431%_))))
                                (let ((_%hd211415211437%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211414211434%_)))
                                      (_%tl211416211439%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211414211434%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl211416211439%_))
                                      ((lambda (_%g211410211442%_)
                                         (if (let ((__tmp211707
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self211405%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g211410211442%_
                                                __tmp211707))
                                             (let ((__tmp211708
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self211405%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp211708
                                                _%stx211406%_))
                                             _%stx211406%_))
                                       _%hd211415211437%_)
                                      (_%g211408211421%_ _%g211409211424%_))))
                              (_%g211408211421%_ _%g211409211424%_))))
                      (_%g211408211421%_ _%g211409211424%_)))))
          (_%g211407211454%_ _%stx211406%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self211345%_ _%stx211346%_)
        (let* ((_%g211348211361%_
                (lambda (_%g211349211358%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211349211358%_))))
               (_%g211347211402%_
                (lambda (_%g211349211364%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211349211364%_))
                      (let ((_%e211351211366%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g211349211364%_))))
                        (let ((_%hd211352211369%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211351211366%_)))
                              (_%tl211353211371%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211351211366%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211353211371%_))
                              (let ((_%e211354211374%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl211353211371%_))))
                                (let ((_%hd211355211377%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211354211374%_)))
                                      (_%tl211356211379%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211354211374%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl211356211379%_))
                                      ((lambda (_%g211350211382%_)
                                         (let ((_%$e211396%_
                                                (let ((__tmp211710
                                                       (lambda (_%sub211394%_)
                                                         (let ((__tmp211711
                                                                (car _%sub211394%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%g211350211382%_
                                                            __tmp211711))))
                                                      (__tmp211709
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self211345%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp211710
                                                          __tmp211709))))
                                           (if _%$e211396%_
                                               ((lambda (_%sub211399%_)
                                                  (let ((__tmp211712
                                                         (cons '%#ref
                                                               (cons (cdr _%sub211399%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp211712
                                                     _%stx211346%_)))
                                                _%$e211396%_)
                                               _%stx211346%_)))
                                       _%hd211355211377%_)
                                      (_%g211348211361%_ _%g211349211364%_))))
                              (_%g211348211361%_ _%g211349211364%_))))
                      (_%g211348211361%_ _%g211349211364%_)))))
          (_%g211347211402%_ _%stx211346%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self211274%_ _%stx211275%_)
        (let* ((_%g211277211294%_
                (lambda (_%g211278211291%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211278211291%_))))
               (_%g211276211342%_
                (lambda (_%g211278211297%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211278211297%_))
                      (let ((_%e211281211299%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g211278211297%_))))
                        (let ((_%hd211282211302%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211281211299%_)))
                              (_%tl211283211304%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211281211299%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211283211304%_))
                              (let ((_%e211284211307%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl211283211304%_))))
                                (let ((_%hd211285211310%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211284211307%_)))
                                      (_%tl211286211312%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211284211307%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl211286211312%_))
                                      (let ((_%e211287211315%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl211286211312%_))))
                                        (let ((_%hd211288211318%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e211287211315%_)))
                                              (_%tl211289211320%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e211287211315%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl211289211320%_))
                                              ((lambda (_%g211279211323%_
                                                        _%g211280211324%_)
                                                 (let ((_%new-expr211339%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self211274%_
                                                           _%g211279211323%_)))
                                                       (_%new-xid211340%_
                                                        (if (let ((__tmp211713
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self211274%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%g211280211324%_ __tmp211713))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self211274%_ 'new-id))
                    _%g211280211324%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp211714
                                                          (cons '%#set!
                                                                (cons _%new-xid211340%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr211339%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp211714
                                                      _%stx211275%_))))
                                               _%hd211288211318%_
                                               _%hd211285211310%_)
                                              (_%g211277211294%_
                                               _%g211278211297%_))))
                                      (_%g211277211294%_ _%g211278211297%_))))
                              (_%g211277211294%_ _%g211278211297%_))))
                      (_%g211277211294%_ _%g211278211297%_)))))
          (_%g211276211342%_ _%stx211275%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self211197%_ _%stx211198%_)
        (let* ((_%g211200211217%_
                (lambda (_%g211201211214%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211201211214%_))))
               (_%g211199211271%_
                (lambda (_%g211201211220%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211201211220%_))
                      (let ((_%e211204211222%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g211201211220%_))))
                        (let ((_%hd211205211225%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211204211222%_)))
                              (_%tl211206211227%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211204211222%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211206211227%_))
                              (let ((_%e211207211230%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl211206211227%_))))
                                (let ((_%hd211208211233%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211207211230%_)))
                                      (_%tl211209211235%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211207211230%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl211209211235%_))
                                      (let ((_%e211210211238%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl211209211235%_))))
                                        (let ((_%hd211211211241%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e211210211238%_)))
                                              (_%tl211212211243%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e211210211238%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl211212211243%_))
                                              ((lambda (_%g211202211246%_
                                                        _%g211203211247%_)
                                                 (let ((_%new-expr211268%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self211197%_
                                                           _%g211202211246%_)))
                                                       (_%new-xid211269%_
                                                        (let ((_%$e211264%_
                                                               (let ((__tmp211716
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub211262%_)
                                (let ((__tmp211717 (car _%sub211262%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%g211203211247%_
                                   __tmp211717))))
                             (__tmp211715
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self211197%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp211716 __tmp211715))))
                  (if _%$e211264%_ (cdr _%$e211264%_) _%g211203211247%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp211718
                                                          (cons '%#set!
                                                                (cons _%new-xid211269%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr211268%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp211718
                                                      _%stx211198%_))))
                                               _%hd211211211241%_
                                               _%hd211208211233%_)
                                              (_%g211200211217%_
                                               _%g211201211220%_))))
                                      (_%g211200211217%_ _%g211201211220%_))))
                              (_%g211200211217%_ _%g211201211220%_))))
                      (_%g211200211217%_ _%g211201211220%_)))))
          (_%g211199211271%_ _%stx211198%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self211143%_ _%stx211144%_)
        (let* ((_%g211146211159%_
                (lambda (_%g211147211156%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211147211156%_))))
               (_%g211145211194%_
                (lambda (_%g211147211162%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211147211162%_))
                      (let ((_%e211149211164%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g211147211162%_))))
                        (let ((_%hd211150211167%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211149211164%_)))
                              (_%tl211151211169%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211149211164%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211151211169%_))
                              (let ((_%e211152211172%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl211151211169%_))))
                                (let ((_%hd211153211175%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211152211172%_)))
                                      (_%tl211154211177%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211152211172%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl211154211177%_))
                                      ((lambda (_%g211148211180%_)
                                         (let* ((_%eid211192%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g211148211180%_)))
                                                (__tmp211719
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self211143%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp211719
                                            _%eid211192%_
                                            1+
                                            '0)))
                                       _%hd211153211175%_)
                                      (_%g211146211159%_ _%g211147211162%_))))
                              (_%g211146211159%_ _%g211147211162%_))))
                      (_%g211146211159%_ _%g211147211162%_)))))
          (_%g211145211194%_ _%stx211144%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self211073%_ _%stx211074%_)
        (let* ((_%g211076211093%_
                (lambda (_%g211077211090%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211077211090%_))))
               (_%g211075211140%_
                (lambda (_%g211077211096%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211077211096%_))
                      (let ((_%e211080211098%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g211077211096%_))))
                        (let ((_%hd211081211101%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211080211098%_)))
                              (_%tl211082211103%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211080211098%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211082211103%_))
                              (let ((_%e211083211106%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl211082211103%_))))
                                (let ((_%hd211084211109%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211083211106%_)))
                                      (_%tl211085211111%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211083211106%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl211085211111%_))
                                      (let ((_%e211086211114%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl211085211111%_))))
                                        (let ((_%hd211087211117%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e211086211114%_)))
                                              (_%tl211088211119%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e211086211114%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl211088211119%_))
                                              ((lambda (_%g211078211122%_
                                                        _%g211079211123%_)
                                                 (let ((_%eid211138%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g211079211123%_))))
                                                   (let ((__tmp211720
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self211073%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp211720
                                                      _%eid211138%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self211073%_
                                                      _%g211078211122%_))))
                                               _%hd211087211117%_
                                               _%hd211084211109%_)
                                              (_%g211076211093%_
                                               _%g211077211096%_))))
                                      (_%g211076211093%_ _%g211077211096%_))))
                              (_%g211076211093%_ _%g211077211096%_))))
                      (_%g211076211093%_ _%g211077211096%_)))))
          (_%g211075211140%_ _%stx211074%_))))
    (define gxc#find-body%
      (lambda (_%self210988%_ _%stx210989%_)
        (let* ((_%g210991211010%_
                (lambda (_%g210992211007%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g210992211007%_))))
               (_%g210990211070%_
                (lambda (_%g210992211013%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g210992211013%_))
                      (let ((_%e210994211015%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g210992211013%_))))
                        (let ((_%hd210995211018%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e210994211015%_)))
                              (_%tl210996211020%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e210994211015%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl210996211020%_))
                              (let ((_g211721_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl210996211020%_
                                        '0))))
                                (begin
                                  (let ((_g211722_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g211721_)
                                               (##values-length _g211721_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g211722_ 2)))
                                        (error "Context expects 2 values"
                                               _g211722_)))
                                  (let ((_%target210997211023%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g211721_ 0)))
                                        (_%tl210999211025%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g211721_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl210999211025%_))
                                        (letrec ((_%loop211000211028%_
                                                  (lambda (_%hd210998211031%_
                                                           _%expr211004211033%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd210998211031%_))
                                                        (let ((_%e211001211035%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd210998211031%_))))
                  (let ((_%lp-hd211002211038%_
                         (let ()
                           (declare (not safe))
                           (##car _%e211001211035%_)))
                        (_%lp-tl211003211040%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e211001211035%_))))
                    (_%loop211000211028%_
                     _%lp-tl211003211040%_
                     (cons _%lp-hd211002211038%_ _%expr211004211033%_))))
                (let ((_%expr211005211043%_ (reverse _%expr211004211033%_)))
                  ((lambda (_%g210993211045%_)
                     (let ((__tmp211725
                            (lambda (_%g211058211060%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self210988%_
                                 _%g211058211060%_))))
                           (__tmp211723
                            (let ((__tmp211724
                                   (lambda (_%g211062211065%_
                                            _%g211063211067%_)
                                     (cons _%g211062211065%_
                                           _%g211063211067%_))))
                              (declare (not safe))
                              (foldr__0 __tmp211724 '() _%g210993211045%_))))
                       (declare (not safe))
                       (ormap__0 __tmp211725 __tmp211723)))
                   _%expr211005211043%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop211000211028%_
                                           _%target210997211023%_
                                           '()))
                                        (_%g210991211010%_
                                         _%g210992211013%_)))))
                              (_%g210991211010%_ _%g210992211013%_))))
                      (_%g210991211010%_ _%g210992211013%_)))))
          (_%g210990211070%_ _%stx210989%_))))
    (define gxc#find-let-values%
      (lambda (_%self210842%_ _%stx210843%_)
        (let* ((_%g210845210880%_
                (lambda (_%g210846210877%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g210846210877%_))))
               (_%g210844210985%_
                (lambda (_%g210846210883%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g210846210883%_))
                      (let ((_%e210850210885%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g210846210883%_))))
                        (let ((_%hd210851210888%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e210850210885%_)))
                              (_%tl210852210890%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e210850210885%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl210852210890%_))
                              (let ((_%e210853210893%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl210852210890%_))))
                                (let ((_%hd210854210896%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e210853210893%_)))
                                      (_%tl210855210898%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e210853210893%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd210854210896%_))
                                      (let ((_g211726_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd210854210896%_
                                                '0))))
                                        (begin
                                          (let ((_g211727_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g211726_)
                                                       (##values-length
                                                        _g211726_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g211727_ 2)))
                                                (error "Context expects 2 values"
                                                       _g211727_)))
                                          (let ((_%target210856210901%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g211726_ 0)))
                                                (_%tl210858210903%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g211726_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl210858210903%_))
                                                (letrec ((_%loop210859210906%_
                                                          (lambda (_%hd210857210909%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr210863210911%_
                           _%bind210864210912%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd210857210909%_))
                        (let ((_%e210860210914%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd210857210909%_))))
                          (let ((_%lp-hd210861210917%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e210860210914%_)))
                                (_%lp-tl210862210919%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e210860210914%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd210861210917%_))
                                (let ((_%e210867210922%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd210861210917%_))))
                                  (let ((_%hd210868210925%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e210867210922%_)))
                                        (_%tl210869210927%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e210867210922%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl210869210927%_))
                                        (let ((_%e210870210930%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl210869210927%_))))
                                          (let ((_%hd210871210933%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e210870210930%_)))
                                                (_%tl210872210935%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e210870210930%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl210872210935%_))
                                                (_%loop210859210906%_
                                                 _%lp-tl210862210919%_
                                                 (cons _%hd210871210933%_
                                                       _%expr210863210911%_)
                                                 (cons _%hd210868210925%_
                                                       _%bind210864210912%_))
                                                (_%g210845210880%_
                                                 _%g210846210883%_))))
                                        (_%g210845210880%_
                                         _%g210846210883%_))))
                                (_%g210845210880%_ _%g210846210883%_))))
                        (let ((_%expr210865210938%_
                               (reverse _%expr210863210911%_))
                              (_%bind210866210939%_
                               (reverse _%bind210864210912%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl210855210898%_))
                              (let ((_%e210873210941%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl210855210898%_))))
                                (let ((_%hd210874210944%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e210873210941%_)))
                                      (_%tl210875210946%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e210873210941%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl210875210946%_))
                                      ((lambda (_%g210847210949%_
                                                _%g210848210950%_
                                                _%g210849210951%_)
                                         (let ((_%$e210982%_
                                                (let ((__tmp211730
                                                       (lambda (_%g210970210972%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self210842%_
                                                            _%g210970210972%_))))
                                                      (__tmp211728
                                                       (let ((__tmp211729
                                                              (lambda (_%g210974210977%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g210975210979%_)
                        (cons _%g210974210977%_ _%g210975210979%_))))
                 (declare (not safe))
                 (foldr__0 __tmp211729 '() _%g210848210950%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap__0
                                                   __tmp211730
                                                   __tmp211728))))
                                           (if _%$e210982%_
                                               _%$e210982%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self210842%_
                                                  _%g210847210949%_)))))
                                       _%hd210874210944%_
                                       _%expr210865210938%_
                                       _%bind210866210939%_)
                                      (_%g210845210880%_ _%g210846210883%_))))
                              (_%g210845210880%_ _%g210846210883%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop210859210906%_
                                                   _%target210856210901%_
                                                   '()
                                                   '()))
                                                (_%g210845210880%_
                                                 _%g210846210883%_)))))
                                      (_%g210845210880%_ _%g210846210883%_))))
                              (_%g210845210880%_ _%g210846210883%_))))
                      (_%g210845210880%_ _%g210846210883%_)))))
          (_%g210844210985%_ _%stx210843%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self210786%_ _%stx210787%_)
        (let* ((_%g210789210802%_
                (lambda (_%g210790210799%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g210790210799%_))))
               (_%g210788210839%_
                (lambda (_%g210790210805%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g210790210805%_))
                      (let ((_%e210792210807%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g210790210805%_))))
                        (let ((_%hd210793210810%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e210792210807%_)))
                              (_%tl210794210812%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e210792210807%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl210794210812%_))
                              (let ((_%e210795210815%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl210794210812%_))))
                                (let ((_%hd210796210818%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e210795210815%_)))
                                      (_%tl210797210820%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e210795210815%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl210797210820%_))
                                      ((lambda (_%g210791210823%_)
                                         (let ((__tmp211732
                                                (lambda (_%g210834210836%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g210791210823%_
                                                     _%g210834210836%_))))
                                               (__tmp211731
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self210786%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp211732 __tmp211731)))
                                       _%hd210796210818%_)
                                      (_%g210789210802%_ _%g210790210805%_))))
                              (_%g210789210802%_ _%g210790210805%_))))
                      (_%g210789210802%_ _%g210790210805%_)))))
          (_%g210788210839%_ _%stx210787%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self210711%_ _%stx210712%_)
        (let* ((_%g210714210731%_
                (lambda (_%g210715210728%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g210715210728%_))))
               (_%g210713210783%_
                (lambda (_%g210715210734%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g210715210734%_))
                      (let ((_%e210718210736%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g210715210734%_))))
                        (let ((_%hd210719210739%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e210718210736%_)))
                              (_%tl210720210741%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e210718210736%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl210720210741%_))
                              (let ((_%e210721210744%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl210720210741%_))))
                                (let ((_%hd210722210747%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e210721210744%_)))
                                      (_%tl210723210749%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e210721210744%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl210723210749%_))
                                      (let ((_%e210724210752%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl210723210749%_))))
                                        (let ((_%hd210725210755%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e210724210752%_)))
                                              (_%tl210726210757%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e210724210752%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl210726210757%_))
                                              ((lambda (_%g210716210760%_
                                                        _%g210717210761%_)
                                                 (let ((_%$e210780%_
                                                        (let ((__tmp211734
                                                               (lambda (_%g210775210777%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%g210717210761%_
                            _%g210775210777%_))))
                      (__tmp211733
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self210711%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp211734 __tmp211733))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e210780%_
                                                       _%$e210780%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self210711%_
                                                          _%g210716210760%_)))))
                                               _%hd210725210755%_
                                               _%hd210722210747%_)
                                              (_%g210714210731%_
                                               _%g210715210734%_))))
                                      (_%g210714210731%_ _%g210715210734%_))))
                              (_%g210714210731%_ _%g210715210734%_))))
                      (_%g210714210731%_ _%g210715210734%_)))))
          (_%g210713210783%_ _%stx210712%_))))))
