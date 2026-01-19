(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1768864951)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp165878 (list gxc#::void::t))
            (__tmp165877 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp165878
         '()
         __tmp165877
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args165864%_
        (apply make-instance gxc#::collect-mutators::t _%$args165864%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp165879
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
        (__make-atomic-promise __tmp165879)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx165856%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self165859%_
                (let ((__obj165867
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj165867))
               (__tmp165880
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self165859%_ _%stx165856%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp165880
           gxc#current-compile-method
           _%self165859%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp165882 (list gxc#::basic-xform-expression::t))
            (__tmp165881 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp165882
         '(id new-id)
         __tmp165881
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args165853%_
        (apply make-instance gxc#::expression-subst::t _%$args165853%_)))
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
      (let ((__tmp165883
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
        (__make-atomic-promise __tmp165883)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords165823%_
               _%id165819165824%_
               _%new-id165820165826%_
               _%stx165828%_)
        (let* ((_%id165831%_
                (if (eq? _%id165819165824%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id165819165824%_))
               (_%new-id165833%_
                (if (eq? _%new-id165820165826%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id165820165826%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self165835%_
                  (let ((__obj165869
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj165869
                       _%id165831%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj165869
                       _%new-id165833%_
                       '2
                       '#f
                       '#f))
                    __obj165869))
                 (__tmp165884
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self165835%_ _%stx165828%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp165884
             gxc#current-compile-method
             _%self165835%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords165842%_ . _%args165843%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords165842%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords165842%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords165842%_
                  'new-id:
                  absent-value))
               _%args165843%_)))
    (define gxc#apply-expression-subst
      (lambda _%args165821165849%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args165821165849%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp165886 (list gxc#::basic-xform-expression::t))
            (__tmp165885 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp165886
         '(subst)
         __tmp165885
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args165815%_
        (apply make-instance gxc#::expression-subst*::t _%$args165815%_)))
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
      (let ((__tmp165887
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
        (__make-atomic-promise __tmp165887)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords165789%_ _%subst165786165790%_ _%stx165792%_)
        (let ((_%subst165795%_
               (if (eq? _%subst165786165790%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst165786165790%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self165797%_
                  (let ((__obj165871
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj165871
                       _%subst165795%_
                       '1
                       '#f
                       '#f))
                    __obj165871))
                 (__tmp165888
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self165797%_ _%stx165792%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp165888
             gxc#current-compile-method
             _%self165797%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords165804%_ . _%args165805%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords165804%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords165804%_
                  'subst:
                  absent-value))
               _%args165805%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args165787165811%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args165787165811%_)))
    (define gxc#::find-expression::t
      (let ((__tmp165889 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp165889
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args165782%_
        (apply make-instance gxc#::find-expression::t _%$args165782%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp165890
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
        (__make-atomic-promise __tmp165890)))
    (define gxc#::find-var-refs::t
      (let ((__tmp165892 (list gxc#::find-expression::t))
            (__tmp165891 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp165892
         '(ids)
         __tmp165891
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args165778%_
        (apply make-instance gxc#::find-var-refs::t _%$args165778%_)))
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
      (let ((__tmp165893
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
        (__make-atomic-promise __tmp165893)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords165752%_ _%ids165749165753%_ _%stx165755%_)
        (let ((_%ids165758%_
               (if (eq? _%ids165749165753%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids165749165753%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self165760%_
                  (let ((__obj165874
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj165874
                       _%ids165758%_
                       '1
                       '#f
                       '#f))
                    __obj165874))
                 (__tmp165894
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self165760%_ _%stx165755%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp165894
             gxc#current-compile-method
             _%self165760%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords165767%_ . _%args165768%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords165767%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords165767%_ 'ids: absent-value))
               _%args165768%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args165750165774%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args165750165774%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp165896 (list gxc#::collect-expression-refs::t))
            (__tmp165895 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp165896
         '()
         __tmp165895
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args165745%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args165745%_)))
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
      (let ((__tmp165897
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
        (__make-atomic-promise __tmp165897)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords165719%_ _%table165716165720%_ _%stx165722%_)
        (let ((_%table165725%_
               (if (eq? _%table165716165720%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table165716165720%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self165727%_
                  (let ((__obj165876
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj165876
                       _%table165725%_
                       '1
                       '#f
                       '#f))
                    __obj165876))
                 (__tmp165898
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self165727%_ _%stx165722%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp165898
             gxc#current-compile-method
             _%self165727%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords165734%_ . _%args165735%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords165734%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords165734%_
                  'table:
                  absent-value))
               _%args165735%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args165717165741%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args165717165741%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self165645%_ _%stx165646%_)
        (let* ((_%g165648165665%_
                (lambda (_%g165649165662%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165649165662%_))))
               (_%g165647165712%_
                (lambda (_%g165649165668%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165649165668%_))
                      (let ((_%e165652165670%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165649165668%_))))
                        (let ((_%hd165653165673%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165652165670%_)))
                              (_%tl165654165675%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165652165670%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165654165675%_))
                              (let ((_%e165655165678%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165654165675%_))))
                                (let ((_%hd165656165681%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165655165678%_)))
                                      (_%tl165657165683%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165655165678%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165657165683%_))
                                      (let ((_%e165658165686%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165657165683%_))))
                                        (let ((_%hd165659165689%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165658165686%_)))
                                              (_%tl165660165691%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165658165686%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl165660165691%_))
                                              ((lambda (_%L165694%_
                                                        _%L165695%_)
                                                 (let ((_%sym165710%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L165695%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym165710%_))
                                                   (let ((__tmp165899
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp165899
                                                      _%sym165710%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self165645%_
                                                      _%L165694%_))))
                                               _%hd165659165689%_
                                               _%hd165656165681%_)
                                              (_%g165648165665%_
                                               _%g165649165668%_))))
                                      (_%g165648165665%_ _%g165649165668%_))))
                              (_%g165648165665%_ _%g165649165668%_))))
                      (_%g165648165665%_ _%g165649165668%_)))))
          (_%g165647165712%_ _%stx165646%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self165593%_ _%stx165594%_)
        (let* ((_%g165596165609%_
                (lambda (_%g165597165606%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165597165606%_))))
               (_%g165595165642%_
                (lambda (_%g165597165612%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165597165612%_))
                      (let ((_%e165599165614%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165597165612%_))))
                        (let ((_%hd165600165617%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165599165614%_)))
                              (_%tl165601165619%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165599165614%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165601165619%_))
                              (let ((_%e165602165622%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165601165619%_))))
                                (let ((_%hd165603165625%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165602165622%_)))
                                      (_%tl165604165627%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165602165622%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl165604165627%_))
                                      ((lambda (_%L165630%_)
                                         (if (let ((__tmp165900
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self165593%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L165630%_
                                                __tmp165900))
                                             (let ((__tmp165901
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self165593%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp165901
                                                _%stx165594%_))
                                             _%stx165594%_))
                                       _%hd165603165625%_)
                                      (_%g165596165609%_ _%g165597165612%_))))
                              (_%g165596165609%_ _%g165597165612%_))))
                      (_%g165596165609%_ _%g165597165612%_)))))
          (_%g165595165642%_ _%stx165594%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self165533%_ _%stx165534%_)
        (let* ((_%g165536165549%_
                (lambda (_%g165537165546%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165537165546%_))))
               (_%g165535165590%_
                (lambda (_%g165537165552%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165537165552%_))
                      (let ((_%e165539165554%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165537165552%_))))
                        (let ((_%hd165540165557%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165539165554%_)))
                              (_%tl165541165559%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165539165554%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165541165559%_))
                              (let ((_%e165542165562%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165541165559%_))))
                                (let ((_%hd165543165565%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165542165562%_)))
                                      (_%tl165544165567%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165542165562%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl165544165567%_))
                                      ((lambda (_%L165570%_)
                                         (let ((_%$e165584%_
                                                (let ((__tmp165903
                                                       (lambda (_%sub165582%_)
                                                         (let ((__tmp165904
                                                                (car _%sub165582%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L165570%_
                                                            __tmp165904))))
                                                      (__tmp165902
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self165533%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp165903
                                                          __tmp165902))))
                                           (if _%$e165584%_
                                               ((lambda (_%sub165587%_)
                                                  (let ((__tmp165905
                                                         (cons '%#ref
                                                               (cons (cdr _%sub165587%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp165905
                                                     _%stx165534%_)))
                                                _%$e165584%_)
                                               _%stx165534%_)))
                                       _%hd165543165565%_)
                                      (_%g165536165549%_ _%g165537165552%_))))
                              (_%g165536165549%_ _%g165537165552%_))))
                      (_%g165536165549%_ _%g165537165552%_)))))
          (_%g165535165590%_ _%stx165534%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self165462%_ _%stx165463%_)
        (let* ((_%g165465165482%_
                (lambda (_%g165466165479%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165466165479%_))))
               (_%g165464165530%_
                (lambda (_%g165466165485%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165466165485%_))
                      (let ((_%e165469165487%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165466165485%_))))
                        (let ((_%hd165470165490%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165469165487%_)))
                              (_%tl165471165492%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165469165487%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165471165492%_))
                              (let ((_%e165472165495%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165471165492%_))))
                                (let ((_%hd165473165498%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165472165495%_)))
                                      (_%tl165474165500%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165472165495%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165474165500%_))
                                      (let ((_%e165475165503%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165474165500%_))))
                                        (let ((_%hd165476165506%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165475165503%_)))
                                              (_%tl165477165508%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165475165503%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl165477165508%_))
                                              ((lambda (_%L165511%_
                                                        _%L165512%_)
                                                 (let ((_%new-expr165527%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self165462%_
                                                           _%L165511%_)))
                                                       (_%new-xid165528%_
                                                        (if (let ((__tmp165906
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self165462%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L165512%_ __tmp165906))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self165462%_ 'new-id))
                    _%L165512%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp165907
                                                          (cons '%#set!
                                                                (cons _%new-xid165528%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr165527%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp165907
                                                      _%stx165463%_))))
                                               _%hd165476165506%_
                                               _%hd165473165498%_)
                                              (_%g165465165482%_
                                               _%g165466165485%_))))
                                      (_%g165465165482%_ _%g165466165485%_))))
                              (_%g165465165482%_ _%g165466165485%_))))
                      (_%g165465165482%_ _%g165466165485%_)))))
          (_%g165464165530%_ _%stx165463%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self165385%_ _%stx165386%_)
        (let* ((_%g165388165405%_
                (lambda (_%g165389165402%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165389165402%_))))
               (_%g165387165459%_
                (lambda (_%g165389165408%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165389165408%_))
                      (let ((_%e165392165410%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165389165408%_))))
                        (let ((_%hd165393165413%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165392165410%_)))
                              (_%tl165394165415%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165392165410%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165394165415%_))
                              (let ((_%e165395165418%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165394165415%_))))
                                (let ((_%hd165396165421%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165395165418%_)))
                                      (_%tl165397165423%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165395165418%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165397165423%_))
                                      (let ((_%e165398165426%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165397165423%_))))
                                        (let ((_%hd165399165429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165398165426%_)))
                                              (_%tl165400165431%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165398165426%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl165400165431%_))
                                              ((lambda (_%L165434%_
                                                        _%L165435%_)
                                                 (let ((_%new-expr165456%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self165385%_
                                                           _%L165434%_)))
                                                       (_%new-xid165457%_
                                                        (let ((_%$e165452%_
                                                               (let ((__tmp165909
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub165450%_)
                                (let ((__tmp165910 (car _%sub165450%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L165435%_
                                   __tmp165910))))
                             (__tmp165908
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self165385%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp165909 __tmp165908))))
                  (if _%$e165452%_ (cdr _%$e165452%_) _%L165435%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp165911
                                                          (cons '%#set!
                                                                (cons _%new-xid165457%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr165456%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp165911
                                                      _%stx165386%_))))
                                               _%hd165399165429%_
                                               _%hd165396165421%_)
                                              (_%g165388165405%_
                                               _%g165389165408%_))))
                                      (_%g165388165405%_ _%g165389165408%_))))
                              (_%g165388165405%_ _%g165389165408%_))))
                      (_%g165388165405%_ _%g165389165408%_)))))
          (_%g165387165459%_ _%stx165386%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self165331%_ _%stx165332%_)
        (let* ((_%g165334165347%_
                (lambda (_%g165335165344%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165335165344%_))))
               (_%g165333165382%_
                (lambda (_%g165335165350%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165335165350%_))
                      (let ((_%e165337165352%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165335165350%_))))
                        (let ((_%hd165338165355%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165337165352%_)))
                              (_%tl165339165357%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165337165352%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165339165357%_))
                              (let ((_%e165340165360%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165339165357%_))))
                                (let ((_%hd165341165363%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165340165360%_)))
                                      (_%tl165342165365%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165340165360%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl165342165365%_))
                                      ((lambda (_%L165368%_)
                                         (let* ((_%eid165380%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L165368%_)))
                                                (__tmp165912
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self165331%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp165912
                                            _%eid165380%_
                                            1+
                                            '0)))
                                       _%hd165341165363%_)
                                      (_%g165334165347%_ _%g165335165350%_))))
                              (_%g165334165347%_ _%g165335165350%_))))
                      (_%g165334165347%_ _%g165335165350%_)))))
          (_%g165333165382%_ _%stx165332%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self165261%_ _%stx165262%_)
        (let* ((_%g165264165281%_
                (lambda (_%g165265165278%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165265165278%_))))
               (_%g165263165328%_
                (lambda (_%g165265165284%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165265165284%_))
                      (let ((_%e165268165286%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165265165284%_))))
                        (let ((_%hd165269165289%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165268165286%_)))
                              (_%tl165270165291%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165268165286%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165270165291%_))
                              (let ((_%e165271165294%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165270165291%_))))
                                (let ((_%hd165272165297%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165271165294%_)))
                                      (_%tl165273165299%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165271165294%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165273165299%_))
                                      (let ((_%e165274165302%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165273165299%_))))
                                        (let ((_%hd165275165305%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165274165302%_)))
                                              (_%tl165276165307%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165274165302%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl165276165307%_))
                                              ((lambda (_%L165310%_
                                                        _%L165311%_)
                                                 (let ((_%eid165326%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L165311%_))))
                                                   (let ((__tmp165913
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self165261%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp165913
                                                      _%eid165326%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self165261%_
                                                      _%L165310%_))))
                                               _%hd165275165305%_
                                               _%hd165272165297%_)
                                              (_%g165264165281%_
                                               _%g165265165284%_))))
                                      (_%g165264165281%_ _%g165265165284%_))))
                              (_%g165264165281%_ _%g165265165284%_))))
                      (_%g165264165281%_ _%g165265165284%_)))))
          (_%g165263165328%_ _%stx165262%_))))
    (define gxc#find-body%
      (lambda (_%self165174%_ _%stx165175%_)
        (let* ((_%g165177165196%_
                (lambda (_%g165178165193%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165178165193%_))))
               (_%g165176165258%_
                (lambda (_%g165178165199%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165178165199%_))
                      (let ((_%e165180165201%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165178165199%_))))
                        (let ((_%hd165181165204%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165180165201%_)))
                              (_%tl165182165206%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165180165201%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl165182165206%_))
                              (let ((_g165914_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl165182165206%_
                                        '0))))
                                (begin
                                  (let ((_g165915_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g165914_)
                                               (##values-length _g165914_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g165915_ 2)))
                                        (error "Context expects 2 values"
                                               _g165915_)))
                                  (let ((_%target165183165209%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g165914_ 0)))
                                        (_%tl165185165211%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g165914_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl165185165211%_))
                                        (letrec ((_%loop165186165214%_
                                                  (lambda (_%hd165184165217%_
                                                           _%expr165190165219%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd165184165217%_))
                                                        (let ((_%e165187165222%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd165184165217%_))))
                  (let ((_%lp-hd165188165225%_
                         (let ()
                           (declare (not safe))
                           (##car _%e165187165222%_)))
                        (_%lp-tl165189165227%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e165187165222%_))))
                    (_%loop165186165214%_
                     _%lp-tl165189165227%_
                     (cons _%lp-hd165188165225%_ _%expr165190165219%_))))
                (let ((_%expr165191165230%_ (reverse _%expr165190165219%_)))
                  ((lambda (_%L165233%_)
                     (let ((__tmp165918
                            (lambda (_%g165246165248%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self165174%_
                                 _%g165246165248%_))))
                           (__tmp165916
                            (let ((__tmp165917
                                   (lambda (_%g165250165253%_
                                            _%g165251165255%_)
                                     (cons _%g165250165253%_
                                           _%g165251165255%_))))
                              (declare (not safe))
                              (__foldr1 __tmp165917 '() _%L165233%_))))
                       (declare (not safe))
                       (__ormap1 __tmp165918 __tmp165916)))
                   _%expr165191165230%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop165186165214%_
                                           _%target165183165209%_
                                           '()))
                                        (_%g165177165196%_
                                         _%g165178165199%_)))))
                              (_%g165177165196%_ _%g165178165199%_))))
                      (_%g165177165196%_ _%g165178165199%_)))))
          (_%g165176165258%_ _%stx165175%_))))
    (define gxc#find-let-values%
      (lambda (_%self165024%_ _%stx165025%_)
        (let* ((_%g165027165062%_
                (lambda (_%g165028165059%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165028165059%_))))
               (_%g165026165171%_
                (lambda (_%g165028165065%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165028165065%_))
                      (let ((_%e165032165067%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165028165065%_))))
                        (let ((_%hd165033165070%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165032165067%_)))
                              (_%tl165034165072%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165032165067%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165034165072%_))
                              (let ((_%e165035165075%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165034165072%_))))
                                (let ((_%hd165036165078%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165035165075%_)))
                                      (_%tl165037165080%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165035165075%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd165036165078%_))
                                      (let ((_g165919_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd165036165078%_
                                                '0))))
                                        (begin
                                          (let ((_g165920_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g165919_)
                                                       (##values-length
                                                        _g165919_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g165920_ 2)))
                                                (error "Context expects 2 values"
                                                       _g165920_)))
                                          (let ((_%target165038165083%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g165919_ 0)))
                                                (_%tl165040165085%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g165919_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl165040165085%_))
                                                (letrec ((_%loop165041165088%_
                                                          (lambda (_%hd165039165091%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr165045165093%_
                           _%bind165046165095%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd165039165091%_))
                        (let ((_%e165042165098%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd165039165091%_))))
                          (let ((_%lp-hd165043165101%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e165042165098%_)))
                                (_%lp-tl165044165103%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e165042165098%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd165043165101%_))
                                (let ((_%e165049165106%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd165043165101%_))))
                                  (let ((_%hd165050165109%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165049165106%_)))
                                        (_%tl165051165111%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165049165106%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl165051165111%_))
                                        (let ((_%e165052165114%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl165051165111%_))))
                                          (let ((_%hd165053165117%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e165052165114%_)))
                                                (_%tl165054165119%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e165052165114%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl165054165119%_))
                                                (_%loop165041165088%_
                                                 _%lp-tl165044165103%_
                                                 (cons _%hd165053165117%_
                                                       _%expr165045165093%_)
                                                 (cons _%hd165050165109%_
                                                       _%bind165046165095%_))
                                                (_%g165027165062%_
                                                 _%g165028165065%_))))
                                        (_%g165027165062%_
                                         _%g165028165065%_))))
                                (_%g165027165062%_ _%g165028165065%_))))
                        (let ((_%expr165047165122%_
                               (reverse _%expr165045165093%_))
                              (_%bind165048165124%_
                               (reverse _%bind165046165095%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165037165080%_))
                              (let ((_%e165055165127%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165037165080%_))))
                                (let ((_%hd165056165130%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165055165127%_)))
                                      (_%tl165057165132%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165055165127%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl165057165132%_))
                                      ((lambda (_%L165135%_
                                                _%L165136%_
                                                _%L165137%_)
                                         (let ((_%$e165168%_
                                                (let ((__tmp165923
                                                       (lambda (_%g165156165158%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self165024%_
                                                            _%g165156165158%_))))
                                                      (__tmp165921
                                                       (let ((__tmp165922
                                                              (lambda (_%g165160165163%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g165161165165%_)
                        (cons _%g165160165163%_ _%g165161165165%_))))
                 (declare (not safe))
                 (__foldr1 __tmp165922 '() _%L165136%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp165923
                                                   __tmp165921))))
                                           (if _%$e165168%_
                                               _%$e165168%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self165024%_
                                                  _%L165135%_)))))
                                       _%hd165056165130%_
                                       _%expr165047165122%_
                                       _%bind165048165124%_)
                                      (_%g165027165062%_ _%g165028165065%_))))
                              (_%g165027165062%_ _%g165028165065%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop165041165088%_
                                                   _%target165038165083%_
                                                   '()
                                                   '()))
                                                (_%g165027165062%_
                                                 _%g165028165065%_)))))
                                      (_%g165027165062%_ _%g165028165065%_))))
                              (_%g165027165062%_ _%g165028165065%_))))
                      (_%g165027165062%_ _%g165028165065%_)))))
          (_%g165026165171%_ _%stx165025%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self164968%_ _%stx164969%_)
        (let* ((_%g164971164984%_
                (lambda (_%g164972164981%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g164972164981%_))))
               (_%g164970165021%_
                (lambda (_%g164972164987%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g164972164987%_))
                      (let ((_%e164974164989%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g164972164987%_))))
                        (let ((_%hd164975164992%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e164974164989%_)))
                              (_%tl164976164994%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e164974164989%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl164976164994%_))
                              (let ((_%e164977164997%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl164976164994%_))))
                                (let ((_%hd164978165000%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e164977164997%_)))
                                      (_%tl164979165002%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e164977164997%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl164979165002%_))
                                      ((lambda (_%L165005%_)
                                         (let ((__tmp165925
                                                (lambda (_%g165016165018%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L165005%_
                                                     _%g165016165018%_))))
                                               (__tmp165924
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self164968%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp165925 __tmp165924)))
                                       _%hd164978165000%_)
                                      (_%g164971164984%_ _%g164972164987%_))))
                              (_%g164971164984%_ _%g164972164987%_))))
                      (_%g164971164984%_ _%g164972164987%_)))))
          (_%g164970165021%_ _%stx164969%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self164893%_ _%stx164894%_)
        (let* ((_%g164896164913%_
                (lambda (_%g164897164910%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g164897164910%_))))
               (_%g164895164965%_
                (lambda (_%g164897164916%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g164897164916%_))
                      (let ((_%e164900164918%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g164897164916%_))))
                        (let ((_%hd164901164921%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e164900164918%_)))
                              (_%tl164902164923%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e164900164918%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl164902164923%_))
                              (let ((_%e164903164926%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl164902164923%_))))
                                (let ((_%hd164904164929%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e164903164926%_)))
                                      (_%tl164905164931%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e164903164926%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl164905164931%_))
                                      (let ((_%e164906164934%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl164905164931%_))))
                                        (let ((_%hd164907164937%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e164906164934%_)))
                                              (_%tl164908164939%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e164906164934%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl164908164939%_))
                                              ((lambda (_%L164942%_
                                                        _%L164943%_)
                                                 (let ((_%$e164962%_
                                                        (let ((__tmp165927
                                                               (lambda (_%g164957164959%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L164943%_
                            _%g164957164959%_))))
                      (__tmp165926
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self164893%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp165927 __tmp165926))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e164962%_
                                                       _%$e164962%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self164893%_
                                                          _%L164942%_)))))
                                               _%hd164907164937%_
                                               _%hd164904164929%_)
                                              (_%g164896164913%_
                                               _%g164897164916%_))))
                                      (_%g164896164913%_ _%g164897164916%_))))
                              (_%g164896164913%_ _%g164897164916%_))))
                      (_%g164896164913%_ _%g164897164916%_)))))
          (_%g164895164965%_ _%stx164894%_))))))
