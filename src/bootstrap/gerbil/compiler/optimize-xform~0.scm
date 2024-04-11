(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1712786281)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp151757 (list gxc#::void::t))
            (__tmp151756 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp151757
         '()
         __tmp151756
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args151743%_
        (apply make-instance gxc#::collect-mutators::t _%$args151743%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp151758
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
        (__make-promise __tmp151758)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx151735%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self151738%_
                (let ((__obj151746
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj151746))
               (__tmp151759
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self151738%_ _%stx151735%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp151759
           gxc#current-compile-method
           _%self151738%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp151761 (list gxc#::basic-xform-expression::t))
            (__tmp151760 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp151761
         '(id new-id)
         __tmp151760
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args151732%_
        (apply make-instance gxc#::expression-subst::t _%$args151732%_)))
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
      (let ((__tmp151762
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
        (__make-promise __tmp151762)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords151702%_
               _%id151698151703%_
               _%new-id151699151705%_
               _%stx151707%_)
        (let* ((_%id151710%_
                (if (eq? _%id151698151703%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id151698151703%_))
               (_%new-id151712%_
                (if (eq? _%new-id151699151705%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id151699151705%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self151714%_
                  (let ((__obj151748
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151748
                       _%id151710%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151748
                       _%new-id151712%_
                       '2
                       '#f
                       '#f))
                    __obj151748))
                 (__tmp151763
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self151714%_ _%stx151707%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151763
             gxc#current-compile-method
             _%self151714%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords151721%_ . _%args151722%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords151721%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords151721%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords151721%_
                  'new-id:
                  absent-value))
               _%args151722%_)))
    (define gxc#apply-expression-subst
      (lambda _%args151700151728%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args151700151728%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp151765 (list gxc#::basic-xform-expression::t))
            (__tmp151764 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp151765
         '(subst)
         __tmp151764
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args151694%_
        (apply make-instance gxc#::expression-subst*::t _%$args151694%_)))
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
      (let ((__tmp151766
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
        (__make-promise __tmp151766)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords151668%_ _%subst151665151669%_ _%stx151671%_)
        (let ((_%subst151674%_
               (if (eq? _%subst151665151669%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst151665151669%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self151676%_
                  (let ((__obj151750
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151750
                       _%subst151674%_
                       '1
                       '#f
                       '#f))
                    __obj151750))
                 (__tmp151767
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self151676%_ _%stx151671%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151767
             gxc#current-compile-method
             _%self151676%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords151683%_ . _%args151684%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords151683%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords151683%_
                  'subst:
                  absent-value))
               _%args151684%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args151666151690%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args151666151690%_)))
    (define gxc#::find-expression::t
      (let ((__tmp151768 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp151768
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args151661%_
        (apply make-instance gxc#::find-expression::t _%$args151661%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp151769
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
        (__make-promise __tmp151769)))
    (define gxc#::find-var-refs::t
      (let ((__tmp151771 (list gxc#::find-expression::t))
            (__tmp151770 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp151771
         '(ids)
         __tmp151770
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args151657%_
        (apply make-instance gxc#::find-var-refs::t _%$args151657%_)))
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
      (let ((__tmp151772
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
        (__make-promise __tmp151772)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords151631%_ _%ids151628151632%_ _%stx151634%_)
        (let ((_%ids151637%_
               (if (eq? _%ids151628151632%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids151628151632%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self151639%_
                  (let ((__obj151753
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151753
                       _%ids151637%_
                       '1
                       '#f
                       '#f))
                    __obj151753))
                 (__tmp151773
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self151639%_ _%stx151634%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151773
             gxc#current-compile-method
             _%self151639%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords151646%_ . _%args151647%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords151646%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords151646%_ 'ids: absent-value))
               _%args151647%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args151629151653%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args151629151653%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp151775 (list gxc#::collect-expression-refs::t))
            (__tmp151774 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp151775
         '()
         __tmp151774
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args151624%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args151624%_)))
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
      (let ((__tmp151776
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
        (__make-promise __tmp151776)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords151598%_ _%table151595151599%_ _%stx151601%_)
        (let ((_%table151604%_
               (if (eq? _%table151595151599%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table151595151599%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self151606%_
                  (let ((__obj151755
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151755
                       _%table151604%_
                       '1
                       '#f
                       '#f))
                    __obj151755))
                 (__tmp151777
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self151606%_ _%stx151601%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151777
             gxc#current-compile-method
             _%self151606%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords151613%_ . _%args151614%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords151613%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords151613%_
                  'table:
                  absent-value))
               _%args151614%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args151596151620%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args151596151620%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self151524%_ _%stx151525%_)
        (let* ((_%g151527151544%_
                (lambda (_%g151528151541%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151528151541%_))))
               (_%g151526151591%_
                (lambda (_%g151528151547%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151528151547%_))
                      (let ((_%e151531151549%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151528151547%_))))
                        (let ((_%hd151532151552%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151531151549%_)))
                              (_%tl151533151554%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151531151549%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151533151554%_))
                              (let ((_%e151534151557%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151533151554%_))))
                                (let ((_%hd151535151560%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151534151557%_)))
                                      (_%tl151536151562%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151534151557%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151536151562%_))
                                      (let ((_%e151537151565%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151536151562%_))))
                                        (let ((_%hd151538151568%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151537151565%_)))
                                              (_%tl151539151570%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151537151565%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151539151570%_))
                                              ((lambda (_%L151573%_
                                                        _%L151574%_)
                                                 (let ((_%sym151589%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L151574%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym151589%_))
                                                   (let ((__tmp151778
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp151778
                                                      _%sym151589%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self151524%_
                                                      _%L151573%_))))
                                               _%hd151538151568%_
                                               _%hd151535151560%_)
                                              (_%g151527151544%_
                                               _%g151528151547%_))))
                                      (_%g151527151544%_ _%g151528151547%_))))
                              (_%g151527151544%_ _%g151528151547%_))))
                      (_%g151527151544%_ _%g151528151547%_)))))
          (_%g151526151591%_ _%stx151525%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self151472%_ _%stx151473%_)
        (let* ((_%g151475151488%_
                (lambda (_%g151476151485%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151476151485%_))))
               (_%g151474151521%_
                (lambda (_%g151476151491%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151476151491%_))
                      (let ((_%e151478151493%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151476151491%_))))
                        (let ((_%hd151479151496%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151478151493%_)))
                              (_%tl151480151498%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151478151493%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151480151498%_))
                              (let ((_%e151481151501%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151480151498%_))))
                                (let ((_%hd151482151504%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151481151501%_)))
                                      (_%tl151483151506%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151481151501%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl151483151506%_))
                                      ((lambda (_%L151509%_)
                                         (if (let ((__tmp151779
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self151472%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L151509%_
                                                __tmp151779))
                                             (let ((__tmp151780
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self151472%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp151780
                                                _%stx151473%_))
                                             _%stx151473%_))
                                       _%hd151482151504%_)
                                      (_%g151475151488%_ _%g151476151491%_))))
                              (_%g151475151488%_ _%g151476151491%_))))
                      (_%g151475151488%_ _%g151476151491%_)))))
          (_%g151474151521%_ _%stx151473%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self151412%_ _%stx151413%_)
        (let* ((_%g151415151428%_
                (lambda (_%g151416151425%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151416151425%_))))
               (_%g151414151469%_
                (lambda (_%g151416151431%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151416151431%_))
                      (let ((_%e151418151433%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151416151431%_))))
                        (let ((_%hd151419151436%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151418151433%_)))
                              (_%tl151420151438%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151418151433%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151420151438%_))
                              (let ((_%e151421151441%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151420151438%_))))
                                (let ((_%hd151422151444%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151421151441%_)))
                                      (_%tl151423151446%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151421151441%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl151423151446%_))
                                      ((lambda (_%L151449%_)
                                         (let ((_%$e151463%_
                                                (let ((__tmp151782
                                                       (lambda (_%sub151461%_)
                                                         (let ((__tmp151783
                                                                (car _%sub151461%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L151449%_
                                                            __tmp151783))))
                                                      (__tmp151781
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self151412%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp151782
                                                          __tmp151781))))
                                           (if _%$e151463%_
                                               ((lambda (_%sub151466%_)
                                                  (let ((__tmp151784
                                                         (cons '%#ref
                                                               (cons (cdr _%sub151466%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp151784
                                                     _%stx151413%_)))
                                                _%$e151463%_)
                                               _%stx151413%_)))
                                       _%hd151422151444%_)
                                      (_%g151415151428%_ _%g151416151431%_))))
                              (_%g151415151428%_ _%g151416151431%_))))
                      (_%g151415151428%_ _%g151416151431%_)))))
          (_%g151414151469%_ _%stx151413%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self151341%_ _%stx151342%_)
        (let* ((_%g151344151361%_
                (lambda (_%g151345151358%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151345151358%_))))
               (_%g151343151409%_
                (lambda (_%g151345151364%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151345151364%_))
                      (let ((_%e151348151366%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151345151364%_))))
                        (let ((_%hd151349151369%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151348151366%_)))
                              (_%tl151350151371%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151348151366%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151350151371%_))
                              (let ((_%e151351151374%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151350151371%_))))
                                (let ((_%hd151352151377%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151351151374%_)))
                                      (_%tl151353151379%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151351151374%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151353151379%_))
                                      (let ((_%e151354151382%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151353151379%_))))
                                        (let ((_%hd151355151385%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151354151382%_)))
                                              (_%tl151356151387%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151354151382%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151356151387%_))
                                              ((lambda (_%L151390%_
                                                        _%L151391%_)
                                                 (let ((_%new-expr151406%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self151341%_
                                                           _%L151390%_)))
                                                       (_%new-xid151407%_
                                                        (if (let ((__tmp151785
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self151341%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L151391%_ __tmp151785))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self151341%_ 'new-id))
                    _%L151391%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp151786
                                                          (cons '%#set!
                                                                (cons _%new-xid151407%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr151406%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp151786
                                                      _%stx151342%_))))
                                               _%hd151355151385%_
                                               _%hd151352151377%_)
                                              (_%g151344151361%_
                                               _%g151345151364%_))))
                                      (_%g151344151361%_ _%g151345151364%_))))
                              (_%g151344151361%_ _%g151345151364%_))))
                      (_%g151344151361%_ _%g151345151364%_)))))
          (_%g151343151409%_ _%stx151342%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self151264%_ _%stx151265%_)
        (let* ((_%g151267151284%_
                (lambda (_%g151268151281%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151268151281%_))))
               (_%g151266151338%_
                (lambda (_%g151268151287%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151268151287%_))
                      (let ((_%e151271151289%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151268151287%_))))
                        (let ((_%hd151272151292%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151271151289%_)))
                              (_%tl151273151294%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151271151289%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151273151294%_))
                              (let ((_%e151274151297%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151273151294%_))))
                                (let ((_%hd151275151300%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151274151297%_)))
                                      (_%tl151276151302%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151274151297%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151276151302%_))
                                      (let ((_%e151277151305%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151276151302%_))))
                                        (let ((_%hd151278151308%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151277151305%_)))
                                              (_%tl151279151310%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151277151305%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151279151310%_))
                                              ((lambda (_%L151313%_
                                                        _%L151314%_)
                                                 (let ((_%new-expr151335%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self151264%_
                                                           _%L151313%_)))
                                                       (_%new-xid151336%_
                                                        (let ((_%$e151331%_
                                                               (let ((__tmp151788
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub151329%_)
                                (let ((__tmp151789 (car _%sub151329%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L151314%_
                                   __tmp151789))))
                             (__tmp151787
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self151264%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp151788 __tmp151787))))
                  (if _%$e151331%_ (cdr _%$e151331%_) _%L151314%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp151790
                                                          (cons '%#set!
                                                                (cons _%new-xid151336%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr151335%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp151790
                                                      _%stx151265%_))))
                                               _%hd151278151308%_
                                               _%hd151275151300%_)
                                              (_%g151267151284%_
                                               _%g151268151287%_))))
                                      (_%g151267151284%_ _%g151268151287%_))))
                              (_%g151267151284%_ _%g151268151287%_))))
                      (_%g151267151284%_ _%g151268151287%_)))))
          (_%g151266151338%_ _%stx151265%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self151210%_ _%stx151211%_)
        (let* ((_%g151213151226%_
                (lambda (_%g151214151223%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151214151223%_))))
               (_%g151212151261%_
                (lambda (_%g151214151229%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151214151229%_))
                      (let ((_%e151216151231%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151214151229%_))))
                        (let ((_%hd151217151234%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151216151231%_)))
                              (_%tl151218151236%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151216151231%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151218151236%_))
                              (let ((_%e151219151239%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151218151236%_))))
                                (let ((_%hd151220151242%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151219151239%_)))
                                      (_%tl151221151244%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151219151239%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl151221151244%_))
                                      ((lambda (_%L151247%_)
                                         (let* ((_%eid151259%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L151247%_)))
                                                (__tmp151791
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self151210%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp151791
                                            _%eid151259%_
                                            1+
                                            '0)))
                                       _%hd151220151242%_)
                                      (_%g151213151226%_ _%g151214151229%_))))
                              (_%g151213151226%_ _%g151214151229%_))))
                      (_%g151213151226%_ _%g151214151229%_)))))
          (_%g151212151261%_ _%stx151211%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self151140%_ _%stx151141%_)
        (let* ((_%g151143151160%_
                (lambda (_%g151144151157%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151144151157%_))))
               (_%g151142151207%_
                (lambda (_%g151144151163%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151144151163%_))
                      (let ((_%e151147151165%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151144151163%_))))
                        (let ((_%hd151148151168%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151147151165%_)))
                              (_%tl151149151170%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151147151165%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151149151170%_))
                              (let ((_%e151150151173%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151149151170%_))))
                                (let ((_%hd151151151176%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151150151173%_)))
                                      (_%tl151152151178%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151150151173%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151152151178%_))
                                      (let ((_%e151153151181%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151152151178%_))))
                                        (let ((_%hd151154151184%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151153151181%_)))
                                              (_%tl151155151186%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151153151181%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151155151186%_))
                                              ((lambda (_%L151189%_
                                                        _%L151190%_)
                                                 (let ((_%eid151205%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L151190%_))))
                                                   (let ((__tmp151792
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self151140%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp151792
                                                      _%eid151205%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self151140%_
                                                      _%L151189%_))))
                                               _%hd151154151184%_
                                               _%hd151151151176%_)
                                              (_%g151143151160%_
                                               _%g151144151163%_))))
                                      (_%g151143151160%_ _%g151144151163%_))))
                              (_%g151143151160%_ _%g151144151163%_))))
                      (_%g151143151160%_ _%g151144151163%_)))))
          (_%g151142151207%_ _%stx151141%_))))
    (define gxc#find-body%
      (lambda (_%self151053%_ _%stx151054%_)
        (let* ((_%g151056151075%_
                (lambda (_%g151057151072%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151057151072%_))))
               (_%g151055151137%_
                (lambda (_%g151057151078%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151057151078%_))
                      (let ((_%e151059151080%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151057151078%_))))
                        (let ((_%hd151060151083%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151059151080%_)))
                              (_%tl151061151085%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151059151080%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl151061151085%_))
                              (let ((_g151793_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl151061151085%_
                                        '0))))
                                (begin
                                  (let ((_g151794_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g151793_)
                                               (##vector-length _g151793_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g151794_ 2)))
                                        (error "Context expects 2 values"
                                               _g151794_)))
                                  (let ((_%target151062151088%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g151793_ 0)))
                                        (_%tl151064151090%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g151793_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl151064151090%_))
                                        (letrec ((_%loop151065151093%_
                                                  (lambda (_%hd151063151096%_
                                                           _%expr151069151098%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd151063151096%_))
                                                        (let ((_%e151066151101%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd151063151096%_))))
                  (let ((_%lp-hd151067151104%_
                         (let ()
                           (declare (not safe))
                           (##car _%e151066151101%_)))
                        (_%lp-tl151068151106%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e151066151101%_))))
                    (_%loop151065151093%_
                     _%lp-tl151068151106%_
                     (cons _%lp-hd151067151104%_ _%expr151069151098%_))))
                (let ((_%expr151070151109%_ (reverse _%expr151069151098%_)))
                  ((lambda (_%L151112%_)
                     (let ((__tmp151797
                            (lambda (_%g151125151127%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self151053%_
                                 _%g151125151127%_))))
                           (__tmp151795
                            (let ((__tmp151796
                                   (lambda (_%g151129151132%_
                                            _%g151130151134%_)
                                     (cons _%g151129151132%_
                                           _%g151130151134%_))))
                              (declare (not safe))
                              (__foldr1 __tmp151796 '() _%L151112%_))))
                       (declare (not safe))
                       (__ormap1 __tmp151797 __tmp151795)))
                   _%expr151070151109%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop151065151093%_
                                           _%target151062151088%_
                                           '()))
                                        (_%g151056151075%_
                                         _%g151057151078%_)))))
                              (_%g151056151075%_ _%g151057151078%_))))
                      (_%g151056151075%_ _%g151057151078%_)))))
          (_%g151055151137%_ _%stx151054%_))))
    (define gxc#find-let-values%
      (lambda (_%self150903%_ _%stx150904%_)
        (let* ((_%g150906150941%_
                (lambda (_%g150907150938%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150907150938%_))))
               (_%g150905151050%_
                (lambda (_%g150907150944%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150907150944%_))
                      (let ((_%e150911150946%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150907150944%_))))
                        (let ((_%hd150912150949%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150911150946%_)))
                              (_%tl150913150951%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150911150946%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150913150951%_))
                              (let ((_%e150914150954%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150913150951%_))))
                                (let ((_%hd150915150957%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150914150954%_)))
                                      (_%tl150916150959%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150914150954%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd150915150957%_))
                                      (let ((_g151798_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd150915150957%_
                                                '0))))
                                        (begin
                                          (let ((_g151799_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g151798_)
                                                       (##vector-length
                                                        _g151798_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g151799_ 2)))
                                                (error "Context expects 2 values"
                                                       _g151799_)))
                                          (let ((_%target150917150962%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g151798_ 0)))
                                                (_%tl150919150964%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g151798_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl150919150964%_))
                                                (letrec ((_%loop150920150967%_
                                                          (lambda (_%hd150918150970%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr150924150972%_
                           _%bind150925150974%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd150918150970%_))
                        (let ((_%e150921150977%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd150918150970%_))))
                          (let ((_%lp-hd150922150980%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e150921150977%_)))
                                (_%lp-tl150923150982%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e150921150977%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd150922150980%_))
                                (let ((_%e150931150985%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd150922150980%_))))
                                  (let ((_%hd150932150988%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e150931150985%_)))
                                        (_%tl150933150990%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e150931150985%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl150933150990%_))
                                        (let ((_%e150934150993%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl150933150990%_))))
                                          (let ((_%hd150935150996%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e150934150993%_)))
                                                (_%tl150936150998%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e150934150993%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl150936150998%_))
                                                (_%loop150920150967%_
                                                 _%lp-tl150923150982%_
                                                 (cons _%hd150935150996%_
                                                       _%expr150924150972%_)
                                                 (cons _%hd150932150988%_
                                                       _%bind150925150974%_))
                                                (_%g150906150941%_
                                                 _%g150907150944%_))))
                                        (_%g150906150941%_
                                         _%g150907150944%_))))
                                (_%g150906150941%_ _%g150907150944%_))))
                        (let ((_%expr150926151001%_
                               (reverse _%expr150924150972%_))
                              (_%bind150927151003%_
                               (reverse _%bind150925150974%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150916150959%_))
                              (let ((_%e150928151006%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150916150959%_))))
                                (let ((_%hd150929151009%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150928151006%_)))
                                      (_%tl150930151011%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150928151006%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl150930151011%_))
                                      ((lambda (_%L151014%_
                                                _%L151015%_
                                                _%L151016%_)
                                         (let ((_%$e151047%_
                                                (let ((__tmp151802
                                                       (lambda (_%g151035151037%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self150903%_
                                                            _%g151035151037%_))))
                                                      (__tmp151800
                                                       (let ((__tmp151801
                                                              (lambda (_%g151039151042%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g151040151044%_)
                        (cons _%g151039151042%_ _%g151040151044%_))))
                 (declare (not safe))
                 (__foldr1 __tmp151801 '() _%L151015%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp151802
                                                   __tmp151800))))
                                           (if _%$e151047%_
                                               _%$e151047%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self150903%_
                                                  _%L151014%_)))))
                                       _%hd150929151009%_
                                       _%expr150926151001%_
                                       _%bind150927151003%_)
                                      (_%g150906150941%_ _%g150907150944%_))))
                              (_%g150906150941%_ _%g150907150944%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop150920150967%_
                                                   _%target150917150962%_
                                                   '()
                                                   '()))
                                                (_%g150906150941%_
                                                 _%g150907150944%_)))))
                                      (_%g150906150941%_ _%g150907150944%_))))
                              (_%g150906150941%_ _%g150907150944%_))))
                      (_%g150906150941%_ _%g150907150944%_)))))
          (_%g150905151050%_ _%stx150904%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self150847%_ _%stx150848%_)
        (let* ((_%g150850150863%_
                (lambda (_%g150851150860%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150851150860%_))))
               (_%g150849150900%_
                (lambda (_%g150851150866%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150851150866%_))
                      (let ((_%e150853150868%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150851150866%_))))
                        (let ((_%hd150854150871%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150853150868%_)))
                              (_%tl150855150873%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150853150868%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150855150873%_))
                              (let ((_%e150856150876%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150855150873%_))))
                                (let ((_%hd150857150879%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150856150876%_)))
                                      (_%tl150858150881%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150856150876%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl150858150881%_))
                                      ((lambda (_%L150884%_)
                                         (let ((__tmp151804
                                                (lambda (_%g150895150897%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L150884%_
                                                     _%g150895150897%_))))
                                               (__tmp151803
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self150847%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp151804 __tmp151803)))
                                       _%hd150857150879%_)
                                      (_%g150850150863%_ _%g150851150866%_))))
                              (_%g150850150863%_ _%g150851150866%_))))
                      (_%g150850150863%_ _%g150851150866%_)))))
          (_%g150849150900%_ _%stx150848%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self150772%_ _%stx150773%_)
        (let* ((_%g150775150792%_
                (lambda (_%g150776150789%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150776150789%_))))
               (_%g150774150844%_
                (lambda (_%g150776150795%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150776150795%_))
                      (let ((_%e150779150797%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150776150795%_))))
                        (let ((_%hd150780150800%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150779150797%_)))
                              (_%tl150781150802%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150779150797%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150781150802%_))
                              (let ((_%e150782150805%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150781150802%_))))
                                (let ((_%hd150783150808%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150782150805%_)))
                                      (_%tl150784150810%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150782150805%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150784150810%_))
                                      (let ((_%e150785150813%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150784150810%_))))
                                        (let ((_%hd150786150816%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150785150813%_)))
                                              (_%tl150787150818%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150785150813%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150787150818%_))
                                              ((lambda (_%L150821%_
                                                        _%L150822%_)
                                                 (let ((_%$e150841%_
                                                        (let ((__tmp151806
                                                               (lambda (_%g150836150838%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L150822%_
                            _%g150836150838%_))))
                      (__tmp151805
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self150772%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp151806 __tmp151805))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e150841%_
                                                       _%$e150841%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self150772%_
                                                          _%L150821%_)))))
                                               _%hd150786150816%_
                                               _%hd150783150808%_)
                                              (_%g150775150792%_
                                               _%g150776150795%_))))
                                      (_%g150775150792%_ _%g150776150795%_))))
                              (_%g150775150792%_ _%g150776150795%_))))
                      (_%g150775150792%_ _%g150776150795%_)))))
          (_%g150774150844%_ _%stx150773%_))))))
