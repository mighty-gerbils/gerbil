(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1713631268)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp153699 (list gxc#::void::t))
            (__tmp153698 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp153699
         '()
         __tmp153698
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args153685%_
        (apply make-instance gxc#::collect-mutators::t _%$args153685%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp153700
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
        (__make-promise __tmp153700)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx153677%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self153680%_
                (let ((__obj153688
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj153688))
               (__tmp153701
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self153680%_ _%stx153677%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp153701
           gxc#current-compile-method
           _%self153680%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp153703 (list gxc#::basic-xform-expression::t))
            (__tmp153702 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp153703
         '(id new-id)
         __tmp153702
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args153674%_
        (apply make-instance gxc#::expression-subst::t _%$args153674%_)))
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
      (let ((__tmp153704
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
        (__make-promise __tmp153704)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords153644%_
               _%id153640153645%_
               _%new-id153641153647%_
               _%stx153649%_)
        (let* ((_%id153652%_
                (if (eq? _%id153640153645%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id153640153645%_))
               (_%new-id153654%_
                (if (eq? _%new-id153641153647%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id153641153647%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self153656%_
                  (let ((__obj153690
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj153690
                       _%id153652%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj153690
                       _%new-id153654%_
                       '2
                       '#f
                       '#f))
                    __obj153690))
                 (__tmp153705
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self153656%_ _%stx153649%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp153705
             gxc#current-compile-method
             _%self153656%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords153663%_ . _%args153664%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords153663%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords153663%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords153663%_
                  'new-id:
                  absent-value))
               _%args153664%_)))
    (define gxc#apply-expression-subst
      (lambda _%args153642153670%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args153642153670%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp153707 (list gxc#::basic-xform-expression::t))
            (__tmp153706 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp153707
         '(subst)
         __tmp153706
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args153636%_
        (apply make-instance gxc#::expression-subst*::t _%$args153636%_)))
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
      (let ((__tmp153708
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
        (__make-promise __tmp153708)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords153610%_ _%subst153607153611%_ _%stx153613%_)
        (let ((_%subst153616%_
               (if (eq? _%subst153607153611%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst153607153611%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self153618%_
                  (let ((__obj153692
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj153692
                       _%subst153616%_
                       '1
                       '#f
                       '#f))
                    __obj153692))
                 (__tmp153709
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self153618%_ _%stx153613%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp153709
             gxc#current-compile-method
             _%self153618%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords153625%_ . _%args153626%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords153625%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords153625%_
                  'subst:
                  absent-value))
               _%args153626%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args153608153632%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args153608153632%_)))
    (define gxc#::find-expression::t
      (let ((__tmp153710 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp153710
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args153603%_
        (apply make-instance gxc#::find-expression::t _%$args153603%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp153711
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
        (__make-promise __tmp153711)))
    (define gxc#::find-var-refs::t
      (let ((__tmp153713 (list gxc#::find-expression::t))
            (__tmp153712 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp153713
         '(ids)
         __tmp153712
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args153599%_
        (apply make-instance gxc#::find-var-refs::t _%$args153599%_)))
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
      (let ((__tmp153714
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
        (__make-promise __tmp153714)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords153573%_ _%ids153570153574%_ _%stx153576%_)
        (let ((_%ids153579%_
               (if (eq? _%ids153570153574%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids153570153574%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self153581%_
                  (let ((__obj153695
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj153695
                       _%ids153579%_
                       '1
                       '#f
                       '#f))
                    __obj153695))
                 (__tmp153715
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self153581%_ _%stx153576%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp153715
             gxc#current-compile-method
             _%self153581%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords153588%_ . _%args153589%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords153588%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords153588%_ 'ids: absent-value))
               _%args153589%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args153571153595%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args153571153595%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp153717 (list gxc#::collect-expression-refs::t))
            (__tmp153716 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp153717
         '()
         __tmp153716
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args153566%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args153566%_)))
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
      (let ((__tmp153718
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
        (__make-promise __tmp153718)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords153540%_ _%table153537153541%_ _%stx153543%_)
        (let ((_%table153546%_
               (if (eq? _%table153537153541%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table153537153541%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self153548%_
                  (let ((__obj153697
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj153697
                       _%table153546%_
                       '1
                       '#f
                       '#f))
                    __obj153697))
                 (__tmp153719
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self153548%_ _%stx153543%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp153719
             gxc#current-compile-method
             _%self153548%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords153555%_ . _%args153556%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords153555%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords153555%_
                  'table:
                  absent-value))
               _%args153556%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args153538153562%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args153538153562%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self153466%_ _%stx153467%_)
        (let* ((_%g153469153486%_
                (lambda (_%g153470153483%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153470153483%_))))
               (_%g153468153533%_
                (lambda (_%g153470153489%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153470153489%_))
                      (let ((_%e153473153491%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153470153489%_))))
                        (let ((_%hd153474153494%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153473153491%_)))
                              (_%tl153475153496%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153473153491%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153475153496%_))
                              (let ((_%e153476153499%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153475153496%_))))
                                (let ((_%hd153477153502%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153476153499%_)))
                                      (_%tl153478153504%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153476153499%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153478153504%_))
                                      (let ((_%e153479153507%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153478153504%_))))
                                        (let ((_%hd153480153510%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153479153507%_)))
                                              (_%tl153481153512%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153479153507%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153481153512%_))
                                              ((lambda (_%L153515%_
                                                        _%L153516%_)
                                                 (let ((_%sym153531%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L153516%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym153531%_))
                                                   (let ((__tmp153720
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp153720
                                                      _%sym153531%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self153466%_
                                                      _%L153515%_))))
                                               _%hd153480153510%_
                                               _%hd153477153502%_)
                                              (_%g153469153486%_
                                               _%g153470153489%_))))
                                      (_%g153469153486%_ _%g153470153489%_))))
                              (_%g153469153486%_ _%g153470153489%_))))
                      (_%g153469153486%_ _%g153470153489%_)))))
          (_%g153468153533%_ _%stx153467%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self153414%_ _%stx153415%_)
        (let* ((_%g153417153430%_
                (lambda (_%g153418153427%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153418153427%_))))
               (_%g153416153463%_
                (lambda (_%g153418153433%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153418153433%_))
                      (let ((_%e153420153435%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153418153433%_))))
                        (let ((_%hd153421153438%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153420153435%_)))
                              (_%tl153422153440%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153420153435%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153422153440%_))
                              (let ((_%e153423153443%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153422153440%_))))
                                (let ((_%hd153424153446%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153423153443%_)))
                                      (_%tl153425153448%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153423153443%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl153425153448%_))
                                      ((lambda (_%L153451%_)
                                         (if (let ((__tmp153721
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self153414%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L153451%_
                                                __tmp153721))
                                             (let ((__tmp153722
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self153414%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp153722
                                                _%stx153415%_))
                                             _%stx153415%_))
                                       _%hd153424153446%_)
                                      (_%g153417153430%_ _%g153418153433%_))))
                              (_%g153417153430%_ _%g153418153433%_))))
                      (_%g153417153430%_ _%g153418153433%_)))))
          (_%g153416153463%_ _%stx153415%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self153354%_ _%stx153355%_)
        (let* ((_%g153357153370%_
                (lambda (_%g153358153367%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153358153367%_))))
               (_%g153356153411%_
                (lambda (_%g153358153373%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153358153373%_))
                      (let ((_%e153360153375%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153358153373%_))))
                        (let ((_%hd153361153378%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153360153375%_)))
                              (_%tl153362153380%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153360153375%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153362153380%_))
                              (let ((_%e153363153383%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153362153380%_))))
                                (let ((_%hd153364153386%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153363153383%_)))
                                      (_%tl153365153388%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153363153383%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl153365153388%_))
                                      ((lambda (_%L153391%_)
                                         (let ((_%$e153405%_
                                                (let ((__tmp153724
                                                       (lambda (_%sub153403%_)
                                                         (let ((__tmp153725
                                                                (car _%sub153403%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L153391%_
                                                            __tmp153725))))
                                                      (__tmp153723
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self153354%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp153724
                                                          __tmp153723))))
                                           (if _%$e153405%_
                                               ((lambda (_%sub153408%_)
                                                  (let ((__tmp153726
                                                         (cons '%#ref
                                                               (cons (cdr _%sub153408%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp153726
                                                     _%stx153355%_)))
                                                _%$e153405%_)
                                               _%stx153355%_)))
                                       _%hd153364153386%_)
                                      (_%g153357153370%_ _%g153358153373%_))))
                              (_%g153357153370%_ _%g153358153373%_))))
                      (_%g153357153370%_ _%g153358153373%_)))))
          (_%g153356153411%_ _%stx153355%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self153283%_ _%stx153284%_)
        (let* ((_%g153286153303%_
                (lambda (_%g153287153300%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153287153300%_))))
               (_%g153285153351%_
                (lambda (_%g153287153306%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153287153306%_))
                      (let ((_%e153290153308%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153287153306%_))))
                        (let ((_%hd153291153311%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153290153308%_)))
                              (_%tl153292153313%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153290153308%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153292153313%_))
                              (let ((_%e153293153316%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153292153313%_))))
                                (let ((_%hd153294153319%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153293153316%_)))
                                      (_%tl153295153321%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153293153316%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153295153321%_))
                                      (let ((_%e153296153324%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153295153321%_))))
                                        (let ((_%hd153297153327%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153296153324%_)))
                                              (_%tl153298153329%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153296153324%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153298153329%_))
                                              ((lambda (_%L153332%_
                                                        _%L153333%_)
                                                 (let ((_%new-expr153348%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self153283%_
                                                           _%L153332%_)))
                                                       (_%new-xid153349%_
                                                        (if (let ((__tmp153727
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self153283%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L153333%_ __tmp153727))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self153283%_ 'new-id))
                    _%L153333%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp153728
                                                          (cons '%#set!
                                                                (cons _%new-xid153349%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr153348%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp153728
                                                      _%stx153284%_))))
                                               _%hd153297153327%_
                                               _%hd153294153319%_)
                                              (_%g153286153303%_
                                               _%g153287153306%_))))
                                      (_%g153286153303%_ _%g153287153306%_))))
                              (_%g153286153303%_ _%g153287153306%_))))
                      (_%g153286153303%_ _%g153287153306%_)))))
          (_%g153285153351%_ _%stx153284%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self153206%_ _%stx153207%_)
        (let* ((_%g153209153226%_
                (lambda (_%g153210153223%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153210153223%_))))
               (_%g153208153280%_
                (lambda (_%g153210153229%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153210153229%_))
                      (let ((_%e153213153231%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153210153229%_))))
                        (let ((_%hd153214153234%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153213153231%_)))
                              (_%tl153215153236%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153213153231%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153215153236%_))
                              (let ((_%e153216153239%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153215153236%_))))
                                (let ((_%hd153217153242%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153216153239%_)))
                                      (_%tl153218153244%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153216153239%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153218153244%_))
                                      (let ((_%e153219153247%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153218153244%_))))
                                        (let ((_%hd153220153250%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153219153247%_)))
                                              (_%tl153221153252%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153219153247%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153221153252%_))
                                              ((lambda (_%L153255%_
                                                        _%L153256%_)
                                                 (let ((_%new-expr153277%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self153206%_
                                                           _%L153255%_)))
                                                       (_%new-xid153278%_
                                                        (let ((_%$e153273%_
                                                               (let ((__tmp153730
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub153271%_)
                                (let ((__tmp153731 (car _%sub153271%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L153256%_
                                   __tmp153731))))
                             (__tmp153729
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self153206%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp153730 __tmp153729))))
                  (if _%$e153273%_ (cdr _%$e153273%_) _%L153256%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp153732
                                                          (cons '%#set!
                                                                (cons _%new-xid153278%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr153277%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp153732
                                                      _%stx153207%_))))
                                               _%hd153220153250%_
                                               _%hd153217153242%_)
                                              (_%g153209153226%_
                                               _%g153210153229%_))))
                                      (_%g153209153226%_ _%g153210153229%_))))
                              (_%g153209153226%_ _%g153210153229%_))))
                      (_%g153209153226%_ _%g153210153229%_)))))
          (_%g153208153280%_ _%stx153207%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self153152%_ _%stx153153%_)
        (let* ((_%g153155153168%_
                (lambda (_%g153156153165%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153156153165%_))))
               (_%g153154153203%_
                (lambda (_%g153156153171%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153156153171%_))
                      (let ((_%e153158153173%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153156153171%_))))
                        (let ((_%hd153159153176%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153158153173%_)))
                              (_%tl153160153178%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153158153173%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153160153178%_))
                              (let ((_%e153161153181%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153160153178%_))))
                                (let ((_%hd153162153184%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153161153181%_)))
                                      (_%tl153163153186%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153161153181%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl153163153186%_))
                                      ((lambda (_%L153189%_)
                                         (let* ((_%eid153201%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L153189%_)))
                                                (__tmp153733
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self153152%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp153733
                                            _%eid153201%_
                                            1+
                                            '0)))
                                       _%hd153162153184%_)
                                      (_%g153155153168%_ _%g153156153171%_))))
                              (_%g153155153168%_ _%g153156153171%_))))
                      (_%g153155153168%_ _%g153156153171%_)))))
          (_%g153154153203%_ _%stx153153%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self153082%_ _%stx153083%_)
        (let* ((_%g153085153102%_
                (lambda (_%g153086153099%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153086153099%_))))
               (_%g153084153149%_
                (lambda (_%g153086153105%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153086153105%_))
                      (let ((_%e153089153107%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153086153105%_))))
                        (let ((_%hd153090153110%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153089153107%_)))
                              (_%tl153091153112%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153089153107%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153091153112%_))
                              (let ((_%e153092153115%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153091153112%_))))
                                (let ((_%hd153093153118%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153092153115%_)))
                                      (_%tl153094153120%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153092153115%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153094153120%_))
                                      (let ((_%e153095153123%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153094153120%_))))
                                        (let ((_%hd153096153126%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153095153123%_)))
                                              (_%tl153097153128%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153095153123%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153097153128%_))
                                              ((lambda (_%L153131%_
                                                        _%L153132%_)
                                                 (let ((_%eid153147%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L153132%_))))
                                                   (let ((__tmp153734
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self153082%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp153734
                                                      _%eid153147%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self153082%_
                                                      _%L153131%_))))
                                               _%hd153096153126%_
                                               _%hd153093153118%_)
                                              (_%g153085153102%_
                                               _%g153086153105%_))))
                                      (_%g153085153102%_ _%g153086153105%_))))
                              (_%g153085153102%_ _%g153086153105%_))))
                      (_%g153085153102%_ _%g153086153105%_)))))
          (_%g153084153149%_ _%stx153083%_))))
    (define gxc#find-body%
      (lambda (_%self152995%_ _%stx152996%_)
        (let* ((_%g152998153017%_
                (lambda (_%g152999153014%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152999153014%_))))
               (_%g152997153079%_
                (lambda (_%g152999153020%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152999153020%_))
                      (let ((_%e153001153022%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152999153020%_))))
                        (let ((_%hd153002153025%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153001153022%_)))
                              (_%tl153003153027%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153001153022%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl153003153027%_))
                              (let ((_g153735_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl153003153027%_
                                        '0))))
                                (begin
                                  (let ((_g153736_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g153735_)
                                               (##vector-length _g153735_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g153736_ 2)))
                                        (error "Context expects 2 values"
                                               _g153736_)))
                                  (let ((_%target153004153030%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g153735_ 0)))
                                        (_%tl153006153032%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g153735_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl153006153032%_))
                                        (letrec ((_%loop153007153035%_
                                                  (lambda (_%hd153005153038%_
                                                           _%expr153011153040%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd153005153038%_))
                                                        (let ((_%e153008153043%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd153005153038%_))))
                  (let ((_%lp-hd153009153046%_
                         (let ()
                           (declare (not safe))
                           (##car _%e153008153043%_)))
                        (_%lp-tl153010153048%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e153008153043%_))))
                    (_%loop153007153035%_
                     _%lp-tl153010153048%_
                     (cons _%lp-hd153009153046%_ _%expr153011153040%_))))
                (let ((_%expr153012153051%_ (reverse _%expr153011153040%_)))
                  ((lambda (_%L153054%_)
                     (let ((__tmp153739
                            (lambda (_%g153067153069%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self152995%_
                                 _%g153067153069%_))))
                           (__tmp153737
                            (let ((__tmp153738
                                   (lambda (_%g153071153074%_
                                            _%g153072153076%_)
                                     (cons _%g153071153074%_
                                           _%g153072153076%_))))
                              (declare (not safe))
                              (__foldr1 __tmp153738 '() _%L153054%_))))
                       (declare (not safe))
                       (__ormap1 __tmp153739 __tmp153737)))
                   _%expr153012153051%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop153007153035%_
                                           _%target153004153030%_
                                           '()))
                                        (_%g152998153017%_
                                         _%g152999153020%_)))))
                              (_%g152998153017%_ _%g152999153020%_))))
                      (_%g152998153017%_ _%g152999153020%_)))))
          (_%g152997153079%_ _%stx152996%_))))
    (define gxc#find-let-values%
      (lambda (_%self152845%_ _%stx152846%_)
        (let* ((_%g152848152883%_
                (lambda (_%g152849152880%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152849152880%_))))
               (_%g152847152992%_
                (lambda (_%g152849152886%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152849152886%_))
                      (let ((_%e152853152888%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152849152886%_))))
                        (let ((_%hd152854152891%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152853152888%_)))
                              (_%tl152855152893%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152853152888%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl152855152893%_))
                              (let ((_%e152856152896%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl152855152893%_))))
                                (let ((_%hd152857152899%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152856152896%_)))
                                      (_%tl152858152901%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152856152896%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd152857152899%_))
                                      (let ((_g153740_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd152857152899%_
                                                '0))))
                                        (begin
                                          (let ((_g153741_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g153740_)
                                                       (##vector-length
                                                        _g153740_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g153741_ 2)))
                                                (error "Context expects 2 values"
                                                       _g153741_)))
                                          (let ((_%target152859152904%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g153740_ 0)))
                                                (_%tl152861152906%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g153740_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl152861152906%_))
                                                (letrec ((_%loop152862152909%_
                                                          (lambda (_%hd152860152912%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr152866152914%_
                           _%bind152867152916%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd152860152912%_))
                        (let ((_%e152863152919%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd152860152912%_))))
                          (let ((_%lp-hd152864152922%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e152863152919%_)))
                                (_%lp-tl152865152924%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e152863152919%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd152864152922%_))
                                (let ((_%e152873152927%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd152864152922%_))))
                                  (let ((_%hd152874152930%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e152873152927%_)))
                                        (_%tl152875152932%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e152873152927%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl152875152932%_))
                                        (let ((_%e152876152935%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl152875152932%_))))
                                          (let ((_%hd152877152938%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e152876152935%_)))
                                                (_%tl152878152940%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e152876152935%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl152878152940%_))
                                                (_%loop152862152909%_
                                                 _%lp-tl152865152924%_
                                                 (cons _%hd152877152938%_
                                                       _%expr152866152914%_)
                                                 (cons _%hd152874152930%_
                                                       _%bind152867152916%_))
                                                (_%g152848152883%_
                                                 _%g152849152886%_))))
                                        (_%g152848152883%_
                                         _%g152849152886%_))))
                                (_%g152848152883%_ _%g152849152886%_))))
                        (let ((_%expr152868152943%_
                               (reverse _%expr152866152914%_))
                              (_%bind152869152945%_
                               (reverse _%bind152867152916%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl152858152901%_))
                              (let ((_%e152870152948%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl152858152901%_))))
                                (let ((_%hd152871152951%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152870152948%_)))
                                      (_%tl152872152953%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152870152948%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl152872152953%_))
                                      ((lambda (_%L152956%_
                                                _%L152957%_
                                                _%L152958%_)
                                         (let ((_%$e152989%_
                                                (let ((__tmp153744
                                                       (lambda (_%g152977152979%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self152845%_
                                                            _%g152977152979%_))))
                                                      (__tmp153742
                                                       (let ((__tmp153743
                                                              (lambda (_%g152981152984%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g152982152986%_)
                        (cons _%g152981152984%_ _%g152982152986%_))))
                 (declare (not safe))
                 (__foldr1 __tmp153743 '() _%L152957%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp153744
                                                   __tmp153742))))
                                           (if _%$e152989%_
                                               _%$e152989%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self152845%_
                                                  _%L152956%_)))))
                                       _%hd152871152951%_
                                       _%expr152868152943%_
                                       _%bind152869152945%_)
                                      (_%g152848152883%_ _%g152849152886%_))))
                              (_%g152848152883%_ _%g152849152886%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop152862152909%_
                                                   _%target152859152904%_
                                                   '()
                                                   '()))
                                                (_%g152848152883%_
                                                 _%g152849152886%_)))))
                                      (_%g152848152883%_ _%g152849152886%_))))
                              (_%g152848152883%_ _%g152849152886%_))))
                      (_%g152848152883%_ _%g152849152886%_)))))
          (_%g152847152992%_ _%stx152846%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self152789%_ _%stx152790%_)
        (let* ((_%g152792152805%_
                (lambda (_%g152793152802%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152793152802%_))))
               (_%g152791152842%_
                (lambda (_%g152793152808%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152793152808%_))
                      (let ((_%e152795152810%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152793152808%_))))
                        (let ((_%hd152796152813%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152795152810%_)))
                              (_%tl152797152815%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152795152810%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl152797152815%_))
                              (let ((_%e152798152818%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl152797152815%_))))
                                (let ((_%hd152799152821%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152798152818%_)))
                                      (_%tl152800152823%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152798152818%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl152800152823%_))
                                      ((lambda (_%L152826%_)
                                         (let ((__tmp153746
                                                (lambda (_%g152837152839%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L152826%_
                                                     _%g152837152839%_))))
                                               (__tmp153745
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self152789%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp153746 __tmp153745)))
                                       _%hd152799152821%_)
                                      (_%g152792152805%_ _%g152793152808%_))))
                              (_%g152792152805%_ _%g152793152808%_))))
                      (_%g152792152805%_ _%g152793152808%_)))))
          (_%g152791152842%_ _%stx152790%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self152714%_ _%stx152715%_)
        (let* ((_%g152717152734%_
                (lambda (_%g152718152731%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152718152731%_))))
               (_%g152716152786%_
                (lambda (_%g152718152737%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152718152737%_))
                      (let ((_%e152721152739%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152718152737%_))))
                        (let ((_%hd152722152742%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152721152739%_)))
                              (_%tl152723152744%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152721152739%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl152723152744%_))
                              (let ((_%e152724152747%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl152723152744%_))))
                                (let ((_%hd152725152750%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152724152747%_)))
                                      (_%tl152726152752%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152724152747%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl152726152752%_))
                                      (let ((_%e152727152755%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl152726152752%_))))
                                        (let ((_%hd152728152758%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e152727152755%_)))
                                              (_%tl152729152760%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e152727152755%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl152729152760%_))
                                              ((lambda (_%L152763%_
                                                        _%L152764%_)
                                                 (let ((_%$e152783%_
                                                        (let ((__tmp153748
                                                               (lambda (_%g152778152780%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L152764%_
                            _%g152778152780%_))))
                      (__tmp153747
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self152714%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp153748 __tmp153747))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e152783%_
                                                       _%$e152783%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self152714%_
                                                          _%L152763%_)))))
                                               _%hd152728152758%_
                                               _%hd152725152750%_)
                                              (_%g152717152734%_
                                               _%g152718152737%_))))
                                      (_%g152717152734%_ _%g152718152737%_))))
                              (_%g152717152734%_ _%g152718152737%_))))
                      (_%g152717152734%_ _%g152718152737%_)))))
          (_%g152716152786%_ _%stx152715%_))))))
