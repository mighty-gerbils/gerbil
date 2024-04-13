(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1713000279)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp153261 (list gxc#::void::t))
            (__tmp153260 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp153261
         '()
         __tmp153260
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args153247%_
        (apply make-instance gxc#::collect-mutators::t _%$args153247%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp153262
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
        (__make-promise __tmp153262)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx153239%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self153242%_
                (let ((__obj153250
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj153250))
               (__tmp153263
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self153242%_ _%stx153239%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp153263
           gxc#current-compile-method
           _%self153242%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp153265 (list gxc#::basic-xform-expression::t))
            (__tmp153264 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp153265
         '(id new-id)
         __tmp153264
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args153236%_
        (apply make-instance gxc#::expression-subst::t _%$args153236%_)))
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
      (let ((__tmp153266
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
        (__make-promise __tmp153266)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords153206%_
               _%id153202153207%_
               _%new-id153203153209%_
               _%stx153211%_)
        (let* ((_%id153214%_
                (if (eq? _%id153202153207%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id153202153207%_))
               (_%new-id153216%_
                (if (eq? _%new-id153203153209%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id153203153209%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self153218%_
                  (let ((__obj153252
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj153252
                       _%id153214%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj153252
                       _%new-id153216%_
                       '2
                       '#f
                       '#f))
                    __obj153252))
                 (__tmp153267
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self153218%_ _%stx153211%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp153267
             gxc#current-compile-method
             _%self153218%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords153225%_ . _%args153226%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords153225%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords153225%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords153225%_
                  'new-id:
                  absent-value))
               _%args153226%_)))
    (define gxc#apply-expression-subst
      (lambda _%args153204153232%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args153204153232%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp153269 (list gxc#::basic-xform-expression::t))
            (__tmp153268 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp153269
         '(subst)
         __tmp153268
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args153198%_
        (apply make-instance gxc#::expression-subst*::t _%$args153198%_)))
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
      (let ((__tmp153270
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
        (__make-promise __tmp153270)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords153172%_ _%subst153169153173%_ _%stx153175%_)
        (let ((_%subst153178%_
               (if (eq? _%subst153169153173%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst153169153173%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self153180%_
                  (let ((__obj153254
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj153254
                       _%subst153178%_
                       '1
                       '#f
                       '#f))
                    __obj153254))
                 (__tmp153271
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self153180%_ _%stx153175%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp153271
             gxc#current-compile-method
             _%self153180%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords153187%_ . _%args153188%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords153187%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords153187%_
                  'subst:
                  absent-value))
               _%args153188%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args153170153194%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args153170153194%_)))
    (define gxc#::find-expression::t
      (let ((__tmp153272 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp153272
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args153165%_
        (apply make-instance gxc#::find-expression::t _%$args153165%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp153273
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
        (__make-promise __tmp153273)))
    (define gxc#::find-var-refs::t
      (let ((__tmp153275 (list gxc#::find-expression::t))
            (__tmp153274 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp153275
         '(ids)
         __tmp153274
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args153161%_
        (apply make-instance gxc#::find-var-refs::t _%$args153161%_)))
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
      (let ((__tmp153276
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
        (__make-promise __tmp153276)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords153135%_ _%ids153132153136%_ _%stx153138%_)
        (let ((_%ids153141%_
               (if (eq? _%ids153132153136%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids153132153136%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self153143%_
                  (let ((__obj153257
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj153257
                       _%ids153141%_
                       '1
                       '#f
                       '#f))
                    __obj153257))
                 (__tmp153277
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self153143%_ _%stx153138%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp153277
             gxc#current-compile-method
             _%self153143%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords153150%_ . _%args153151%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords153150%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords153150%_ 'ids: absent-value))
               _%args153151%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args153133153157%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args153133153157%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp153279 (list gxc#::collect-expression-refs::t))
            (__tmp153278 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp153279
         '()
         __tmp153278
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args153128%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args153128%_)))
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
      (let ((__tmp153280
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
        (__make-promise __tmp153280)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords153102%_ _%table153099153103%_ _%stx153105%_)
        (let ((_%table153108%_
               (if (eq? _%table153099153103%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table153099153103%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self153110%_
                  (let ((__obj153259
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj153259
                       _%table153108%_
                       '1
                       '#f
                       '#f))
                    __obj153259))
                 (__tmp153281
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self153110%_ _%stx153105%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp153281
             gxc#current-compile-method
             _%self153110%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords153117%_ . _%args153118%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords153117%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords153117%_
                  'table:
                  absent-value))
               _%args153118%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args153100153124%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args153100153124%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self153028%_ _%stx153029%_)
        (let* ((_%g153031153048%_
                (lambda (_%g153032153045%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153032153045%_))))
               (_%g153030153095%_
                (lambda (_%g153032153051%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153032153051%_))
                      (let ((_%e153035153053%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153032153051%_))))
                        (let ((_%hd153036153056%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153035153053%_)))
                              (_%tl153037153058%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153035153053%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153037153058%_))
                              (let ((_%e153038153061%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153037153058%_))))
                                (let ((_%hd153039153064%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153038153061%_)))
                                      (_%tl153040153066%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153038153061%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153040153066%_))
                                      (let ((_%e153041153069%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153040153066%_))))
                                        (let ((_%hd153042153072%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153041153069%_)))
                                              (_%tl153043153074%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153041153069%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153043153074%_))
                                              ((lambda (_%L153077%_
                                                        _%L153078%_)
                                                 (let ((_%sym153093%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L153078%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym153093%_))
                                                   (let ((__tmp153282
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp153282
                                                      _%sym153093%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self153028%_
                                                      _%L153077%_))))
                                               _%hd153042153072%_
                                               _%hd153039153064%_)
                                              (_%g153031153048%_
                                               _%g153032153051%_))))
                                      (_%g153031153048%_ _%g153032153051%_))))
                              (_%g153031153048%_ _%g153032153051%_))))
                      (_%g153031153048%_ _%g153032153051%_)))))
          (_%g153030153095%_ _%stx153029%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self152976%_ _%stx152977%_)
        (let* ((_%g152979152992%_
                (lambda (_%g152980152989%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152980152989%_))))
               (_%g152978153025%_
                (lambda (_%g152980152995%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152980152995%_))
                      (let ((_%e152982152997%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152980152995%_))))
                        (let ((_%hd152983153000%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152982152997%_)))
                              (_%tl152984153002%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152982152997%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl152984153002%_))
                              (let ((_%e152985153005%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl152984153002%_))))
                                (let ((_%hd152986153008%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152985153005%_)))
                                      (_%tl152987153010%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152985153005%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl152987153010%_))
                                      ((lambda (_%L153013%_)
                                         (if (let ((__tmp153283
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self152976%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L153013%_
                                                __tmp153283))
                                             (let ((__tmp153284
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self152976%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp153284
                                                _%stx152977%_))
                                             _%stx152977%_))
                                       _%hd152986153008%_)
                                      (_%g152979152992%_ _%g152980152995%_))))
                              (_%g152979152992%_ _%g152980152995%_))))
                      (_%g152979152992%_ _%g152980152995%_)))))
          (_%g152978153025%_ _%stx152977%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self152916%_ _%stx152917%_)
        (let* ((_%g152919152932%_
                (lambda (_%g152920152929%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152920152929%_))))
               (_%g152918152973%_
                (lambda (_%g152920152935%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152920152935%_))
                      (let ((_%e152922152937%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152920152935%_))))
                        (let ((_%hd152923152940%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152922152937%_)))
                              (_%tl152924152942%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152922152937%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl152924152942%_))
                              (let ((_%e152925152945%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl152924152942%_))))
                                (let ((_%hd152926152948%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152925152945%_)))
                                      (_%tl152927152950%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152925152945%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl152927152950%_))
                                      ((lambda (_%L152953%_)
                                         (let ((_%$e152967%_
                                                (let ((__tmp153286
                                                       (lambda (_%sub152965%_)
                                                         (let ((__tmp153287
                                                                (car _%sub152965%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L152953%_
                                                            __tmp153287))))
                                                      (__tmp153285
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self152916%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp153286
                                                          __tmp153285))))
                                           (if _%$e152967%_
                                               ((lambda (_%sub152970%_)
                                                  (let ((__tmp153288
                                                         (cons '%#ref
                                                               (cons (cdr _%sub152970%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp153288
                                                     _%stx152917%_)))
                                                _%$e152967%_)
                                               _%stx152917%_)))
                                       _%hd152926152948%_)
                                      (_%g152919152932%_ _%g152920152935%_))))
                              (_%g152919152932%_ _%g152920152935%_))))
                      (_%g152919152932%_ _%g152920152935%_)))))
          (_%g152918152973%_ _%stx152917%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self152845%_ _%stx152846%_)
        (let* ((_%g152848152865%_
                (lambda (_%g152849152862%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152849152862%_))))
               (_%g152847152913%_
                (lambda (_%g152849152868%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152849152868%_))
                      (let ((_%e152852152870%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152849152868%_))))
                        (let ((_%hd152853152873%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152852152870%_)))
                              (_%tl152854152875%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152852152870%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl152854152875%_))
                              (let ((_%e152855152878%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl152854152875%_))))
                                (let ((_%hd152856152881%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152855152878%_)))
                                      (_%tl152857152883%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152855152878%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl152857152883%_))
                                      (let ((_%e152858152886%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl152857152883%_))))
                                        (let ((_%hd152859152889%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e152858152886%_)))
                                              (_%tl152860152891%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e152858152886%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl152860152891%_))
                                              ((lambda (_%L152894%_
                                                        _%L152895%_)
                                                 (let ((_%new-expr152910%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self152845%_
                                                           _%L152894%_)))
                                                       (_%new-xid152911%_
                                                        (if (let ((__tmp153289
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self152845%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L152895%_ __tmp153289))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self152845%_ 'new-id))
                    _%L152895%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp153290
                                                          (cons '%#set!
                                                                (cons _%new-xid152911%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr152910%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp153290
                                                      _%stx152846%_))))
                                               _%hd152859152889%_
                                               _%hd152856152881%_)
                                              (_%g152848152865%_
                                               _%g152849152868%_))))
                                      (_%g152848152865%_ _%g152849152868%_))))
                              (_%g152848152865%_ _%g152849152868%_))))
                      (_%g152848152865%_ _%g152849152868%_)))))
          (_%g152847152913%_ _%stx152846%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self152768%_ _%stx152769%_)
        (let* ((_%g152771152788%_
                (lambda (_%g152772152785%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152772152785%_))))
               (_%g152770152842%_
                (lambda (_%g152772152791%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152772152791%_))
                      (let ((_%e152775152793%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152772152791%_))))
                        (let ((_%hd152776152796%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152775152793%_)))
                              (_%tl152777152798%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152775152793%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl152777152798%_))
                              (let ((_%e152778152801%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl152777152798%_))))
                                (let ((_%hd152779152804%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152778152801%_)))
                                      (_%tl152780152806%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152778152801%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl152780152806%_))
                                      (let ((_%e152781152809%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl152780152806%_))))
                                        (let ((_%hd152782152812%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e152781152809%_)))
                                              (_%tl152783152814%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e152781152809%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl152783152814%_))
                                              ((lambda (_%L152817%_
                                                        _%L152818%_)
                                                 (let ((_%new-expr152839%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self152768%_
                                                           _%L152817%_)))
                                                       (_%new-xid152840%_
                                                        (let ((_%$e152835%_
                                                               (let ((__tmp153292
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub152833%_)
                                (let ((__tmp153293 (car _%sub152833%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L152818%_
                                   __tmp153293))))
                             (__tmp153291
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self152768%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp153292 __tmp153291))))
                  (if _%$e152835%_ (cdr _%$e152835%_) _%L152818%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp153294
                                                          (cons '%#set!
                                                                (cons _%new-xid152840%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr152839%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp153294
                                                      _%stx152769%_))))
                                               _%hd152782152812%_
                                               _%hd152779152804%_)
                                              (_%g152771152788%_
                                               _%g152772152791%_))))
                                      (_%g152771152788%_ _%g152772152791%_))))
                              (_%g152771152788%_ _%g152772152791%_))))
                      (_%g152771152788%_ _%g152772152791%_)))))
          (_%g152770152842%_ _%stx152769%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self152714%_ _%stx152715%_)
        (let* ((_%g152717152730%_
                (lambda (_%g152718152727%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152718152727%_))))
               (_%g152716152765%_
                (lambda (_%g152718152733%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152718152733%_))
                      (let ((_%e152720152735%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152718152733%_))))
                        (let ((_%hd152721152738%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152720152735%_)))
                              (_%tl152722152740%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152720152735%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl152722152740%_))
                              (let ((_%e152723152743%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl152722152740%_))))
                                (let ((_%hd152724152746%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152723152743%_)))
                                      (_%tl152725152748%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152723152743%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl152725152748%_))
                                      ((lambda (_%L152751%_)
                                         (let* ((_%eid152763%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L152751%_)))
                                                (__tmp153295
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self152714%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp153295
                                            _%eid152763%_
                                            1+
                                            '0)))
                                       _%hd152724152746%_)
                                      (_%g152717152730%_ _%g152718152733%_))))
                              (_%g152717152730%_ _%g152718152733%_))))
                      (_%g152717152730%_ _%g152718152733%_)))))
          (_%g152716152765%_ _%stx152715%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self152644%_ _%stx152645%_)
        (let* ((_%g152647152664%_
                (lambda (_%g152648152661%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152648152661%_))))
               (_%g152646152711%_
                (lambda (_%g152648152667%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152648152667%_))
                      (let ((_%e152651152669%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152648152667%_))))
                        (let ((_%hd152652152672%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152651152669%_)))
                              (_%tl152653152674%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152651152669%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl152653152674%_))
                              (let ((_%e152654152677%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl152653152674%_))))
                                (let ((_%hd152655152680%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152654152677%_)))
                                      (_%tl152656152682%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152654152677%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl152656152682%_))
                                      (let ((_%e152657152685%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl152656152682%_))))
                                        (let ((_%hd152658152688%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e152657152685%_)))
                                              (_%tl152659152690%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e152657152685%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl152659152690%_))
                                              ((lambda (_%L152693%_
                                                        _%L152694%_)
                                                 (let ((_%eid152709%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L152694%_))))
                                                   (let ((__tmp153296
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self152644%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp153296
                                                      _%eid152709%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self152644%_
                                                      _%L152693%_))))
                                               _%hd152658152688%_
                                               _%hd152655152680%_)
                                              (_%g152647152664%_
                                               _%g152648152667%_))))
                                      (_%g152647152664%_ _%g152648152667%_))))
                              (_%g152647152664%_ _%g152648152667%_))))
                      (_%g152647152664%_ _%g152648152667%_)))))
          (_%g152646152711%_ _%stx152645%_))))
    (define gxc#find-body%
      (lambda (_%self152557%_ _%stx152558%_)
        (let* ((_%g152560152579%_
                (lambda (_%g152561152576%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152561152576%_))))
               (_%g152559152641%_
                (lambda (_%g152561152582%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152561152582%_))
                      (let ((_%e152563152584%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152561152582%_))))
                        (let ((_%hd152564152587%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152563152584%_)))
                              (_%tl152565152589%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152563152584%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl152565152589%_))
                              (let ((_g153297_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl152565152589%_
                                        '0))))
                                (begin
                                  (let ((_g153298_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g153297_)
                                               (##vector-length _g153297_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g153298_ 2)))
                                        (error "Context expects 2 values"
                                               _g153298_)))
                                  (let ((_%target152566152592%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g153297_ 0)))
                                        (_%tl152568152594%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g153297_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl152568152594%_))
                                        (letrec ((_%loop152569152597%_
                                                  (lambda (_%hd152567152600%_
                                                           _%expr152573152602%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd152567152600%_))
                                                        (let ((_%e152570152605%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd152567152600%_))))
                  (let ((_%lp-hd152571152608%_
                         (let ()
                           (declare (not safe))
                           (##car _%e152570152605%_)))
                        (_%lp-tl152572152610%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e152570152605%_))))
                    (_%loop152569152597%_
                     _%lp-tl152572152610%_
                     (cons _%lp-hd152571152608%_ _%expr152573152602%_))))
                (let ((_%expr152574152613%_ (reverse _%expr152573152602%_)))
                  ((lambda (_%L152616%_)
                     (let ((__tmp153301
                            (lambda (_%g152629152631%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self152557%_
                                 _%g152629152631%_))))
                           (__tmp153299
                            (let ((__tmp153300
                                   (lambda (_%g152633152636%_
                                            _%g152634152638%_)
                                     (cons _%g152633152636%_
                                           _%g152634152638%_))))
                              (declare (not safe))
                              (__foldr1 __tmp153300 '() _%L152616%_))))
                       (declare (not safe))
                       (__ormap1 __tmp153301 __tmp153299)))
                   _%expr152574152613%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop152569152597%_
                                           _%target152566152592%_
                                           '()))
                                        (_%g152560152579%_
                                         _%g152561152582%_)))))
                              (_%g152560152579%_ _%g152561152582%_))))
                      (_%g152560152579%_ _%g152561152582%_)))))
          (_%g152559152641%_ _%stx152558%_))))
    (define gxc#find-let-values%
      (lambda (_%self152407%_ _%stx152408%_)
        (let* ((_%g152410152445%_
                (lambda (_%g152411152442%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152411152442%_))))
               (_%g152409152554%_
                (lambda (_%g152411152448%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152411152448%_))
                      (let ((_%e152415152450%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152411152448%_))))
                        (let ((_%hd152416152453%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152415152450%_)))
                              (_%tl152417152455%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152415152450%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl152417152455%_))
                              (let ((_%e152418152458%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl152417152455%_))))
                                (let ((_%hd152419152461%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152418152458%_)))
                                      (_%tl152420152463%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152418152458%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd152419152461%_))
                                      (let ((_g153302_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd152419152461%_
                                                '0))))
                                        (begin
                                          (let ((_g153303_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g153302_)
                                                       (##vector-length
                                                        _g153302_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g153303_ 2)))
                                                (error "Context expects 2 values"
                                                       _g153303_)))
                                          (let ((_%target152421152466%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g153302_ 0)))
                                                (_%tl152423152468%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g153302_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl152423152468%_))
                                                (letrec ((_%loop152424152471%_
                                                          (lambda (_%hd152422152474%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr152428152476%_
                           _%bind152429152478%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd152422152474%_))
                        (let ((_%e152425152481%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd152422152474%_))))
                          (let ((_%lp-hd152426152484%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e152425152481%_)))
                                (_%lp-tl152427152486%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e152425152481%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd152426152484%_))
                                (let ((_%e152435152489%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd152426152484%_))))
                                  (let ((_%hd152436152492%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e152435152489%_)))
                                        (_%tl152437152494%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e152435152489%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl152437152494%_))
                                        (let ((_%e152438152497%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl152437152494%_))))
                                          (let ((_%hd152439152500%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e152438152497%_)))
                                                (_%tl152440152502%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e152438152497%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl152440152502%_))
                                                (_%loop152424152471%_
                                                 _%lp-tl152427152486%_
                                                 (cons _%hd152439152500%_
                                                       _%expr152428152476%_)
                                                 (cons _%hd152436152492%_
                                                       _%bind152429152478%_))
                                                (_%g152410152445%_
                                                 _%g152411152448%_))))
                                        (_%g152410152445%_
                                         _%g152411152448%_))))
                                (_%g152410152445%_ _%g152411152448%_))))
                        (let ((_%expr152430152505%_
                               (reverse _%expr152428152476%_))
                              (_%bind152431152507%_
                               (reverse _%bind152429152478%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl152420152463%_))
                              (let ((_%e152432152510%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl152420152463%_))))
                                (let ((_%hd152433152513%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152432152510%_)))
                                      (_%tl152434152515%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152432152510%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl152434152515%_))
                                      ((lambda (_%L152518%_
                                                _%L152519%_
                                                _%L152520%_)
                                         (let ((_%$e152551%_
                                                (let ((__tmp153306
                                                       (lambda (_%g152539152541%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self152407%_
                                                            _%g152539152541%_))))
                                                      (__tmp153304
                                                       (let ((__tmp153305
                                                              (lambda (_%g152543152546%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g152544152548%_)
                        (cons _%g152543152546%_ _%g152544152548%_))))
                 (declare (not safe))
                 (__foldr1 __tmp153305 '() _%L152519%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp153306
                                                   __tmp153304))))
                                           (if _%$e152551%_
                                               _%$e152551%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self152407%_
                                                  _%L152518%_)))))
                                       _%hd152433152513%_
                                       _%expr152430152505%_
                                       _%bind152431152507%_)
                                      (_%g152410152445%_ _%g152411152448%_))))
                              (_%g152410152445%_ _%g152411152448%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop152424152471%_
                                                   _%target152421152466%_
                                                   '()
                                                   '()))
                                                (_%g152410152445%_
                                                 _%g152411152448%_)))))
                                      (_%g152410152445%_ _%g152411152448%_))))
                              (_%g152410152445%_ _%g152411152448%_))))
                      (_%g152410152445%_ _%g152411152448%_)))))
          (_%g152409152554%_ _%stx152408%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self152351%_ _%stx152352%_)
        (let* ((_%g152354152367%_
                (lambda (_%g152355152364%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152355152364%_))))
               (_%g152353152404%_
                (lambda (_%g152355152370%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152355152370%_))
                      (let ((_%e152357152372%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152355152370%_))))
                        (let ((_%hd152358152375%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152357152372%_)))
                              (_%tl152359152377%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152357152372%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl152359152377%_))
                              (let ((_%e152360152380%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl152359152377%_))))
                                (let ((_%hd152361152383%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152360152380%_)))
                                      (_%tl152362152385%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152360152380%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl152362152385%_))
                                      ((lambda (_%L152388%_)
                                         (let ((__tmp153308
                                                (lambda (_%g152399152401%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L152388%_
                                                     _%g152399152401%_))))
                                               (__tmp153307
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self152351%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp153308 __tmp153307)))
                                       _%hd152361152383%_)
                                      (_%g152354152367%_ _%g152355152370%_))))
                              (_%g152354152367%_ _%g152355152370%_))))
                      (_%g152354152367%_ _%g152355152370%_)))))
          (_%g152353152404%_ _%stx152352%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self152276%_ _%stx152277%_)
        (let* ((_%g152279152296%_
                (lambda (_%g152280152293%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152280152293%_))))
               (_%g152278152348%_
                (lambda (_%g152280152299%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152280152299%_))
                      (let ((_%e152283152301%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152280152299%_))))
                        (let ((_%hd152284152304%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152283152301%_)))
                              (_%tl152285152306%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152283152301%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl152285152306%_))
                              (let ((_%e152286152309%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl152285152306%_))))
                                (let ((_%hd152287152312%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152286152309%_)))
                                      (_%tl152288152314%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152286152309%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl152288152314%_))
                                      (let ((_%e152289152317%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl152288152314%_))))
                                        (let ((_%hd152290152320%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e152289152317%_)))
                                              (_%tl152291152322%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e152289152317%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl152291152322%_))
                                              ((lambda (_%L152325%_
                                                        _%L152326%_)
                                                 (let ((_%$e152345%_
                                                        (let ((__tmp153310
                                                               (lambda (_%g152340152342%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L152326%_
                            _%g152340152342%_))))
                      (__tmp153309
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self152276%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp153310 __tmp153309))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e152345%_
                                                       _%$e152345%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self152276%_
                                                          _%L152325%_)))))
                                               _%hd152290152320%_
                                               _%hd152287152312%_)
                                              (_%g152279152296%_
                                               _%g152280152299%_))))
                                      (_%g152279152296%_ _%g152280152299%_))))
                              (_%g152279152296%_ _%g152280152299%_))))
                      (_%g152279152296%_ _%g152280152299%_)))))
          (_%g152278152348%_ _%stx152277%_))))))
