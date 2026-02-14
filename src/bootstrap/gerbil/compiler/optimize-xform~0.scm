(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1771092630)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp211258 (list gxc#::void::t))
            (__tmp211257 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp211258
         '()
         __tmp211257
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args211244%_
        (apply make-instance gxc#::collect-mutators::t _%$args211244%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp211259
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
        (__make-atomic-promise __tmp211259)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx211236%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self211239%_
                (let ((__obj211247
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj211247))
               (__tmp211260
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self211239%_ _%stx211236%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp211260
           gxc#current-compile-method
           _%self211239%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp211262 (list gxc#::basic-xform-expression::t))
            (__tmp211261 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp211262
         '(id new-id)
         __tmp211261
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args211233%_
        (apply make-instance gxc#::expression-subst::t _%$args211233%_)))
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
      (let ((__tmp211263
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
        (__make-atomic-promise __tmp211263)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords211205%_
               _%id211201211206%_
               _%new-id211202211207%_
               _%stx211208%_)
        (let* ((_%id211211%_
                (if (eq? _%id211201211206%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id211201211206%_))
               (_%new-id211213%_
                (if (eq? _%new-id211202211207%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id211202211207%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self211215%_
                  (let ((__obj211249
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj211249
                       _%id211211%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj211249
                       _%new-id211213%_
                       '2
                       '#f
                       '#f))
                    __obj211249))
                 (__tmp211264
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self211215%_ _%stx211208%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp211264
             gxc#current-compile-method
             _%self211215%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords211222%_ . _%args211223%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords211222%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords211222%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords211222%_
                  'new-id:
                  absent-value))
               _%args211223%_)))
    (define gxc#apply-expression-subst
      (lambda _%args211203211229%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args211203211229%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp211266 (list gxc#::basic-xform-expression::t))
            (__tmp211265 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp211266
         '(subst)
         __tmp211265
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args211197%_
        (apply make-instance gxc#::expression-subst*::t _%$args211197%_)))
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
      (let ((__tmp211267
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
        (__make-atomic-promise __tmp211267)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords211172%_ _%subst211169211173%_ _%stx211174%_)
        (let ((_%subst211177%_
               (if (eq? _%subst211169211173%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst211169211173%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self211179%_
                  (let ((__obj211251
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj211251
                       _%subst211177%_
                       '1
                       '#f
                       '#f))
                    __obj211251))
                 (__tmp211268
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self211179%_ _%stx211174%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp211268
             gxc#current-compile-method
             _%self211179%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords211186%_ . _%args211187%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords211186%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords211186%_
                  'subst:
                  absent-value))
               _%args211187%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args211170211193%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args211170211193%_)))
    (define gxc#::find-expression::t
      (let ((__tmp211269 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp211269
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args211165%_
        (apply make-instance gxc#::find-expression::t _%$args211165%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp211270
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
        (__make-atomic-promise __tmp211270)))
    (define gxc#::find-var-refs::t
      (let ((__tmp211272 (list gxc#::find-expression::t))
            (__tmp211271 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp211272
         '(ids)
         __tmp211271
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args211161%_
        (apply make-instance gxc#::find-var-refs::t _%$args211161%_)))
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
      (let ((__tmp211273
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
        (__make-atomic-promise __tmp211273)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords211136%_ _%ids211133211137%_ _%stx211138%_)
        (let ((_%ids211141%_
               (if (eq? _%ids211133211137%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids211133211137%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self211143%_
                  (let ((__obj211254
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj211254
                       _%ids211141%_
                       '1
                       '#f
                       '#f))
                    __obj211254))
                 (__tmp211274
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self211143%_ _%stx211138%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp211274
             gxc#current-compile-method
             _%self211143%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords211150%_ . _%args211151%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords211150%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords211150%_ 'ids: absent-value))
               _%args211151%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args211134211157%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args211134211157%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp211276 (list gxc#::collect-expression-refs::t))
            (__tmp211275 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp211276
         '()
         __tmp211275
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args211129%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args211129%_)))
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
      (let ((__tmp211277
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
        (__make-atomic-promise __tmp211277)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords211104%_ _%table211101211105%_ _%stx211106%_)
        (let ((_%table211109%_
               (if (eq? _%table211101211105%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table211101211105%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self211111%_
                  (let ((__obj211256
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj211256
                       _%table211109%_
                       '1
                       '#f
                       '#f))
                    __obj211256))
                 (__tmp211278
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self211111%_ _%stx211106%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp211278
             gxc#current-compile-method
             _%self211111%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords211118%_ . _%args211119%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords211118%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords211118%_
                  'table:
                  absent-value))
               _%args211119%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args211102211125%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args211102211125%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self211030%_ _%stx211031%_)
        (let* ((_%g211033211050%_
                (lambda (_%g211034211047%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g211034211047%_))))
               (_%g211032211097%_
                (lambda (_%g211034211053%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g211034211053%_))
                      (let ((_%e211037211055%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g211034211053%_))))
                        (let ((_%hd211038211058%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e211037211055%_)))
                              (_%tl211039211060%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e211037211055%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl211039211060%_))
                              (let ((_%e211040211063%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl211039211060%_))))
                                (let ((_%hd211041211066%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e211040211063%_)))
                                      (_%tl211042211068%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e211040211063%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl211042211068%_))
                                      (let ((_%e211043211071%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl211042211068%_))))
                                        (let ((_%hd211044211074%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e211043211071%_)))
                                              (_%tl211045211076%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e211043211071%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl211045211076%_))
                                              ((lambda (_%g211035211079%_
                                                        _%g211036211080%_)
                                                 (let ((_%sym211095%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g211036211080%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym211095%_))
                                                   (let ((__tmp211279
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp211279
                                                      _%sym211095%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self211030%_
                                                      _%g211035211079%_))))
                                               _%hd211044211074%_
                                               _%hd211041211066%_)
                                              (_%g211033211050%_
                                               _%g211034211053%_))))
                                      (_%g211033211050%_ _%g211034211053%_))))
                              (_%g211033211050%_ _%g211034211053%_))))
                      (_%g211033211050%_ _%g211034211053%_)))))
          (_%g211032211097%_ _%stx211031%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self210978%_ _%stx210979%_)
        (let* ((_%g210981210994%_
                (lambda (_%g210982210991%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g210982210991%_))))
               (_%g210980211027%_
                (lambda (_%g210982210997%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g210982210997%_))
                      (let ((_%e210984210999%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g210982210997%_))))
                        (let ((_%hd210985211002%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e210984210999%_)))
                              (_%tl210986211004%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e210984210999%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl210986211004%_))
                              (let ((_%e210987211007%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl210986211004%_))))
                                (let ((_%hd210988211010%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e210987211007%_)))
                                      (_%tl210989211012%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e210987211007%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl210989211012%_))
                                      ((lambda (_%g210983211015%_)
                                         (if (let ((__tmp211280
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self210978%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g210983211015%_
                                                __tmp211280))
                                             (let ((__tmp211281
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self210978%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp211281
                                                _%stx210979%_))
                                             _%stx210979%_))
                                       _%hd210988211010%_)
                                      (_%g210981210994%_ _%g210982210997%_))))
                              (_%g210981210994%_ _%g210982210997%_))))
                      (_%g210981210994%_ _%g210982210997%_)))))
          (_%g210980211027%_ _%stx210979%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self210918%_ _%stx210919%_)
        (let* ((_%g210921210934%_
                (lambda (_%g210922210931%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g210922210931%_))))
               (_%g210920210975%_
                (lambda (_%g210922210937%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g210922210937%_))
                      (let ((_%e210924210939%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g210922210937%_))))
                        (let ((_%hd210925210942%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e210924210939%_)))
                              (_%tl210926210944%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e210924210939%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl210926210944%_))
                              (let ((_%e210927210947%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl210926210944%_))))
                                (let ((_%hd210928210950%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e210927210947%_)))
                                      (_%tl210929210952%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e210927210947%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl210929210952%_))
                                      ((lambda (_%g210923210955%_)
                                         (let ((_%$e210969%_
                                                (let ((__tmp211283
                                                       (lambda (_%sub210967%_)
                                                         (let ((__tmp211284
                                                                (car _%sub210967%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%g210923210955%_
                                                            __tmp211284))))
                                                      (__tmp211282
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self210918%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp211283
                                                          __tmp211282))))
                                           (if _%$e210969%_
                                               ((lambda (_%sub210972%_)
                                                  (let ((__tmp211285
                                                         (cons '%#ref
                                                               (cons (cdr _%sub210972%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp211285
                                                     _%stx210919%_)))
                                                _%$e210969%_)
                                               _%stx210919%_)))
                                       _%hd210928210950%_)
                                      (_%g210921210934%_ _%g210922210937%_))))
                              (_%g210921210934%_ _%g210922210937%_))))
                      (_%g210921210934%_ _%g210922210937%_)))))
          (_%g210920210975%_ _%stx210919%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self210847%_ _%stx210848%_)
        (let* ((_%g210850210867%_
                (lambda (_%g210851210864%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g210851210864%_))))
               (_%g210849210915%_
                (lambda (_%g210851210870%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g210851210870%_))
                      (let ((_%e210854210872%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g210851210870%_))))
                        (let ((_%hd210855210875%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e210854210872%_)))
                              (_%tl210856210877%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e210854210872%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl210856210877%_))
                              (let ((_%e210857210880%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl210856210877%_))))
                                (let ((_%hd210858210883%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e210857210880%_)))
                                      (_%tl210859210885%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e210857210880%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl210859210885%_))
                                      (let ((_%e210860210888%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl210859210885%_))))
                                        (let ((_%hd210861210891%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e210860210888%_)))
                                              (_%tl210862210893%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e210860210888%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl210862210893%_))
                                              ((lambda (_%g210852210896%_
                                                        _%g210853210897%_)
                                                 (let ((_%new-expr210912%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self210847%_
                                                           _%g210852210896%_)))
                                                       (_%new-xid210913%_
                                                        (if (let ((__tmp211286
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self210847%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%g210853210897%_ __tmp211286))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self210847%_ 'new-id))
                    _%g210853210897%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp211287
                                                          (cons '%#set!
                                                                (cons _%new-xid210913%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr210912%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp211287
                                                      _%stx210848%_))))
                                               _%hd210861210891%_
                                               _%hd210858210883%_)
                                              (_%g210850210867%_
                                               _%g210851210870%_))))
                                      (_%g210850210867%_ _%g210851210870%_))))
                              (_%g210850210867%_ _%g210851210870%_))))
                      (_%g210850210867%_ _%g210851210870%_)))))
          (_%g210849210915%_ _%stx210848%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self210770%_ _%stx210771%_)
        (let* ((_%g210773210790%_
                (lambda (_%g210774210787%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g210774210787%_))))
               (_%g210772210844%_
                (lambda (_%g210774210793%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g210774210793%_))
                      (let ((_%e210777210795%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g210774210793%_))))
                        (let ((_%hd210778210798%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e210777210795%_)))
                              (_%tl210779210800%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e210777210795%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl210779210800%_))
                              (let ((_%e210780210803%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl210779210800%_))))
                                (let ((_%hd210781210806%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e210780210803%_)))
                                      (_%tl210782210808%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e210780210803%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl210782210808%_))
                                      (let ((_%e210783210811%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl210782210808%_))))
                                        (let ((_%hd210784210814%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e210783210811%_)))
                                              (_%tl210785210816%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e210783210811%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl210785210816%_))
                                              ((lambda (_%g210775210819%_
                                                        _%g210776210820%_)
                                                 (let ((_%new-expr210841%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self210770%_
                                                           _%g210775210819%_)))
                                                       (_%new-xid210842%_
                                                        (let ((_%$e210837%_
                                                               (let ((__tmp211289
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub210835%_)
                                (let ((__tmp211290 (car _%sub210835%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%g210776210820%_
                                   __tmp211290))))
                             (__tmp211288
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self210770%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp211289 __tmp211288))))
                  (if _%$e210837%_ (cdr _%$e210837%_) _%g210776210820%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp211291
                                                          (cons '%#set!
                                                                (cons _%new-xid210842%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr210841%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp211291
                                                      _%stx210771%_))))
                                               _%hd210784210814%_
                                               _%hd210781210806%_)
                                              (_%g210773210790%_
                                               _%g210774210793%_))))
                                      (_%g210773210790%_ _%g210774210793%_))))
                              (_%g210773210790%_ _%g210774210793%_))))
                      (_%g210773210790%_ _%g210774210793%_)))))
          (_%g210772210844%_ _%stx210771%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self210716%_ _%stx210717%_)
        (let* ((_%g210719210732%_
                (lambda (_%g210720210729%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g210720210729%_))))
               (_%g210718210767%_
                (lambda (_%g210720210735%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g210720210735%_))
                      (let ((_%e210722210737%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g210720210735%_))))
                        (let ((_%hd210723210740%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e210722210737%_)))
                              (_%tl210724210742%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e210722210737%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl210724210742%_))
                              (let ((_%e210725210745%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl210724210742%_))))
                                (let ((_%hd210726210748%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e210725210745%_)))
                                      (_%tl210727210750%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e210725210745%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl210727210750%_))
                                      ((lambda (_%g210721210753%_)
                                         (let* ((_%eid210765%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g210721210753%_)))
                                                (__tmp211292
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self210716%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp211292
                                            _%eid210765%_
                                            1+
                                            '0)))
                                       _%hd210726210748%_)
                                      (_%g210719210732%_ _%g210720210735%_))))
                              (_%g210719210732%_ _%g210720210735%_))))
                      (_%g210719210732%_ _%g210720210735%_)))))
          (_%g210718210767%_ _%stx210717%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self210646%_ _%stx210647%_)
        (let* ((_%g210649210666%_
                (lambda (_%g210650210663%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g210650210663%_))))
               (_%g210648210713%_
                (lambda (_%g210650210669%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g210650210669%_))
                      (let ((_%e210653210671%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g210650210669%_))))
                        (let ((_%hd210654210674%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e210653210671%_)))
                              (_%tl210655210676%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e210653210671%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl210655210676%_))
                              (let ((_%e210656210679%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl210655210676%_))))
                                (let ((_%hd210657210682%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e210656210679%_)))
                                      (_%tl210658210684%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e210656210679%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl210658210684%_))
                                      (let ((_%e210659210687%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl210658210684%_))))
                                        (let ((_%hd210660210690%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e210659210687%_)))
                                              (_%tl210661210692%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e210659210687%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl210661210692%_))
                                              ((lambda (_%g210651210695%_
                                                        _%g210652210696%_)
                                                 (let ((_%eid210711%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g210652210696%_))))
                                                   (let ((__tmp211293
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self210646%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp211293
                                                      _%eid210711%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self210646%_
                                                      _%g210651210695%_))))
                                               _%hd210660210690%_
                                               _%hd210657210682%_)
                                              (_%g210649210666%_
                                               _%g210650210669%_))))
                                      (_%g210649210666%_ _%g210650210669%_))))
                              (_%g210649210666%_ _%g210650210669%_))))
                      (_%g210649210666%_ _%g210650210669%_)))))
          (_%g210648210713%_ _%stx210647%_))))
    (define gxc#find-body%
      (lambda (_%self210561%_ _%stx210562%_)
        (let* ((_%g210564210583%_
                (lambda (_%g210565210580%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g210565210580%_))))
               (_%g210563210643%_
                (lambda (_%g210565210586%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g210565210586%_))
                      (let ((_%e210567210588%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g210565210586%_))))
                        (let ((_%hd210568210591%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e210567210588%_)))
                              (_%tl210569210593%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e210567210588%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl210569210593%_))
                              (let ((_g211294_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl210569210593%_
                                        '0))))
                                (begin
                                  (let ((_g211295_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g211294_)
                                               (##values-length _g211294_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g211295_ 2)))
                                        (error "Context expects 2 values"
                                               _g211295_)))
                                  (let ((_%target210570210596%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g211294_ 0)))
                                        (_%tl210572210598%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g211294_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl210572210598%_))
                                        (letrec ((_%loop210573210601%_
                                                  (lambda (_%hd210571210604%_
                                                           _%expr210577210606%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd210571210604%_))
                                                        (let ((_%e210574210608%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd210571210604%_))))
                  (let ((_%lp-hd210575210611%_
                         (let ()
                           (declare (not safe))
                           (##car _%e210574210608%_)))
                        (_%lp-tl210576210613%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e210574210608%_))))
                    (_%loop210573210601%_
                     _%lp-tl210576210613%_
                     (cons _%lp-hd210575210611%_ _%expr210577210606%_))))
                (let ((_%expr210578210616%_ (reverse _%expr210577210606%_)))
                  ((lambda (_%g210566210618%_)
                     (let ((__tmp211298
                            (lambda (_%g210631210633%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self210561%_
                                 _%g210631210633%_))))
                           (__tmp211296
                            (let ((__tmp211297
                                   (lambda (_%g210635210638%_
                                            _%g210636210640%_)
                                     (cons _%g210635210638%_
                                           _%g210636210640%_))))
                              (declare (not safe))
                              (foldr__0 __tmp211297 '() _%g210566210618%_))))
                       (declare (not safe))
                       (ormap__0 __tmp211298 __tmp211296)))
                   _%expr210578210616%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop210573210601%_
                                           _%target210570210596%_
                                           '()))
                                        (_%g210564210583%_
                                         _%g210565210586%_)))))
                              (_%g210564210583%_ _%g210565210586%_))))
                      (_%g210564210583%_ _%g210565210586%_)))))
          (_%g210563210643%_ _%stx210562%_))))
    (define gxc#find-let-values%
      (lambda (_%self210415%_ _%stx210416%_)
        (let* ((_%g210418210453%_
                (lambda (_%g210419210450%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g210419210450%_))))
               (_%g210417210558%_
                (lambda (_%g210419210456%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g210419210456%_))
                      (let ((_%e210423210458%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g210419210456%_))))
                        (let ((_%hd210424210461%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e210423210458%_)))
                              (_%tl210425210463%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e210423210458%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl210425210463%_))
                              (let ((_%e210426210466%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl210425210463%_))))
                                (let ((_%hd210427210469%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e210426210466%_)))
                                      (_%tl210428210471%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e210426210466%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd210427210469%_))
                                      (let ((_g211299_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd210427210469%_
                                                '0))))
                                        (begin
                                          (let ((_g211300_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g211299_)
                                                       (##values-length
                                                        _g211299_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g211300_ 2)))
                                                (error "Context expects 2 values"
                                                       _g211300_)))
                                          (let ((_%target210429210474%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g211299_ 0)))
                                                (_%tl210431210476%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g211299_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl210431210476%_))
                                                (letrec ((_%loop210432210479%_
                                                          (lambda (_%hd210430210482%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr210436210484%_
                           _%bind210437210485%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd210430210482%_))
                        (let ((_%e210433210487%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd210430210482%_))))
                          (let ((_%lp-hd210434210490%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e210433210487%_)))
                                (_%lp-tl210435210492%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e210433210487%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd210434210490%_))
                                (let ((_%e210440210495%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd210434210490%_))))
                                  (let ((_%hd210441210498%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e210440210495%_)))
                                        (_%tl210442210500%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e210440210495%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl210442210500%_))
                                        (let ((_%e210443210503%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl210442210500%_))))
                                          (let ((_%hd210444210506%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e210443210503%_)))
                                                (_%tl210445210508%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e210443210503%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl210445210508%_))
                                                (_%loop210432210479%_
                                                 _%lp-tl210435210492%_
                                                 (cons _%hd210444210506%_
                                                       _%expr210436210484%_)
                                                 (cons _%hd210441210498%_
                                                       _%bind210437210485%_))
                                                (_%g210418210453%_
                                                 _%g210419210456%_))))
                                        (_%g210418210453%_
                                         _%g210419210456%_))))
                                (_%g210418210453%_ _%g210419210456%_))))
                        (let ((_%expr210438210511%_
                               (reverse _%expr210436210484%_))
                              (_%bind210439210512%_
                               (reverse _%bind210437210485%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl210428210471%_))
                              (let ((_%e210446210514%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl210428210471%_))))
                                (let ((_%hd210447210517%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e210446210514%_)))
                                      (_%tl210448210519%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e210446210514%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl210448210519%_))
                                      ((lambda (_%g210420210522%_
                                                _%g210421210523%_
                                                _%g210422210524%_)
                                         (let ((_%$e210555%_
                                                (let ((__tmp211303
                                                       (lambda (_%g210543210545%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self210415%_
                                                            _%g210543210545%_))))
                                                      (__tmp211301
                                                       (let ((__tmp211302
                                                              (lambda (_%g210547210550%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g210548210552%_)
                        (cons _%g210547210550%_ _%g210548210552%_))))
                 (declare (not safe))
                 (foldr__0 __tmp211302 '() _%g210421210523%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap__0
                                                   __tmp211303
                                                   __tmp211301))))
                                           (if _%$e210555%_
                                               _%$e210555%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self210415%_
                                                  _%g210420210522%_)))))
                                       _%hd210447210517%_
                                       _%expr210438210511%_
                                       _%bind210439210512%_)
                                      (_%g210418210453%_ _%g210419210456%_))))
                              (_%g210418210453%_ _%g210419210456%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop210432210479%_
                                                   _%target210429210474%_
                                                   '()
                                                   '()))
                                                (_%g210418210453%_
                                                 _%g210419210456%_)))))
                                      (_%g210418210453%_ _%g210419210456%_))))
                              (_%g210418210453%_ _%g210419210456%_))))
                      (_%g210418210453%_ _%g210419210456%_)))))
          (_%g210417210558%_ _%stx210416%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self210359%_ _%stx210360%_)
        (let* ((_%g210362210375%_
                (lambda (_%g210363210372%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g210363210372%_))))
               (_%g210361210412%_
                (lambda (_%g210363210378%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g210363210378%_))
                      (let ((_%e210365210380%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g210363210378%_))))
                        (let ((_%hd210366210383%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e210365210380%_)))
                              (_%tl210367210385%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e210365210380%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl210367210385%_))
                              (let ((_%e210368210388%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl210367210385%_))))
                                (let ((_%hd210369210391%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e210368210388%_)))
                                      (_%tl210370210393%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e210368210388%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl210370210393%_))
                                      ((lambda (_%g210364210396%_)
                                         (let ((__tmp211305
                                                (lambda (_%g210407210409%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g210364210396%_
                                                     _%g210407210409%_))))
                                               (__tmp211304
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self210359%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp211305 __tmp211304)))
                                       _%hd210369210391%_)
                                      (_%g210362210375%_ _%g210363210378%_))))
                              (_%g210362210375%_ _%g210363210378%_))))
                      (_%g210362210375%_ _%g210363210378%_)))))
          (_%g210361210412%_ _%stx210360%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self210284%_ _%stx210285%_)
        (let* ((_%g210287210304%_
                (lambda (_%g210288210301%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g210288210301%_))))
               (_%g210286210356%_
                (lambda (_%g210288210307%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g210288210307%_))
                      (let ((_%e210291210309%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g210288210307%_))))
                        (let ((_%hd210292210312%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e210291210309%_)))
                              (_%tl210293210314%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e210291210309%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl210293210314%_))
                              (let ((_%e210294210317%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl210293210314%_))))
                                (let ((_%hd210295210320%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e210294210317%_)))
                                      (_%tl210296210322%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e210294210317%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl210296210322%_))
                                      (let ((_%e210297210325%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl210296210322%_))))
                                        (let ((_%hd210298210328%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e210297210325%_)))
                                              (_%tl210299210330%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e210297210325%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl210299210330%_))
                                              ((lambda (_%g210289210333%_
                                                        _%g210290210334%_)
                                                 (let ((_%$e210353%_
                                                        (let ((__tmp211307
                                                               (lambda (_%g210348210350%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%g210290210334%_
                            _%g210348210350%_))))
                      (__tmp211306
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self210284%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp211307 __tmp211306))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e210353%_
                                                       _%$e210353%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self210284%_
                                                          _%g210289210333%_)))))
                                               _%hd210298210328%_
                                               _%hd210295210320%_)
                                              (_%g210287210304%_
                                               _%g210288210307%_))))
                                      (_%g210287210304%_ _%g210288210307%_))))
                              (_%g210287210304%_ _%g210288210307%_))))
                      (_%g210287210304%_ _%g210288210307%_)))))
          (_%g210286210356%_ _%stx210285%_))))))
