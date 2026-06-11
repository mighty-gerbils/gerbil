(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1781138360)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp213945 (list gxc#::void::t))
            (__tmp213944 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp213945
         '()
         __tmp213944
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args213929%_
        (apply make-instance gxc#::collect-mutators::t _%$args213929%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp213946
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
        (__make-atomic-promise __tmp213946)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx213921%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self213924%_
                (let ((__obj213932
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj213932))
               (__tmp213947
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self213924%_ _%stx213921%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp213947
           gxc#current-compile-method
           _%self213924%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp213949 (list gxc#::basic-xform-expression::t))
            (__tmp213948 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp213949
         '(id new-id)
         __tmp213948
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args213918%_
        (apply make-instance gxc#::expression-subst::t _%$args213918%_)))
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
      (let ((__tmp213950
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
        (__make-atomic-promise __tmp213950)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords213890%_
               _%$%id213886213891%_
               _%$%new-id213887213892%_
               _%stx213893%_)
        (let* ((_%id213896%_
                (if (eq? _%$%id213886213891%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%$%id213886213891%_))
               (_%new-id213898%_
                (if (eq? _%$%new-id213887213892%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%$%new-id213887213892%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self213900%_
                  (let ((__obj213934
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj213934
                       _%id213896%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj213934
                       _%new-id213898%_
                       '2
                       '#f
                       '#f))
                    __obj213934))
                 (__tmp213951
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self213900%_ _%stx213893%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp213951
             gxc#current-compile-method
             _%self213900%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords213907%_ . _%args213908%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords213907%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords213907%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords213907%_
                  'new-id:
                  absent-value))
               _%args213908%_)))
    (define gxc#apply-expression-subst
      (lambda _%$%args213888213914%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%$%args213888213914%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp213953 (list gxc#::basic-xform-expression::t))
            (__tmp213952 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp213953
         '(subst)
         __tmp213952
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args213882%_
        (apply make-instance gxc#::expression-subst*::t _%$args213882%_)))
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
      (let ((__tmp213954
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
        (__make-atomic-promise __tmp213954)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords213857%_ _%$%subst213854213858%_ _%stx213859%_)
        (let ((_%subst213862%_
               (if (eq? _%$%subst213854213858%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%$%subst213854213858%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self213864%_
                  (let ((__obj213936
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj213936
                       _%subst213862%_
                       '1
                       '#f
                       '#f))
                    __obj213936))
                 (__tmp213955
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self213864%_ _%stx213859%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp213955
             gxc#current-compile-method
             _%self213864%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords213871%_ . _%args213872%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords213871%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords213871%_
                  'subst:
                  absent-value))
               _%args213872%_)))
    (define gxc#apply-expression-subst*
      (lambda _%$%args213855213878%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%$%args213855213878%_)))
    (define gxc#::inline-subst::t
      (let ((__tmp213957 (list gxc#::basic-xform-expression::t))
            (__tmp213956 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::inline-subst::t
         '::inline-subst
         __tmp213957
         '(subst)
         __tmp213956
         '#f)))
    (define gxc#::inline-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::inline-subst::t)))
    (define gxc#make-::inline-subst
      (lambda _%$args213850%_
        (apply make-instance gxc#::inline-subst::t _%$args213850%_)))
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
      (let ((__tmp213958
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
        (__make-atomic-promise __tmp213958)))
    (define gxc#apply-inline-subst__%
      (lambda (_%@@keywords213825%_ _%$%subst213822213826%_ _%stx213827%_)
        (let ((_%subst213830%_
               (if (eq? _%$%subst213822213826%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%$%subst213822213826%_)))
          (force gxc#::inline-subst-bind-methods!)
          (let* ((_%self213832%_
                  (let ((__obj213938
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::inline-subst::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj213938
                       _%subst213830%_
                       '1
                       '#f
                       '#f))
                    __obj213938))
                 (__tmp213959
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self213832%_ _%stx213827%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp213959
             gxc#current-compile-method
             _%self213832%_)))))
    (define gxc#apply-inline-subst__@
      (lambda (_%@@keywords213839%_ . _%args213840%_)
        (apply gxc#apply-inline-subst__%
               _%@@keywords213839%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords213839%_
                  'subst:
                  absent-value))
               _%args213840%_)))
    (define gxc#apply-inline-subst
      (lambda _%$%args213823213846%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-inline-subst__@
               _%$%args213823213846%_)))
    (define gxc#::find-expression::t
      (let ((__tmp213960 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp213960
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args213818%_
        (apply make-instance gxc#::find-expression::t _%$args213818%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp213961
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
        (__make-atomic-promise __tmp213961)))
    (define gxc#::find-var-refs::t
      (let ((__tmp213963 (list gxc#::find-expression::t))
            (__tmp213962 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp213963
         '(ids)
         __tmp213962
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args213814%_
        (apply make-instance gxc#::find-var-refs::t _%$args213814%_)))
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
      (let ((__tmp213964
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
        (__make-atomic-promise __tmp213964)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords213789%_ _%$%ids213786213790%_ _%stx213791%_)
        (let ((_%ids213794%_
               (if (eq? _%$%ids213786213790%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%$%ids213786213790%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self213796%_
                  (let ((__obj213941
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj213941
                       _%ids213794%_
                       '1
                       '#f
                       '#f))
                    __obj213941))
                 (__tmp213965
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self213796%_ _%stx213791%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp213965
             gxc#current-compile-method
             _%self213796%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords213803%_ . _%args213804%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords213803%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords213803%_ 'ids: absent-value))
               _%args213804%_)))
    (define gxc#apply-find-var-refs
      (lambda _%$%args213787213810%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%$%args213787213810%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp213967 (list gxc#::collect-expression-refs::t))
            (__tmp213966 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp213967
         '()
         __tmp213966
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args213782%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args213782%_)))
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
      (let ((__tmp213968
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
        (__make-atomic-promise __tmp213968)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords213757%_ _%$%table213754213758%_ _%stx213759%_)
        (let ((_%table213762%_
               (if (eq? _%$%table213754213758%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%$%table213754213758%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self213764%_
                  (let ((__obj213943
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj213943
                       _%table213762%_
                       '1
                       '#f
                       '#f))
                    __obj213943))
                 (__tmp213969
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self213764%_ _%stx213759%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp213969
             gxc#current-compile-method
             _%self213764%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords213771%_ . _%args213772%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords213771%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords213771%_
                  'table:
                  absent-value))
               _%args213772%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%$%args213755213778%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%$%args213755213778%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self213683%_ _%stx213684%_)
        (let* ((_%$%g213686213703%_
                (lambda (_%$%g213687213700%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g213687213700%_))))
               (_%$%g213685213750%_
                (lambda (_%$%g213687213706%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g213687213706%_))
                      (let ((_%$%e213690213708%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g213687213706%_))))
                        (let ((_%$%hd213691213711%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e213690213708%_)))
                              (_%$%tl213692213713%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e213690213708%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl213692213713%_))
                              (let ((_%$%e213693213716%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl213692213713%_))))
                                (let ((_%$%hd213694213719%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e213693213716%_)))
                                      (_%$%tl213695213721%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e213693213716%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl213695213721%_))
                                      (let ((_%$%e213696213724%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl213695213721%_))))
                                        (let ((_%$%hd213697213727%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e213696213724%_)))
                                              (_%$%tl213698213729%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e213696213724%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl213698213729%_))
                                              (let ((_%sym213748%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#identifier-symbol
                                                        _%$%hd213694213719%_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"collect mutator "
                                                   _%sym213748%_))
                                                (let ((__tmp213970
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#current-compile-mutators))))
                                                  (declare (not safe))
                                                  (hash-put!
                                                   __tmp213970
                                                   _%sym213748%_
                                                   '#t))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self213683%_
                                                   _%$%hd213697213727%_)))
                                              (_%$%g213686213703%_
                                               _%$%g213687213706%_))))
                                      (_%$%g213686213703%_
                                       _%$%g213687213706%_))))
                              (_%$%g213686213703%_ _%$%g213687213706%_))))
                      (_%$%g213686213703%_ _%$%g213687213706%_)))))
          (_%$%g213685213750%_ _%stx213684%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self213631%_ _%stx213632%_)
        (let* ((_%$%g213634213647%_
                (lambda (_%$%g213635213644%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g213635213644%_))))
               (_%$%g213633213680%_
                (lambda (_%$%g213635213650%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g213635213650%_))
                      (let ((_%$%e213637213652%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g213635213650%_))))
                        (let ((_%$%hd213638213655%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e213637213652%_)))
                              (_%$%tl213639213657%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e213637213652%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl213639213657%_))
                              (let ((_%$%e213640213660%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl213639213657%_))))
                                (let ((_%$%hd213641213663%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e213640213660%_)))
                                      (_%$%tl213642213665%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e213640213660%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl213642213665%_))
                                      (if (let ((__tmp213971
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self213631%_
                                                    'id))))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             _%$%hd213641213663%_
                                             __tmp213971))
                                          (let ((__tmp213972
                                                 (cons '%#ref
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (slot-ref__0 _%self213631%_ 'new-id))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp213972
                                             _%stx213632%_))
                                          _%stx213632%_)
                                      (_%$%g213634213647%_
                                       _%$%g213635213650%_))))
                              (_%$%g213634213647%_ _%$%g213635213650%_))))
                      (_%$%g213634213647%_ _%$%g213635213650%_)))))
          (_%$%g213633213680%_ _%stx213632%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self213571%_ _%stx213572%_)
        (let* ((_%$%g213574213587%_
                (lambda (_%$%g213575213584%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g213575213584%_))))
               (_%$%g213573213628%_
                (lambda (_%$%g213575213590%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g213575213590%_))
                      (let ((_%$%e213577213592%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g213575213590%_))))
                        (let ((_%$%hd213578213595%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e213577213592%_)))
                              (_%$%tl213579213597%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e213577213592%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl213579213597%_))
                              (let ((_%$%e213580213600%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl213579213597%_))))
                                (let ((_%$%hd213581213603%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e213580213600%_)))
                                      (_%$%tl213582213605%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e213580213600%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl213582213605%_))
                                      (let ((_%$e213622%_
                                             (let ((__tmp213974
                                                    (lambda (_%sub213620%_)
                                                      (let ((__tmp213975
                                                             (car _%sub213620%_)))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         _%$%hd213581213603%_
                                                         __tmp213975))))
                                                   (__tmp213973
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self213571%_
                                                       'subst))))
                                               (declare (not safe))
                                               (__find __tmp213974
                                                       __tmp213973))))
                                        (if _%$e213622%_
                                            (let ((__tmp213976
                                                   (cons '%#ref
                                                         (cons (cdr _%$e213622%_)
                                                               '()))))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp213976
                                               _%stx213572%_))
                                            _%stx213572%_))
                                      (_%$%g213574213587%_
                                       _%$%g213575213590%_))))
                              (_%$%g213574213587%_ _%$%g213575213590%_))))
                      (_%$%g213574213587%_ _%$%g213575213590%_)))))
          (_%$%g213573213628%_ _%stx213572%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self213500%_ _%stx213501%_)
        (let* ((_%$%g213503213520%_
                (lambda (_%$%g213504213517%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g213504213517%_))))
               (_%$%g213502213568%_
                (lambda (_%$%g213504213523%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g213504213523%_))
                      (let ((_%$%e213507213525%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g213504213523%_))))
                        (let ((_%$%hd213508213528%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e213507213525%_)))
                              (_%$%tl213509213530%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e213507213525%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl213509213530%_))
                              (let ((_%$%e213510213533%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl213509213530%_))))
                                (let ((_%$%hd213511213536%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e213510213533%_)))
                                      (_%$%tl213512213538%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e213510213533%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl213512213538%_))
                                      (let ((_%$%e213513213541%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl213512213538%_))))
                                        (let ((_%$%hd213514213544%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e213513213541%_)))
                                              (_%$%tl213515213546%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e213513213541%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl213515213546%_))
                                              (let ((_%new-expr213565%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self213500%_
                                                        _%$%hd213514213544%_)))
                                                    (_%new-xid213566%_
                                                     (if (let ((__tmp213977
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self213500%_ 'id))))
                   (declare (not safe))
                   (gx#free-identifier=? _%$%hd213511213536%_ __tmp213977))
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _%self213500%_ 'new-id))
                 _%$%hd213511213536%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((__tmp213978
                                                       (cons '%#set!
                                                             (cons _%new-xid213566%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%new-expr213565%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp213978
                                                   _%stx213501%_)))
                                              (_%$%g213503213520%_
                                               _%$%g213504213523%_))))
                                      (_%$%g213503213520%_
                                       _%$%g213504213523%_))))
                              (_%$%g213503213520%_ _%$%g213504213523%_))))
                      (_%$%g213503213520%_ _%$%g213504213523%_)))))
          (_%$%g213502213568%_ _%stx213501%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self213423%_ _%stx213424%_)
        (let* ((_%$%g213426213443%_
                (lambda (_%$%g213427213440%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g213427213440%_))))
               (_%$%g213425213497%_
                (lambda (_%$%g213427213446%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g213427213446%_))
                      (let ((_%$%e213430213448%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g213427213446%_))))
                        (let ((_%$%hd213431213451%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e213430213448%_)))
                              (_%$%tl213432213453%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e213430213448%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl213432213453%_))
                              (let ((_%$%e213433213456%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl213432213453%_))))
                                (let ((_%$%hd213434213459%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e213433213456%_)))
                                      (_%$%tl213435213461%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e213433213456%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl213435213461%_))
                                      (let ((_%$%e213436213464%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl213435213461%_))))
                                        (let ((_%$%hd213437213467%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e213436213464%_)))
                                              (_%$%tl213438213469%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e213436213464%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl213438213469%_))
                                              (let ((_%new-expr213494%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self213423%_
                                                        _%$%hd213437213467%_)))
                                                    (_%new-xid213495%_
                                                     (let ((_%$e213490%_
                                                            (let ((__tmp213980
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%sub213488%_)
                             (let ((__tmp213981 (car _%sub213488%_)))
                               (declare (not safe))
                               (gx#free-identifier=?
                                _%$%hd213434213459%_
                                __tmp213981))))
                          (__tmp213979
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self213423%_ 'subst))))
                      (declare (not safe))
                      (__find __tmp213980 __tmp213979))))
               (if _%$e213490%_ (cdr _%$e213490%_) _%$%hd213434213459%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((__tmp213982
                                                       (cons '%#set!
                                                             (cons _%new-xid213495%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%new-expr213494%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp213982
                                                   _%stx213424%_)))
                                              (_%$%g213426213443%_
                                               _%$%g213427213446%_))))
                                      (_%$%g213426213443%_
                                       _%$%g213427213446%_))))
                              (_%$%g213426213443%_ _%$%g213427213446%_))))
                      (_%$%g213426213443%_ _%$%g213427213446%_)))))
          (_%$%g213425213497%_ _%stx213424%_))))
    (define gxc#inline-subst-ref%
      (lambda (_%self213363%_ _%stx213364%_)
        (let* ((_%$%g213366213379%_
                (lambda (_%$%g213367213376%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g213367213376%_))))
               (_%$%g213365213420%_
                (lambda (_%$%g213367213382%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g213367213382%_))
                      (let ((_%$%e213369213384%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g213367213382%_))))
                        (let ((_%$%hd213370213387%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e213369213384%_)))
                              (_%$%tl213371213389%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e213369213384%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl213371213389%_))
                              (let ((_%$%e213372213392%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl213371213389%_))))
                                (let ((_%$%hd213373213395%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e213372213392%_)))
                                      (_%$%tl213374213397%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e213372213392%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl213374213397%_))
                                      (let ((_%$e213414%_
                                             (let ((__tmp213984
                                                    (lambda (_%sub213412%_)
                                                      (let ((__tmp213985
                                                             (car _%sub213412%_)))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         _%$%hd213373213395%_
                                                         __tmp213985))))
                                                   (__tmp213983
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self213363%_
                                                       'subst))))
                                               (declare (not safe))
                                               (__find __tmp213984
                                                       __tmp213983))))
                                        (if _%$e213414%_
                                            (let ((__tmp213986
                                                   (cdr _%$e213414%_)))
                                              (declare (not safe))
                                              (gxc#xform-wrap-source
                                               __tmp213986
                                               _%stx213364%_))
                                            _%stx213364%_))
                                      (_%$%g213366213379%_
                                       _%$%g213367213382%_))))
                              (_%$%g213366213379%_ _%$%g213367213382%_))))
                      (_%$%g213366213379%_ _%$%g213367213382%_)))))
          (_%$%g213365213420%_ _%stx213364%_))))
    (define gxc#inline-subst-setq%
      (lambda (_%self213293%_ _%stx213294%_)
        (let* ((_%$%g213296213313%_
                (lambda (_%$%g213297213310%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g213297213310%_))))
               (_%$%g213295213360%_
                (lambda (_%$%g213297213316%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g213297213316%_))
                      (let ((_%$%e213300213318%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g213297213316%_))))
                        (let ((_%$%hd213301213321%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e213300213318%_)))
                              (_%$%tl213302213323%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e213300213318%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl213302213323%_))
                              (let ((_%$%e213303213326%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl213302213323%_))))
                                (let ((_%$%hd213304213329%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e213303213326%_)))
                                      (_%$%tl213305213331%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e213303213326%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl213305213331%_))
                                      (let ((_%$%e213306213334%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl213305213331%_))))
                                        (let ((_%$%hd213307213337%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e213306213334%_)))
                                              (_%$%tl213308213339%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e213306213334%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl213308213339%_))
                                              (if (let ((__tmp213988
                                                         (lambda (_%sub213358%_)
                                                           (let ((__tmp213989
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (car _%sub213358%_)))
                     (declare (not safe))
                     (gx#free-identifier=? _%$%hd213304213329%_ __tmp213989))))
                (__tmp213987
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _%self213293%_ 'subst))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__find __tmp213988
                                                            __tmp213987))
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#raise-compile-error
                                                     '"mutating inline substitution"
                                                     _%stx213294%_
                                                     _%$%hd213304213329%_))
                                                  (let ((__tmp213990
                                                         (cons '%#set!
                                                               (cons _%$%hd213304213329%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self213293%_
                                      _%$%hd213307213337%_))
                                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp213990
                                                     _%stx213294%_)))
                                              (_%$%g213296213313%_
                                               _%$%g213297213316%_))))
                                      (_%$%g213296213313%_
                                       _%$%g213297213316%_))))
                              (_%$%g213296213313%_ _%$%g213297213316%_))))
                      (_%$%g213296213313%_ _%$%g213297213316%_)))))
          (_%$%g213295213360%_ _%stx213294%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self213239%_ _%stx213240%_)
        (let* ((_%$%g213242213255%_
                (lambda (_%$%g213243213252%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g213243213252%_))))
               (_%$%g213241213290%_
                (lambda (_%$%g213243213258%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g213243213258%_))
                      (let ((_%$%e213245213260%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g213243213258%_))))
                        (let ((_%$%hd213246213263%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e213245213260%_)))
                              (_%$%tl213247213265%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e213245213260%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl213247213265%_))
                              (let ((_%$%e213248213268%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl213247213265%_))))
                                (let ((_%$%hd213249213271%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e213248213268%_)))
                                      (_%$%tl213250213273%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e213248213268%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl213250213273%_))
                                      (let* ((_%eid213288%_
                                              (let ()
                                                (declare (not safe))
                                                (gxc#identifier-symbol
                                                 _%$%hd213249213271%_)))
                                             (__tmp213991
                                              (let ()
                                                (declare (not safe))
                                                (slot-ref__0
                                                 _%self213239%_
                                                 'table))))
                                        (declare (not safe))
                                        (hash-update!__%
                                         __tmp213991
                                         _%eid213288%_
                                         1+
                                         '0))
                                      (_%$%g213242213255%_
                                       _%$%g213243213258%_))))
                              (_%$%g213242213255%_ _%$%g213243213258%_))))
                      (_%$%g213242213255%_ _%$%g213243213258%_)))))
          (_%$%g213241213290%_ _%stx213240%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self213169%_ _%stx213170%_)
        (let* ((_%$%g213172213189%_
                (lambda (_%$%g213173213186%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g213173213186%_))))
               (_%$%g213171213236%_
                (lambda (_%$%g213173213192%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g213173213192%_))
                      (let ((_%$%e213176213194%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g213173213192%_))))
                        (let ((_%$%hd213177213197%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e213176213194%_)))
                              (_%$%tl213178213199%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e213176213194%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl213178213199%_))
                              (let ((_%$%e213179213202%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl213178213199%_))))
                                (let ((_%$%hd213180213205%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e213179213202%_)))
                                      (_%$%tl213181213207%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e213179213202%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl213181213207%_))
                                      (let ((_%$%e213182213210%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl213181213207%_))))
                                        (let ((_%$%hd213183213213%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e213182213210%_)))
                                              (_%$%tl213184213215%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e213182213210%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl213184213215%_))
                                              (let ((_%eid213234%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#identifier-symbol
                                                        _%$%hd213180213205%_))))
                                                (let ((__tmp213992
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self213169%_
                                                          'table))))
                                                  (declare (not safe))
                                                  (hash-update!__%
                                                   __tmp213992
                                                   _%eid213234%_
                                                   1+
                                                   '0))
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self213169%_
                                                   _%$%hd213183213213%_)))
                                              (_%$%g213172213189%_
                                               _%$%g213173213192%_))))
                                      (_%$%g213172213189%_
                                       _%$%g213173213192%_))))
                              (_%$%g213172213189%_ _%$%g213173213192%_))))
                      (_%$%g213172213189%_ _%$%g213173213192%_)))))
          (_%$%g213171213236%_ _%stx213170%_))))
    (define gxc#find-body%
      (lambda (_%self213084%_ _%stx213085%_)
        (let* ((_%$%g213087213106%_
                (lambda (_%$%g213088213103%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g213088213103%_))))
               (_%$%g213086213166%_
                (lambda (_%$%g213088213109%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g213088213109%_))
                      (let ((_%$%e213090213111%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g213088213109%_))))
                        (let ((_%$%hd213091213114%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e213090213111%_)))
                              (_%$%tl213092213116%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e213090213111%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl213092213116%_))
                              (let ((_g213993_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl213092213116%_
                                        '0))))
                                (begin
                                  (let ((_g213994_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g213993_)
                                               (##values-length _g213993_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g213994_ 2)))
                                        (error "Context expects 2 values"
                                               _g213994_)))
                                  (let ((_%$%target213093213119%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g213993_ 0)))
                                        (_%$%tl213095213121%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g213993_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl213095213121%_))
                                        (letrec ((_%$%loop213096213124%_
                                                  (lambda (_%$%hd213094213127%_
                                                           _%$%expr213100213129%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd213094213127%_))
                                                        (let ((_%$%e213097213131%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd213094213127%_))))
                  (let ((_%$%lp-hd213098213134%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e213097213131%_)))
                        (_%$%lp-tl213099213136%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e213097213131%_))))
                    (_%$%loop213096213124%_
                     _%$%lp-tl213099213136%_
                     (cons _%$%lp-hd213098213134%_ _%$%expr213100213129%_))))
                (let ((_%$%expr213101213139%_
                       (reverse _%$%expr213100213129%_)))
                  (let ((__tmp213997
                         (lambda (_%$%g213154213156%_)
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self213084%_
                              _%$%g213154213156%_))))
                        (__tmp213995
                         (let ((__tmp213996
                                (lambda (_%$%g213158213161%_
                                         _%$%g213159213163%_)
                                  (cons _%$%g213158213161%_
                                        _%$%g213159213163%_))))
                           (declare (not safe))
                           (foldr__0 __tmp213996 '() _%$%expr213101213139%_))))
                    (declare (not safe))
                    (ormap__0 __tmp213997 __tmp213995)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop213096213124%_
                                           _%$%target213093213119%_
                                           '()))
                                        (_%$%g213087213106%_
                                         _%$%g213088213109%_)))))
                              (_%$%g213087213106%_ _%$%g213088213109%_))))
                      (_%$%g213087213106%_ _%$%g213088213109%_)))))
          (_%$%g213086213166%_ _%stx213085%_))))
    (define gxc#find-let-values%
      (lambda (_%self212938%_ _%stx212939%_)
        (let* ((_%$%g212941212976%_
                (lambda (_%$%g212942212973%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g212942212973%_))))
               (_%$%g212940213081%_
                (lambda (_%$%g212942212979%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g212942212979%_))
                      (let ((_%$%e212946212981%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g212942212979%_))))
                        (let ((_%$%hd212947212984%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e212946212981%_)))
                              (_%$%tl212948212986%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e212946212981%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl212948212986%_))
                              (let ((_%$%e212949212989%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl212948212986%_))))
                                (let ((_%$%hd212950212992%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e212949212989%_)))
                                      (_%$%tl212951212994%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e212949212989%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%hd212950212992%_))
                                      (let ((_g213998_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%hd212950212992%_
                                                '0))))
                                        (begin
                                          (let ((_g213999_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g213998_)
                                                       (##values-length
                                                        _g213998_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g213999_ 2)))
                                                (error "Context expects 2 values"
                                                       _g213999_)))
                                          (let ((_%$%target212952212997%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g213998_ 0)))
                                                (_%$%tl212954212999%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g213998_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl212954212999%_))
                                                (letrec ((_%$%loop212955213002%_
                                                          (lambda (_%$%hd212953213005%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr212959213007%_
                           _%$%bind212960213008%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd212953213005%_))
                        (let ((_%$%e212956213010%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%hd212953213005%_))))
                          (let ((_%$%lp-hd212957213013%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e212956213010%_)))
                                (_%$%lp-tl212958213015%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e212956213010%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd212957213013%_))
                                (let ((_%$%e212963213018%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%lp-hd212957213013%_))))
                                  (let ((_%$%hd212964213021%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e212963213018%_)))
                                        (_%$%tl212965213023%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e212963213018%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl212965213023%_))
                                        (let ((_%$%e212966213026%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%tl212965213023%_))))
                                          (let ((_%$%hd212967213029%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e212966213026%_)))
                                                (_%$%tl212968213031%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e212966213026%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl212968213031%_))
                                                (_%$%loop212955213002%_
                                                 _%$%lp-tl212958213015%_
                                                 (cons _%$%hd212967213029%_
                                                       _%$%expr212959213007%_)
                                                 (cons _%$%hd212964213021%_
                                                       _%$%bind212960213008%_))
                                                (_%$%g212941212976%_
                                                 _%$%g212942212979%_))))
                                        (_%$%g212941212976%_
                                         _%$%g212942212979%_))))
                                (_%$%g212941212976%_ _%$%g212942212979%_))))
                        (let ((_%$%expr212961213034%_
                               (reverse _%$%expr212959213007%_))
                              (_%$%bind212962213035%_
                               (reverse _%$%bind212960213008%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl212951212994%_))
                              (let ((_%$%e212969213037%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl212951212994%_))))
                                (let ((_%$%hd212970213040%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e212969213037%_)))
                                      (_%$%tl212971213042%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e212969213037%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl212971213042%_))
                                      (let ((_%$e213078%_
                                             (let ((__tmp214002
                                                    (lambda (_%$%g213066213068%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self212938%_
                                                         _%$%g213066213068%_))))
                                                   (__tmp214000
                                                    (let ((__tmp214001
                                                           (lambda (_%$%g213070213073%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g213071213075%_)
                     (cons _%$%g213070213073%_ _%$%g213071213075%_))))
              (declare (not safe))
              (foldr__0 __tmp214001 '() _%$%expr212961213034%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (ormap__0
                                                __tmp214002
                                                __tmp214000))))
                                        (if _%$e213078%_
                                            _%$e213078%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self212938%_
                                               _%$%hd212970213040%_))))
                                      (_%$%g212941212976%_
                                       _%$%g212942212979%_))))
                              (_%$%g212941212976%_ _%$%g212942212979%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop212955213002%_
                                                   _%$%target212952212997%_
                                                   '()
                                                   '()))
                                                (_%$%g212941212976%_
                                                 _%$%g212942212979%_)))))
                                      (_%$%g212941212976%_
                                       _%$%g212942212979%_))))
                              (_%$%g212941212976%_ _%$%g212942212979%_))))
                      (_%$%g212941212976%_ _%$%g212942212979%_)))))
          (_%$%g212940213081%_ _%stx212939%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self212882%_ _%stx212883%_)
        (let* ((_%$%g212885212898%_
                (lambda (_%$%g212886212895%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g212886212895%_))))
               (_%$%g212884212935%_
                (lambda (_%$%g212886212901%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g212886212901%_))
                      (let ((_%$%e212888212903%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g212886212901%_))))
                        (let ((_%$%hd212889212906%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e212888212903%_)))
                              (_%$%tl212890212908%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e212888212903%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl212890212908%_))
                              (let ((_%$%e212891212911%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl212890212908%_))))
                                (let ((_%$%hd212892212914%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e212891212911%_)))
                                      (_%$%tl212893212916%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e212891212911%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl212893212916%_))
                                      (let ((__tmp214004
                                             (lambda (_%$%g212930212932%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%$%hd212892212914%_
                                                  _%$%g212930212932%_))))
                                            (__tmp214003
                                             (let ()
                                               (declare (not safe))
                                               (slot-ref__0
                                                _%self212882%_
                                                'ids))))
                                        (declare (not safe))
                                        (__find __tmp214004 __tmp214003))
                                      (_%$%g212885212898%_
                                       _%$%g212886212901%_))))
                              (_%$%g212885212898%_ _%$%g212886212901%_))))
                      (_%$%g212885212898%_ _%$%g212886212901%_)))))
          (_%$%g212884212935%_ _%stx212883%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self212807%_ _%stx212808%_)
        (let* ((_%$%g212810212827%_
                (lambda (_%$%g212811212824%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g212811212824%_))))
               (_%$%g212809212879%_
                (lambda (_%$%g212811212830%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g212811212830%_))
                      (let ((_%$%e212814212832%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g212811212830%_))))
                        (let ((_%$%hd212815212835%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e212814212832%_)))
                              (_%$%tl212816212837%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e212814212832%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl212816212837%_))
                              (let ((_%$%e212817212840%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl212816212837%_))))
                                (let ((_%$%hd212818212843%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e212817212840%_)))
                                      (_%$%tl212819212845%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e212817212840%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl212819212845%_))
                                      (let ((_%$%e212820212848%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl212819212845%_))))
                                        (let ((_%$%hd212821212851%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e212820212848%_)))
                                              (_%$%tl212822212853%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e212820212848%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl212822212853%_))
                                              (let ((_%$e212876%_
                                                     (let ((__tmp214006
                                                            (lambda (_%$%g212871212873%_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#free-identifier=?
                         _%$%hd212818212843%_
                         _%$%g212871212873%_))))
                   (__tmp214005
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self212807%_ 'ids))))
               (declare (not safe))
               (__find __tmp214006 __tmp214005))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if _%$e212876%_
                                                    _%$e212876%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self212807%_
                                                       _%$%hd212821212851%_))))
                                              (_%$%g212810212827%_
                                               _%$%g212811212830%_))))
                                      (_%$%g212810212827%_
                                       _%$%g212811212830%_))))
                              (_%$%g212810212827%_ _%$%g212811212830%_))))
                      (_%$%g212810212827%_ _%$%g212811212830%_)))))
          (_%$%g212809212879%_ _%stx212808%_))))))
