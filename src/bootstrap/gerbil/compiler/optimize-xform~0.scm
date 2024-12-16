(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1734131749)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp154001 (list gxc#::void::t))
            (__tmp154000 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp154001
         '()
         __tmp154000
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args153987%_
        (apply make-instance gxc#::collect-mutators::t _%$args153987%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp154002
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
        (__make-promise __tmp154002)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx153979%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self153982%_
                (let ((__obj153990
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj153990))
               (__tmp154003
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self153982%_ _%stx153979%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp154003
           gxc#current-compile-method
           _%self153982%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp154005 (list gxc#::basic-xform-expression::t))
            (__tmp154004 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp154005
         '(id new-id)
         __tmp154004
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args153976%_
        (apply make-instance gxc#::expression-subst::t _%$args153976%_)))
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
      (let ((__tmp154006
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
        (__make-promise __tmp154006)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords153946%_
               _%id153942153947%_
               _%new-id153943153949%_
               _%stx153951%_)
        (let* ((_%id153954%_
                (if (eq? _%id153942153947%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id153942153947%_))
               (_%new-id153956%_
                (if (eq? _%new-id153943153949%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id153943153949%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self153958%_
                  (let ((__obj153992
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj153992
                       _%id153954%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj153992
                       _%new-id153956%_
                       '2
                       '#f
                       '#f))
                    __obj153992))
                 (__tmp154007
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self153958%_ _%stx153951%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp154007
             gxc#current-compile-method
             _%self153958%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords153965%_ . _%args153966%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords153965%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords153965%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords153965%_
                  'new-id:
                  absent-value))
               _%args153966%_)))
    (define gxc#apply-expression-subst
      (lambda _%args153944153972%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args153944153972%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp154009 (list gxc#::basic-xform-expression::t))
            (__tmp154008 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp154009
         '(subst)
         __tmp154008
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args153938%_
        (apply make-instance gxc#::expression-subst*::t _%$args153938%_)))
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
      (let ((__tmp154010
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
        (__make-promise __tmp154010)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords153912%_ _%subst153909153913%_ _%stx153915%_)
        (let ((_%subst153918%_
               (if (eq? _%subst153909153913%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst153909153913%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self153920%_
                  (let ((__obj153994
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj153994
                       _%subst153918%_
                       '1
                       '#f
                       '#f))
                    __obj153994))
                 (__tmp154011
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self153920%_ _%stx153915%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp154011
             gxc#current-compile-method
             _%self153920%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords153927%_ . _%args153928%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords153927%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords153927%_
                  'subst:
                  absent-value))
               _%args153928%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args153910153934%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args153910153934%_)))
    (define gxc#::find-expression::t
      (let ((__tmp154012 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp154012
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args153905%_
        (apply make-instance gxc#::find-expression::t _%$args153905%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp154013
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
        (__make-promise __tmp154013)))
    (define gxc#::find-var-refs::t
      (let ((__tmp154015 (list gxc#::find-expression::t))
            (__tmp154014 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp154015
         '(ids)
         __tmp154014
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args153901%_
        (apply make-instance gxc#::find-var-refs::t _%$args153901%_)))
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
      (let ((__tmp154016
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
        (__make-promise __tmp154016)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords153875%_ _%ids153872153876%_ _%stx153878%_)
        (let ((_%ids153881%_
               (if (eq? _%ids153872153876%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids153872153876%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self153883%_
                  (let ((__obj153997
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj153997
                       _%ids153881%_
                       '1
                       '#f
                       '#f))
                    __obj153997))
                 (__tmp154017
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self153883%_ _%stx153878%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp154017
             gxc#current-compile-method
             _%self153883%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords153890%_ . _%args153891%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords153890%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords153890%_ 'ids: absent-value))
               _%args153891%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args153873153897%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args153873153897%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp154019 (list gxc#::collect-expression-refs::t))
            (__tmp154018 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp154019
         '()
         __tmp154018
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args153868%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args153868%_)))
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
      (let ((__tmp154020
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
        (__make-promise __tmp154020)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords153842%_ _%table153839153843%_ _%stx153845%_)
        (let ((_%table153848%_
               (if (eq? _%table153839153843%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table153839153843%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self153850%_
                  (let ((__obj153999
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj153999
                       _%table153848%_
                       '1
                       '#f
                       '#f))
                    __obj153999))
                 (__tmp154021
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self153850%_ _%stx153845%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp154021
             gxc#current-compile-method
             _%self153850%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords153857%_ . _%args153858%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords153857%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords153857%_
                  'table:
                  absent-value))
               _%args153858%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args153840153864%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args153840153864%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self153768%_ _%stx153769%_)
        (let* ((_%g153771153788%_
                (lambda (_%g153772153785%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153772153785%_))))
               (_%g153770153835%_
                (lambda (_%g153772153791%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153772153791%_))
                      (let ((_%e153775153793%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153772153791%_))))
                        (let ((_%hd153776153796%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153775153793%_)))
                              (_%tl153777153798%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153775153793%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153777153798%_))
                              (let ((_%e153778153801%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153777153798%_))))
                                (let ((_%hd153779153804%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153778153801%_)))
                                      (_%tl153780153806%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153778153801%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153780153806%_))
                                      (let ((_%e153781153809%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153780153806%_))))
                                        (let ((_%hd153782153812%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153781153809%_)))
                                              (_%tl153783153814%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153781153809%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153783153814%_))
                                              ((lambda (_%L153817%_
                                                        _%L153818%_)
                                                 (let ((_%sym153833%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L153818%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym153833%_))
                                                   (let ((__tmp154022
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp154022
                                                      _%sym153833%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self153768%_
                                                      _%L153817%_))))
                                               _%hd153782153812%_
                                               _%hd153779153804%_)
                                              (_%g153771153788%_
                                               _%g153772153791%_))))
                                      (_%g153771153788%_ _%g153772153791%_))))
                              (_%g153771153788%_ _%g153772153791%_))))
                      (_%g153771153788%_ _%g153772153791%_)))))
          (_%g153770153835%_ _%stx153769%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self153716%_ _%stx153717%_)
        (let* ((_%g153719153732%_
                (lambda (_%g153720153729%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153720153729%_))))
               (_%g153718153765%_
                (lambda (_%g153720153735%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153720153735%_))
                      (let ((_%e153722153737%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153720153735%_))))
                        (let ((_%hd153723153740%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153722153737%_)))
                              (_%tl153724153742%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153722153737%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153724153742%_))
                              (let ((_%e153725153745%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153724153742%_))))
                                (let ((_%hd153726153748%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153725153745%_)))
                                      (_%tl153727153750%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153725153745%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl153727153750%_))
                                      ((lambda (_%L153753%_)
                                         (if (let ((__tmp154023
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self153716%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L153753%_
                                                __tmp154023))
                                             (let ((__tmp154024
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self153716%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp154024
                                                _%stx153717%_))
                                             _%stx153717%_))
                                       _%hd153726153748%_)
                                      (_%g153719153732%_ _%g153720153735%_))))
                              (_%g153719153732%_ _%g153720153735%_))))
                      (_%g153719153732%_ _%g153720153735%_)))))
          (_%g153718153765%_ _%stx153717%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self153656%_ _%stx153657%_)
        (let* ((_%g153659153672%_
                (lambda (_%g153660153669%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153660153669%_))))
               (_%g153658153713%_
                (lambda (_%g153660153675%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153660153675%_))
                      (let ((_%e153662153677%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153660153675%_))))
                        (let ((_%hd153663153680%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153662153677%_)))
                              (_%tl153664153682%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153662153677%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153664153682%_))
                              (let ((_%e153665153685%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153664153682%_))))
                                (let ((_%hd153666153688%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153665153685%_)))
                                      (_%tl153667153690%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153665153685%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl153667153690%_))
                                      ((lambda (_%L153693%_)
                                         (let ((_%$e153707%_
                                                (let ((__tmp154026
                                                       (lambda (_%sub153705%_)
                                                         (let ((__tmp154027
                                                                (car _%sub153705%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L153693%_
                                                            __tmp154027))))
                                                      (__tmp154025
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self153656%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp154026
                                                          __tmp154025))))
                                           (if _%$e153707%_
                                               ((lambda (_%sub153710%_)
                                                  (let ((__tmp154028
                                                         (cons '%#ref
                                                               (cons (cdr _%sub153710%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp154028
                                                     _%stx153657%_)))
                                                _%$e153707%_)
                                               _%stx153657%_)))
                                       _%hd153666153688%_)
                                      (_%g153659153672%_ _%g153660153675%_))))
                              (_%g153659153672%_ _%g153660153675%_))))
                      (_%g153659153672%_ _%g153660153675%_)))))
          (_%g153658153713%_ _%stx153657%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self153585%_ _%stx153586%_)
        (let* ((_%g153588153605%_
                (lambda (_%g153589153602%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153589153602%_))))
               (_%g153587153653%_
                (lambda (_%g153589153608%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153589153608%_))
                      (let ((_%e153592153610%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153589153608%_))))
                        (let ((_%hd153593153613%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153592153610%_)))
                              (_%tl153594153615%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153592153610%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153594153615%_))
                              (let ((_%e153595153618%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153594153615%_))))
                                (let ((_%hd153596153621%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153595153618%_)))
                                      (_%tl153597153623%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153595153618%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153597153623%_))
                                      (let ((_%e153598153626%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153597153623%_))))
                                        (let ((_%hd153599153629%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153598153626%_)))
                                              (_%tl153600153631%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153598153626%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153600153631%_))
                                              ((lambda (_%L153634%_
                                                        _%L153635%_)
                                                 (let ((_%new-expr153650%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self153585%_
                                                           _%L153634%_)))
                                                       (_%new-xid153651%_
                                                        (if (let ((__tmp154029
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self153585%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L153635%_ __tmp154029))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self153585%_ 'new-id))
                    _%L153635%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp154030
                                                          (cons '%#set!
                                                                (cons _%new-xid153651%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr153650%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp154030
                                                      _%stx153586%_))))
                                               _%hd153599153629%_
                                               _%hd153596153621%_)
                                              (_%g153588153605%_
                                               _%g153589153608%_))))
                                      (_%g153588153605%_ _%g153589153608%_))))
                              (_%g153588153605%_ _%g153589153608%_))))
                      (_%g153588153605%_ _%g153589153608%_)))))
          (_%g153587153653%_ _%stx153586%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self153508%_ _%stx153509%_)
        (let* ((_%g153511153528%_
                (lambda (_%g153512153525%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153512153525%_))))
               (_%g153510153582%_
                (lambda (_%g153512153531%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153512153531%_))
                      (let ((_%e153515153533%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153512153531%_))))
                        (let ((_%hd153516153536%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153515153533%_)))
                              (_%tl153517153538%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153515153533%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153517153538%_))
                              (let ((_%e153518153541%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153517153538%_))))
                                (let ((_%hd153519153544%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153518153541%_)))
                                      (_%tl153520153546%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153518153541%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153520153546%_))
                                      (let ((_%e153521153549%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153520153546%_))))
                                        (let ((_%hd153522153552%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153521153549%_)))
                                              (_%tl153523153554%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153521153549%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153523153554%_))
                                              ((lambda (_%L153557%_
                                                        _%L153558%_)
                                                 (let ((_%new-expr153579%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self153508%_
                                                           _%L153557%_)))
                                                       (_%new-xid153580%_
                                                        (let ((_%$e153575%_
                                                               (let ((__tmp154032
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub153573%_)
                                (let ((__tmp154033 (car _%sub153573%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L153558%_
                                   __tmp154033))))
                             (__tmp154031
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self153508%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp154032 __tmp154031))))
                  (if _%$e153575%_ (cdr _%$e153575%_) _%L153558%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp154034
                                                          (cons '%#set!
                                                                (cons _%new-xid153580%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr153579%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp154034
                                                      _%stx153509%_))))
                                               _%hd153522153552%_
                                               _%hd153519153544%_)
                                              (_%g153511153528%_
                                               _%g153512153531%_))))
                                      (_%g153511153528%_ _%g153512153531%_))))
                              (_%g153511153528%_ _%g153512153531%_))))
                      (_%g153511153528%_ _%g153512153531%_)))))
          (_%g153510153582%_ _%stx153509%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self153454%_ _%stx153455%_)
        (let* ((_%g153457153470%_
                (lambda (_%g153458153467%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153458153467%_))))
               (_%g153456153505%_
                (lambda (_%g153458153473%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153458153473%_))
                      (let ((_%e153460153475%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153458153473%_))))
                        (let ((_%hd153461153478%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153460153475%_)))
                              (_%tl153462153480%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153460153475%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153462153480%_))
                              (let ((_%e153463153483%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153462153480%_))))
                                (let ((_%hd153464153486%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153463153483%_)))
                                      (_%tl153465153488%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153463153483%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl153465153488%_))
                                      ((lambda (_%L153491%_)
                                         (let* ((_%eid153503%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L153491%_)))
                                                (__tmp154035
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self153454%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp154035
                                            _%eid153503%_
                                            1+
                                            '0)))
                                       _%hd153464153486%_)
                                      (_%g153457153470%_ _%g153458153473%_))))
                              (_%g153457153470%_ _%g153458153473%_))))
                      (_%g153457153470%_ _%g153458153473%_)))))
          (_%g153456153505%_ _%stx153455%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self153384%_ _%stx153385%_)
        (let* ((_%g153387153404%_
                (lambda (_%g153388153401%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153388153401%_))))
               (_%g153386153451%_
                (lambda (_%g153388153407%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153388153407%_))
                      (let ((_%e153391153409%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153388153407%_))))
                        (let ((_%hd153392153412%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153391153409%_)))
                              (_%tl153393153414%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153391153409%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153393153414%_))
                              (let ((_%e153394153417%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153393153414%_))))
                                (let ((_%hd153395153420%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153394153417%_)))
                                      (_%tl153396153422%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153394153417%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153396153422%_))
                                      (let ((_%e153397153425%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153396153422%_))))
                                        (let ((_%hd153398153428%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153397153425%_)))
                                              (_%tl153399153430%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153397153425%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153399153430%_))
                                              ((lambda (_%L153433%_
                                                        _%L153434%_)
                                                 (let ((_%eid153449%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L153434%_))))
                                                   (let ((__tmp154036
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self153384%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp154036
                                                      _%eid153449%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self153384%_
                                                      _%L153433%_))))
                                               _%hd153398153428%_
                                               _%hd153395153420%_)
                                              (_%g153387153404%_
                                               _%g153388153407%_))))
                                      (_%g153387153404%_ _%g153388153407%_))))
                              (_%g153387153404%_ _%g153388153407%_))))
                      (_%g153387153404%_ _%g153388153407%_)))))
          (_%g153386153451%_ _%stx153385%_))))
    (define gxc#find-body%
      (lambda (_%self153297%_ _%stx153298%_)
        (let* ((_%g153300153319%_
                (lambda (_%g153301153316%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153301153316%_))))
               (_%g153299153381%_
                (lambda (_%g153301153322%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153301153322%_))
                      (let ((_%e153303153324%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153301153322%_))))
                        (let ((_%hd153304153327%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153303153324%_)))
                              (_%tl153305153329%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153303153324%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl153305153329%_))
                              (let ((_g154037_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl153305153329%_
                                        '0))))
                                (begin
                                  (let ((_g154038_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g154037_)
                                               (##values-length _g154037_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g154038_ 2)))
                                        (error "Context expects 2 values"
                                               _g154038_)))
                                  (let ((_%target153306153332%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g154037_ 0)))
                                        (_%tl153308153334%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g154037_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl153308153334%_))
                                        (letrec ((_%loop153309153337%_
                                                  (lambda (_%hd153307153340%_
                                                           _%expr153313153342%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd153307153340%_))
                                                        (let ((_%e153310153345%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd153307153340%_))))
                  (let ((_%lp-hd153311153348%_
                         (let ()
                           (declare (not safe))
                           (##car _%e153310153345%_)))
                        (_%lp-tl153312153350%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e153310153345%_))))
                    (_%loop153309153337%_
                     _%lp-tl153312153350%_
                     (cons _%lp-hd153311153348%_ _%expr153313153342%_))))
                (let ((_%expr153314153353%_ (reverse _%expr153313153342%_)))
                  ((lambda (_%L153356%_)
                     (let ((__tmp154041
                            (lambda (_%g153369153371%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self153297%_
                                 _%g153369153371%_))))
                           (__tmp154039
                            (let ((__tmp154040
                                   (lambda (_%g153373153376%_
                                            _%g153374153378%_)
                                     (cons _%g153373153376%_
                                           _%g153374153378%_))))
                              (declare (not safe))
                              (__foldr1 __tmp154040 '() _%L153356%_))))
                       (declare (not safe))
                       (__ormap1 __tmp154041 __tmp154039)))
                   _%expr153314153353%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop153309153337%_
                                           _%target153306153332%_
                                           '()))
                                        (_%g153300153319%_
                                         _%g153301153322%_)))))
                              (_%g153300153319%_ _%g153301153322%_))))
                      (_%g153300153319%_ _%g153301153322%_)))))
          (_%g153299153381%_ _%stx153298%_))))
    (define gxc#find-let-values%
      (lambda (_%self153147%_ _%stx153148%_)
        (let* ((_%g153150153185%_
                (lambda (_%g153151153182%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153151153182%_))))
               (_%g153149153294%_
                (lambda (_%g153151153188%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153151153188%_))
                      (let ((_%e153155153190%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153151153188%_))))
                        (let ((_%hd153156153193%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153155153190%_)))
                              (_%tl153157153195%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153155153190%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153157153195%_))
                              (let ((_%e153158153198%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153157153195%_))))
                                (let ((_%hd153159153201%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153158153198%_)))
                                      (_%tl153160153203%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153158153198%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd153159153201%_))
                                      (let ((_g154042_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd153159153201%_
                                                '0))))
                                        (begin
                                          (let ((_g154043_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g154042_)
                                                       (##values-length
                                                        _g154042_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g154043_ 2)))
                                                (error "Context expects 2 values"
                                                       _g154043_)))
                                          (let ((_%target153161153206%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g154042_ 0)))
                                                (_%tl153163153208%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g154042_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl153163153208%_))
                                                (letrec ((_%loop153164153211%_
                                                          (lambda (_%hd153162153214%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr153168153216%_
                           _%bind153169153218%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd153162153214%_))
                        (let ((_%e153165153221%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd153162153214%_))))
                          (let ((_%lp-hd153166153224%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e153165153221%_)))
                                (_%lp-tl153167153226%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e153165153221%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd153166153224%_))
                                (let ((_%e153175153229%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd153166153224%_))))
                                  (let ((_%hd153176153232%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e153175153229%_)))
                                        (_%tl153177153234%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e153175153229%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl153177153234%_))
                                        (let ((_%e153178153237%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl153177153234%_))))
                                          (let ((_%hd153179153240%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e153178153237%_)))
                                                (_%tl153180153242%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e153178153237%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl153180153242%_))
                                                (_%loop153164153211%_
                                                 _%lp-tl153167153226%_
                                                 (cons _%hd153179153240%_
                                                       _%expr153168153216%_)
                                                 (cons _%hd153176153232%_
                                                       _%bind153169153218%_))
                                                (_%g153150153185%_
                                                 _%g153151153188%_))))
                                        (_%g153150153185%_
                                         _%g153151153188%_))))
                                (_%g153150153185%_ _%g153151153188%_))))
                        (let ((_%expr153170153245%_
                               (reverse _%expr153168153216%_))
                              (_%bind153171153247%_
                               (reverse _%bind153169153218%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153160153203%_))
                              (let ((_%e153172153250%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153160153203%_))))
                                (let ((_%hd153173153253%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153172153250%_)))
                                      (_%tl153174153255%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153172153250%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl153174153255%_))
                                      ((lambda (_%L153258%_
                                                _%L153259%_
                                                _%L153260%_)
                                         (let ((_%$e153291%_
                                                (let ((__tmp154046
                                                       (lambda (_%g153279153281%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self153147%_
                                                            _%g153279153281%_))))
                                                      (__tmp154044
                                                       (let ((__tmp154045
                                                              (lambda (_%g153283153286%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g153284153288%_)
                        (cons _%g153283153286%_ _%g153284153288%_))))
                 (declare (not safe))
                 (__foldr1 __tmp154045 '() _%L153259%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp154046
                                                   __tmp154044))))
                                           (if _%$e153291%_
                                               _%$e153291%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self153147%_
                                                  _%L153258%_)))))
                                       _%hd153173153253%_
                                       _%expr153170153245%_
                                       _%bind153171153247%_)
                                      (_%g153150153185%_ _%g153151153188%_))))
                              (_%g153150153185%_ _%g153151153188%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop153164153211%_
                                                   _%target153161153206%_
                                                   '()
                                                   '()))
                                                (_%g153150153185%_
                                                 _%g153151153188%_)))))
                                      (_%g153150153185%_ _%g153151153188%_))))
                              (_%g153150153185%_ _%g153151153188%_))))
                      (_%g153150153185%_ _%g153151153188%_)))))
          (_%g153149153294%_ _%stx153148%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self153091%_ _%stx153092%_)
        (let* ((_%g153094153107%_
                (lambda (_%g153095153104%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153095153104%_))))
               (_%g153093153144%_
                (lambda (_%g153095153110%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153095153110%_))
                      (let ((_%e153097153112%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153095153110%_))))
                        (let ((_%hd153098153115%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153097153112%_)))
                              (_%tl153099153117%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153097153112%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153099153117%_))
                              (let ((_%e153100153120%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153099153117%_))))
                                (let ((_%hd153101153123%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153100153120%_)))
                                      (_%tl153102153125%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153100153120%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl153102153125%_))
                                      ((lambda (_%L153128%_)
                                         (let ((__tmp154048
                                                (lambda (_%g153139153141%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L153128%_
                                                     _%g153139153141%_))))
                                               (__tmp154047
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self153091%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp154048 __tmp154047)))
                                       _%hd153101153123%_)
                                      (_%g153094153107%_ _%g153095153110%_))))
                              (_%g153094153107%_ _%g153095153110%_))))
                      (_%g153094153107%_ _%g153095153110%_)))))
          (_%g153093153144%_ _%stx153092%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self153016%_ _%stx153017%_)
        (let* ((_%g153019153036%_
                (lambda (_%g153020153033%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153020153033%_))))
               (_%g153018153088%_
                (lambda (_%g153020153039%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153020153039%_))
                      (let ((_%e153023153041%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153020153039%_))))
                        (let ((_%hd153024153044%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153023153041%_)))
                              (_%tl153025153046%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153023153041%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153025153046%_))
                              (let ((_%e153026153049%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153025153046%_))))
                                (let ((_%hd153027153052%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153026153049%_)))
                                      (_%tl153028153054%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153026153049%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153028153054%_))
                                      (let ((_%e153029153057%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153028153054%_))))
                                        (let ((_%hd153030153060%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153029153057%_)))
                                              (_%tl153031153062%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153029153057%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153031153062%_))
                                              ((lambda (_%L153065%_
                                                        _%L153066%_)
                                                 (let ((_%$e153085%_
                                                        (let ((__tmp154050
                                                               (lambda (_%g153080153082%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L153066%_
                            _%g153080153082%_))))
                      (__tmp154049
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self153016%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp154050 __tmp154049))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e153085%_
                                                       _%$e153085%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self153016%_
                                                          _%L153065%_)))))
                                               _%hd153030153060%_
                                               _%hd153027153052%_)
                                              (_%g153019153036%_
                                               _%g153020153039%_))))
                                      (_%g153019153036%_ _%g153020153039%_))))
                              (_%g153019153036%_ _%g153020153039%_))))
                      (_%g153019153036%_ _%g153020153039%_)))))
          (_%g153018153088%_ _%stx153017%_))))))
