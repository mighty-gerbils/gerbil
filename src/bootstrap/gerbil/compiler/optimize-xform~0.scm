(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1781697566)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp216633 (list gxc#::void::t))
            (__tmp216632 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp216633
         '()
         __tmp216632
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args216617%_
        (apply make-instance gxc#::collect-mutators::t _%$args216617%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp216634
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
        (__make-atomic-promise __tmp216634)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx216609%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self216612%_
                (let ((__obj216620
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj216620))
               (__tmp216635
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self216612%_ _%stx216609%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp216635
           gxc#current-compile-method
           _%self216612%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp216637 (list gxc#::basic-xform-expression::t))
            (__tmp216636 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp216637
         '(id new-id)
         __tmp216636
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args216606%_
        (apply make-instance gxc#::expression-subst::t _%$args216606%_)))
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
      (let ((__tmp216638
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
        (__make-atomic-promise __tmp216638)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords216578%_
               _%$%id216574216579%_
               _%$%new-id216575216580%_
               _%stx216581%_)
        (let* ((_%id216584%_
                (if (eq? _%$%id216574216579%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%$%id216574216579%_))
               (_%new-id216586%_
                (if (eq? _%$%new-id216575216580%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%$%new-id216575216580%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self216588%_
                  (let ((__obj216622
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj216622
                       _%id216584%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj216622
                       _%new-id216586%_
                       '2
                       '#f
                       '#f))
                    __obj216622))
                 (__tmp216639
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self216588%_ _%stx216581%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp216639
             gxc#current-compile-method
             _%self216588%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords216595%_ . _%args216596%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords216595%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords216595%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords216595%_
                  'new-id:
                  absent-value))
               _%args216596%_)))
    (define gxc#apply-expression-subst
      (lambda _%$%args216576216602%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%$%args216576216602%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp216641 (list gxc#::basic-xform-expression::t))
            (__tmp216640 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp216641
         '(subst)
         __tmp216640
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args216570%_
        (apply make-instance gxc#::expression-subst*::t _%$args216570%_)))
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
      (let ((__tmp216642
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
        (__make-atomic-promise __tmp216642)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords216545%_ _%$%subst216542216546%_ _%stx216547%_)
        (let ((_%subst216550%_
               (if (eq? _%$%subst216542216546%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%$%subst216542216546%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self216552%_
                  (let ((__obj216624
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj216624
                       _%subst216550%_
                       '1
                       '#f
                       '#f))
                    __obj216624))
                 (__tmp216643
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self216552%_ _%stx216547%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp216643
             gxc#current-compile-method
             _%self216552%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords216559%_ . _%args216560%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords216559%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords216559%_
                  'subst:
                  absent-value))
               _%args216560%_)))
    (define gxc#apply-expression-subst*
      (lambda _%$%args216543216566%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%$%args216543216566%_)))
    (define gxc#::inline-subst::t
      (let ((__tmp216645 (list gxc#::basic-xform-expression::t))
            (__tmp216644 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::inline-subst::t
         '::inline-subst
         __tmp216645
         '(subst)
         __tmp216644
         '#f)))
    (define gxc#::inline-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::inline-subst::t)))
    (define gxc#make-::inline-subst
      (lambda _%$args216538%_
        (apply make-instance gxc#::inline-subst::t _%$args216538%_)))
    (define gxc#::inline-subst-subst
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::inline-subst::t 'subst)))
    (define gxc#::inline-subst-subst-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::inline-subst::t 'subst)))
    (define gxc#&::inline-subst-subst
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#::inline-subst::t 'subst)))
    (define gxc#&::inline-subst-subst-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#::inline-subst::t 'subst)))
    (define gxc#::inline-subst-bind-methods!
      (let ((__tmp216646
             (lambda ()
               (force gxc#::basic-xform-expression-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::inline-subst::t
                  '%#begin
                  gxc#xform-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::inline-subst::t
                  '%#ref
                  gxc#inline-subst-ref%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::inline-subst::t
                  '%#set!
                  gxc#inline-subst-setq%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::inline-subst::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp216646)))
    (define gxc#apply-inline-subst__%
      (lambda (_%@@keywords216513%_ _%$%subst216510216514%_ _%stx216515%_)
        (let ((_%subst216518%_
               (if (eq? _%$%subst216510216514%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%$%subst216510216514%_)))
          (force gxc#::inline-subst-bind-methods!)
          (let* ((_%self216520%_
                  (let ((__obj216626
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::inline-subst::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj216626
                       _%subst216518%_
                       '1
                       '#f
                       '#f))
                    __obj216626))
                 (__tmp216647
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self216520%_ _%stx216515%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp216647
             gxc#current-compile-method
             _%self216520%_)))))
    (define gxc#apply-inline-subst__@
      (lambda (_%@@keywords216527%_ . _%args216528%_)
        (apply gxc#apply-inline-subst__%
               _%@@keywords216527%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords216527%_
                  'subst:
                  absent-value))
               _%args216528%_)))
    (define gxc#apply-inline-subst
      (lambda _%$%args216511216534%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-inline-subst__@
               _%$%args216511216534%_)))
    (define gxc#::find-expression::t
      (let ((__tmp216648 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp216648
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args216506%_
        (apply make-instance gxc#::find-expression::t _%$args216506%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp216649
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
        (__make-atomic-promise __tmp216649)))
    (define gxc#::find-var-refs::t
      (let ((__tmp216651 (list gxc#::find-expression::t))
            (__tmp216650 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp216651
         '(ids)
         __tmp216650
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args216502%_
        (apply make-instance gxc#::find-var-refs::t _%$args216502%_)))
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
      (let ((__tmp216652
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
        (__make-atomic-promise __tmp216652)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords216477%_ _%$%ids216474216478%_ _%stx216479%_)
        (let ((_%ids216482%_
               (if (eq? _%$%ids216474216478%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%$%ids216474216478%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self216484%_
                  (let ((__obj216629
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj216629
                       _%ids216482%_
                       '1
                       '#f
                       '#f))
                    __obj216629))
                 (__tmp216653
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self216484%_ _%stx216479%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp216653
             gxc#current-compile-method
             _%self216484%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords216491%_ . _%args216492%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords216491%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords216491%_ 'ids: absent-value))
               _%args216492%_)))
    (define gxc#apply-find-var-refs
      (lambda _%$%args216475216498%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%$%args216475216498%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp216655 (list gxc#::collect-expression-refs::t))
            (__tmp216654 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp216655
         '()
         __tmp216654
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args216470%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args216470%_)))
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
      (let ((__tmp216656
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
        (__make-atomic-promise __tmp216656)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords216445%_ _%$%table216442216446%_ _%stx216447%_)
        (let ((_%table216450%_
               (if (eq? _%$%table216442216446%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%$%table216442216446%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self216452%_
                  (let ((__obj216631
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj216631
                       _%table216450%_
                       '1
                       '#f
                       '#f))
                    __obj216631))
                 (__tmp216657
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self216452%_ _%stx216447%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp216657
             gxc#current-compile-method
             _%self216452%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords216459%_ . _%args216460%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords216459%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords216459%_
                  'table:
                  absent-value))
               _%args216460%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%$%args216443216466%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%$%args216443216466%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self216371%_ _%stx216372%_)
        (let* ((_%$%g216374216391%_
                (lambda (_%$%g216375216388%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g216375216388%_))))
               (_%$%g216373216438%_
                (lambda (_%$%g216375216394%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g216375216394%_))
                      (let ((_%$%e216378216396%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g216375216394%_))))
                        (let ((_%$%hd216379216399%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e216378216396%_)))
                              (_%$%tl216380216401%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e216378216396%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl216380216401%_))
                              (let ((_%$%e216381216404%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl216380216401%_))))
                                (let ((_%$%hd216382216407%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e216381216404%_)))
                                      (_%$%tl216383216409%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e216381216404%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl216383216409%_))
                                      (let ((_%$%e216384216412%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl216383216409%_))))
                                        (let ((_%$%hd216385216415%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e216384216412%_)))
                                              (_%$%tl216386216417%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e216384216412%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl216386216417%_))
                                              (let ((_%sym216436%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#identifier-symbol
                                                        _%$%hd216382216407%_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"collect mutator "
                                                   _%sym216436%_))
                                                (let ((__tmp216658
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#current-compile-mutators))))
                                                  (declare (not safe))
                                                  (hash-put!
                                                   __tmp216658
                                                   _%sym216436%_
                                                   '#t))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self216371%_
                                                   _%$%hd216385216415%_)))
                                              (_%$%g216374216391%_
                                               _%$%g216375216394%_))))
                                      (_%$%g216374216391%_
                                       _%$%g216375216394%_))))
                              (_%$%g216374216391%_ _%$%g216375216394%_))))
                      (_%$%g216374216391%_ _%$%g216375216394%_)))))
          (_%$%g216373216438%_ _%stx216372%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self216319%_ _%stx216320%_)
        (let* ((_%$%g216322216335%_
                (lambda (_%$%g216323216332%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g216323216332%_))))
               (_%$%g216321216368%_
                (lambda (_%$%g216323216338%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g216323216338%_))
                      (let ((_%$%e216325216340%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g216323216338%_))))
                        (let ((_%$%hd216326216343%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e216325216340%_)))
                              (_%$%tl216327216345%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e216325216340%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl216327216345%_))
                              (let ((_%$%e216328216348%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl216327216345%_))))
                                (let ((_%$%hd216329216351%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e216328216348%_)))
                                      (_%$%tl216330216353%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e216328216348%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl216330216353%_))
                                      (if (let ((__tmp216659
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self216319%_
                                                    'id))))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             _%$%hd216329216351%_
                                             __tmp216659))
                                          (let ((__tmp216660
                                                 (cons '%#ref
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (slot-ref__0 _%self216319%_ 'new-id))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp216660
                                             _%stx216320%_))
                                          _%stx216320%_)
                                      (_%$%g216322216335%_
                                       _%$%g216323216338%_))))
                              (_%$%g216322216335%_ _%$%g216323216338%_))))
                      (_%$%g216322216335%_ _%$%g216323216338%_)))))
          (_%$%g216321216368%_ _%stx216320%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self216259%_ _%stx216260%_)
        (let* ((_%$%g216262216275%_
                (lambda (_%$%g216263216272%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g216263216272%_))))
               (_%$%g216261216316%_
                (lambda (_%$%g216263216278%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g216263216278%_))
                      (let ((_%$%e216265216280%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g216263216278%_))))
                        (let ((_%$%hd216266216283%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e216265216280%_)))
                              (_%$%tl216267216285%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e216265216280%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl216267216285%_))
                              (let ((_%$%e216268216288%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl216267216285%_))))
                                (let ((_%$%hd216269216291%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e216268216288%_)))
                                      (_%$%tl216270216293%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e216268216288%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl216270216293%_))
                                      (let ((_%$e216310%_
                                             (let ((__tmp216662
                                                    (lambda (_%sub216308%_)
                                                      (let ((__tmp216663
                                                             (car _%sub216308%_)))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         _%$%hd216269216291%_
                                                         __tmp216663))))
                                                   (__tmp216661
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self216259%_
                                                       'subst))))
                                               (declare (not safe))
                                               (__find __tmp216662
                                                       __tmp216661))))
                                        (if _%$e216310%_
                                            (let ((__tmp216664
                                                   (cons '%#ref
                                                         (cons (cdr _%$e216310%_)
                                                               '()))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp216664
                                               _%stx216260%_))
                                            _%stx216260%_))
                                      (_%$%g216262216275%_
                                       _%$%g216263216278%_))))
                              (_%$%g216262216275%_ _%$%g216263216278%_))))
                      (_%$%g216262216275%_ _%$%g216263216278%_)))))
          (_%$%g216261216316%_ _%stx216260%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self216188%_ _%stx216189%_)
        (let* ((_%$%g216191216208%_
                (lambda (_%$%g216192216205%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g216192216205%_))))
               (_%$%g216190216256%_
                (lambda (_%$%g216192216211%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g216192216211%_))
                      (let ((_%$%e216195216213%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g216192216211%_))))
                        (let ((_%$%hd216196216216%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e216195216213%_)))
                              (_%$%tl216197216218%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e216195216213%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl216197216218%_))
                              (let ((_%$%e216198216221%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl216197216218%_))))
                                (let ((_%$%hd216199216224%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e216198216221%_)))
                                      (_%$%tl216200216226%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e216198216221%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl216200216226%_))
                                      (let ((_%$%e216201216229%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl216200216226%_))))
                                        (let ((_%$%hd216202216232%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e216201216229%_)))
                                              (_%$%tl216203216234%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e216201216229%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl216203216234%_))
                                              (let ((_%new-expr216253%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self216188%_
                                                        _%$%hd216202216232%_)))
                                                    (_%new-xid216254%_
                                                     (if (let ((__tmp216665
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self216188%_ 'id))))
                   (declare (not safe))
                   (gx#free-identifier=? _%$%hd216199216224%_ __tmp216665))
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _%self216188%_ 'new-id))
                 _%$%hd216199216224%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((__tmp216666
                                                       (cons '%#set!
                                                             (cons _%new-xid216254%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%new-expr216253%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp216666
                                                   _%stx216189%_)))
                                              (_%$%g216191216208%_
                                               _%$%g216192216211%_))))
                                      (_%$%g216191216208%_
                                       _%$%g216192216211%_))))
                              (_%$%g216191216208%_ _%$%g216192216211%_))))
                      (_%$%g216191216208%_ _%$%g216192216211%_)))))
          (_%$%g216190216256%_ _%stx216189%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self216111%_ _%stx216112%_)
        (let* ((_%$%g216114216131%_
                (lambda (_%$%g216115216128%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g216115216128%_))))
               (_%$%g216113216185%_
                (lambda (_%$%g216115216134%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g216115216134%_))
                      (let ((_%$%e216118216136%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g216115216134%_))))
                        (let ((_%$%hd216119216139%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e216118216136%_)))
                              (_%$%tl216120216141%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e216118216136%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl216120216141%_))
                              (let ((_%$%e216121216144%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl216120216141%_))))
                                (let ((_%$%hd216122216147%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e216121216144%_)))
                                      (_%$%tl216123216149%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e216121216144%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl216123216149%_))
                                      (let ((_%$%e216124216152%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl216123216149%_))))
                                        (let ((_%$%hd216125216155%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e216124216152%_)))
                                              (_%$%tl216126216157%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e216124216152%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl216126216157%_))
                                              (let ((_%new-expr216182%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self216111%_
                                                        _%$%hd216125216155%_)))
                                                    (_%new-xid216183%_
                                                     (let ((_%$e216178%_
                                                            (let ((__tmp216668
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%sub216176%_)
                             (let ((__tmp216669 (car _%sub216176%_)))
                               (declare (not safe))
                               (gx#free-identifier=?
                                _%$%hd216122216147%_
                                __tmp216669))))
                          (__tmp216667
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self216111%_ 'subst))))
                      (declare (not safe))
                      (__find __tmp216668 __tmp216667))))
               (if _%$e216178%_ (cdr _%$e216178%_) _%$%hd216122216147%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((__tmp216670
                                                       (cons '%#set!
                                                             (cons _%new-xid216183%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%new-expr216182%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp216670
                                                   _%stx216112%_)))
                                              (_%$%g216114216131%_
                                               _%$%g216115216134%_))))
                                      (_%$%g216114216131%_
                                       _%$%g216115216134%_))))
                              (_%$%g216114216131%_ _%$%g216115216134%_))))
                      (_%$%g216114216131%_ _%$%g216115216134%_)))))
          (_%$%g216113216185%_ _%stx216112%_))))
    (define gxc#inline-subst-ref%
      (lambda (_%self216051%_ _%stx216052%_)
        (let* ((_%$%g216054216067%_
                (lambda (_%$%g216055216064%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g216055216064%_))))
               (_%$%g216053216108%_
                (lambda (_%$%g216055216070%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g216055216070%_))
                      (let ((_%$%e216057216072%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g216055216070%_))))
                        (let ((_%$%hd216058216075%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e216057216072%_)))
                              (_%$%tl216059216077%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e216057216072%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl216059216077%_))
                              (let ((_%$%e216060216080%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl216059216077%_))))
                                (let ((_%$%hd216061216083%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e216060216080%_)))
                                      (_%$%tl216062216085%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e216060216080%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl216062216085%_))
                                      (let ((_%$e216102%_
                                             (let ((__tmp216672
                                                    (lambda (_%sub216100%_)
                                                      (let ((__tmp216673
                                                             (car _%sub216100%_)))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         _%$%hd216061216083%_
                                                         __tmp216673))))
                                                   (__tmp216671
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self216051%_
                                                       'subst))))
                                               (declare (not safe))
                                               (__find __tmp216672
                                                       __tmp216671))))
                                        (if _%$e216102%_
                                            (let ((__tmp216674
                                                   (cdr _%$e216102%_)))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp216674
                                               _%stx216052%_))
                                            _%stx216052%_))
                                      (_%$%g216054216067%_
                                       _%$%g216055216070%_))))
                              (_%$%g216054216067%_ _%$%g216055216070%_))))
                      (_%$%g216054216067%_ _%$%g216055216070%_)))))
          (_%$%g216053216108%_ _%stx216052%_))))
    (define gxc#inline-subst-setq%
      (lambda (_%self215981%_ _%stx215982%_)
        (let* ((_%$%g215984216001%_
                (lambda (_%$%g215985215998%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g215985215998%_))))
               (_%$%g215983216048%_
                (lambda (_%$%g215985216004%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g215985216004%_))
                      (let ((_%$%e215988216006%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g215985216004%_))))
                        (let ((_%$%hd215989216009%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e215988216006%_)))
                              (_%$%tl215990216011%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e215988216006%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl215990216011%_))
                              (let ((_%$%e215991216014%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl215990216011%_))))
                                (let ((_%$%hd215992216017%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e215991216014%_)))
                                      (_%$%tl215993216019%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e215991216014%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl215993216019%_))
                                      (let ((_%$%e215994216022%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl215993216019%_))))
                                        (let ((_%$%hd215995216025%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e215994216022%_)))
                                              (_%$%tl215996216027%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e215994216022%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl215996216027%_))
                                              (if (let ((__tmp216676
                                                         (lambda (_%sub216046%_)
                                                           (let ((__tmp216677
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (car _%sub216046%_)))
                     (declare (not safe))
                     (gx#free-identifier=? _%$%hd215992216017%_ __tmp216677))))
                (__tmp216675
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _%self215981%_ 'subst))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__find __tmp216676
                                                            __tmp216675))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#raise-compile-error
                                                     '"mutating inline substitution"
                                                     _%stx215982%_
                                                     _%$%hd215992216017%_))
                                                  (let ((__tmp216678
                                                         (cons '%#set!
                                                               (cons _%$%hd215992216017%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self215981%_
                                      _%$%hd215995216025%_))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp216678
                                                     _%stx215982%_)))
                                              (_%$%g215984216001%_
                                               _%$%g215985216004%_))))
                                      (_%$%g215984216001%_
                                       _%$%g215985216004%_))))
                              (_%$%g215984216001%_ _%$%g215985216004%_))))
                      (_%$%g215984216001%_ _%$%g215985216004%_)))))
          (_%$%g215983216048%_ _%stx215982%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self215927%_ _%stx215928%_)
        (let* ((_%$%g215930215943%_
                (lambda (_%$%g215931215940%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g215931215940%_))))
               (_%$%g215929215978%_
                (lambda (_%$%g215931215946%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g215931215946%_))
                      (let ((_%$%e215933215948%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g215931215946%_))))
                        (let ((_%$%hd215934215951%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e215933215948%_)))
                              (_%$%tl215935215953%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e215933215948%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl215935215953%_))
                              (let ((_%$%e215936215956%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl215935215953%_))))
                                (let ((_%$%hd215937215959%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e215936215956%_)))
                                      (_%$%tl215938215961%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e215936215956%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl215938215961%_))
                                      (let* ((_%eid215976%_
                                              (let ()
                                                (declare (not safe))
                                                (gxc#identifier-symbol
                                                 _%$%hd215937215959%_)))
                                             (__tmp216679
                                              (let ()
                                                (declare (not safe))
                                                (slot-ref__0
                                                 _%self215927%_
                                                 'table))))
                                        (declare (not safe))
                                        (hash-update!__%
                                         __tmp216679
                                         _%eid215976%_
                                         1+
                                         '0))
                                      (_%$%g215930215943%_
                                       _%$%g215931215946%_))))
                              (_%$%g215930215943%_ _%$%g215931215946%_))))
                      (_%$%g215930215943%_ _%$%g215931215946%_)))))
          (_%$%g215929215978%_ _%stx215928%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self215857%_ _%stx215858%_)
        (let* ((_%$%g215860215877%_
                (lambda (_%$%g215861215874%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g215861215874%_))))
               (_%$%g215859215924%_
                (lambda (_%$%g215861215880%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g215861215880%_))
                      (let ((_%$%e215864215882%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g215861215880%_))))
                        (let ((_%$%hd215865215885%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e215864215882%_)))
                              (_%$%tl215866215887%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e215864215882%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl215866215887%_))
                              (let ((_%$%e215867215890%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl215866215887%_))))
                                (let ((_%$%hd215868215893%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e215867215890%_)))
                                      (_%$%tl215869215895%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e215867215890%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl215869215895%_))
                                      (let ((_%$%e215870215898%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl215869215895%_))))
                                        (let ((_%$%hd215871215901%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e215870215898%_)))
                                              (_%$%tl215872215903%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e215870215898%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl215872215903%_))
                                              (let ((_%eid215922%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#identifier-symbol
                                                        _%$%hd215868215893%_))))
                                                (let ((__tmp216680
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self215857%_
                                                          'table))))
                                                  (declare (not safe))
                                                  (hash-update!__%
                                                   __tmp216680
                                                   _%eid215922%_
                                                   1+
                                                   '0))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self215857%_
                                                   _%$%hd215871215901%_)))
                                              (_%$%g215860215877%_
                                               _%$%g215861215880%_))))
                                      (_%$%g215860215877%_
                                       _%$%g215861215880%_))))
                              (_%$%g215860215877%_ _%$%g215861215880%_))))
                      (_%$%g215860215877%_ _%$%g215861215880%_)))))
          (_%$%g215859215924%_ _%stx215858%_))))
    (define gxc#find-body%
      (lambda (_%self215772%_ _%stx215773%_)
        (let* ((_%$%g215775215794%_
                (lambda (_%$%g215776215791%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g215776215791%_))))
               (_%$%g215774215854%_
                (lambda (_%$%g215776215797%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g215776215797%_))
                      (let ((_%$%e215778215799%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g215776215797%_))))
                        (let ((_%$%hd215779215802%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e215778215799%_)))
                              (_%$%tl215780215804%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e215778215799%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl215780215804%_))
                              (let ((_g216681_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl215780215804%_
                                        '0))))
                                (begin
                                  (let ((_g216682_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g216681_)
                                               (##values-length _g216681_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g216682_ 2)))
                                        (error "Context expects 2 values"
                                               _g216682_)))
                                  (let ((_%$%target215781215807%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g216681_ 0)))
                                        (_%$%tl215783215809%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g216681_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl215783215809%_))
                                        (letrec ((_%$%loop215784215812%_
                                                  (lambda (_%$%hd215782215815%_
                                                           _%$%expr215788215817%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd215782215815%_))
                                                        (let ((_%$%e215785215819%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd215782215815%_))))
                  (let ((_%$%lp-hd215786215822%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e215785215819%_)))
                        (_%$%lp-tl215787215824%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e215785215819%_))))
                    (_%$%loop215784215812%_
                     _%$%lp-tl215787215824%_
                     (cons _%$%lp-hd215786215822%_ _%$%expr215788215817%_))))
                (let ((_%$%expr215789215827%_
                       (reverse _%$%expr215788215817%_)))
                  (let ((__tmp216685
                         (lambda (_%$%g215842215844%_)
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self215772%_
                              _%$%g215842215844%_))))
                        (__tmp216683
                         (let ((__tmp216684
                                (lambda (_%$%g215846215849%_
                                         _%$%g215847215851%_)
                                  (cons _%$%g215846215849%_
                                        _%$%g215847215851%_))))
                           (declare (not safe))
                           (foldr__0 __tmp216684 '() _%$%expr215789215827%_))))
                    (declare (not safe))
                    (ormap__0 __tmp216685 __tmp216683)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop215784215812%_
                                           _%$%target215781215807%_
                                           '()))
                                        (_%$%g215775215794%_
                                         _%$%g215776215797%_)))))
                              (_%$%g215775215794%_ _%$%g215776215797%_))))
                      (_%$%g215775215794%_ _%$%g215776215797%_)))))
          (_%$%g215774215854%_ _%stx215773%_))))
    (define gxc#find-let-values%
      (lambda (_%self215626%_ _%stx215627%_)
        (let* ((_%$%g215629215664%_
                (lambda (_%$%g215630215661%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g215630215661%_))))
               (_%$%g215628215769%_
                (lambda (_%$%g215630215667%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g215630215667%_))
                      (let ((_%$%e215634215669%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g215630215667%_))))
                        (let ((_%$%hd215635215672%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e215634215669%_)))
                              (_%$%tl215636215674%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e215634215669%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl215636215674%_))
                              (let ((_%$%e215637215677%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl215636215674%_))))
                                (let ((_%$%hd215638215680%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e215637215677%_)))
                                      (_%$%tl215639215682%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e215637215677%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd215638215680%_))
                                      (let ((_g216686_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%hd215638215680%_
                                                '0))))
                                        (begin
                                          (let ((_g216687_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g216686_)
                                                       (##values-length
                                                        _g216686_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g216687_ 2)))
                                                (error "Context expects 2 values"
                                                       _g216687_)))
                                          (let ((_%$%target215640215685%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g216686_ 0)))
                                                (_%$%tl215642215687%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g216686_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl215642215687%_))
                                                (letrec ((_%$%loop215643215690%_
                                                          (lambda (_%$%hd215641215693%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr215647215695%_
                           _%$%bind215648215696%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd215641215693%_))
                        (let ((_%$%e215644215698%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd215641215693%_))))
                          (let ((_%$%lp-hd215645215701%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e215644215698%_)))
                                (_%$%lp-tl215646215703%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e215644215698%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd215645215701%_))
                                (let ((_%$%e215651215706%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%lp-hd215645215701%_))))
                                  (let ((_%$%hd215652215709%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e215651215706%_)))
                                        (_%$%tl215653215711%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e215651215706%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl215653215711%_))
                                        (let ((_%$%e215654215714%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl215653215711%_))))
                                          (let ((_%$%hd215655215717%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e215654215714%_)))
                                                (_%$%tl215656215719%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e215654215714%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl215656215719%_))
                                                (_%$%loop215643215690%_
                                                 _%$%lp-tl215646215703%_
                                                 (cons _%$%hd215655215717%_
                                                       _%$%expr215647215695%_)
                                                 (cons _%$%hd215652215709%_
                                                       _%$%bind215648215696%_))
                                                (_%$%g215629215664%_
                                                 _%$%g215630215667%_))))
                                        (_%$%g215629215664%_
                                         _%$%g215630215667%_))))
                                (_%$%g215629215664%_ _%$%g215630215667%_))))
                        (let ((_%$%expr215649215722%_
                               (reverse _%$%expr215647215695%_))
                              (_%$%bind215650215723%_
                               (reverse _%$%bind215648215696%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl215639215682%_))
                              (let ((_%$%e215657215725%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl215639215682%_))))
                                (let ((_%$%hd215658215728%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e215657215725%_)))
                                      (_%$%tl215659215730%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e215657215725%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl215659215730%_))
                                      (let ((_%$e215766%_
                                             (let ((__tmp216690
                                                    (lambda (_%$%g215754215756%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self215626%_
                                                         _%$%g215754215756%_))))
                                                   (__tmp216688
                                                    (let ((__tmp216689
                                                           (lambda (_%$%g215758215761%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g215759215763%_)
                     (cons _%$%g215758215761%_ _%$%g215759215763%_))))
              (declare (not safe))
              (foldr__0 __tmp216689 '() _%$%expr215649215722%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (ormap__0
                                                __tmp216690
                                                __tmp216688))))
                                        (if _%$e215766%_
                                            _%$e215766%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self215626%_
                                               _%$%hd215658215728%_))))
                                      (_%$%g215629215664%_
                                       _%$%g215630215667%_))))
                              (_%$%g215629215664%_ _%$%g215630215667%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop215643215690%_
                                                   _%$%target215640215685%_
                                                   '()
                                                   '()))
                                                (_%$%g215629215664%_
                                                 _%$%g215630215667%_)))))
                                      (_%$%g215629215664%_
                                       _%$%g215630215667%_))))
                              (_%$%g215629215664%_ _%$%g215630215667%_))))
                      (_%$%g215629215664%_ _%$%g215630215667%_)))))
          (_%$%g215628215769%_ _%stx215627%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self215570%_ _%stx215571%_)
        (let* ((_%$%g215573215586%_
                (lambda (_%$%g215574215583%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g215574215583%_))))
               (_%$%g215572215623%_
                (lambda (_%$%g215574215589%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g215574215589%_))
                      (let ((_%$%e215576215591%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g215574215589%_))))
                        (let ((_%$%hd215577215594%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e215576215591%_)))
                              (_%$%tl215578215596%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e215576215591%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl215578215596%_))
                              (let ((_%$%e215579215599%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl215578215596%_))))
                                (let ((_%$%hd215580215602%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e215579215599%_)))
                                      (_%$%tl215581215604%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e215579215599%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl215581215604%_))
                                      (let ((__tmp216692
                                             (lambda (_%$%g215618215620%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%$%hd215580215602%_
                                                  _%$%g215618215620%_))))
                                            (__tmp216691
                                             (let ()
                                               (declare (not safe))
                                               (slot-ref__0
                                                _%self215570%_
                                                'ids))))
                                        (declare (not safe))
                                        (__find __tmp216692 __tmp216691))
                                      (_%$%g215573215586%_
                                       _%$%g215574215589%_))))
                              (_%$%g215573215586%_ _%$%g215574215589%_))))
                      (_%$%g215573215586%_ _%$%g215574215589%_)))))
          (_%$%g215572215623%_ _%stx215571%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self215495%_ _%stx215496%_)
        (let* ((_%$%g215498215515%_
                (lambda (_%$%g215499215512%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g215499215512%_))))
               (_%$%g215497215567%_
                (lambda (_%$%g215499215518%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g215499215518%_))
                      (let ((_%$%e215502215520%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g215499215518%_))))
                        (let ((_%$%hd215503215523%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e215502215520%_)))
                              (_%$%tl215504215525%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e215502215520%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl215504215525%_))
                              (let ((_%$%e215505215528%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl215504215525%_))))
                                (let ((_%$%hd215506215531%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e215505215528%_)))
                                      (_%$%tl215507215533%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e215505215528%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl215507215533%_))
                                      (let ((_%$%e215508215536%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl215507215533%_))))
                                        (let ((_%$%hd215509215539%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e215508215536%_)))
                                              (_%$%tl215510215541%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e215508215536%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl215510215541%_))
                                              (let ((_%$e215564%_
                                                     (let ((__tmp216694
                                                            (lambda (_%$%g215559215561%_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#free-identifier=?
                         _%$%hd215506215531%_
                         _%$%g215559215561%_))))
                   (__tmp216693
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self215495%_ 'ids))))
               (declare (not safe))
               (__find __tmp216694 __tmp216693))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if _%$e215564%_
                                                    _%$e215564%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self215495%_
                                                       _%$%hd215509215539%_))))
                                              (_%$%g215498215515%_
                                               _%$%g215499215518%_))))
                                      (_%$%g215498215515%_
                                       _%$%g215499215518%_))))
                              (_%$%g215498215515%_ _%$%g215499215518%_))))
                      (_%$%g215498215515%_ _%$%g215499215518%_)))))
          (_%$%g215497215567%_ _%stx215496%_))))))
