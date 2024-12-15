(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1734278446)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp154893 (list gxc#::void::t))
            (__tmp154892 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp154893
         '()
         __tmp154892
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args154879%_
        (apply make-instance gxc#::collect-mutators::t _%$args154879%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp154894
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
        (__make-promise __tmp154894)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx154871%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self154874%_
                (let ((__obj154882
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj154882))
               (__tmp154895
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self154874%_ _%stx154871%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp154895
           gxc#current-compile-method
           _%self154874%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp154897 (list gxc#::basic-xform-expression::t))
            (__tmp154896 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp154897
         '(id new-id)
         __tmp154896
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args154868%_
        (apply make-instance gxc#::expression-subst::t _%$args154868%_)))
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
      (let ((__tmp154898
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
        (__make-promise __tmp154898)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords154838%_
               _%id154834154839%_
               _%new-id154835154841%_
               _%stx154843%_)
        (let* ((_%id154846%_
                (if (eq? _%id154834154839%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id154834154839%_))
               (_%new-id154848%_
                (if (eq? _%new-id154835154841%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id154835154841%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self154850%_
                  (let ((__obj154884
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj154884
                       _%id154846%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj154884
                       _%new-id154848%_
                       '2
                       '#f
                       '#f))
                    __obj154884))
                 (__tmp154899
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self154850%_ _%stx154843%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp154899
             gxc#current-compile-method
             _%self154850%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords154857%_ . _%args154858%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords154857%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords154857%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords154857%_
                  'new-id:
                  absent-value))
               _%args154858%_)))
    (define gxc#apply-expression-subst
      (lambda _%args154836154864%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args154836154864%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp154901 (list gxc#::basic-xform-expression::t))
            (__tmp154900 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp154901
         '(subst)
         __tmp154900
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args154830%_
        (apply make-instance gxc#::expression-subst*::t _%$args154830%_)))
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
      (let ((__tmp154902
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
        (__make-promise __tmp154902)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords154804%_ _%subst154801154805%_ _%stx154807%_)
        (let ((_%subst154810%_
               (if (eq? _%subst154801154805%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst154801154805%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self154812%_
                  (let ((__obj154886
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj154886
                       _%subst154810%_
                       '1
                       '#f
                       '#f))
                    __obj154886))
                 (__tmp154903
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self154812%_ _%stx154807%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp154903
             gxc#current-compile-method
             _%self154812%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords154819%_ . _%args154820%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords154819%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords154819%_
                  'subst:
                  absent-value))
               _%args154820%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args154802154826%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args154802154826%_)))
    (define gxc#::find-expression::t
      (let ((__tmp154904 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp154904
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args154797%_
        (apply make-instance gxc#::find-expression::t _%$args154797%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp154905
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
        (__make-promise __tmp154905)))
    (define gxc#::find-var-refs::t
      (let ((__tmp154907 (list gxc#::find-expression::t))
            (__tmp154906 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp154907
         '(ids)
         __tmp154906
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args154793%_
        (apply make-instance gxc#::find-var-refs::t _%$args154793%_)))
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
      (let ((__tmp154908
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
        (__make-promise __tmp154908)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords154767%_ _%ids154764154768%_ _%stx154770%_)
        (let ((_%ids154773%_
               (if (eq? _%ids154764154768%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids154764154768%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self154775%_
                  (let ((__obj154889
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj154889
                       _%ids154773%_
                       '1
                       '#f
                       '#f))
                    __obj154889))
                 (__tmp154909
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self154775%_ _%stx154770%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp154909
             gxc#current-compile-method
             _%self154775%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords154782%_ . _%args154783%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords154782%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords154782%_ 'ids: absent-value))
               _%args154783%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args154765154789%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args154765154789%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp154911 (list gxc#::collect-expression-refs::t))
            (__tmp154910 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp154911
         '()
         __tmp154910
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args154760%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args154760%_)))
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
      (let ((__tmp154912
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
        (__make-promise __tmp154912)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords154734%_ _%table154731154735%_ _%stx154737%_)
        (let ((_%table154740%_
               (if (eq? _%table154731154735%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table154731154735%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self154742%_
                  (let ((__obj154891
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj154891
                       _%table154740%_
                       '1
                       '#f
                       '#f))
                    __obj154891))
                 (__tmp154913
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self154742%_ _%stx154737%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp154913
             gxc#current-compile-method
             _%self154742%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords154749%_ . _%args154750%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords154749%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords154749%_
                  'table:
                  absent-value))
               _%args154750%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args154732154756%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args154732154756%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self154660%_ _%stx154661%_)
        (let* ((_%g154663154680%_
                (lambda (_%g154664154677%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154664154677%_))))
               (_%g154662154727%_
                (lambda (_%g154664154683%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154664154683%_))
                      (let ((_%e154667154685%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154664154683%_))))
                        (let ((_%hd154668154688%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154667154685%_)))
                              (_%tl154669154690%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154667154685%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154669154690%_))
                              (let ((_%e154670154693%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154669154690%_))))
                                (let ((_%hd154671154696%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154670154693%_)))
                                      (_%tl154672154698%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154670154693%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl154672154698%_))
                                      (let ((_%e154673154701%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl154672154698%_))))
                                        (let ((_%hd154674154704%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e154673154701%_)))
                                              (_%tl154675154706%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e154673154701%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl154675154706%_))
                                              ((lambda (_%L154709%_
                                                        _%L154710%_)
                                                 (let ((_%sym154725%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L154710%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym154725%_))
                                                   (let ((__tmp154914
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp154914
                                                      _%sym154725%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self154660%_
                                                      _%L154709%_))))
                                               _%hd154674154704%_
                                               _%hd154671154696%_)
                                              (_%g154663154680%_
                                               _%g154664154683%_))))
                                      (_%g154663154680%_ _%g154664154683%_))))
                              (_%g154663154680%_ _%g154664154683%_))))
                      (_%g154663154680%_ _%g154664154683%_)))))
          (_%g154662154727%_ _%stx154661%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self154608%_ _%stx154609%_)
        (let* ((_%g154611154624%_
                (lambda (_%g154612154621%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154612154621%_))))
               (_%g154610154657%_
                (lambda (_%g154612154627%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154612154627%_))
                      (let ((_%e154614154629%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154612154627%_))))
                        (let ((_%hd154615154632%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154614154629%_)))
                              (_%tl154616154634%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154614154629%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154616154634%_))
                              (let ((_%e154617154637%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154616154634%_))))
                                (let ((_%hd154618154640%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154617154637%_)))
                                      (_%tl154619154642%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154617154637%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl154619154642%_))
                                      ((lambda (_%L154645%_)
                                         (if (let ((__tmp154915
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self154608%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L154645%_
                                                __tmp154915))
                                             (let ((__tmp154916
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self154608%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp154916
                                                _%stx154609%_))
                                             _%stx154609%_))
                                       _%hd154618154640%_)
                                      (_%g154611154624%_ _%g154612154627%_))))
                              (_%g154611154624%_ _%g154612154627%_))))
                      (_%g154611154624%_ _%g154612154627%_)))))
          (_%g154610154657%_ _%stx154609%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self154548%_ _%stx154549%_)
        (let* ((_%g154551154564%_
                (lambda (_%g154552154561%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154552154561%_))))
               (_%g154550154605%_
                (lambda (_%g154552154567%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154552154567%_))
                      (let ((_%e154554154569%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154552154567%_))))
                        (let ((_%hd154555154572%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154554154569%_)))
                              (_%tl154556154574%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154554154569%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154556154574%_))
                              (let ((_%e154557154577%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154556154574%_))))
                                (let ((_%hd154558154580%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154557154577%_)))
                                      (_%tl154559154582%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154557154577%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl154559154582%_))
                                      ((lambda (_%L154585%_)
                                         (let ((_%$e154599%_
                                                (let ((__tmp154918
                                                       (lambda (_%sub154597%_)
                                                         (let ((__tmp154919
                                                                (car _%sub154597%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L154585%_
                                                            __tmp154919))))
                                                      (__tmp154917
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self154548%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp154918
                                                          __tmp154917))))
                                           (if _%$e154599%_
                                               ((lambda (_%sub154602%_)
                                                  (let ((__tmp154920
                                                         (cons '%#ref
                                                               (cons (cdr _%sub154602%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp154920
                                                     _%stx154549%_)))
                                                _%$e154599%_)
                                               _%stx154549%_)))
                                       _%hd154558154580%_)
                                      (_%g154551154564%_ _%g154552154567%_))))
                              (_%g154551154564%_ _%g154552154567%_))))
                      (_%g154551154564%_ _%g154552154567%_)))))
          (_%g154550154605%_ _%stx154549%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self154477%_ _%stx154478%_)
        (let* ((_%g154480154497%_
                (lambda (_%g154481154494%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154481154494%_))))
               (_%g154479154545%_
                (lambda (_%g154481154500%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154481154500%_))
                      (let ((_%e154484154502%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154481154500%_))))
                        (let ((_%hd154485154505%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154484154502%_)))
                              (_%tl154486154507%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154484154502%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154486154507%_))
                              (let ((_%e154487154510%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154486154507%_))))
                                (let ((_%hd154488154513%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154487154510%_)))
                                      (_%tl154489154515%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154487154510%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl154489154515%_))
                                      (let ((_%e154490154518%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl154489154515%_))))
                                        (let ((_%hd154491154521%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e154490154518%_)))
                                              (_%tl154492154523%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e154490154518%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl154492154523%_))
                                              ((lambda (_%L154526%_
                                                        _%L154527%_)
                                                 (let ((_%new-expr154542%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self154477%_
                                                           _%L154526%_)))
                                                       (_%new-xid154543%_
                                                        (if (let ((__tmp154921
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self154477%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L154527%_ __tmp154921))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self154477%_ 'new-id))
                    _%L154527%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp154922
                                                          (cons '%#set!
                                                                (cons _%new-xid154543%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr154542%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp154922
                                                      _%stx154478%_))))
                                               _%hd154491154521%_
                                               _%hd154488154513%_)
                                              (_%g154480154497%_
                                               _%g154481154500%_))))
                                      (_%g154480154497%_ _%g154481154500%_))))
                              (_%g154480154497%_ _%g154481154500%_))))
                      (_%g154480154497%_ _%g154481154500%_)))))
          (_%g154479154545%_ _%stx154478%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self154400%_ _%stx154401%_)
        (let* ((_%g154403154420%_
                (lambda (_%g154404154417%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154404154417%_))))
               (_%g154402154474%_
                (lambda (_%g154404154423%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154404154423%_))
                      (let ((_%e154407154425%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154404154423%_))))
                        (let ((_%hd154408154428%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154407154425%_)))
                              (_%tl154409154430%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154407154425%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154409154430%_))
                              (let ((_%e154410154433%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154409154430%_))))
                                (let ((_%hd154411154436%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154410154433%_)))
                                      (_%tl154412154438%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154410154433%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl154412154438%_))
                                      (let ((_%e154413154441%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl154412154438%_))))
                                        (let ((_%hd154414154444%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e154413154441%_)))
                                              (_%tl154415154446%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e154413154441%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl154415154446%_))
                                              ((lambda (_%L154449%_
                                                        _%L154450%_)
                                                 (let ((_%new-expr154471%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self154400%_
                                                           _%L154449%_)))
                                                       (_%new-xid154472%_
                                                        (let ((_%$e154467%_
                                                               (let ((__tmp154924
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub154465%_)
                                (let ((__tmp154925 (car _%sub154465%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L154450%_
                                   __tmp154925))))
                             (__tmp154923
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self154400%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp154924 __tmp154923))))
                  (if _%$e154467%_ (cdr _%$e154467%_) _%L154450%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp154926
                                                          (cons '%#set!
                                                                (cons _%new-xid154472%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr154471%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp154926
                                                      _%stx154401%_))))
                                               _%hd154414154444%_
                                               _%hd154411154436%_)
                                              (_%g154403154420%_
                                               _%g154404154423%_))))
                                      (_%g154403154420%_ _%g154404154423%_))))
                              (_%g154403154420%_ _%g154404154423%_))))
                      (_%g154403154420%_ _%g154404154423%_)))))
          (_%g154402154474%_ _%stx154401%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self154346%_ _%stx154347%_)
        (let* ((_%g154349154362%_
                (lambda (_%g154350154359%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154350154359%_))))
               (_%g154348154397%_
                (lambda (_%g154350154365%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154350154365%_))
                      (let ((_%e154352154367%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154350154365%_))))
                        (let ((_%hd154353154370%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154352154367%_)))
                              (_%tl154354154372%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154352154367%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154354154372%_))
                              (let ((_%e154355154375%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154354154372%_))))
                                (let ((_%hd154356154378%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154355154375%_)))
                                      (_%tl154357154380%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154355154375%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl154357154380%_))
                                      ((lambda (_%L154383%_)
                                         (let* ((_%eid154395%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L154383%_)))
                                                (__tmp154927
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self154346%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp154927
                                            _%eid154395%_
                                            1+
                                            '0)))
                                       _%hd154356154378%_)
                                      (_%g154349154362%_ _%g154350154365%_))))
                              (_%g154349154362%_ _%g154350154365%_))))
                      (_%g154349154362%_ _%g154350154365%_)))))
          (_%g154348154397%_ _%stx154347%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self154276%_ _%stx154277%_)
        (let* ((_%g154279154296%_
                (lambda (_%g154280154293%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154280154293%_))))
               (_%g154278154343%_
                (lambda (_%g154280154299%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154280154299%_))
                      (let ((_%e154283154301%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154280154299%_))))
                        (let ((_%hd154284154304%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154283154301%_)))
                              (_%tl154285154306%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154283154301%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154285154306%_))
                              (let ((_%e154286154309%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154285154306%_))))
                                (let ((_%hd154287154312%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154286154309%_)))
                                      (_%tl154288154314%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154286154309%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl154288154314%_))
                                      (let ((_%e154289154317%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl154288154314%_))))
                                        (let ((_%hd154290154320%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e154289154317%_)))
                                              (_%tl154291154322%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e154289154317%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl154291154322%_))
                                              ((lambda (_%L154325%_
                                                        _%L154326%_)
                                                 (let ((_%eid154341%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L154326%_))))
                                                   (let ((__tmp154928
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self154276%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp154928
                                                      _%eid154341%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self154276%_
                                                      _%L154325%_))))
                                               _%hd154290154320%_
                                               _%hd154287154312%_)
                                              (_%g154279154296%_
                                               _%g154280154299%_))))
                                      (_%g154279154296%_ _%g154280154299%_))))
                              (_%g154279154296%_ _%g154280154299%_))))
                      (_%g154279154296%_ _%g154280154299%_)))))
          (_%g154278154343%_ _%stx154277%_))))
    (define gxc#find-body%
      (lambda (_%self154189%_ _%stx154190%_)
        (let* ((_%g154192154211%_
                (lambda (_%g154193154208%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154193154208%_))))
               (_%g154191154273%_
                (lambda (_%g154193154214%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154193154214%_))
                      (let ((_%e154195154216%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154193154214%_))))
                        (let ((_%hd154196154219%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154195154216%_)))
                              (_%tl154197154221%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154195154216%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl154197154221%_))
                              (let ((_g154929_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl154197154221%_
                                        '0))))
                                (begin
                                  (let ((_g154930_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g154929_)
                                               (##values-length _g154929_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g154930_ 2)))
                                        (error "Context expects 2 values"
                                               _g154930_)))
                                  (let ((_%target154198154224%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g154929_ 0)))
                                        (_%tl154200154226%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g154929_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl154200154226%_))
                                        (letrec ((_%loop154201154229%_
                                                  (lambda (_%hd154199154232%_
                                                           _%expr154205154234%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd154199154232%_))
                                                        (let ((_%e154202154237%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd154199154232%_))))
                  (let ((_%lp-hd154203154240%_
                         (let ()
                           (declare (not safe))
                           (##car _%e154202154237%_)))
                        (_%lp-tl154204154242%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e154202154237%_))))
                    (_%loop154201154229%_
                     _%lp-tl154204154242%_
                     (cons _%lp-hd154203154240%_ _%expr154205154234%_))))
                (let ((_%expr154206154245%_ (reverse _%expr154205154234%_)))
                  ((lambda (_%L154248%_)
                     (let ((__tmp154933
                            (lambda (_%g154261154263%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self154189%_
                                 _%g154261154263%_))))
                           (__tmp154931
                            (let ((__tmp154932
                                   (lambda (_%g154265154268%_
                                            _%g154266154270%_)
                                     (cons _%g154265154268%_
                                           _%g154266154270%_))))
                              (declare (not safe))
                              (__foldr1 __tmp154932 '() _%L154248%_))))
                       (declare (not safe))
                       (__ormap1 __tmp154933 __tmp154931)))
                   _%expr154206154245%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop154201154229%_
                                           _%target154198154224%_
                                           '()))
                                        (_%g154192154211%_
                                         _%g154193154214%_)))))
                              (_%g154192154211%_ _%g154193154214%_))))
                      (_%g154192154211%_ _%g154193154214%_)))))
          (_%g154191154273%_ _%stx154190%_))))
    (define gxc#find-let-values%
      (lambda (_%self154039%_ _%stx154040%_)
        (let* ((_%g154042154077%_
                (lambda (_%g154043154074%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g154043154074%_))))
               (_%g154041154186%_
                (lambda (_%g154043154080%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g154043154080%_))
                      (let ((_%e154047154082%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g154043154080%_))))
                        (let ((_%hd154048154085%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154047154082%_)))
                              (_%tl154049154087%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154047154082%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154049154087%_))
                              (let ((_%e154050154090%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154049154087%_))))
                                (let ((_%hd154051154093%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154050154090%_)))
                                      (_%tl154052154095%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154050154090%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd154051154093%_))
                                      (let ((_g154934_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd154051154093%_
                                                '0))))
                                        (begin
                                          (let ((_g154935_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g154934_)
                                                       (##values-length
                                                        _g154934_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g154935_ 2)))
                                                (error "Context expects 2 values"
                                                       _g154935_)))
                                          (let ((_%target154053154098%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g154934_ 0)))
                                                (_%tl154055154100%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g154934_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl154055154100%_))
                                                (letrec ((_%loop154056154103%_
                                                          (lambda (_%hd154054154106%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr154060154108%_
                           _%bind154061154110%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd154054154106%_))
                        (let ((_%e154057154113%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd154054154106%_))))
                          (let ((_%lp-hd154058154116%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e154057154113%_)))
                                (_%lp-tl154059154118%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e154057154113%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd154058154116%_))
                                (let ((_%e154067154121%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd154058154116%_))))
                                  (let ((_%hd154068154124%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e154067154121%_)))
                                        (_%tl154069154126%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e154067154121%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl154069154126%_))
                                        (let ((_%e154070154129%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl154069154126%_))))
                                          (let ((_%hd154071154132%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e154070154129%_)))
                                                (_%tl154072154134%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e154070154129%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl154072154134%_))
                                                (_%loop154056154103%_
                                                 _%lp-tl154059154118%_
                                                 (cons _%hd154071154132%_
                                                       _%expr154060154108%_)
                                                 (cons _%hd154068154124%_
                                                       _%bind154061154110%_))
                                                (_%g154042154077%_
                                                 _%g154043154080%_))))
                                        (_%g154042154077%_
                                         _%g154043154080%_))))
                                (_%g154042154077%_ _%g154043154080%_))))
                        (let ((_%expr154062154137%_
                               (reverse _%expr154060154108%_))
                              (_%bind154063154139%_
                               (reverse _%bind154061154110%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl154052154095%_))
                              (let ((_%e154064154142%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl154052154095%_))))
                                (let ((_%hd154065154145%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154064154142%_)))
                                      (_%tl154066154147%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154064154142%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl154066154147%_))
                                      ((lambda (_%L154150%_
                                                _%L154151%_
                                                _%L154152%_)
                                         (let ((_%$e154183%_
                                                (let ((__tmp154938
                                                       (lambda (_%g154171154173%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self154039%_
                                                            _%g154171154173%_))))
                                                      (__tmp154936
                                                       (let ((__tmp154937
                                                              (lambda (_%g154175154178%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g154176154180%_)
                        (cons _%g154175154178%_ _%g154176154180%_))))
                 (declare (not safe))
                 (__foldr1 __tmp154937 '() _%L154151%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp154938
                                                   __tmp154936))))
                                           (if _%$e154183%_
                                               _%$e154183%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self154039%_
                                                  _%L154150%_)))))
                                       _%hd154065154145%_
                                       _%expr154062154137%_
                                       _%bind154063154139%_)
                                      (_%g154042154077%_ _%g154043154080%_))))
                              (_%g154042154077%_ _%g154043154080%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop154056154103%_
                                                   _%target154053154098%_
                                                   '()
                                                   '()))
                                                (_%g154042154077%_
                                                 _%g154043154080%_)))))
                                      (_%g154042154077%_ _%g154043154080%_))))
                              (_%g154042154077%_ _%g154043154080%_))))
                      (_%g154042154077%_ _%g154043154080%_)))))
          (_%g154041154186%_ _%stx154040%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self153983%_ _%stx153984%_)
        (let* ((_%g153986153999%_
                (lambda (_%g153987153996%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153987153996%_))))
               (_%g153985154036%_
                (lambda (_%g153987154002%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153987154002%_))
                      (let ((_%e153989154004%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153987154002%_))))
                        (let ((_%hd153990154007%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153989154004%_)))
                              (_%tl153991154009%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153989154004%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153991154009%_))
                              (let ((_%e153992154012%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153991154009%_))))
                                (let ((_%hd153993154015%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153992154012%_)))
                                      (_%tl153994154017%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153992154012%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl153994154017%_))
                                      ((lambda (_%L154020%_)
                                         (let ((__tmp154940
                                                (lambda (_%g154031154033%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L154020%_
                                                     _%g154031154033%_))))
                                               (__tmp154939
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self153983%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp154940 __tmp154939)))
                                       _%hd153993154015%_)
                                      (_%g153986153999%_ _%g153987154002%_))))
                              (_%g153986153999%_ _%g153987154002%_))))
                      (_%g153986153999%_ _%g153987154002%_)))))
          (_%g153985154036%_ _%stx153984%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self153908%_ _%stx153909%_)
        (let* ((_%g153911153928%_
                (lambda (_%g153912153925%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153912153925%_))))
               (_%g153910153980%_
                (lambda (_%g153912153931%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153912153931%_))
                      (let ((_%e153915153933%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153912153931%_))))
                        (let ((_%hd153916153936%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153915153933%_)))
                              (_%tl153917153938%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153915153933%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153917153938%_))
                              (let ((_%e153918153941%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153917153938%_))))
                                (let ((_%hd153919153944%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153918153941%_)))
                                      (_%tl153920153946%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153918153941%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153920153946%_))
                                      (let ((_%e153921153949%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153920153946%_))))
                                        (let ((_%hd153922153952%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153921153949%_)))
                                              (_%tl153923153954%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153921153949%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153923153954%_))
                                              ((lambda (_%L153957%_
                                                        _%L153958%_)
                                                 (let ((_%$e153977%_
                                                        (let ((__tmp154942
                                                               (lambda (_%g153972153974%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L153958%_
                            _%g153972153974%_))))
                      (__tmp154941
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self153908%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp154942 __tmp154941))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e153977%_
                                                       _%$e153977%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self153908%_
                                                          _%L153957%_)))))
                                               _%hd153922153952%_
                                               _%hd153919153944%_)
                                              (_%g153911153928%_
                                               _%g153912153931%_))))
                                      (_%g153911153928%_ _%g153912153931%_))))
                              (_%g153911153928%_ _%g153912153931%_))))
                      (_%g153911153928%_ _%g153912153931%_)))))
          (_%g153910153980%_ _%stx153909%_))))))
