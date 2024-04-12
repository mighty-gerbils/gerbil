(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1712949844)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp151824 (list gxc#::void::t))
            (__tmp151823 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp151824
         '()
         __tmp151823
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args151810%_
        (apply make-instance gxc#::collect-mutators::t _%$args151810%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp151825
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
        (__make-promise __tmp151825)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx151802%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self151805%_
                (let ((__obj151813
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj151813))
               (__tmp151826
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self151805%_ _%stx151802%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp151826
           gxc#current-compile-method
           _%self151805%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp151828 (list gxc#::basic-xform-expression::t))
            (__tmp151827 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp151828
         '(id new-id)
         __tmp151827
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args151799%_
        (apply make-instance gxc#::expression-subst::t _%$args151799%_)))
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
      (let ((__tmp151829
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
        (__make-promise __tmp151829)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords151769%_
               _%id151765151770%_
               _%new-id151766151772%_
               _%stx151774%_)
        (let* ((_%id151777%_
                (if (eq? _%id151765151770%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id151765151770%_))
               (_%new-id151779%_
                (if (eq? _%new-id151766151772%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id151766151772%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self151781%_
                  (let ((__obj151815
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151815
                       _%id151777%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151815
                       _%new-id151779%_
                       '2
                       '#f
                       '#f))
                    __obj151815))
                 (__tmp151830
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self151781%_ _%stx151774%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151830
             gxc#current-compile-method
             _%self151781%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords151788%_ . _%args151789%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords151788%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords151788%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords151788%_
                  'new-id:
                  absent-value))
               _%args151789%_)))
    (define gxc#apply-expression-subst
      (lambda _%args151767151795%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args151767151795%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp151832 (list gxc#::basic-xform-expression::t))
            (__tmp151831 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp151832
         '(subst)
         __tmp151831
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args151761%_
        (apply make-instance gxc#::expression-subst*::t _%$args151761%_)))
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
      (let ((__tmp151833
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
        (__make-promise __tmp151833)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords151735%_ _%subst151732151736%_ _%stx151738%_)
        (let ((_%subst151741%_
               (if (eq? _%subst151732151736%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst151732151736%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self151743%_
                  (let ((__obj151817
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151817
                       _%subst151741%_
                       '1
                       '#f
                       '#f))
                    __obj151817))
                 (__tmp151834
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self151743%_ _%stx151738%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151834
             gxc#current-compile-method
             _%self151743%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords151750%_ . _%args151751%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords151750%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords151750%_
                  'subst:
                  absent-value))
               _%args151751%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args151733151757%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args151733151757%_)))
    (define gxc#::find-expression::t
      (let ((__tmp151835 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp151835
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args151728%_
        (apply make-instance gxc#::find-expression::t _%$args151728%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp151836
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
        (__make-promise __tmp151836)))
    (define gxc#::find-var-refs::t
      (let ((__tmp151838 (list gxc#::find-expression::t))
            (__tmp151837 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp151838
         '(ids)
         __tmp151837
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args151724%_
        (apply make-instance gxc#::find-var-refs::t _%$args151724%_)))
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
      (let ((__tmp151839
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
        (__make-promise __tmp151839)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords151698%_ _%ids151695151699%_ _%stx151701%_)
        (let ((_%ids151704%_
               (if (eq? _%ids151695151699%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids151695151699%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self151706%_
                  (let ((__obj151820
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151820
                       _%ids151704%_
                       '1
                       '#f
                       '#f))
                    __obj151820))
                 (__tmp151840
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self151706%_ _%stx151701%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151840
             gxc#current-compile-method
             _%self151706%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords151713%_ . _%args151714%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords151713%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords151713%_ 'ids: absent-value))
               _%args151714%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args151696151720%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args151696151720%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp151842 (list gxc#::collect-expression-refs::t))
            (__tmp151841 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp151842
         '()
         __tmp151841
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args151691%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args151691%_)))
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
      (let ((__tmp151843
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
        (__make-promise __tmp151843)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords151665%_ _%table151662151666%_ _%stx151668%_)
        (let ((_%table151671%_
               (if (eq? _%table151662151666%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table151662151666%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self151673%_
                  (let ((__obj151822
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj151822
                       _%table151671%_
                       '1
                       '#f
                       '#f))
                    __obj151822))
                 (__tmp151844
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self151673%_ _%stx151668%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp151844
             gxc#current-compile-method
             _%self151673%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords151680%_ . _%args151681%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords151680%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords151680%_
                  'table:
                  absent-value))
               _%args151681%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args151663151687%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args151663151687%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self151591%_ _%stx151592%_)
        (let* ((_%g151594151611%_
                (lambda (_%g151595151608%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151595151608%_))))
               (_%g151593151658%_
                (lambda (_%g151595151614%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151595151614%_))
                      (let ((_%e151598151616%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151595151614%_))))
                        (let ((_%hd151599151619%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151598151616%_)))
                              (_%tl151600151621%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151598151616%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151600151621%_))
                              (let ((_%e151601151624%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151600151621%_))))
                                (let ((_%hd151602151627%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151601151624%_)))
                                      (_%tl151603151629%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151601151624%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151603151629%_))
                                      (let ((_%e151604151632%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151603151629%_))))
                                        (let ((_%hd151605151635%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151604151632%_)))
                                              (_%tl151606151637%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151604151632%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151606151637%_))
                                              ((lambda (_%L151640%_
                                                        _%L151641%_)
                                                 (let ((_%sym151656%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L151641%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym151656%_))
                                                   (let ((__tmp151845
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp151845
                                                      _%sym151656%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self151591%_
                                                      _%L151640%_))))
                                               _%hd151605151635%_
                                               _%hd151602151627%_)
                                              (_%g151594151611%_
                                               _%g151595151614%_))))
                                      (_%g151594151611%_ _%g151595151614%_))))
                              (_%g151594151611%_ _%g151595151614%_))))
                      (_%g151594151611%_ _%g151595151614%_)))))
          (_%g151593151658%_ _%stx151592%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self151539%_ _%stx151540%_)
        (let* ((_%g151542151555%_
                (lambda (_%g151543151552%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151543151552%_))))
               (_%g151541151588%_
                (lambda (_%g151543151558%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151543151558%_))
                      (let ((_%e151545151560%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151543151558%_))))
                        (let ((_%hd151546151563%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151545151560%_)))
                              (_%tl151547151565%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151545151560%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151547151565%_))
                              (let ((_%e151548151568%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151547151565%_))))
                                (let ((_%hd151549151571%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151548151568%_)))
                                      (_%tl151550151573%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151548151568%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl151550151573%_))
                                      ((lambda (_%L151576%_)
                                         (if (let ((__tmp151846
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self151539%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L151576%_
                                                __tmp151846))
                                             (let ((__tmp151847
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self151539%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp151847
                                                _%stx151540%_))
                                             _%stx151540%_))
                                       _%hd151549151571%_)
                                      (_%g151542151555%_ _%g151543151558%_))))
                              (_%g151542151555%_ _%g151543151558%_))))
                      (_%g151542151555%_ _%g151543151558%_)))))
          (_%g151541151588%_ _%stx151540%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self151479%_ _%stx151480%_)
        (let* ((_%g151482151495%_
                (lambda (_%g151483151492%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151483151492%_))))
               (_%g151481151536%_
                (lambda (_%g151483151498%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151483151498%_))
                      (let ((_%e151485151500%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151483151498%_))))
                        (let ((_%hd151486151503%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151485151500%_)))
                              (_%tl151487151505%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151485151500%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151487151505%_))
                              (let ((_%e151488151508%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151487151505%_))))
                                (let ((_%hd151489151511%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151488151508%_)))
                                      (_%tl151490151513%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151488151508%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl151490151513%_))
                                      ((lambda (_%L151516%_)
                                         (let ((_%$e151530%_
                                                (let ((__tmp151849
                                                       (lambda (_%sub151528%_)
                                                         (let ((__tmp151850
                                                                (car _%sub151528%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L151516%_
                                                            __tmp151850))))
                                                      (__tmp151848
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self151479%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp151849
                                                          __tmp151848))))
                                           (if _%$e151530%_
                                               ((lambda (_%sub151533%_)
                                                  (let ((__tmp151851
                                                         (cons '%#ref
                                                               (cons (cdr _%sub151533%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp151851
                                                     _%stx151480%_)))
                                                _%$e151530%_)
                                               _%stx151480%_)))
                                       _%hd151489151511%_)
                                      (_%g151482151495%_ _%g151483151498%_))))
                              (_%g151482151495%_ _%g151483151498%_))))
                      (_%g151482151495%_ _%g151483151498%_)))))
          (_%g151481151536%_ _%stx151480%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self151408%_ _%stx151409%_)
        (let* ((_%g151411151428%_
                (lambda (_%g151412151425%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151412151425%_))))
               (_%g151410151476%_
                (lambda (_%g151412151431%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151412151431%_))
                      (let ((_%e151415151433%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151412151431%_))))
                        (let ((_%hd151416151436%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151415151433%_)))
                              (_%tl151417151438%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151415151433%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151417151438%_))
                              (let ((_%e151418151441%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151417151438%_))))
                                (let ((_%hd151419151444%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151418151441%_)))
                                      (_%tl151420151446%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151418151441%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151420151446%_))
                                      (let ((_%e151421151449%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151420151446%_))))
                                        (let ((_%hd151422151452%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151421151449%_)))
                                              (_%tl151423151454%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151421151449%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151423151454%_))
                                              ((lambda (_%L151457%_
                                                        _%L151458%_)
                                                 (let ((_%new-expr151473%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self151408%_
                                                           _%L151457%_)))
                                                       (_%new-xid151474%_
                                                        (if (let ((__tmp151852
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self151408%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L151458%_ __tmp151852))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self151408%_ 'new-id))
                    _%L151458%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp151853
                                                          (cons '%#set!
                                                                (cons _%new-xid151474%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr151473%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp151853
                                                      _%stx151409%_))))
                                               _%hd151422151452%_
                                               _%hd151419151444%_)
                                              (_%g151411151428%_
                                               _%g151412151431%_))))
                                      (_%g151411151428%_ _%g151412151431%_))))
                              (_%g151411151428%_ _%g151412151431%_))))
                      (_%g151411151428%_ _%g151412151431%_)))))
          (_%g151410151476%_ _%stx151409%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self151331%_ _%stx151332%_)
        (let* ((_%g151334151351%_
                (lambda (_%g151335151348%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151335151348%_))))
               (_%g151333151405%_
                (lambda (_%g151335151354%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151335151354%_))
                      (let ((_%e151338151356%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151335151354%_))))
                        (let ((_%hd151339151359%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151338151356%_)))
                              (_%tl151340151361%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151338151356%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151340151361%_))
                              (let ((_%e151341151364%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151340151361%_))))
                                (let ((_%hd151342151367%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151341151364%_)))
                                      (_%tl151343151369%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151341151364%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151343151369%_))
                                      (let ((_%e151344151372%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151343151369%_))))
                                        (let ((_%hd151345151375%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151344151372%_)))
                                              (_%tl151346151377%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151344151372%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151346151377%_))
                                              ((lambda (_%L151380%_
                                                        _%L151381%_)
                                                 (let ((_%new-expr151402%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self151331%_
                                                           _%L151380%_)))
                                                       (_%new-xid151403%_
                                                        (let ((_%$e151398%_
                                                               (let ((__tmp151855
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub151396%_)
                                (let ((__tmp151856 (car _%sub151396%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L151381%_
                                   __tmp151856))))
                             (__tmp151854
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self151331%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp151855 __tmp151854))))
                  (if _%$e151398%_ (cdr _%$e151398%_) _%L151381%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp151857
                                                          (cons '%#set!
                                                                (cons _%new-xid151403%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr151402%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp151857
                                                      _%stx151332%_))))
                                               _%hd151345151375%_
                                               _%hd151342151367%_)
                                              (_%g151334151351%_
                                               _%g151335151354%_))))
                                      (_%g151334151351%_ _%g151335151354%_))))
                              (_%g151334151351%_ _%g151335151354%_))))
                      (_%g151334151351%_ _%g151335151354%_)))))
          (_%g151333151405%_ _%stx151332%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self151277%_ _%stx151278%_)
        (let* ((_%g151280151293%_
                (lambda (_%g151281151290%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151281151290%_))))
               (_%g151279151328%_
                (lambda (_%g151281151296%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151281151296%_))
                      (let ((_%e151283151298%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151281151296%_))))
                        (let ((_%hd151284151301%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151283151298%_)))
                              (_%tl151285151303%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151283151298%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151285151303%_))
                              (let ((_%e151286151306%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151285151303%_))))
                                (let ((_%hd151287151309%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151286151306%_)))
                                      (_%tl151288151311%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151286151306%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl151288151311%_))
                                      ((lambda (_%L151314%_)
                                         (let* ((_%eid151326%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L151314%_)))
                                                (__tmp151858
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self151277%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp151858
                                            _%eid151326%_
                                            1+
                                            '0)))
                                       _%hd151287151309%_)
                                      (_%g151280151293%_ _%g151281151296%_))))
                              (_%g151280151293%_ _%g151281151296%_))))
                      (_%g151280151293%_ _%g151281151296%_)))))
          (_%g151279151328%_ _%stx151278%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self151207%_ _%stx151208%_)
        (let* ((_%g151210151227%_
                (lambda (_%g151211151224%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151211151224%_))))
               (_%g151209151274%_
                (lambda (_%g151211151230%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151211151230%_))
                      (let ((_%e151214151232%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151211151230%_))))
                        (let ((_%hd151215151235%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151214151232%_)))
                              (_%tl151216151237%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151214151232%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151216151237%_))
                              (let ((_%e151217151240%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151216151237%_))))
                                (let ((_%hd151218151243%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151217151240%_)))
                                      (_%tl151219151245%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151217151240%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151219151245%_))
                                      (let ((_%e151220151248%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151219151245%_))))
                                        (let ((_%hd151221151251%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151220151248%_)))
                                              (_%tl151222151253%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151220151248%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151222151253%_))
                                              ((lambda (_%L151256%_
                                                        _%L151257%_)
                                                 (let ((_%eid151272%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L151257%_))))
                                                   (let ((__tmp151859
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self151207%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp151859
                                                      _%eid151272%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self151207%_
                                                      _%L151256%_))))
                                               _%hd151221151251%_
                                               _%hd151218151243%_)
                                              (_%g151210151227%_
                                               _%g151211151230%_))))
                                      (_%g151210151227%_ _%g151211151230%_))))
                              (_%g151210151227%_ _%g151211151230%_))))
                      (_%g151210151227%_ _%g151211151230%_)))))
          (_%g151209151274%_ _%stx151208%_))))
    (define gxc#find-body%
      (lambda (_%self151120%_ _%stx151121%_)
        (let* ((_%g151123151142%_
                (lambda (_%g151124151139%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151124151139%_))))
               (_%g151122151204%_
                (lambda (_%g151124151145%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151124151145%_))
                      (let ((_%e151126151147%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151124151145%_))))
                        (let ((_%hd151127151150%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151126151147%_)))
                              (_%tl151128151152%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151126151147%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl151128151152%_))
                              (let ((_g151860_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl151128151152%_
                                        '0))))
                                (begin
                                  (let ((_g151861_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g151860_)
                                               (##vector-length _g151860_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g151861_ 2)))
                                        (error "Context expects 2 values"
                                               _g151861_)))
                                  (let ((_%target151129151155%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g151860_ 0)))
                                        (_%tl151131151157%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g151860_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl151131151157%_))
                                        (letrec ((_%loop151132151160%_
                                                  (lambda (_%hd151130151163%_
                                                           _%expr151136151165%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd151130151163%_))
                                                        (let ((_%e151133151168%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd151130151163%_))))
                  (let ((_%lp-hd151134151171%_
                         (let ()
                           (declare (not safe))
                           (##car _%e151133151168%_)))
                        (_%lp-tl151135151173%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e151133151168%_))))
                    (_%loop151132151160%_
                     _%lp-tl151135151173%_
                     (cons _%lp-hd151134151171%_ _%expr151136151165%_))))
                (let ((_%expr151137151176%_ (reverse _%expr151136151165%_)))
                  ((lambda (_%L151179%_)
                     (let ((__tmp151864
                            (lambda (_%g151192151194%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self151120%_
                                 _%g151192151194%_))))
                           (__tmp151862
                            (let ((__tmp151863
                                   (lambda (_%g151196151199%_
                                            _%g151197151201%_)
                                     (cons _%g151196151199%_
                                           _%g151197151201%_))))
                              (declare (not safe))
                              (__foldr1 __tmp151863 '() _%L151179%_))))
                       (declare (not safe))
                       (__ormap1 __tmp151864 __tmp151862)))
                   _%expr151137151176%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop151132151160%_
                                           _%target151129151155%_
                                           '()))
                                        (_%g151123151142%_
                                         _%g151124151145%_)))))
                              (_%g151123151142%_ _%g151124151145%_))))
                      (_%g151123151142%_ _%g151124151145%_)))))
          (_%g151122151204%_ _%stx151121%_))))
    (define gxc#find-let-values%
      (lambda (_%self150970%_ _%stx150971%_)
        (let* ((_%g150973151008%_
                (lambda (_%g150974151005%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150974151005%_))))
               (_%g150972151117%_
                (lambda (_%g150974151011%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150974151011%_))
                      (let ((_%e150978151013%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150974151011%_))))
                        (let ((_%hd150979151016%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150978151013%_)))
                              (_%tl150980151018%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150978151013%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150980151018%_))
                              (let ((_%e150981151021%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150980151018%_))))
                                (let ((_%hd150982151024%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150981151021%_)))
                                      (_%tl150983151026%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150981151021%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd150982151024%_))
                                      (let ((_g151865_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd150982151024%_
                                                '0))))
                                        (begin
                                          (let ((_g151866_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g151865_)
                                                       (##vector-length
                                                        _g151865_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g151866_ 2)))
                                                (error "Context expects 2 values"
                                                       _g151866_)))
                                          (let ((_%target150984151029%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g151865_ 0)))
                                                (_%tl150986151031%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g151865_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl150986151031%_))
                                                (letrec ((_%loop150987151034%_
                                                          (lambda (_%hd150985151037%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr150991151039%_
                           _%bind150992151041%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd150985151037%_))
                        (let ((_%e150988151044%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd150985151037%_))))
                          (let ((_%lp-hd150989151047%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e150988151044%_)))
                                (_%lp-tl150990151049%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e150988151044%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd150989151047%_))
                                (let ((_%e150998151052%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd150989151047%_))))
                                  (let ((_%hd150999151055%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e150998151052%_)))
                                        (_%tl151000151057%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e150998151052%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl151000151057%_))
                                        (let ((_%e151001151060%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl151000151057%_))))
                                          (let ((_%hd151002151063%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e151001151060%_)))
                                                (_%tl151003151065%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e151001151060%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl151003151065%_))
                                                (_%loop150987151034%_
                                                 _%lp-tl150990151049%_
                                                 (cons _%hd151002151063%_
                                                       _%expr150991151039%_)
                                                 (cons _%hd150999151055%_
                                                       _%bind150992151041%_))
                                                (_%g150973151008%_
                                                 _%g150974151011%_))))
                                        (_%g150973151008%_
                                         _%g150974151011%_))))
                                (_%g150973151008%_ _%g150974151011%_))))
                        (let ((_%expr150993151068%_
                               (reverse _%expr150991151039%_))
                              (_%bind150994151070%_
                               (reverse _%bind150992151041%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150983151026%_))
                              (let ((_%e150995151073%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150983151026%_))))
                                (let ((_%hd150996151076%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150995151073%_)))
                                      (_%tl150997151078%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150995151073%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl150997151078%_))
                                      ((lambda (_%L151081%_
                                                _%L151082%_
                                                _%L151083%_)
                                         (let ((_%$e151114%_
                                                (let ((__tmp151869
                                                       (lambda (_%g151102151104%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self150970%_
                                                            _%g151102151104%_))))
                                                      (__tmp151867
                                                       (let ((__tmp151868
                                                              (lambda (_%g151106151109%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g151107151111%_)
                        (cons _%g151106151109%_ _%g151107151111%_))))
                 (declare (not safe))
                 (__foldr1 __tmp151868 '() _%L151082%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp151869
                                                   __tmp151867))))
                                           (if _%$e151114%_
                                               _%$e151114%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self150970%_
                                                  _%L151081%_)))))
                                       _%hd150996151076%_
                                       _%expr150993151068%_
                                       _%bind150994151070%_)
                                      (_%g150973151008%_ _%g150974151011%_))))
                              (_%g150973151008%_ _%g150974151011%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop150987151034%_
                                                   _%target150984151029%_
                                                   '()
                                                   '()))
                                                (_%g150973151008%_
                                                 _%g150974151011%_)))))
                                      (_%g150973151008%_ _%g150974151011%_))))
                              (_%g150973151008%_ _%g150974151011%_))))
                      (_%g150973151008%_ _%g150974151011%_)))))
          (_%g150972151117%_ _%stx150971%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self150914%_ _%stx150915%_)
        (let* ((_%g150917150930%_
                (lambda (_%g150918150927%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150918150927%_))))
               (_%g150916150967%_
                (lambda (_%g150918150933%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150918150933%_))
                      (let ((_%e150920150935%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150918150933%_))))
                        (let ((_%hd150921150938%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150920150935%_)))
                              (_%tl150922150940%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150920150935%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150922150940%_))
                              (let ((_%e150923150943%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150922150940%_))))
                                (let ((_%hd150924150946%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150923150943%_)))
                                      (_%tl150925150948%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150923150943%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl150925150948%_))
                                      ((lambda (_%L150951%_)
                                         (let ((__tmp151871
                                                (lambda (_%g150962150964%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L150951%_
                                                     _%g150962150964%_))))
                                               (__tmp151870
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self150914%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp151871 __tmp151870)))
                                       _%hd150924150946%_)
                                      (_%g150917150930%_ _%g150918150933%_))))
                              (_%g150917150930%_ _%g150918150933%_))))
                      (_%g150917150930%_ _%g150918150933%_)))))
          (_%g150916150967%_ _%stx150915%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self150839%_ _%stx150840%_)
        (let* ((_%g150842150859%_
                (lambda (_%g150843150856%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150843150856%_))))
               (_%g150841150911%_
                (lambda (_%g150843150862%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150843150862%_))
                      (let ((_%e150846150864%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150843150862%_))))
                        (let ((_%hd150847150867%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150846150864%_)))
                              (_%tl150848150869%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150846150864%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150848150869%_))
                              (let ((_%e150849150872%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150848150869%_))))
                                (let ((_%hd150850150875%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150849150872%_)))
                                      (_%tl150851150877%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150849150872%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150851150877%_))
                                      (let ((_%e150852150880%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150851150877%_))))
                                        (let ((_%hd150853150883%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150852150880%_)))
                                              (_%tl150854150885%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150852150880%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150854150885%_))
                                              ((lambda (_%L150888%_
                                                        _%L150889%_)
                                                 (let ((_%$e150908%_
                                                        (let ((__tmp151873
                                                               (lambda (_%g150903150905%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L150889%_
                            _%g150903150905%_))))
                      (__tmp151872
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self150839%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp151873 __tmp151872))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e150908%_
                                                       _%$e150908%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self150839%_
                                                          _%L150888%_)))))
                                               _%hd150853150883%_
                                               _%hd150850150875%_)
                                              (_%g150842150859%_
                                               _%g150843150862%_))))
                                      (_%g150842150859%_ _%g150843150862%_))))
                              (_%g150842150859%_ _%g150843150862%_))))
                      (_%g150842150859%_ _%g150843150862%_)))))
          (_%g150841150911%_ _%stx150840%_))))))
