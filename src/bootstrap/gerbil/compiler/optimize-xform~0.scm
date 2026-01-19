(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1768863414)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp165851 (list gxc#::void::t))
            (__tmp165850 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp165851
         '()
         __tmp165850
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args165837%_
        (apply make-instance gxc#::collect-mutators::t _%$args165837%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp165852
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
        (__make-atomic-promise __tmp165852)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx165829%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self165832%_
                (let ((__obj165840
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj165840))
               (__tmp165853
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self165832%_ _%stx165829%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp165853
           gxc#current-compile-method
           _%self165832%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp165855 (list gxc#::basic-xform-expression::t))
            (__tmp165854 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp165855
         '(id new-id)
         __tmp165854
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args165826%_
        (apply make-instance gxc#::expression-subst::t _%$args165826%_)))
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
      (let ((__tmp165856
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
        (__make-atomic-promise __tmp165856)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords165796%_
               _%id165792165797%_
               _%new-id165793165799%_
               _%stx165801%_)
        (let* ((_%id165804%_
                (if (eq? _%id165792165797%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id165792165797%_))
               (_%new-id165806%_
                (if (eq? _%new-id165793165799%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id165793165799%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self165808%_
                  (let ((__obj165842
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj165842
                       _%id165804%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj165842
                       _%new-id165806%_
                       '2
                       '#f
                       '#f))
                    __obj165842))
                 (__tmp165857
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self165808%_ _%stx165801%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp165857
             gxc#current-compile-method
             _%self165808%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords165815%_ . _%args165816%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords165815%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords165815%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords165815%_
                  'new-id:
                  absent-value))
               _%args165816%_)))
    (define gxc#apply-expression-subst
      (lambda _%args165794165822%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args165794165822%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp165859 (list gxc#::basic-xform-expression::t))
            (__tmp165858 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp165859
         '(subst)
         __tmp165858
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args165788%_
        (apply make-instance gxc#::expression-subst*::t _%$args165788%_)))
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
      (let ((__tmp165860
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
        (__make-atomic-promise __tmp165860)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords165762%_ _%subst165759165763%_ _%stx165765%_)
        (let ((_%subst165768%_
               (if (eq? _%subst165759165763%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst165759165763%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self165770%_
                  (let ((__obj165844
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj165844
                       _%subst165768%_
                       '1
                       '#f
                       '#f))
                    __obj165844))
                 (__tmp165861
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self165770%_ _%stx165765%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp165861
             gxc#current-compile-method
             _%self165770%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords165777%_ . _%args165778%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords165777%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords165777%_
                  'subst:
                  absent-value))
               _%args165778%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args165760165784%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args165760165784%_)))
    (define gxc#::find-expression::t
      (let ((__tmp165862 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp165862
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args165755%_
        (apply make-instance gxc#::find-expression::t _%$args165755%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp165863
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
        (__make-atomic-promise __tmp165863)))
    (define gxc#::find-var-refs::t
      (let ((__tmp165865 (list gxc#::find-expression::t))
            (__tmp165864 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp165865
         '(ids)
         __tmp165864
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args165751%_
        (apply make-instance gxc#::find-var-refs::t _%$args165751%_)))
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
      (let ((__tmp165866
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
        (__make-atomic-promise __tmp165866)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords165725%_ _%ids165722165726%_ _%stx165728%_)
        (let ((_%ids165731%_
               (if (eq? _%ids165722165726%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids165722165726%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self165733%_
                  (let ((__obj165847
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj165847
                       _%ids165731%_
                       '1
                       '#f
                       '#f))
                    __obj165847))
                 (__tmp165867
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self165733%_ _%stx165728%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp165867
             gxc#current-compile-method
             _%self165733%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords165740%_ . _%args165741%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords165740%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords165740%_ 'ids: absent-value))
               _%args165741%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args165723165747%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args165723165747%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp165869 (list gxc#::collect-expression-refs::t))
            (__tmp165868 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp165869
         '()
         __tmp165868
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args165718%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args165718%_)))
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
      (let ((__tmp165870
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
        (__make-atomic-promise __tmp165870)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords165692%_ _%table165689165693%_ _%stx165695%_)
        (let ((_%table165698%_
               (if (eq? _%table165689165693%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table165689165693%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self165700%_
                  (let ((__obj165849
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj165849
                       _%table165698%_
                       '1
                       '#f
                       '#f))
                    __obj165849))
                 (__tmp165871
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self165700%_ _%stx165695%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp165871
             gxc#current-compile-method
             _%self165700%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords165707%_ . _%args165708%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords165707%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords165707%_
                  'table:
                  absent-value))
               _%args165708%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args165690165714%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args165690165714%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self165618%_ _%stx165619%_)
        (let* ((_%g165621165638%_
                (lambda (_%g165622165635%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165622165635%_))))
               (_%g165620165685%_
                (lambda (_%g165622165641%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165622165641%_))
                      (let ((_%e165625165643%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165622165641%_))))
                        (let ((_%hd165626165646%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165625165643%_)))
                              (_%tl165627165648%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165625165643%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165627165648%_))
                              (let ((_%e165628165651%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165627165648%_))))
                                (let ((_%hd165629165654%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165628165651%_)))
                                      (_%tl165630165656%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165628165651%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165630165656%_))
                                      (let ((_%e165631165659%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165630165656%_))))
                                        (let ((_%hd165632165662%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165631165659%_)))
                                              (_%tl165633165664%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165631165659%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl165633165664%_))
                                              ((lambda (_%L165667%_
                                                        _%L165668%_)
                                                 (let ((_%sym165683%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L165668%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym165683%_))
                                                   (let ((__tmp165872
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp165872
                                                      _%sym165683%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self165618%_
                                                      _%L165667%_))))
                                               _%hd165632165662%_
                                               _%hd165629165654%_)
                                              (_%g165621165638%_
                                               _%g165622165641%_))))
                                      (_%g165621165638%_ _%g165622165641%_))))
                              (_%g165621165638%_ _%g165622165641%_))))
                      (_%g165621165638%_ _%g165622165641%_)))))
          (_%g165620165685%_ _%stx165619%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self165566%_ _%stx165567%_)
        (let* ((_%g165569165582%_
                (lambda (_%g165570165579%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165570165579%_))))
               (_%g165568165615%_
                (lambda (_%g165570165585%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165570165585%_))
                      (let ((_%e165572165587%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165570165585%_))))
                        (let ((_%hd165573165590%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165572165587%_)))
                              (_%tl165574165592%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165572165587%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165574165592%_))
                              (let ((_%e165575165595%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165574165592%_))))
                                (let ((_%hd165576165598%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165575165595%_)))
                                      (_%tl165577165600%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165575165595%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl165577165600%_))
                                      ((lambda (_%L165603%_)
                                         (if (let ((__tmp165873
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self165566%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L165603%_
                                                __tmp165873))
                                             (let ((__tmp165874
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self165566%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp165874
                                                _%stx165567%_))
                                             _%stx165567%_))
                                       _%hd165576165598%_)
                                      (_%g165569165582%_ _%g165570165585%_))))
                              (_%g165569165582%_ _%g165570165585%_))))
                      (_%g165569165582%_ _%g165570165585%_)))))
          (_%g165568165615%_ _%stx165567%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self165506%_ _%stx165507%_)
        (let* ((_%g165509165522%_
                (lambda (_%g165510165519%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165510165519%_))))
               (_%g165508165563%_
                (lambda (_%g165510165525%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165510165525%_))
                      (let ((_%e165512165527%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165510165525%_))))
                        (let ((_%hd165513165530%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165512165527%_)))
                              (_%tl165514165532%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165512165527%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165514165532%_))
                              (let ((_%e165515165535%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165514165532%_))))
                                (let ((_%hd165516165538%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165515165535%_)))
                                      (_%tl165517165540%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165515165535%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl165517165540%_))
                                      ((lambda (_%L165543%_)
                                         (let ((_%$e165557%_
                                                (let ((__tmp165876
                                                       (lambda (_%sub165555%_)
                                                         (let ((__tmp165877
                                                                (car _%sub165555%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L165543%_
                                                            __tmp165877))))
                                                      (__tmp165875
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self165506%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp165876
                                                          __tmp165875))))
                                           (if _%$e165557%_
                                               ((lambda (_%sub165560%_)
                                                  (let ((__tmp165878
                                                         (cons '%#ref
                                                               (cons (cdr _%sub165560%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp165878
                                                     _%stx165507%_)))
                                                _%$e165557%_)
                                               _%stx165507%_)))
                                       _%hd165516165538%_)
                                      (_%g165509165522%_ _%g165510165525%_))))
                              (_%g165509165522%_ _%g165510165525%_))))
                      (_%g165509165522%_ _%g165510165525%_)))))
          (_%g165508165563%_ _%stx165507%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self165435%_ _%stx165436%_)
        (let* ((_%g165438165455%_
                (lambda (_%g165439165452%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165439165452%_))))
               (_%g165437165503%_
                (lambda (_%g165439165458%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165439165458%_))
                      (let ((_%e165442165460%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165439165458%_))))
                        (let ((_%hd165443165463%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165442165460%_)))
                              (_%tl165444165465%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165442165460%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165444165465%_))
                              (let ((_%e165445165468%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165444165465%_))))
                                (let ((_%hd165446165471%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165445165468%_)))
                                      (_%tl165447165473%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165445165468%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165447165473%_))
                                      (let ((_%e165448165476%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165447165473%_))))
                                        (let ((_%hd165449165479%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165448165476%_)))
                                              (_%tl165450165481%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165448165476%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl165450165481%_))
                                              ((lambda (_%L165484%_
                                                        _%L165485%_)
                                                 (let ((_%new-expr165500%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self165435%_
                                                           _%L165484%_)))
                                                       (_%new-xid165501%_
                                                        (if (let ((__tmp165879
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self165435%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L165485%_ __tmp165879))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self165435%_ 'new-id))
                    _%L165485%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp165880
                                                          (cons '%#set!
                                                                (cons _%new-xid165501%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr165500%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp165880
                                                      _%stx165436%_))))
                                               _%hd165449165479%_
                                               _%hd165446165471%_)
                                              (_%g165438165455%_
                                               _%g165439165458%_))))
                                      (_%g165438165455%_ _%g165439165458%_))))
                              (_%g165438165455%_ _%g165439165458%_))))
                      (_%g165438165455%_ _%g165439165458%_)))))
          (_%g165437165503%_ _%stx165436%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self165358%_ _%stx165359%_)
        (let* ((_%g165361165378%_
                (lambda (_%g165362165375%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165362165375%_))))
               (_%g165360165432%_
                (lambda (_%g165362165381%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165362165381%_))
                      (let ((_%e165365165383%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165362165381%_))))
                        (let ((_%hd165366165386%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165365165383%_)))
                              (_%tl165367165388%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165365165383%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165367165388%_))
                              (let ((_%e165368165391%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165367165388%_))))
                                (let ((_%hd165369165394%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165368165391%_)))
                                      (_%tl165370165396%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165368165391%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165370165396%_))
                                      (let ((_%e165371165399%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165370165396%_))))
                                        (let ((_%hd165372165402%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165371165399%_)))
                                              (_%tl165373165404%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165371165399%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl165373165404%_))
                                              ((lambda (_%L165407%_
                                                        _%L165408%_)
                                                 (let ((_%new-expr165429%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self165358%_
                                                           _%L165407%_)))
                                                       (_%new-xid165430%_
                                                        (let ((_%$e165425%_
                                                               (let ((__tmp165882
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub165423%_)
                                (let ((__tmp165883 (car _%sub165423%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L165408%_
                                   __tmp165883))))
                             (__tmp165881
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self165358%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp165882 __tmp165881))))
                  (if _%$e165425%_ (cdr _%$e165425%_) _%L165408%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp165884
                                                          (cons '%#set!
                                                                (cons _%new-xid165430%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr165429%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp165884
                                                      _%stx165359%_))))
                                               _%hd165372165402%_
                                               _%hd165369165394%_)
                                              (_%g165361165378%_
                                               _%g165362165381%_))))
                                      (_%g165361165378%_ _%g165362165381%_))))
                              (_%g165361165378%_ _%g165362165381%_))))
                      (_%g165361165378%_ _%g165362165381%_)))))
          (_%g165360165432%_ _%stx165359%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self165304%_ _%stx165305%_)
        (let* ((_%g165307165320%_
                (lambda (_%g165308165317%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165308165317%_))))
               (_%g165306165355%_
                (lambda (_%g165308165323%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165308165323%_))
                      (let ((_%e165310165325%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165308165323%_))))
                        (let ((_%hd165311165328%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165310165325%_)))
                              (_%tl165312165330%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165310165325%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165312165330%_))
                              (let ((_%e165313165333%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165312165330%_))))
                                (let ((_%hd165314165336%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165313165333%_)))
                                      (_%tl165315165338%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165313165333%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl165315165338%_))
                                      ((lambda (_%L165341%_)
                                         (let* ((_%eid165353%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L165341%_)))
                                                (__tmp165885
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self165304%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp165885
                                            _%eid165353%_
                                            1+
                                            '0)))
                                       _%hd165314165336%_)
                                      (_%g165307165320%_ _%g165308165323%_))))
                              (_%g165307165320%_ _%g165308165323%_))))
                      (_%g165307165320%_ _%g165308165323%_)))))
          (_%g165306165355%_ _%stx165305%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self165234%_ _%stx165235%_)
        (let* ((_%g165237165254%_
                (lambda (_%g165238165251%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165238165251%_))))
               (_%g165236165301%_
                (lambda (_%g165238165257%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165238165257%_))
                      (let ((_%e165241165259%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165238165257%_))))
                        (let ((_%hd165242165262%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165241165259%_)))
                              (_%tl165243165264%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165241165259%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165243165264%_))
                              (let ((_%e165244165267%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165243165264%_))))
                                (let ((_%hd165245165270%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165244165267%_)))
                                      (_%tl165246165272%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165244165267%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165246165272%_))
                                      (let ((_%e165247165275%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165246165272%_))))
                                        (let ((_%hd165248165278%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165247165275%_)))
                                              (_%tl165249165280%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165247165275%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl165249165280%_))
                                              ((lambda (_%L165283%_
                                                        _%L165284%_)
                                                 (let ((_%eid165299%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L165284%_))))
                                                   (let ((__tmp165886
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self165234%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp165886
                                                      _%eid165299%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self165234%_
                                                      _%L165283%_))))
                                               _%hd165248165278%_
                                               _%hd165245165270%_)
                                              (_%g165237165254%_
                                               _%g165238165257%_))))
                                      (_%g165237165254%_ _%g165238165257%_))))
                              (_%g165237165254%_ _%g165238165257%_))))
                      (_%g165237165254%_ _%g165238165257%_)))))
          (_%g165236165301%_ _%stx165235%_))))
    (define gxc#find-body%
      (lambda (_%self165147%_ _%stx165148%_)
        (let* ((_%g165150165169%_
                (lambda (_%g165151165166%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165151165166%_))))
               (_%g165149165231%_
                (lambda (_%g165151165172%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165151165172%_))
                      (let ((_%e165153165174%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165151165172%_))))
                        (let ((_%hd165154165177%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165153165174%_)))
                              (_%tl165155165179%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165153165174%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl165155165179%_))
                              (let ((_g165887_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl165155165179%_
                                        '0))))
                                (begin
                                  (let ((_g165888_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g165887_)
                                               (##values-length _g165887_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g165888_ 2)))
                                        (error "Context expects 2 values"
                                               _g165888_)))
                                  (let ((_%target165156165182%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g165887_ 0)))
                                        (_%tl165158165184%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g165887_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl165158165184%_))
                                        (letrec ((_%loop165159165187%_
                                                  (lambda (_%hd165157165190%_
                                                           _%expr165163165192%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd165157165190%_))
                                                        (let ((_%e165160165195%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd165157165190%_))))
                  (let ((_%lp-hd165161165198%_
                         (let ()
                           (declare (not safe))
                           (##car _%e165160165195%_)))
                        (_%lp-tl165162165200%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e165160165195%_))))
                    (_%loop165159165187%_
                     _%lp-tl165162165200%_
                     (cons _%lp-hd165161165198%_ _%expr165163165192%_))))
                (let ((_%expr165164165203%_ (reverse _%expr165163165192%_)))
                  ((lambda (_%L165206%_)
                     (let ((__tmp165891
                            (lambda (_%g165219165221%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self165147%_
                                 _%g165219165221%_))))
                           (__tmp165889
                            (let ((__tmp165890
                                   (lambda (_%g165223165226%_
                                            _%g165224165228%_)
                                     (cons _%g165223165226%_
                                           _%g165224165228%_))))
                              (declare (not safe))
                              (__foldr1 __tmp165890 '() _%L165206%_))))
                       (declare (not safe))
                       (__ormap1 __tmp165891 __tmp165889)))
                   _%expr165164165203%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop165159165187%_
                                           _%target165156165182%_
                                           '()))
                                        (_%g165150165169%_
                                         _%g165151165172%_)))))
                              (_%g165150165169%_ _%g165151165172%_))))
                      (_%g165150165169%_ _%g165151165172%_)))))
          (_%g165149165231%_ _%stx165148%_))))
    (define gxc#find-let-values%
      (lambda (_%self164997%_ _%stx164998%_)
        (let* ((_%g165000165035%_
                (lambda (_%g165001165032%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165001165032%_))))
               (_%g164999165144%_
                (lambda (_%g165001165038%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165001165038%_))
                      (let ((_%e165005165040%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165001165038%_))))
                        (let ((_%hd165006165043%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165005165040%_)))
                              (_%tl165007165045%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165005165040%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165007165045%_))
                              (let ((_%e165008165048%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165007165045%_))))
                                (let ((_%hd165009165051%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165008165048%_)))
                                      (_%tl165010165053%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165008165048%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd165009165051%_))
                                      (let ((_g165892_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd165009165051%_
                                                '0))))
                                        (begin
                                          (let ((_g165893_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g165892_)
                                                       (##values-length
                                                        _g165892_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g165893_ 2)))
                                                (error "Context expects 2 values"
                                                       _g165893_)))
                                          (let ((_%target165011165056%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g165892_ 0)))
                                                (_%tl165013165058%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g165892_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl165013165058%_))
                                                (letrec ((_%loop165014165061%_
                                                          (lambda (_%hd165012165064%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr165018165066%_
                           _%bind165019165068%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd165012165064%_))
                        (let ((_%e165015165071%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd165012165064%_))))
                          (let ((_%lp-hd165016165074%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e165015165071%_)))
                                (_%lp-tl165017165076%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e165015165071%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd165016165074%_))
                                (let ((_%e165022165079%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd165016165074%_))))
                                  (let ((_%hd165023165082%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165022165079%_)))
                                        (_%tl165024165084%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165022165079%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl165024165084%_))
                                        (let ((_%e165025165087%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl165024165084%_))))
                                          (let ((_%hd165026165090%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e165025165087%_)))
                                                (_%tl165027165092%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e165025165087%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl165027165092%_))
                                                (_%loop165014165061%_
                                                 _%lp-tl165017165076%_
                                                 (cons _%hd165026165090%_
                                                       _%expr165018165066%_)
                                                 (cons _%hd165023165082%_
                                                       _%bind165019165068%_))
                                                (_%g165000165035%_
                                                 _%g165001165038%_))))
                                        (_%g165000165035%_
                                         _%g165001165038%_))))
                                (_%g165000165035%_ _%g165001165038%_))))
                        (let ((_%expr165020165095%_
                               (reverse _%expr165018165066%_))
                              (_%bind165021165097%_
                               (reverse _%bind165019165068%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165010165053%_))
                              (let ((_%e165028165100%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165010165053%_))))
                                (let ((_%hd165029165103%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165028165100%_)))
                                      (_%tl165030165105%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165028165100%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl165030165105%_))
                                      ((lambda (_%L165108%_
                                                _%L165109%_
                                                _%L165110%_)
                                         (let ((_%$e165141%_
                                                (let ((__tmp165896
                                                       (lambda (_%g165129165131%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self164997%_
                                                            _%g165129165131%_))))
                                                      (__tmp165894
                                                       (let ((__tmp165895
                                                              (lambda (_%g165133165136%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g165134165138%_)
                        (cons _%g165133165136%_ _%g165134165138%_))))
                 (declare (not safe))
                 (__foldr1 __tmp165895 '() _%L165109%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp165896
                                                   __tmp165894))))
                                           (if _%$e165141%_
                                               _%$e165141%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self164997%_
                                                  _%L165108%_)))))
                                       _%hd165029165103%_
                                       _%expr165020165095%_
                                       _%bind165021165097%_)
                                      (_%g165000165035%_ _%g165001165038%_))))
                              (_%g165000165035%_ _%g165001165038%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop165014165061%_
                                                   _%target165011165056%_
                                                   '()
                                                   '()))
                                                (_%g165000165035%_
                                                 _%g165001165038%_)))))
                                      (_%g165000165035%_ _%g165001165038%_))))
                              (_%g165000165035%_ _%g165001165038%_))))
                      (_%g165000165035%_ _%g165001165038%_)))))
          (_%g164999165144%_ _%stx164998%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self164941%_ _%stx164942%_)
        (let* ((_%g164944164957%_
                (lambda (_%g164945164954%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g164945164954%_))))
               (_%g164943164994%_
                (lambda (_%g164945164960%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g164945164960%_))
                      (let ((_%e164947164962%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g164945164960%_))))
                        (let ((_%hd164948164965%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e164947164962%_)))
                              (_%tl164949164967%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e164947164962%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl164949164967%_))
                              (let ((_%e164950164970%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl164949164967%_))))
                                (let ((_%hd164951164973%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e164950164970%_)))
                                      (_%tl164952164975%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e164950164970%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl164952164975%_))
                                      ((lambda (_%L164978%_)
                                         (let ((__tmp165898
                                                (lambda (_%g164989164991%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L164978%_
                                                     _%g164989164991%_))))
                                               (__tmp165897
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self164941%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp165898 __tmp165897)))
                                       _%hd164951164973%_)
                                      (_%g164944164957%_ _%g164945164960%_))))
                              (_%g164944164957%_ _%g164945164960%_))))
                      (_%g164944164957%_ _%g164945164960%_)))))
          (_%g164943164994%_ _%stx164942%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self164866%_ _%stx164867%_)
        (let* ((_%g164869164886%_
                (lambda (_%g164870164883%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g164870164883%_))))
               (_%g164868164938%_
                (lambda (_%g164870164889%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g164870164889%_))
                      (let ((_%e164873164891%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g164870164889%_))))
                        (let ((_%hd164874164894%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e164873164891%_)))
                              (_%tl164875164896%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e164873164891%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl164875164896%_))
                              (let ((_%e164876164899%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl164875164896%_))))
                                (let ((_%hd164877164902%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e164876164899%_)))
                                      (_%tl164878164904%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e164876164899%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl164878164904%_))
                                      (let ((_%e164879164907%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl164878164904%_))))
                                        (let ((_%hd164880164910%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e164879164907%_)))
                                              (_%tl164881164912%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e164879164907%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl164881164912%_))
                                              ((lambda (_%L164915%_
                                                        _%L164916%_)
                                                 (let ((_%$e164935%_
                                                        (let ((__tmp165900
                                                               (lambda (_%g164930164932%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L164916%_
                            _%g164930164932%_))))
                      (__tmp165899
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self164866%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp165900 __tmp165899))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e164935%_
                                                       _%$e164935%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self164866%_
                                                          _%L164915%_)))))
                                               _%hd164880164910%_
                                               _%hd164877164902%_)
                                              (_%g164869164886%_
                                               _%g164870164889%_))))
                                      (_%g164869164886%_ _%g164870164889%_))))
                              (_%g164869164886%_ _%g164870164889%_))))
                      (_%g164869164886%_ _%g164870164889%_)))))
          (_%g164868164938%_ _%stx164867%_))))))
