(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1768865825)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp165893 (list gxc#::void::t))
            (__tmp165892 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp165893
         '()
         __tmp165892
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args165879%_
        (apply make-instance gxc#::collect-mutators::t _%$args165879%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp165894
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
        (__make-atomic-promise __tmp165894)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx165871%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self165874%_
                (let ((__obj165882
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj165882))
               (__tmp165895
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self165874%_ _%stx165871%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp165895
           gxc#current-compile-method
           _%self165874%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp165897 (list gxc#::basic-xform-expression::t))
            (__tmp165896 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp165897
         '(id new-id)
         __tmp165896
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args165868%_
        (apply make-instance gxc#::expression-subst::t _%$args165868%_)))
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
      (let ((__tmp165898
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
        (__make-atomic-promise __tmp165898)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords165838%_
               _%id165834165839%_
               _%new-id165835165841%_
               _%stx165843%_)
        (let* ((_%id165846%_
                (if (eq? _%id165834165839%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id165834165839%_))
               (_%new-id165848%_
                (if (eq? _%new-id165835165841%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id165835165841%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self165850%_
                  (let ((__obj165884
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj165884
                       _%id165846%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj165884
                       _%new-id165848%_
                       '2
                       '#f
                       '#f))
                    __obj165884))
                 (__tmp165899
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self165850%_ _%stx165843%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp165899
             gxc#current-compile-method
             _%self165850%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords165857%_ . _%args165858%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords165857%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords165857%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords165857%_
                  'new-id:
                  absent-value))
               _%args165858%_)))
    (define gxc#apply-expression-subst
      (lambda _%args165836165864%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args165836165864%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp165901 (list gxc#::basic-xform-expression::t))
            (__tmp165900 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp165901
         '(subst)
         __tmp165900
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args165830%_
        (apply make-instance gxc#::expression-subst*::t _%$args165830%_)))
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
      (let ((__tmp165902
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
        (__make-atomic-promise __tmp165902)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords165804%_ _%subst165801165805%_ _%stx165807%_)
        (let ((_%subst165810%_
               (if (eq? _%subst165801165805%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst165801165805%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self165812%_
                  (let ((__obj165886
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj165886
                       _%subst165810%_
                       '1
                       '#f
                       '#f))
                    __obj165886))
                 (__tmp165903
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self165812%_ _%stx165807%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp165903
             gxc#current-compile-method
             _%self165812%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords165819%_ . _%args165820%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords165819%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords165819%_
                  'subst:
                  absent-value))
               _%args165820%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args165802165826%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args165802165826%_)))
    (define gxc#::find-expression::t
      (let ((__tmp165904 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp165904
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args165797%_
        (apply make-instance gxc#::find-expression::t _%$args165797%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp165905
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
        (__make-atomic-promise __tmp165905)))
    (define gxc#::find-var-refs::t
      (let ((__tmp165907 (list gxc#::find-expression::t))
            (__tmp165906 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp165907
         '(ids)
         __tmp165906
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args165793%_
        (apply make-instance gxc#::find-var-refs::t _%$args165793%_)))
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
      (let ((__tmp165908
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
        (__make-atomic-promise __tmp165908)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords165767%_ _%ids165764165768%_ _%stx165770%_)
        (let ((_%ids165773%_
               (if (eq? _%ids165764165768%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids165764165768%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self165775%_
                  (let ((__obj165889
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj165889
                       _%ids165773%_
                       '1
                       '#f
                       '#f))
                    __obj165889))
                 (__tmp165909
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self165775%_ _%stx165770%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp165909
             gxc#current-compile-method
             _%self165775%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords165782%_ . _%args165783%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords165782%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords165782%_ 'ids: absent-value))
               _%args165783%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args165765165789%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args165765165789%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp165911 (list gxc#::collect-expression-refs::t))
            (__tmp165910 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp165911
         '()
         __tmp165910
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args165760%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args165760%_)))
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
      (let ((__tmp165912
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
        (__make-atomic-promise __tmp165912)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords165734%_ _%table165731165735%_ _%stx165737%_)
        (let ((_%table165740%_
               (if (eq? _%table165731165735%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table165731165735%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self165742%_
                  (let ((__obj165891
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj165891
                       _%table165740%_
                       '1
                       '#f
                       '#f))
                    __obj165891))
                 (__tmp165913
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self165742%_ _%stx165737%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp165913
             gxc#current-compile-method
             _%self165742%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords165749%_ . _%args165750%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords165749%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords165749%_
                  'table:
                  absent-value))
               _%args165750%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args165732165756%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args165732165756%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self165660%_ _%stx165661%_)
        (let* ((_%g165663165680%_
                (lambda (_%g165664165677%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165664165677%_))))
               (_%g165662165727%_
                (lambda (_%g165664165683%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165664165683%_))
                      (let ((_%e165667165685%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165664165683%_))))
                        (let ((_%hd165668165688%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165667165685%_)))
                              (_%tl165669165690%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165667165685%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165669165690%_))
                              (let ((_%e165670165693%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165669165690%_))))
                                (let ((_%hd165671165696%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165670165693%_)))
                                      (_%tl165672165698%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165670165693%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165672165698%_))
                                      (let ((_%e165673165701%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165672165698%_))))
                                        (let ((_%hd165674165704%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165673165701%_)))
                                              (_%tl165675165706%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165673165701%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl165675165706%_))
                                              ((lambda (_%L165709%_
                                                        _%L165710%_)
                                                 (let ((_%sym165725%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L165710%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym165725%_))
                                                   (let ((__tmp165914
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp165914
                                                      _%sym165725%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self165660%_
                                                      _%L165709%_))))
                                               _%hd165674165704%_
                                               _%hd165671165696%_)
                                              (_%g165663165680%_
                                               _%g165664165683%_))))
                                      (_%g165663165680%_ _%g165664165683%_))))
                              (_%g165663165680%_ _%g165664165683%_))))
                      (_%g165663165680%_ _%g165664165683%_)))))
          (_%g165662165727%_ _%stx165661%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self165608%_ _%stx165609%_)
        (let* ((_%g165611165624%_
                (lambda (_%g165612165621%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165612165621%_))))
               (_%g165610165657%_
                (lambda (_%g165612165627%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165612165627%_))
                      (let ((_%e165614165629%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165612165627%_))))
                        (let ((_%hd165615165632%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165614165629%_)))
                              (_%tl165616165634%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165614165629%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165616165634%_))
                              (let ((_%e165617165637%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165616165634%_))))
                                (let ((_%hd165618165640%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165617165637%_)))
                                      (_%tl165619165642%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165617165637%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl165619165642%_))
                                      ((lambda (_%L165645%_)
                                         (if (let ((__tmp165915
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self165608%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L165645%_
                                                __tmp165915))
                                             (let ((__tmp165916
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self165608%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp165916
                                                _%stx165609%_))
                                             _%stx165609%_))
                                       _%hd165618165640%_)
                                      (_%g165611165624%_ _%g165612165627%_))))
                              (_%g165611165624%_ _%g165612165627%_))))
                      (_%g165611165624%_ _%g165612165627%_)))))
          (_%g165610165657%_ _%stx165609%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self165548%_ _%stx165549%_)
        (let* ((_%g165551165564%_
                (lambda (_%g165552165561%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165552165561%_))))
               (_%g165550165605%_
                (lambda (_%g165552165567%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165552165567%_))
                      (let ((_%e165554165569%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165552165567%_))))
                        (let ((_%hd165555165572%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165554165569%_)))
                              (_%tl165556165574%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165554165569%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165556165574%_))
                              (let ((_%e165557165577%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165556165574%_))))
                                (let ((_%hd165558165580%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165557165577%_)))
                                      (_%tl165559165582%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165557165577%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl165559165582%_))
                                      ((lambda (_%L165585%_)
                                         (let ((_%$e165599%_
                                                (let ((__tmp165918
                                                       (lambda (_%sub165597%_)
                                                         (let ((__tmp165919
                                                                (car _%sub165597%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L165585%_
                                                            __tmp165919))))
                                                      (__tmp165917
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self165548%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp165918
                                                          __tmp165917))))
                                           (if _%$e165599%_
                                               ((lambda (_%sub165602%_)
                                                  (let ((__tmp165920
                                                         (cons '%#ref
                                                               (cons (cdr _%sub165602%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp165920
                                                     _%stx165549%_)))
                                                _%$e165599%_)
                                               _%stx165549%_)))
                                       _%hd165558165580%_)
                                      (_%g165551165564%_ _%g165552165567%_))))
                              (_%g165551165564%_ _%g165552165567%_))))
                      (_%g165551165564%_ _%g165552165567%_)))))
          (_%g165550165605%_ _%stx165549%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self165477%_ _%stx165478%_)
        (let* ((_%g165480165497%_
                (lambda (_%g165481165494%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165481165494%_))))
               (_%g165479165545%_
                (lambda (_%g165481165500%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165481165500%_))
                      (let ((_%e165484165502%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165481165500%_))))
                        (let ((_%hd165485165505%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165484165502%_)))
                              (_%tl165486165507%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165484165502%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165486165507%_))
                              (let ((_%e165487165510%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165486165507%_))))
                                (let ((_%hd165488165513%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165487165510%_)))
                                      (_%tl165489165515%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165487165510%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165489165515%_))
                                      (let ((_%e165490165518%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165489165515%_))))
                                        (let ((_%hd165491165521%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165490165518%_)))
                                              (_%tl165492165523%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165490165518%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl165492165523%_))
                                              ((lambda (_%L165526%_
                                                        _%L165527%_)
                                                 (let ((_%new-expr165542%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self165477%_
                                                           _%L165526%_)))
                                                       (_%new-xid165543%_
                                                        (if (let ((__tmp165921
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self165477%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L165527%_ __tmp165921))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self165477%_ 'new-id))
                    _%L165527%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp165922
                                                          (cons '%#set!
                                                                (cons _%new-xid165543%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr165542%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp165922
                                                      _%stx165478%_))))
                                               _%hd165491165521%_
                                               _%hd165488165513%_)
                                              (_%g165480165497%_
                                               _%g165481165500%_))))
                                      (_%g165480165497%_ _%g165481165500%_))))
                              (_%g165480165497%_ _%g165481165500%_))))
                      (_%g165480165497%_ _%g165481165500%_)))))
          (_%g165479165545%_ _%stx165478%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self165400%_ _%stx165401%_)
        (let* ((_%g165403165420%_
                (lambda (_%g165404165417%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165404165417%_))))
               (_%g165402165474%_
                (lambda (_%g165404165423%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165404165423%_))
                      (let ((_%e165407165425%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165404165423%_))))
                        (let ((_%hd165408165428%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165407165425%_)))
                              (_%tl165409165430%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165407165425%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165409165430%_))
                              (let ((_%e165410165433%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165409165430%_))))
                                (let ((_%hd165411165436%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165410165433%_)))
                                      (_%tl165412165438%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165410165433%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165412165438%_))
                                      (let ((_%e165413165441%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165412165438%_))))
                                        (let ((_%hd165414165444%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165413165441%_)))
                                              (_%tl165415165446%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165413165441%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl165415165446%_))
                                              ((lambda (_%L165449%_
                                                        _%L165450%_)
                                                 (let ((_%new-expr165471%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self165400%_
                                                           _%L165449%_)))
                                                       (_%new-xid165472%_
                                                        (let ((_%$e165467%_
                                                               (let ((__tmp165924
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub165465%_)
                                (let ((__tmp165925 (car _%sub165465%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L165450%_
                                   __tmp165925))))
                             (__tmp165923
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self165400%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp165924 __tmp165923))))
                  (if _%$e165467%_ (cdr _%$e165467%_) _%L165450%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp165926
                                                          (cons '%#set!
                                                                (cons _%new-xid165472%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr165471%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp165926
                                                      _%stx165401%_))))
                                               _%hd165414165444%_
                                               _%hd165411165436%_)
                                              (_%g165403165420%_
                                               _%g165404165423%_))))
                                      (_%g165403165420%_ _%g165404165423%_))))
                              (_%g165403165420%_ _%g165404165423%_))))
                      (_%g165403165420%_ _%g165404165423%_)))))
          (_%g165402165474%_ _%stx165401%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self165346%_ _%stx165347%_)
        (let* ((_%g165349165362%_
                (lambda (_%g165350165359%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165350165359%_))))
               (_%g165348165397%_
                (lambda (_%g165350165365%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165350165365%_))
                      (let ((_%e165352165367%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165350165365%_))))
                        (let ((_%hd165353165370%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165352165367%_)))
                              (_%tl165354165372%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165352165367%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165354165372%_))
                              (let ((_%e165355165375%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165354165372%_))))
                                (let ((_%hd165356165378%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165355165375%_)))
                                      (_%tl165357165380%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165355165375%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl165357165380%_))
                                      ((lambda (_%L165383%_)
                                         (let* ((_%eid165395%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L165383%_)))
                                                (__tmp165927
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self165346%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp165927
                                            _%eid165395%_
                                            1+
                                            '0)))
                                       _%hd165356165378%_)
                                      (_%g165349165362%_ _%g165350165365%_))))
                              (_%g165349165362%_ _%g165350165365%_))))
                      (_%g165349165362%_ _%g165350165365%_)))))
          (_%g165348165397%_ _%stx165347%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self165276%_ _%stx165277%_)
        (let* ((_%g165279165296%_
                (lambda (_%g165280165293%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165280165293%_))))
               (_%g165278165343%_
                (lambda (_%g165280165299%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165280165299%_))
                      (let ((_%e165283165301%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165280165299%_))))
                        (let ((_%hd165284165304%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165283165301%_)))
                              (_%tl165285165306%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165283165301%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165285165306%_))
                              (let ((_%e165286165309%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165285165306%_))))
                                (let ((_%hd165287165312%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165286165309%_)))
                                      (_%tl165288165314%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165286165309%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165288165314%_))
                                      (let ((_%e165289165317%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165288165314%_))))
                                        (let ((_%hd165290165320%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165289165317%_)))
                                              (_%tl165291165322%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165289165317%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl165291165322%_))
                                              ((lambda (_%L165325%_
                                                        _%L165326%_)
                                                 (let ((_%eid165341%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L165326%_))))
                                                   (let ((__tmp165928
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self165276%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp165928
                                                      _%eid165341%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self165276%_
                                                      _%L165325%_))))
                                               _%hd165290165320%_
                                               _%hd165287165312%_)
                                              (_%g165279165296%_
                                               _%g165280165299%_))))
                                      (_%g165279165296%_ _%g165280165299%_))))
                              (_%g165279165296%_ _%g165280165299%_))))
                      (_%g165279165296%_ _%g165280165299%_)))))
          (_%g165278165343%_ _%stx165277%_))))
    (define gxc#find-body%
      (lambda (_%self165189%_ _%stx165190%_)
        (let* ((_%g165192165211%_
                (lambda (_%g165193165208%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165193165208%_))))
               (_%g165191165273%_
                (lambda (_%g165193165214%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165193165214%_))
                      (let ((_%e165195165216%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165193165214%_))))
                        (let ((_%hd165196165219%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165195165216%_)))
                              (_%tl165197165221%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165195165216%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl165197165221%_))
                              (let ((_g165929_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl165197165221%_
                                        '0))))
                                (begin
                                  (let ((_g165930_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g165929_)
                                               (##values-length _g165929_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g165930_ 2)))
                                        (error "Context expects 2 values"
                                               _g165930_)))
                                  (let ((_%target165198165224%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g165929_ 0)))
                                        (_%tl165200165226%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g165929_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl165200165226%_))
                                        (letrec ((_%loop165201165229%_
                                                  (lambda (_%hd165199165232%_
                                                           _%expr165205165234%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd165199165232%_))
                                                        (let ((_%e165202165237%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd165199165232%_))))
                  (let ((_%lp-hd165203165240%_
                         (let ()
                           (declare (not safe))
                           (##car _%e165202165237%_)))
                        (_%lp-tl165204165242%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e165202165237%_))))
                    (_%loop165201165229%_
                     _%lp-tl165204165242%_
                     (cons _%lp-hd165203165240%_ _%expr165205165234%_))))
                (let ((_%expr165206165245%_ (reverse _%expr165205165234%_)))
                  ((lambda (_%L165248%_)
                     (let ((__tmp165933
                            (lambda (_%g165261165263%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self165189%_
                                 _%g165261165263%_))))
                           (__tmp165931
                            (let ((__tmp165932
                                   (lambda (_%g165265165268%_
                                            _%g165266165270%_)
                                     (cons _%g165265165268%_
                                           _%g165266165270%_))))
                              (declare (not safe))
                              (__foldr1 __tmp165932 '() _%L165248%_))))
                       (declare (not safe))
                       (__ormap1 __tmp165933 __tmp165931)))
                   _%expr165206165245%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop165201165229%_
                                           _%target165198165224%_
                                           '()))
                                        (_%g165192165211%_
                                         _%g165193165214%_)))))
                              (_%g165192165211%_ _%g165193165214%_))))
                      (_%g165192165211%_ _%g165193165214%_)))))
          (_%g165191165273%_ _%stx165190%_))))
    (define gxc#find-let-values%
      (lambda (_%self165039%_ _%stx165040%_)
        (let* ((_%g165042165077%_
                (lambda (_%g165043165074%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165043165074%_))))
               (_%g165041165186%_
                (lambda (_%g165043165080%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165043165080%_))
                      (let ((_%e165047165082%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165043165080%_))))
                        (let ((_%hd165048165085%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165047165082%_)))
                              (_%tl165049165087%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165047165082%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165049165087%_))
                              (let ((_%e165050165090%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165049165087%_))))
                                (let ((_%hd165051165093%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165050165090%_)))
                                      (_%tl165052165095%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165050165090%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd165051165093%_))
                                      (let ((_g165934_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd165051165093%_
                                                '0))))
                                        (begin
                                          (let ((_g165935_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g165934_)
                                                       (##values-length
                                                        _g165934_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g165935_ 2)))
                                                (error "Context expects 2 values"
                                                       _g165935_)))
                                          (let ((_%target165053165098%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g165934_ 0)))
                                                (_%tl165055165100%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g165934_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl165055165100%_))
                                                (letrec ((_%loop165056165103%_
                                                          (lambda (_%hd165054165106%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr165060165108%_
                           _%bind165061165110%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd165054165106%_))
                        (let ((_%e165057165113%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd165054165106%_))))
                          (let ((_%lp-hd165058165116%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e165057165113%_)))
                                (_%lp-tl165059165118%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e165057165113%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd165058165116%_))
                                (let ((_%e165064165121%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd165058165116%_))))
                                  (let ((_%hd165065165124%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165064165121%_)))
                                        (_%tl165066165126%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165064165121%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl165066165126%_))
                                        (let ((_%e165067165129%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl165066165126%_))))
                                          (let ((_%hd165068165132%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e165067165129%_)))
                                                (_%tl165069165134%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e165067165129%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl165069165134%_))
                                                (_%loop165056165103%_
                                                 _%lp-tl165059165118%_
                                                 (cons _%hd165068165132%_
                                                       _%expr165060165108%_)
                                                 (cons _%hd165065165124%_
                                                       _%bind165061165110%_))
                                                (_%g165042165077%_
                                                 _%g165043165080%_))))
                                        (_%g165042165077%_
                                         _%g165043165080%_))))
                                (_%g165042165077%_ _%g165043165080%_))))
                        (let ((_%expr165062165137%_
                               (reverse _%expr165060165108%_))
                              (_%bind165063165139%_
                               (reverse _%bind165061165110%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165052165095%_))
                              (let ((_%e165070165142%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165052165095%_))))
                                (let ((_%hd165071165145%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165070165142%_)))
                                      (_%tl165072165147%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165070165142%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl165072165147%_))
                                      ((lambda (_%L165150%_
                                                _%L165151%_
                                                _%L165152%_)
                                         (let ((_%$e165183%_
                                                (let ((__tmp165938
                                                       (lambda (_%g165171165173%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self165039%_
                                                            _%g165171165173%_))))
                                                      (__tmp165936
                                                       (let ((__tmp165937
                                                              (lambda (_%g165175165178%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g165176165180%_)
                        (cons _%g165175165178%_ _%g165176165180%_))))
                 (declare (not safe))
                 (__foldr1 __tmp165937 '() _%L165151%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp165938
                                                   __tmp165936))))
                                           (if _%$e165183%_
                                               _%$e165183%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self165039%_
                                                  _%L165150%_)))))
                                       _%hd165071165145%_
                                       _%expr165062165137%_
                                       _%bind165063165139%_)
                                      (_%g165042165077%_ _%g165043165080%_))))
                              (_%g165042165077%_ _%g165043165080%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop165056165103%_
                                                   _%target165053165098%_
                                                   '()
                                                   '()))
                                                (_%g165042165077%_
                                                 _%g165043165080%_)))))
                                      (_%g165042165077%_ _%g165043165080%_))))
                              (_%g165042165077%_ _%g165043165080%_))))
                      (_%g165042165077%_ _%g165043165080%_)))))
          (_%g165041165186%_ _%stx165040%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self164983%_ _%stx164984%_)
        (let* ((_%g164986164999%_
                (lambda (_%g164987164996%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g164987164996%_))))
               (_%g164985165036%_
                (lambda (_%g164987165002%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g164987165002%_))
                      (let ((_%e164989165004%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g164987165002%_))))
                        (let ((_%hd164990165007%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e164989165004%_)))
                              (_%tl164991165009%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e164989165004%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl164991165009%_))
                              (let ((_%e164992165012%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl164991165009%_))))
                                (let ((_%hd164993165015%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e164992165012%_)))
                                      (_%tl164994165017%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e164992165012%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl164994165017%_))
                                      ((lambda (_%L165020%_)
                                         (let ((__tmp165940
                                                (lambda (_%g165031165033%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L165020%_
                                                     _%g165031165033%_))))
                                               (__tmp165939
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self164983%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp165940 __tmp165939)))
                                       _%hd164993165015%_)
                                      (_%g164986164999%_ _%g164987165002%_))))
                              (_%g164986164999%_ _%g164987165002%_))))
                      (_%g164986164999%_ _%g164987165002%_)))))
          (_%g164985165036%_ _%stx164984%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self164908%_ _%stx164909%_)
        (let* ((_%g164911164928%_
                (lambda (_%g164912164925%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g164912164925%_))))
               (_%g164910164980%_
                (lambda (_%g164912164931%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g164912164931%_))
                      (let ((_%e164915164933%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g164912164931%_))))
                        (let ((_%hd164916164936%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e164915164933%_)))
                              (_%tl164917164938%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e164915164933%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl164917164938%_))
                              (let ((_%e164918164941%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl164917164938%_))))
                                (let ((_%hd164919164944%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e164918164941%_)))
                                      (_%tl164920164946%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e164918164941%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl164920164946%_))
                                      (let ((_%e164921164949%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl164920164946%_))))
                                        (let ((_%hd164922164952%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e164921164949%_)))
                                              (_%tl164923164954%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e164921164949%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl164923164954%_))
                                              ((lambda (_%L164957%_
                                                        _%L164958%_)
                                                 (let ((_%$e164977%_
                                                        (let ((__tmp165942
                                                               (lambda (_%g164972164974%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L164958%_
                            _%g164972164974%_))))
                      (__tmp165941
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self164908%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp165942 __tmp165941))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e164977%_
                                                       _%$e164977%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self164908%_
                                                          _%L164957%_)))))
                                               _%hd164922164952%_
                                               _%hd164919164944%_)
                                              (_%g164911164928%_
                                               _%g164912164931%_))))
                                      (_%g164911164928%_ _%g164912164931%_))))
                              (_%g164911164928%_ _%g164912164931%_))))
                      (_%g164911164928%_ _%g164912164931%_)))))
          (_%g164910164980%_ _%stx164909%_))))))
