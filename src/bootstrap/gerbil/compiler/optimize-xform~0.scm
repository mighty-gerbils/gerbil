(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1712991654)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp151823 (list gxc#::void::t))
            (__tmp151822 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp151823
         '()
         __tmp151822
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args151809%_
        (apply make-instance gxc#::collect-mutators::t _%$args151809%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp151824
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
        (__make-promise __tmp151824)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx151801%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self151804%_
                (let ((__obj151812
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj151812))
               (__tmp151825
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self151804%_ _%stx151801%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp151825
           gxc#current-compile-method
           _%self151804%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp151827 (list gxc#::basic-xform-expression::t))
            (__tmp151826 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp151827
         '(id new-id)
         __tmp151826
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args151798%_
        (apply make-instance gxc#::expression-subst::t _%$args151798%_)))
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
      (let ((__tmp151828
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
        (__make-promise __tmp151828)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords151768%_
               _%id151764151769%_
               _%new-id151765151771%_
               _%stx151773%_)
        (let* ((_%id151776%_
                (if (eq? _%id151764151769%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id151764151769%_))
               (_%new-id151778%_
                (if (eq? _%new-id151765151771%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id151765151771%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self151780%_
                  (let ((__obj151814
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151814
                       _%id151776%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151814
                       _%new-id151778%_
                       '2
                       '#f
                       '#f))
                    __obj151814))
                 (__tmp151829
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self151780%_ _%stx151773%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151829
             gxc#current-compile-method
             _%self151780%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords151787%_ . _%args151788%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords151787%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords151787%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords151787%_
                  'new-id:
                  absent-value))
               _%args151788%_)))
    (define gxc#apply-expression-subst
      (lambda _%args151766151794%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args151766151794%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp151831 (list gxc#::basic-xform-expression::t))
            (__tmp151830 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp151831
         '(subst)
         __tmp151830
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args151760%_
        (apply make-instance gxc#::expression-subst*::t _%$args151760%_)))
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
      (let ((__tmp151832
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
        (__make-promise __tmp151832)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords151734%_ _%subst151731151735%_ _%stx151737%_)
        (let ((_%subst151740%_
               (if (eq? _%subst151731151735%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst151731151735%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self151742%_
                  (let ((__obj151816
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151816
                       _%subst151740%_
                       '1
                       '#f
                       '#f))
                    __obj151816))
                 (__tmp151833
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self151742%_ _%stx151737%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151833
             gxc#current-compile-method
             _%self151742%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords151749%_ . _%args151750%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords151749%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords151749%_
                  'subst:
                  absent-value))
               _%args151750%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args151732151756%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args151732151756%_)))
    (define gxc#::find-expression::t
      (let ((__tmp151834 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp151834
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args151727%_
        (apply make-instance gxc#::find-expression::t _%$args151727%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp151835
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
        (__make-promise __tmp151835)))
    (define gxc#::find-var-refs::t
      (let ((__tmp151837 (list gxc#::find-expression::t))
            (__tmp151836 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp151837
         '(ids)
         __tmp151836
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args151723%_
        (apply make-instance gxc#::find-var-refs::t _%$args151723%_)))
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
      (let ((__tmp151838
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
        (__make-promise __tmp151838)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords151697%_ _%ids151694151698%_ _%stx151700%_)
        (let ((_%ids151703%_
               (if (eq? _%ids151694151698%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids151694151698%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self151705%_
                  (let ((__obj151819
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151819
                       _%ids151703%_
                       '1
                       '#f
                       '#f))
                    __obj151819))
                 (__tmp151839
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self151705%_ _%stx151700%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151839
             gxc#current-compile-method
             _%self151705%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords151712%_ . _%args151713%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords151712%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords151712%_ 'ids: absent-value))
               _%args151713%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args151695151719%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args151695151719%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp151841 (list gxc#::collect-expression-refs::t))
            (__tmp151840 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp151841
         '()
         __tmp151840
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args151690%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args151690%_)))
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
      (let ((__tmp151842
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
        (__make-promise __tmp151842)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords151664%_ _%table151661151665%_ _%stx151667%_)
        (let ((_%table151670%_
               (if (eq? _%table151661151665%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table151661151665%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self151672%_
                  (let ((__obj151821
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151821
                       _%table151670%_
                       '1
                       '#f
                       '#f))
                    __obj151821))
                 (__tmp151843
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self151672%_ _%stx151667%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151843
             gxc#current-compile-method
             _%self151672%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords151679%_ . _%args151680%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords151679%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords151679%_
                  'table:
                  absent-value))
               _%args151680%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args151662151686%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args151662151686%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self151590%_ _%stx151591%_)
        (let* ((_%g151593151610%_
                (lambda (_%g151594151607%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151594151607%_))))
               (_%g151592151657%_
                (lambda (_%g151594151613%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151594151613%_))
                      (let ((_%e151597151615%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151594151613%_))))
                        (let ((_%hd151598151618%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151597151615%_)))
                              (_%tl151599151620%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151597151615%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151599151620%_))
                              (let ((_%e151600151623%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151599151620%_))))
                                (let ((_%hd151601151626%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151600151623%_)))
                                      (_%tl151602151628%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151600151623%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151602151628%_))
                                      (let ((_%e151603151631%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151602151628%_))))
                                        (let ((_%hd151604151634%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151603151631%_)))
                                              (_%tl151605151636%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151603151631%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151605151636%_))
                                              ((lambda (_%L151639%_
                                                        _%L151640%_)
                                                 (let ((_%sym151655%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L151640%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym151655%_))
                                                   (let ((__tmp151844
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp151844
                                                      _%sym151655%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self151590%_
                                                      _%L151639%_))))
                                               _%hd151604151634%_
                                               _%hd151601151626%_)
                                              (_%g151593151610%_
                                               _%g151594151613%_))))
                                      (_%g151593151610%_ _%g151594151613%_))))
                              (_%g151593151610%_ _%g151594151613%_))))
                      (_%g151593151610%_ _%g151594151613%_)))))
          (_%g151592151657%_ _%stx151591%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self151538%_ _%stx151539%_)
        (let* ((_%g151541151554%_
                (lambda (_%g151542151551%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151542151551%_))))
               (_%g151540151587%_
                (lambda (_%g151542151557%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151542151557%_))
                      (let ((_%e151544151559%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151542151557%_))))
                        (let ((_%hd151545151562%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151544151559%_)))
                              (_%tl151546151564%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151544151559%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151546151564%_))
                              (let ((_%e151547151567%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151546151564%_))))
                                (let ((_%hd151548151570%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151547151567%_)))
                                      (_%tl151549151572%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151547151567%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl151549151572%_))
                                      ((lambda (_%L151575%_)
                                         (if (let ((__tmp151845
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self151538%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L151575%_
                                                __tmp151845))
                                             (let ((__tmp151846
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self151538%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp151846
                                                _%stx151539%_))
                                             _%stx151539%_))
                                       _%hd151548151570%_)
                                      (_%g151541151554%_ _%g151542151557%_))))
                              (_%g151541151554%_ _%g151542151557%_))))
                      (_%g151541151554%_ _%g151542151557%_)))))
          (_%g151540151587%_ _%stx151539%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self151478%_ _%stx151479%_)
        (let* ((_%g151481151494%_
                (lambda (_%g151482151491%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151482151491%_))))
               (_%g151480151535%_
                (lambda (_%g151482151497%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151482151497%_))
                      (let ((_%e151484151499%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151482151497%_))))
                        (let ((_%hd151485151502%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151484151499%_)))
                              (_%tl151486151504%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151484151499%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151486151504%_))
                              (let ((_%e151487151507%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151486151504%_))))
                                (let ((_%hd151488151510%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151487151507%_)))
                                      (_%tl151489151512%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151487151507%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl151489151512%_))
                                      ((lambda (_%L151515%_)
                                         (let ((_%$e151529%_
                                                (let ((__tmp151848
                                                       (lambda (_%sub151527%_)
                                                         (let ((__tmp151849
                                                                (car _%sub151527%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L151515%_
                                                            __tmp151849))))
                                                      (__tmp151847
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self151478%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp151848
                                                          __tmp151847))))
                                           (if _%$e151529%_
                                               ((lambda (_%sub151532%_)
                                                  (let ((__tmp151850
                                                         (cons '%#ref
                                                               (cons (cdr _%sub151532%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp151850
                                                     _%stx151479%_)))
                                                _%$e151529%_)
                                               _%stx151479%_)))
                                       _%hd151488151510%_)
                                      (_%g151481151494%_ _%g151482151497%_))))
                              (_%g151481151494%_ _%g151482151497%_))))
                      (_%g151481151494%_ _%g151482151497%_)))))
          (_%g151480151535%_ _%stx151479%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self151407%_ _%stx151408%_)
        (let* ((_%g151410151427%_
                (lambda (_%g151411151424%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151411151424%_))))
               (_%g151409151475%_
                (lambda (_%g151411151430%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151411151430%_))
                      (let ((_%e151414151432%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151411151430%_))))
                        (let ((_%hd151415151435%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151414151432%_)))
                              (_%tl151416151437%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151414151432%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151416151437%_))
                              (let ((_%e151417151440%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151416151437%_))))
                                (let ((_%hd151418151443%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151417151440%_)))
                                      (_%tl151419151445%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151417151440%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151419151445%_))
                                      (let ((_%e151420151448%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151419151445%_))))
                                        (let ((_%hd151421151451%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151420151448%_)))
                                              (_%tl151422151453%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151420151448%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151422151453%_))
                                              ((lambda (_%L151456%_
                                                        _%L151457%_)
                                                 (let ((_%new-expr151472%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self151407%_
                                                           _%L151456%_)))
                                                       (_%new-xid151473%_
                                                        (if (let ((__tmp151851
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self151407%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L151457%_ __tmp151851))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self151407%_ 'new-id))
                    _%L151457%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp151852
                                                          (cons '%#set!
                                                                (cons _%new-xid151473%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr151472%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp151852
                                                      _%stx151408%_))))
                                               _%hd151421151451%_
                                               _%hd151418151443%_)
                                              (_%g151410151427%_
                                               _%g151411151430%_))))
                                      (_%g151410151427%_ _%g151411151430%_))))
                              (_%g151410151427%_ _%g151411151430%_))))
                      (_%g151410151427%_ _%g151411151430%_)))))
          (_%g151409151475%_ _%stx151408%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self151330%_ _%stx151331%_)
        (let* ((_%g151333151350%_
                (lambda (_%g151334151347%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151334151347%_))))
               (_%g151332151404%_
                (lambda (_%g151334151353%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151334151353%_))
                      (let ((_%e151337151355%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151334151353%_))))
                        (let ((_%hd151338151358%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151337151355%_)))
                              (_%tl151339151360%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151337151355%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151339151360%_))
                              (let ((_%e151340151363%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151339151360%_))))
                                (let ((_%hd151341151366%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151340151363%_)))
                                      (_%tl151342151368%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151340151363%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151342151368%_))
                                      (let ((_%e151343151371%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151342151368%_))))
                                        (let ((_%hd151344151374%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151343151371%_)))
                                              (_%tl151345151376%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151343151371%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151345151376%_))
                                              ((lambda (_%L151379%_
                                                        _%L151380%_)
                                                 (let ((_%new-expr151401%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self151330%_
                                                           _%L151379%_)))
                                                       (_%new-xid151402%_
                                                        (let ((_%$e151397%_
                                                               (let ((__tmp151854
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub151395%_)
                                (let ((__tmp151855 (car _%sub151395%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L151380%_
                                   __tmp151855))))
                             (__tmp151853
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self151330%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp151854 __tmp151853))))
                  (if _%$e151397%_ (cdr _%$e151397%_) _%L151380%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp151856
                                                          (cons '%#set!
                                                                (cons _%new-xid151402%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr151401%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp151856
                                                      _%stx151331%_))))
                                               _%hd151344151374%_
                                               _%hd151341151366%_)
                                              (_%g151333151350%_
                                               _%g151334151353%_))))
                                      (_%g151333151350%_ _%g151334151353%_))))
                              (_%g151333151350%_ _%g151334151353%_))))
                      (_%g151333151350%_ _%g151334151353%_)))))
          (_%g151332151404%_ _%stx151331%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self151276%_ _%stx151277%_)
        (let* ((_%g151279151292%_
                (lambda (_%g151280151289%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151280151289%_))))
               (_%g151278151327%_
                (lambda (_%g151280151295%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151280151295%_))
                      (let ((_%e151282151297%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151280151295%_))))
                        (let ((_%hd151283151300%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151282151297%_)))
                              (_%tl151284151302%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151282151297%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151284151302%_))
                              (let ((_%e151285151305%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151284151302%_))))
                                (let ((_%hd151286151308%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151285151305%_)))
                                      (_%tl151287151310%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151285151305%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl151287151310%_))
                                      ((lambda (_%L151313%_)
                                         (let* ((_%eid151325%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L151313%_)))
                                                (__tmp151857
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self151276%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp151857
                                            _%eid151325%_
                                            1+
                                            '0)))
                                       _%hd151286151308%_)
                                      (_%g151279151292%_ _%g151280151295%_))))
                              (_%g151279151292%_ _%g151280151295%_))))
                      (_%g151279151292%_ _%g151280151295%_)))))
          (_%g151278151327%_ _%stx151277%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self151206%_ _%stx151207%_)
        (let* ((_%g151209151226%_
                (lambda (_%g151210151223%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151210151223%_))))
               (_%g151208151273%_
                (lambda (_%g151210151229%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151210151229%_))
                      (let ((_%e151213151231%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151210151229%_))))
                        (let ((_%hd151214151234%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151213151231%_)))
                              (_%tl151215151236%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151213151231%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151215151236%_))
                              (let ((_%e151216151239%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151215151236%_))))
                                (let ((_%hd151217151242%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151216151239%_)))
                                      (_%tl151218151244%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151216151239%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151218151244%_))
                                      (let ((_%e151219151247%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151218151244%_))))
                                        (let ((_%hd151220151250%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151219151247%_)))
                                              (_%tl151221151252%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151219151247%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151221151252%_))
                                              ((lambda (_%L151255%_
                                                        _%L151256%_)
                                                 (let ((_%eid151271%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L151256%_))))
                                                   (let ((__tmp151858
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self151206%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp151858
                                                      _%eid151271%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self151206%_
                                                      _%L151255%_))))
                                               _%hd151220151250%_
                                               _%hd151217151242%_)
                                              (_%g151209151226%_
                                               _%g151210151229%_))))
                                      (_%g151209151226%_ _%g151210151229%_))))
                              (_%g151209151226%_ _%g151210151229%_))))
                      (_%g151209151226%_ _%g151210151229%_)))))
          (_%g151208151273%_ _%stx151207%_))))
    (define gxc#find-body%
      (lambda (_%self151119%_ _%stx151120%_)
        (let* ((_%g151122151141%_
                (lambda (_%g151123151138%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151123151138%_))))
               (_%g151121151203%_
                (lambda (_%g151123151144%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151123151144%_))
                      (let ((_%e151125151146%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151123151144%_))))
                        (let ((_%hd151126151149%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151125151146%_)))
                              (_%tl151127151151%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151125151146%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl151127151151%_))
                              (let ((_g151859_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl151127151151%_
                                        '0))))
                                (begin
                                  (let ((_g151860_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g151859_)
                                               (##vector-length _g151859_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g151860_ 2)))
                                        (error "Context expects 2 values"
                                               _g151860_)))
                                  (let ((_%target151128151154%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g151859_ 0)))
                                        (_%tl151130151156%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g151859_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl151130151156%_))
                                        (letrec ((_%loop151131151159%_
                                                  (lambda (_%hd151129151162%_
                                                           _%expr151135151164%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd151129151162%_))
                                                        (let ((_%e151132151167%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd151129151162%_))))
                  (let ((_%lp-hd151133151170%_
                         (let ()
                           (declare (not safe))
                           (##car _%e151132151167%_)))
                        (_%lp-tl151134151172%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e151132151167%_))))
                    (_%loop151131151159%_
                     _%lp-tl151134151172%_
                     (cons _%lp-hd151133151170%_ _%expr151135151164%_))))
                (let ((_%expr151136151175%_ (reverse _%expr151135151164%_)))
                  ((lambda (_%L151178%_)
                     (let ((__tmp151863
                            (lambda (_%g151191151193%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self151119%_
                                 _%g151191151193%_))))
                           (__tmp151861
                            (let ((__tmp151862
                                   (lambda (_%g151195151198%_
                                            _%g151196151200%_)
                                     (cons _%g151195151198%_
                                           _%g151196151200%_))))
                              (declare (not safe))
                              (__foldr1 __tmp151862 '() _%L151178%_))))
                       (declare (not safe))
                       (__ormap1 __tmp151863 __tmp151861)))
                   _%expr151136151175%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop151131151159%_
                                           _%target151128151154%_
                                           '()))
                                        (_%g151122151141%_
                                         _%g151123151144%_)))))
                              (_%g151122151141%_ _%g151123151144%_))))
                      (_%g151122151141%_ _%g151123151144%_)))))
          (_%g151121151203%_ _%stx151120%_))))
    (define gxc#find-let-values%
      (lambda (_%self150969%_ _%stx150970%_)
        (let* ((_%g150972151007%_
                (lambda (_%g150973151004%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150973151004%_))))
               (_%g150971151116%_
                (lambda (_%g150973151010%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150973151010%_))
                      (let ((_%e150977151012%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150973151010%_))))
                        (let ((_%hd150978151015%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150977151012%_)))
                              (_%tl150979151017%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150977151012%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150979151017%_))
                              (let ((_%e150980151020%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150979151017%_))))
                                (let ((_%hd150981151023%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150980151020%_)))
                                      (_%tl150982151025%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150980151020%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd150981151023%_))
                                      (let ((_g151864_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd150981151023%_
                                                '0))))
                                        (begin
                                          (let ((_g151865_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g151864_)
                                                       (##vector-length
                                                        _g151864_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g151865_ 2)))
                                                (error "Context expects 2 values"
                                                       _g151865_)))
                                          (let ((_%target150983151028%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g151864_ 0)))
                                                (_%tl150985151030%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g151864_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl150985151030%_))
                                                (letrec ((_%loop150986151033%_
                                                          (lambda (_%hd150984151036%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr150990151038%_
                           _%bind150991151040%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd150984151036%_))
                        (let ((_%e150987151043%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd150984151036%_))))
                          (let ((_%lp-hd150988151046%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e150987151043%_)))
                                (_%lp-tl150989151048%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e150987151043%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd150988151046%_))
                                (let ((_%e150997151051%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd150988151046%_))))
                                  (let ((_%hd150998151054%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e150997151051%_)))
                                        (_%tl150999151056%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e150997151051%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl150999151056%_))
                                        (let ((_%e151000151059%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl150999151056%_))))
                                          (let ((_%hd151001151062%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e151000151059%_)))
                                                (_%tl151002151064%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e151000151059%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl151002151064%_))
                                                (_%loop150986151033%_
                                                 _%lp-tl150989151048%_
                                                 (cons _%hd151001151062%_
                                                       _%expr150990151038%_)
                                                 (cons _%hd150998151054%_
                                                       _%bind150991151040%_))
                                                (_%g150972151007%_
                                                 _%g150973151010%_))))
                                        (_%g150972151007%_
                                         _%g150973151010%_))))
                                (_%g150972151007%_ _%g150973151010%_))))
                        (let ((_%expr150992151067%_
                               (reverse _%expr150990151038%_))
                              (_%bind150993151069%_
                               (reverse _%bind150991151040%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150982151025%_))
                              (let ((_%e150994151072%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150982151025%_))))
                                (let ((_%hd150995151075%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150994151072%_)))
                                      (_%tl150996151077%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150994151072%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl150996151077%_))
                                      ((lambda (_%L151080%_
                                                _%L151081%_
                                                _%L151082%_)
                                         (let ((_%$e151113%_
                                                (let ((__tmp151868
                                                       (lambda (_%g151101151103%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self150969%_
                                                            _%g151101151103%_))))
                                                      (__tmp151866
                                                       (let ((__tmp151867
                                                              (lambda (_%g151105151108%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g151106151110%_)
                        (cons _%g151105151108%_ _%g151106151110%_))))
                 (declare (not safe))
                 (__foldr1 __tmp151867 '() _%L151081%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp151868
                                                   __tmp151866))))
                                           (if _%$e151113%_
                                               _%$e151113%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self150969%_
                                                  _%L151080%_)))))
                                       _%hd150995151075%_
                                       _%expr150992151067%_
                                       _%bind150993151069%_)
                                      (_%g150972151007%_ _%g150973151010%_))))
                              (_%g150972151007%_ _%g150973151010%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop150986151033%_
                                                   _%target150983151028%_
                                                   '()
                                                   '()))
                                                (_%g150972151007%_
                                                 _%g150973151010%_)))))
                                      (_%g150972151007%_ _%g150973151010%_))))
                              (_%g150972151007%_ _%g150973151010%_))))
                      (_%g150972151007%_ _%g150973151010%_)))))
          (_%g150971151116%_ _%stx150970%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self150913%_ _%stx150914%_)
        (let* ((_%g150916150929%_
                (lambda (_%g150917150926%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150917150926%_))))
               (_%g150915150966%_
                (lambda (_%g150917150932%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150917150932%_))
                      (let ((_%e150919150934%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150917150932%_))))
                        (let ((_%hd150920150937%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150919150934%_)))
                              (_%tl150921150939%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150919150934%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150921150939%_))
                              (let ((_%e150922150942%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150921150939%_))))
                                (let ((_%hd150923150945%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150922150942%_)))
                                      (_%tl150924150947%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150922150942%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl150924150947%_))
                                      ((lambda (_%L150950%_)
                                         (let ((__tmp151870
                                                (lambda (_%g150961150963%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L150950%_
                                                     _%g150961150963%_))))
                                               (__tmp151869
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self150913%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp151870 __tmp151869)))
                                       _%hd150923150945%_)
                                      (_%g150916150929%_ _%g150917150932%_))))
                              (_%g150916150929%_ _%g150917150932%_))))
                      (_%g150916150929%_ _%g150917150932%_)))))
          (_%g150915150966%_ _%stx150914%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self150838%_ _%stx150839%_)
        (let* ((_%g150841150858%_
                (lambda (_%g150842150855%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150842150855%_))))
               (_%g150840150910%_
                (lambda (_%g150842150861%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150842150861%_))
                      (let ((_%e150845150863%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150842150861%_))))
                        (let ((_%hd150846150866%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150845150863%_)))
                              (_%tl150847150868%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150845150863%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150847150868%_))
                              (let ((_%e150848150871%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150847150868%_))))
                                (let ((_%hd150849150874%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150848150871%_)))
                                      (_%tl150850150876%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150848150871%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150850150876%_))
                                      (let ((_%e150851150879%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150850150876%_))))
                                        (let ((_%hd150852150882%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150851150879%_)))
                                              (_%tl150853150884%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150851150879%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150853150884%_))
                                              ((lambda (_%L150887%_
                                                        _%L150888%_)
                                                 (let ((_%$e150907%_
                                                        (let ((__tmp151872
                                                               (lambda (_%g150902150904%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L150888%_
                            _%g150902150904%_))))
                      (__tmp151871
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self150838%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp151872 __tmp151871))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e150907%_
                                                       _%$e150907%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self150838%_
                                                          _%L150887%_)))))
                                               _%hd150852150882%_
                                               _%hd150849150874%_)
                                              (_%g150841150858%_
                                               _%g150842150861%_))))
                                      (_%g150841150858%_ _%g150842150861%_))))
                              (_%g150841150858%_ _%g150842150861%_))))
                      (_%g150841150858%_ _%g150842150861%_)))))
          (_%g150840150910%_ _%stx150839%_))))))
