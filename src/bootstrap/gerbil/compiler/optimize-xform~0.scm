(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1712643209)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp150266 (list gxc#::void::t))
            (__tmp150265 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp150266
         '()
         __tmp150265
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args150006%_
        (apply make-instance gxc#::collect-mutators::t _%$args150006%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp150267
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
        (__make-promise __tmp150267)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx149998%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self150001%_
                (let ((__obj150253
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj150253))
               (__tmp150268
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self150001%_ _%stx149998%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150268
           gxc#current-compile-method
           _%self150001%_))))
    (define gxc#::collect-methods::t
      (let ((__tmp150270 (list gxc#::void::t))
            (__tmp150269 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-methods::t
         '::collect-methods
         __tmp150270
         '()
         __tmp150269
         '#f)))
    (define gxc#::collect-methods?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-methods::t)))
    (define gxc#make-::collect-methods
      (lambda _%$args149995%_
        (apply make-instance gxc#::collect-methods::t _%$args149995%_)))
    (define gxc#::collect-methods-bind-methods!
      (let ((__tmp150271
             (lambda ()
               (force gxc#::void-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-methods::t
                  '%#begin
                  gxc#apply-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-methods::t
                  '%#begin-syntax
                  gxc#apply-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-methods::t
                  '%#module
                  gxc#apply-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-methods::t
                  '%#call
                  gxc#collect-methods-call%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-methods::t
                  '%#call-unchecked
                  gxc#collect-methods-call%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::collect-methods::t)))))
        (declare (not safe))
        (__make-promise __tmp150271)))
    (define gxc#apply-collect-methods
      (lambda (_%stx149987%_)
        (force gxc#::collect-methods-bind-methods!)
        (let* ((_%self149990%_
                (let ((__obj150255
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-methods::t))))
                  __obj150255))
               (__tmp150272
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self149990%_ _%stx149987%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150272
           gxc#current-compile-method
           _%self149990%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp150274 (list gxc#::basic-xform-expression::t))
            (__tmp150273 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp150274
         '(id new-id)
         __tmp150273
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args149984%_
        (apply make-instance gxc#::expression-subst::t _%$args149984%_)))
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
      (let ((__tmp150275
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
        (__make-promise __tmp150275)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords149954%_
               _%id149950149955%_
               _%new-id149951149957%_
               _%stx149959%_)
        (let* ((_%id149962%_
                (if (eq? _%id149950149955%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id149950149955%_))
               (_%new-id149964%_
                (if (eq? _%new-id149951149957%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id149951149957%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self149966%_
                  (let ((__obj150257
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150257
                       _%id149962%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150257
                       _%new-id149964%_
                       '2
                       '#f
                       '#f))
                    __obj150257))
                 (__tmp150276
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self149966%_ _%stx149959%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150276
             gxc#current-compile-method
             _%self149966%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords149973%_ . _%args149974%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords149973%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords149973%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords149973%_
                  'new-id:
                  absent-value))
               _%args149974%_)))
    (define gxc#apply-expression-subst
      (lambda _%args149952149980%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args149952149980%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp150278 (list gxc#::basic-xform-expression::t))
            (__tmp150277 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp150278
         '(subst)
         __tmp150277
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args149946%_
        (apply make-instance gxc#::expression-subst*::t _%$args149946%_)))
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
      (let ((__tmp150279
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
        (__make-promise __tmp150279)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords149920%_ _%subst149917149921%_ _%stx149923%_)
        (let ((_%subst149926%_
               (if (eq? _%subst149917149921%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst149917149921%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self149928%_
                  (let ((__obj150259
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150259
                       _%subst149926%_
                       '1
                       '#f
                       '#f))
                    __obj150259))
                 (__tmp150280
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self149928%_ _%stx149923%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150280
             gxc#current-compile-method
             _%self149928%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords149935%_ . _%args149936%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords149935%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords149935%_
                  'subst:
                  absent-value))
               _%args149936%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args149918149942%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args149918149942%_)))
    (define gxc#::find-expression::t
      (let ((__tmp150281 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp150281
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args149913%_
        (apply make-instance gxc#::find-expression::t _%$args149913%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp150282
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
        (__make-promise __tmp150282)))
    (define gxc#::find-var-refs::t
      (let ((__tmp150284 (list gxc#::find-expression::t))
            (__tmp150283 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp150284
         '(ids)
         __tmp150283
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args149909%_
        (apply make-instance gxc#::find-var-refs::t _%$args149909%_)))
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
      (let ((__tmp150285
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
        (__make-promise __tmp150285)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords149883%_ _%ids149880149884%_ _%stx149886%_)
        (let ((_%ids149889%_
               (if (eq? _%ids149880149884%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids149880149884%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self149891%_
                  (let ((__obj150262
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150262
                       _%ids149889%_
                       '1
                       '#f
                       '#f))
                    __obj150262))
                 (__tmp150286
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self149891%_ _%stx149886%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150286
             gxc#current-compile-method
             _%self149891%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords149898%_ . _%args149899%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords149898%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords149898%_ 'ids: absent-value))
               _%args149899%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args149881149905%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args149881149905%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp150288 (list gxc#::collect-expression-refs::t))
            (__tmp150287 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp150288
         '()
         __tmp150287
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args149876%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args149876%_)))
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
      (let ((__tmp150289
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
        (__make-promise __tmp150289)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords149850%_ _%table149847149851%_ _%stx149853%_)
        (let ((_%table149856%_
               (if (eq? _%table149847149851%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table149847149851%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self149858%_
                  (let ((__obj150264
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150264
                       _%table149856%_
                       '1
                       '#f
                       '#f))
                    __obj150264))
                 (__tmp150290
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self149858%_ _%stx149853%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150290
             gxc#current-compile-method
             _%self149858%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords149865%_ . _%args149866%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords149865%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords149865%_
                  'table:
                  absent-value))
               _%args149866%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args149848149872%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args149848149872%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self149776%_ _%stx149777%_)
        (let* ((_%g149779149796%_
                (lambda (_%g149780149793%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149780149793%_))))
               (_%g149778149843%_
                (lambda (_%g149780149799%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149780149799%_))
                      (let ((_%e149783149801%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149780149799%_))))
                        (let ((_%hd149784149804%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149783149801%_)))
                              (_%tl149785149806%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149783149801%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149785149806%_))
                              (let ((_%e149786149809%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149785149806%_))))
                                (let ((_%hd149787149812%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149786149809%_)))
                                      (_%tl149788149814%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149786149809%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149788149814%_))
                                      (let ((_%e149789149817%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149788149814%_))))
                                        (let ((_%hd149790149820%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149789149817%_)))
                                              (_%tl149791149822%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149789149817%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149791149822%_))
                                              ((lambda (_%L149825%_
                                                        _%L149826%_)
                                                 (let ((_%sym149841%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L149826%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym149841%_))
                                                   (let ((__tmp150291
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp150291
                                                      _%sym149841%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self149776%_
                                                      _%L149825%_))))
                                               _%hd149790149820%_
                                               _%hd149787149812%_)
                                              (_%g149779149796%_
                                               _%g149780149799%_))))
                                      (_%g149779149796%_ _%g149780149799%_))))
                              (_%g149779149796%_ _%g149780149799%_))))
                      (_%g149779149796%_ _%g149780149799%_)))))
          (_%g149778149843%_ _%stx149777%_))))
    (define gxc#collect-methods-call%
      (lambda (_%self149329%_ _%stx149330%_)
        (let* ((_%__stx150009150010%_ _%stx149330%_)
               (_%g149334149436%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx150009150010%_)))))
          (let ((_%__kont150011150012%_
                 (lambda (_%L149726%_
                          _%L149727%_
                          _%L149728%_
                          _%L149729%_
                          _%L149730%_)
                   (let ((__tmp150292
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _%L149727%_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp150292))))
                (_%__kont150013150014%_
                 (lambda (_%L149552%_ _%L149553%_ _%L149554%_ _%L149555%_)
                   (let ((__tmp150293
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _%L149552%_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp150293))))
                (_%__kont150015150016%_ (lambda () '#!void)))
            (let ((_%__match150144150145%_
                   (lambda (_%e149341149598%_
                            _%hd149342149601%_
                            _%tl149343149603%_
                            _%e149344149606%_
                            _%hd149345149609%_
                            _%tl149346149611%_
                            _%e149347149614%_
                            _%hd149348149617%_
                            _%tl149349149619%_
                            _%e149350149622%_
                            _%hd149351149625%_
                            _%tl149352149627%_
                            _%e149353149630%_
                            _%hd149354149633%_
                            _%tl149355149635%_
                            _%e149356149638%_
                            _%hd149357149641%_
                            _%tl149358149643%_
                            _%e149359149646%_
                            _%hd149360149649%_
                            _%tl149361149651%_
                            _%e149362149654%_
                            _%hd149363149657%_
                            _%tl149364149659%_
                            _%e149365149662%_
                            _%hd149366149665%_
                            _%tl149367149667%_
                            _%e149368149670%_
                            _%hd149369149673%_
                            _%tl149370149675%_
                            _%e149371149678%_
                            _%hd149372149681%_
                            _%tl149373149683%_
                            _%e149374149686%_
                            _%hd149375149689%_
                            _%tl149376149691%_
                            _%e149377149694%_
                            _%hd149378149697%_
                            _%tl149379149699%_
                            _%e149380149702%_
                            _%hd149381149705%_
                            _%tl149382149707%_
                            _%e149383149710%_
                            _%hd149384149713%_
                            _%tl149385149715%_
                            _%e149386149718%_
                            _%hd149387149721%_
                            _%tl149388149723%_)
                     (let ((_%L149726%_ _%hd149387149721%_)
                           (_%L149727%_ _%hd149378149697%_)
                           (_%L149728%_ _%hd149369149673%_)
                           (_%L149729%_ _%hd149360149649%_)
                           (_%L149730%_ _%hd149351149625%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L149730%_
                              'bind-method!))
                           (_%__kont150011150012%_
                            _%L149726%_
                            _%L149727%_
                            _%L149728%_
                            _%L149729%_
                            _%L149730%_)
                           (_%__kont150015150016%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx150009150010%_))
                  (let ((_%e149341149598%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx150009150010%_))))
                    (let ((_%tl149343149603%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e149341149598%_)))
                          (_%hd149342149601%_
                           (let ()
                             (declare (not safe))
                             (##car _%e149341149598%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl149343149603%_))
                          (let ((_%e149344149606%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl149343149603%_))))
                            (let ((_%tl149346149611%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e149344149606%_)))
                                  (_%hd149345149609%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e149344149606%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd149345149609%_))
                                  (let ((_%e149347149614%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd149345149609%_))))
                                    (let ((_%tl149349149619%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e149347149614%_)))
                                          (_%hd149348149617%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e149347149614%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd149348149617%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd149348149617%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl149349149619%_))
                                                  (let ((_%e149350149622%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl149349149619%_))))
                                                    (let ((_%tl149352149627%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e149350149622%_)))
                                                          (_%hd149351149625%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e149350149622%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl149352149627%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl149346149611%_))
                      (let ((_%e149353149630%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl149346149611%_))))
                        (let ((_%tl149355149635%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149353149630%_)))
                              (_%hd149354149633%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149353149630%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd149354149633%_))
                              (let ((_%e149356149638%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd149354149633%_))))
                                (let ((_%tl149358149643%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149356149638%_)))
                                      (_%hd149357149641%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149356149638%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd149357149641%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd149357149641%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl149358149643%_))
                                              (let ((_%e149359149646%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl149358149643%_))))
                                                (let ((_%tl149361149651%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e149359149646%_)))
                                                      (_%hd149360149649%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e149359149646%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl149361149651%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl149355149635%_))
                                                          (let ((_%e149362149654%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl149355149635%_))))
                    (let ((_%tl149364149659%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e149362149654%_)))
                          (_%hd149363149657%_
                           (let ()
                             (declare (not safe))
                             (##car _%e149362149654%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd149363149657%_))
                          (let ((_%e149365149662%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd149363149657%_))))
                            (let ((_%tl149367149667%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e149365149662%_)))
                                  (_%hd149366149665%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e149365149662%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd149366149665%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd149366149665%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl149367149667%_))
                                          (let ((_%e149368149670%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl149367149667%_))))
                                            (let ((_%tl149370149675%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e149368149670%_)))
                                                  (_%hd149369149673%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e149368149670%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl149370149675%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl149364149659%_))
                                                      (let ((_%e149371149678%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl149364149659%_))))
                (let ((_%tl149373149683%_
                       (let () (declare (not safe)) (##cdr _%e149371149678%_)))
                      (_%hd149372149681%_
                       (let ()
                         (declare (not safe))
                         (##car _%e149371149678%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd149372149681%_))
                      (let ((_%e149374149686%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd149372149681%_))))
                        (let ((_%tl149376149691%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149374149686%_)))
                              (_%hd149375149689%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149374149686%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd149375149689%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd149375149689%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149376149691%_))
                                      (let ((_%e149377149694%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149376149691%_))))
                                        (let ((_%tl149379149699%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149377149694%_)))
                                              (_%hd149378149697%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149377149694%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149379149699%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl149373149683%_))
                                                  (let ((_%e149380149702%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl149373149683%_))))
                                                    (let ((_%tl149382149707%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e149380149702%_)))
                                                          (_%hd149381149705%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e149380149702%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd149381149705%_))
                                                          (let ((_%e149383149710%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd149381149705%_))))
                    (let ((_%tl149385149715%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e149383149710%_)))
                          (_%hd149384149713%_
                           (let ()
                             (declare (not safe))
                             (##car _%e149383149710%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd149384149713%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd149384149713%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl149385149715%_))
                                  (let ((_%e149386149718%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl149385149715%_))))
                                    (let ((_%tl149388149723%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e149386149718%_)))
                                          (_%hd149387149721%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e149386149718%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl149388149723%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149382149707%_))
                                              (_%__match150144150145%_
                                               _%e149341149598%_
                                               _%hd149342149601%_
                                               _%tl149343149603%_
                                               _%e149344149606%_
                                               _%hd149345149609%_
                                               _%tl149346149611%_
                                               _%e149347149614%_
                                               _%hd149348149617%_
                                               _%tl149349149619%_
                                               _%e149350149622%_
                                               _%hd149351149625%_
                                               _%tl149352149627%_
                                               _%e149353149630%_
                                               _%hd149354149633%_
                                               _%tl149355149635%_
                                               _%e149356149638%_
                                               _%hd149357149641%_
                                               _%tl149358149643%_
                                               _%e149359149646%_
                                               _%hd149360149649%_
                                               _%tl149361149651%_
                                               _%e149362149654%_
                                               _%hd149363149657%_
                                               _%tl149364149659%_
                                               _%e149365149662%_
                                               _%hd149366149665%_
                                               _%tl149367149667%_
                                               _%e149368149670%_
                                               _%hd149369149673%_
                                               _%tl149370149675%_
                                               _%e149371149678%_
                                               _%hd149372149681%_
                                               _%tl149373149683%_
                                               _%e149374149686%_
                                               _%hd149375149689%_
                                               _%tl149376149691%_
                                               _%e149377149694%_
                                               _%hd149378149697%_
                                               _%tl149379149699%_
                                               _%e149380149702%_
                                               _%hd149381149705%_
                                               _%tl149382149707%_
                                               _%e149383149710%_
                                               _%hd149384149713%_
                                               _%tl149385149715%_
                                               _%e149386149718%_
                                               _%hd149387149721%_
                                               _%tl149388149723%_)
                                              (_%__kont150015150016%_))
                                          (_%__kont150015150016%_))))
                                  (_%__kont150015150016%_))
                              (_%__kont150015150016%_))
                          (_%__kont150015150016%_))))
                  (_%__kont150015150016%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl149373149683%_))
                                                      (if (let ((__tmp150294
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp150294 'bind-method!))
                  (let ((_%L149552%_ _%hd149378149697%_)
                        (_%L149553%_ _%hd149369149673%_)
                        (_%L149554%_ _%hd149360149649%_)
                        (_%L149555%_ _%hd149351149625%_))
                    (_%__kont150013150014%_
                     _%L149552%_
                     _%L149553%_
                     _%L149554%_
                     _%L149555%_))
                  (_%__kont150015150016%_))
              (_%__kont150015150016%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont150015150016%_))))
                                      (_%__kont150015150016%_))
                                  (_%__kont150015150016%_))
                              (_%__kont150015150016%_))))
                      (_%__kont150015150016%_))))
              (_%__kont150015150016%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont150015150016%_))))
                                          (_%__kont150015150016%_))
                                      (_%__kont150015150016%_))
                                  (_%__kont150015150016%_))))
                          (_%__kont150015150016%_))))
                  (_%__kont150015150016%_))
              (_%__kont150015150016%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont150015150016%_))
                                          (_%__kont150015150016%_))
                                      (_%__kont150015150016%_))))
                              (_%__kont150015150016%_))))
                      (_%__kont150015150016%_))
                  (_%__kont150015150016%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont150015150016%_))
                                              (_%__kont150015150016%_))
                                          (_%__kont150015150016%_))))
                                  (_%__kont150015150016%_))))
                          (_%__kont150015150016%_))))
                  (_%__kont150015150016%_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_%self149277%_ _%stx149278%_)
        (let* ((_%g149280149293%_
                (lambda (_%g149281149290%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149281149290%_))))
               (_%g149279149326%_
                (lambda (_%g149281149296%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149281149296%_))
                      (let ((_%e149283149298%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149281149296%_))))
                        (let ((_%hd149284149301%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149283149298%_)))
                              (_%tl149285149303%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149283149298%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149285149303%_))
                              (let ((_%e149286149306%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149285149303%_))))
                                (let ((_%hd149287149309%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149286149306%_)))
                                      (_%tl149288149311%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149286149306%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149288149311%_))
                                      ((lambda (_%L149314%_)
                                         (if (let ((__tmp150295
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self149277%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L149314%_
                                                __tmp150295))
                                             (let ((__tmp150296
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self149277%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp150296
                                                _%stx149278%_))
                                             _%stx149278%_))
                                       _%hd149287149309%_)
                                      (_%g149280149293%_ _%g149281149296%_))))
                              (_%g149280149293%_ _%g149281149296%_))))
                      (_%g149280149293%_ _%g149281149296%_)))))
          (_%g149279149326%_ _%stx149278%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self149217%_ _%stx149218%_)
        (let* ((_%g149220149233%_
                (lambda (_%g149221149230%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149221149230%_))))
               (_%g149219149274%_
                (lambda (_%g149221149236%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149221149236%_))
                      (let ((_%e149223149238%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149221149236%_))))
                        (let ((_%hd149224149241%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149223149238%_)))
                              (_%tl149225149243%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149223149238%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149225149243%_))
                              (let ((_%e149226149246%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149225149243%_))))
                                (let ((_%hd149227149249%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149226149246%_)))
                                      (_%tl149228149251%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149226149246%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149228149251%_))
                                      ((lambda (_%L149254%_)
                                         (let ((_%$e149268%_
                                                (let ((__tmp150298
                                                       (lambda (_%sub149266%_)
                                                         (let ((__tmp150299
                                                                (car _%sub149266%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L149254%_
                                                            __tmp150299))))
                                                      (__tmp150297
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self149217%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp150298
                                                          __tmp150297))))
                                           (if _%$e149268%_
                                               ((lambda (_%sub149271%_)
                                                  (let ((__tmp150300
                                                         (cons '%#ref
                                                               (cons (cdr _%sub149271%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp150300
                                                     _%stx149218%_)))
                                                _%$e149268%_)
                                               _%stx149218%_)))
                                       _%hd149227149249%_)
                                      (_%g149220149233%_ _%g149221149236%_))))
                              (_%g149220149233%_ _%g149221149236%_))))
                      (_%g149220149233%_ _%g149221149236%_)))))
          (_%g149219149274%_ _%stx149218%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self149146%_ _%stx149147%_)
        (let* ((_%g149149149166%_
                (lambda (_%g149150149163%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149150149163%_))))
               (_%g149148149214%_
                (lambda (_%g149150149169%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149150149169%_))
                      (let ((_%e149153149171%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149150149169%_))))
                        (let ((_%hd149154149174%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149153149171%_)))
                              (_%tl149155149176%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149153149171%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149155149176%_))
                              (let ((_%e149156149179%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149155149176%_))))
                                (let ((_%hd149157149182%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149156149179%_)))
                                      (_%tl149158149184%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149156149179%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149158149184%_))
                                      (let ((_%e149159149187%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149158149184%_))))
                                        (let ((_%hd149160149190%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149159149187%_)))
                                              (_%tl149161149192%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149159149187%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149161149192%_))
                                              ((lambda (_%L149195%_
                                                        _%L149196%_)
                                                 (let ((_%new-expr149211%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self149146%_
                                                           _%L149195%_)))
                                                       (_%new-xid149212%_
                                                        (if (let ((__tmp150301
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self149146%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L149196%_ __tmp150301))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self149146%_ 'new-id))
                    _%L149196%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp150302
                                                          (cons '%#set!
                                                                (cons _%new-xid149212%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr149211%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp150302
                                                      _%stx149147%_))))
                                               _%hd149160149190%_
                                               _%hd149157149182%_)
                                              (_%g149149149166%_
                                               _%g149150149169%_))))
                                      (_%g149149149166%_ _%g149150149169%_))))
                              (_%g149149149166%_ _%g149150149169%_))))
                      (_%g149149149166%_ _%g149150149169%_)))))
          (_%g149148149214%_ _%stx149147%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self149069%_ _%stx149070%_)
        (let* ((_%g149072149089%_
                (lambda (_%g149073149086%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149073149086%_))))
               (_%g149071149143%_
                (lambda (_%g149073149092%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149073149092%_))
                      (let ((_%e149076149094%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149073149092%_))))
                        (let ((_%hd149077149097%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149076149094%_)))
                              (_%tl149078149099%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149076149094%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149078149099%_))
                              (let ((_%e149079149102%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149078149099%_))))
                                (let ((_%hd149080149105%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149079149102%_)))
                                      (_%tl149081149107%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149079149102%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149081149107%_))
                                      (let ((_%e149082149110%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149081149107%_))))
                                        (let ((_%hd149083149113%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149082149110%_)))
                                              (_%tl149084149115%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149082149110%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149084149115%_))
                                              ((lambda (_%L149118%_
                                                        _%L149119%_)
                                                 (let ((_%new-expr149140%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self149069%_
                                                           _%L149118%_)))
                                                       (_%new-xid149141%_
                                                        (let ((_%$e149136%_
                                                               (let ((__tmp150304
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub149134%_)
                                (let ((__tmp150305 (car _%sub149134%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L149119%_
                                   __tmp150305))))
                             (__tmp150303
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self149069%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp150304 __tmp150303))))
                  (if _%$e149136%_ (cdr _%$e149136%_) _%L149119%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp150306
                                                          (cons '%#set!
                                                                (cons _%new-xid149141%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr149140%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp150306
                                                      _%stx149070%_))))
                                               _%hd149083149113%_
                                               _%hd149080149105%_)
                                              (_%g149072149089%_
                                               _%g149073149092%_))))
                                      (_%g149072149089%_ _%g149073149092%_))))
                              (_%g149072149089%_ _%g149073149092%_))))
                      (_%g149072149089%_ _%g149073149092%_)))))
          (_%g149071149143%_ _%stx149070%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self149015%_ _%stx149016%_)
        (let* ((_%g149018149031%_
                (lambda (_%g149019149028%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149019149028%_))))
               (_%g149017149066%_
                (lambda (_%g149019149034%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149019149034%_))
                      (let ((_%e149021149036%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149019149034%_))))
                        (let ((_%hd149022149039%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149021149036%_)))
                              (_%tl149023149041%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149021149036%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149023149041%_))
                              (let ((_%e149024149044%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149023149041%_))))
                                (let ((_%hd149025149047%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149024149044%_)))
                                      (_%tl149026149049%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149024149044%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149026149049%_))
                                      ((lambda (_%L149052%_)
                                         (let* ((_%eid149064%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L149052%_)))
                                                (__tmp150307
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self149015%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp150307
                                            _%eid149064%_
                                            1+
                                            '0)))
                                       _%hd149025149047%_)
                                      (_%g149018149031%_ _%g149019149034%_))))
                              (_%g149018149031%_ _%g149019149034%_))))
                      (_%g149018149031%_ _%g149019149034%_)))))
          (_%g149017149066%_ _%stx149016%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self148945%_ _%stx148946%_)
        (let* ((_%g148948148965%_
                (lambda (_%g148949148962%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148949148962%_))))
               (_%g148947149012%_
                (lambda (_%g148949148968%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148949148968%_))
                      (let ((_%e148952148970%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148949148968%_))))
                        (let ((_%hd148953148973%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148952148970%_)))
                              (_%tl148954148975%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148952148970%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148954148975%_))
                              (let ((_%e148955148978%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148954148975%_))))
                                (let ((_%hd148956148981%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148955148978%_)))
                                      (_%tl148957148983%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148955148978%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148957148983%_))
                                      (let ((_%e148958148986%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148957148983%_))))
                                        (let ((_%hd148959148989%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148958148986%_)))
                                              (_%tl148960148991%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148958148986%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148960148991%_))
                                              ((lambda (_%L148994%_
                                                        _%L148995%_)
                                                 (let ((_%eid149010%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L148995%_))))
                                                   (let ((__tmp150308
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self148945%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp150308
                                                      _%eid149010%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self148945%_
                                                      _%L148994%_))))
                                               _%hd148959148989%_
                                               _%hd148956148981%_)
                                              (_%g148948148965%_
                                               _%g148949148968%_))))
                                      (_%g148948148965%_ _%g148949148968%_))))
                              (_%g148948148965%_ _%g148949148968%_))))
                      (_%g148948148965%_ _%g148949148968%_)))))
          (_%g148947149012%_ _%stx148946%_))))
    (define gxc#find-body%
      (lambda (_%self148858%_ _%stx148859%_)
        (let* ((_%g148861148880%_
                (lambda (_%g148862148877%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148862148877%_))))
               (_%g148860148942%_
                (lambda (_%g148862148883%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148862148883%_))
                      (let ((_%e148864148885%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148862148883%_))))
                        (let ((_%hd148865148888%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148864148885%_)))
                              (_%tl148866148890%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148864148885%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl148866148890%_))
                              (let ((_g150309_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl148866148890%_
                                        '0))))
                                (begin
                                  (let ((_g150310_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g150309_)
                                               (##vector-length _g150309_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g150310_ 2)))
                                        (error "Context expects 2 values"
                                               _g150310_)))
                                  (let ((_%target148867148893%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g150309_ 0)))
                                        (_%tl148869148895%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g150309_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl148869148895%_))
                                        (letrec ((_%loop148870148898%_
                                                  (lambda (_%hd148868148901%_
                                                           _%expr148874148903%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd148868148901%_))
                                                        (let ((_%e148871148906%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd148868148901%_))))
                  (let ((_%lp-hd148872148909%_
                         (let ()
                           (declare (not safe))
                           (##car _%e148871148906%_)))
                        (_%lp-tl148873148911%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e148871148906%_))))
                    (_%loop148870148898%_
                     _%lp-tl148873148911%_
                     (cons _%lp-hd148872148909%_ _%expr148874148903%_))))
                (let ((_%expr148875148914%_ (reverse _%expr148874148903%_)))
                  ((lambda (_%L148917%_)
                     (let ((__tmp150313
                            (lambda (_%g148930148932%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self148858%_
                                 _%g148930148932%_))))
                           (__tmp150311
                            (let ((__tmp150312
                                   (lambda (_%g148934148937%_
                                            _%g148935148939%_)
                                     (cons _%g148934148937%_
                                           _%g148935148939%_))))
                              (declare (not safe))
                              (__foldr1 __tmp150312 '() _%L148917%_))))
                       (declare (not safe))
                       (__ormap1 __tmp150313 __tmp150311)))
                   _%expr148875148914%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop148870148898%_
                                           _%target148867148893%_
                                           '()))
                                        (_%g148861148880%_
                                         _%g148862148883%_)))))
                              (_%g148861148880%_ _%g148862148883%_))))
                      (_%g148861148880%_ _%g148862148883%_)))))
          (_%g148860148942%_ _%stx148859%_))))
    (define gxc#find-let-values%
      (lambda (_%self148708%_ _%stx148709%_)
        (let* ((_%g148711148746%_
                (lambda (_%g148712148743%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148712148743%_))))
               (_%g148710148855%_
                (lambda (_%g148712148749%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148712148749%_))
                      (let ((_%e148716148751%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148712148749%_))))
                        (let ((_%hd148717148754%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148716148751%_)))
                              (_%tl148718148756%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148716148751%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148718148756%_))
                              (let ((_%e148719148759%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148718148756%_))))
                                (let ((_%hd148720148762%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148719148759%_)))
                                      (_%tl148721148764%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148719148759%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd148720148762%_))
                                      (let ((_g150314_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd148720148762%_
                                                '0))))
                                        (begin
                                          (let ((_g150315_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g150314_)
                                                       (##vector-length
                                                        _g150314_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g150315_ 2)))
                                                (error "Context expects 2 values"
                                                       _g150315_)))
                                          (let ((_%target148722148767%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g150314_ 0)))
                                                (_%tl148724148769%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g150314_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl148724148769%_))
                                                (letrec ((_%loop148725148772%_
                                                          (lambda (_%hd148723148775%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr148729148777%_
                           _%bind148730148779%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd148723148775%_))
                        (let ((_%e148726148782%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd148723148775%_))))
                          (let ((_%lp-hd148727148785%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e148726148782%_)))
                                (_%lp-tl148728148787%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e148726148782%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd148727148785%_))
                                (let ((_%e148736148790%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd148727148785%_))))
                                  (let ((_%hd148737148793%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e148736148790%_)))
                                        (_%tl148738148795%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e148736148790%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl148738148795%_))
                                        (let ((_%e148739148798%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl148738148795%_))))
                                          (let ((_%hd148740148801%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e148739148798%_)))
                                                (_%tl148741148803%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e148739148798%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl148741148803%_))
                                                (_%loop148725148772%_
                                                 _%lp-tl148728148787%_
                                                 (cons _%hd148740148801%_
                                                       _%expr148729148777%_)
                                                 (cons _%hd148737148793%_
                                                       _%bind148730148779%_))
                                                (_%g148711148746%_
                                                 _%g148712148749%_))))
                                        (_%g148711148746%_
                                         _%g148712148749%_))))
                                (_%g148711148746%_ _%g148712148749%_))))
                        (let ((_%expr148731148806%_
                               (reverse _%expr148729148777%_))
                              (_%bind148732148808%_
                               (reverse _%bind148730148779%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148721148764%_))
                              (let ((_%e148733148811%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148721148764%_))))
                                (let ((_%hd148734148814%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148733148811%_)))
                                      (_%tl148735148816%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148733148811%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl148735148816%_))
                                      ((lambda (_%L148819%_
                                                _%L148820%_
                                                _%L148821%_)
                                         (let ((_%$e148852%_
                                                (let ((__tmp150318
                                                       (lambda (_%g148840148842%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self148708%_
                                                            _%g148840148842%_))))
                                                      (__tmp150316
                                                       (let ((__tmp150317
                                                              (lambda (_%g148844148847%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g148845148849%_)
                        (cons _%g148844148847%_ _%g148845148849%_))))
                 (declare (not safe))
                 (__foldr1 __tmp150317 '() _%L148820%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp150318
                                                   __tmp150316))))
                                           (if _%$e148852%_
                                               _%$e148852%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self148708%_
                                                  _%L148819%_)))))
                                       _%hd148734148814%_
                                       _%expr148731148806%_
                                       _%bind148732148808%_)
                                      (_%g148711148746%_ _%g148712148749%_))))
                              (_%g148711148746%_ _%g148712148749%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop148725148772%_
                                                   _%target148722148767%_
                                                   '()
                                                   '()))
                                                (_%g148711148746%_
                                                 _%g148712148749%_)))))
                                      (_%g148711148746%_ _%g148712148749%_))))
                              (_%g148711148746%_ _%g148712148749%_))))
                      (_%g148711148746%_ _%g148712148749%_)))))
          (_%g148710148855%_ _%stx148709%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self148652%_ _%stx148653%_)
        (let* ((_%g148655148668%_
                (lambda (_%g148656148665%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148656148665%_))))
               (_%g148654148705%_
                (lambda (_%g148656148671%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148656148671%_))
                      (let ((_%e148658148673%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148656148671%_))))
                        (let ((_%hd148659148676%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148658148673%_)))
                              (_%tl148660148678%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148658148673%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148660148678%_))
                              (let ((_%e148661148681%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148660148678%_))))
                                (let ((_%hd148662148684%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148661148681%_)))
                                      (_%tl148663148686%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148661148681%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl148663148686%_))
                                      ((lambda (_%L148689%_)
                                         (let ((__tmp150320
                                                (lambda (_%g148700148702%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L148689%_
                                                     _%g148700148702%_))))
                                               (__tmp150319
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self148652%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp150320 __tmp150319)))
                                       _%hd148662148684%_)
                                      (_%g148655148668%_ _%g148656148671%_))))
                              (_%g148655148668%_ _%g148656148671%_))))
                      (_%g148655148668%_ _%g148656148671%_)))))
          (_%g148654148705%_ _%stx148653%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self148577%_ _%stx148578%_)
        (let* ((_%g148580148597%_
                (lambda (_%g148581148594%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148581148594%_))))
               (_%g148579148649%_
                (lambda (_%g148581148600%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148581148600%_))
                      (let ((_%e148584148602%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148581148600%_))))
                        (let ((_%hd148585148605%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148584148602%_)))
                              (_%tl148586148607%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148584148602%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148586148607%_))
                              (let ((_%e148587148610%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148586148607%_))))
                                (let ((_%hd148588148613%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148587148610%_)))
                                      (_%tl148589148615%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148587148610%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148589148615%_))
                                      (let ((_%e148590148618%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148589148615%_))))
                                        (let ((_%hd148591148621%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148590148618%_)))
                                              (_%tl148592148623%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148590148618%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148592148623%_))
                                              ((lambda (_%L148626%_
                                                        _%L148627%_)
                                                 (let ((_%$e148646%_
                                                        (let ((__tmp150322
                                                               (lambda (_%g148641148643%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L148627%_
                            _%g148641148643%_))))
                      (__tmp150321
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self148577%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp150322 __tmp150321))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e148646%_
                                                       _%$e148646%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self148577%_
                                                          _%L148626%_)))))
                                               _%hd148591148621%_
                                               _%hd148588148613%_)
                                              (_%g148580148597%_
                                               _%g148581148600%_))))
                                      (_%g148580148597%_ _%g148581148600%_))))
                              (_%g148580148597%_ _%g148581148600%_))))
                      (_%g148580148597%_ _%g148581148600%_)))))
          (_%g148579148649%_ _%stx148578%_))))))
