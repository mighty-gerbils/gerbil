(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1770513298)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp208287 (list gxc#::void::t))
            (__tmp208286 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp208287
         '()
         __tmp208286
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args208273%_
        (apply make-instance gxc#::collect-mutators::t _%$args208273%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp208288
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
        (__make-atomic-promise __tmp208288)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx208265%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self208268%_
                (let ((__obj208276
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj208276))
               (__tmp208289
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self208268%_ _%stx208265%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp208289
           gxc#current-compile-method
           _%self208268%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp208291 (list gxc#::basic-xform-expression::t))
            (__tmp208290 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp208291
         '(id new-id)
         __tmp208290
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args208262%_
        (apply make-instance gxc#::expression-subst::t _%$args208262%_)))
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
      (let ((__tmp208292
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
        (__make-atomic-promise __tmp208292)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords208234%_
               _%id208230208235%_
               _%new-id208231208236%_
               _%stx208237%_)
        (let* ((_%id208240%_
                (if (eq? _%id208230208235%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id208230208235%_))
               (_%new-id208242%_
                (if (eq? _%new-id208231208236%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id208231208236%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self208244%_
                  (let ((__obj208278
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj208278
                       _%id208240%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj208278
                       _%new-id208242%_
                       '2
                       '#f
                       '#f))
                    __obj208278))
                 (__tmp208293
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self208244%_ _%stx208237%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp208293
             gxc#current-compile-method
             _%self208244%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords208251%_ . _%args208252%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords208251%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords208251%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords208251%_
                  'new-id:
                  absent-value))
               _%args208252%_)))
    (define gxc#apply-expression-subst
      (lambda _%args208232208258%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args208232208258%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp208295 (list gxc#::basic-xform-expression::t))
            (__tmp208294 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp208295
         '(subst)
         __tmp208294
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args208226%_
        (apply make-instance gxc#::expression-subst*::t _%$args208226%_)))
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
      (let ((__tmp208296
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
        (__make-atomic-promise __tmp208296)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords208201%_ _%subst208198208202%_ _%stx208203%_)
        (let ((_%subst208206%_
               (if (eq? _%subst208198208202%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst208198208202%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self208208%_
                  (let ((__obj208280
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj208280
                       _%subst208206%_
                       '1
                       '#f
                       '#f))
                    __obj208280))
                 (__tmp208297
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self208208%_ _%stx208203%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp208297
             gxc#current-compile-method
             _%self208208%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords208215%_ . _%args208216%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords208215%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords208215%_
                  'subst:
                  absent-value))
               _%args208216%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args208199208222%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args208199208222%_)))
    (define gxc#::find-expression::t
      (let ((__tmp208298 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp208298
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args208194%_
        (apply make-instance gxc#::find-expression::t _%$args208194%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp208299
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
        (__make-atomic-promise __tmp208299)))
    (define gxc#::find-var-refs::t
      (let ((__tmp208301 (list gxc#::find-expression::t))
            (__tmp208300 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp208301
         '(ids)
         __tmp208300
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args208190%_
        (apply make-instance gxc#::find-var-refs::t _%$args208190%_)))
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
      (let ((__tmp208302
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
        (__make-atomic-promise __tmp208302)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords208165%_ _%ids208162208166%_ _%stx208167%_)
        (let ((_%ids208170%_
               (if (eq? _%ids208162208166%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids208162208166%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self208172%_
                  (let ((__obj208283
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj208283
                       _%ids208170%_
                       '1
                       '#f
                       '#f))
                    __obj208283))
                 (__tmp208303
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self208172%_ _%stx208167%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp208303
             gxc#current-compile-method
             _%self208172%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords208179%_ . _%args208180%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords208179%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords208179%_ 'ids: absent-value))
               _%args208180%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args208163208186%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args208163208186%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp208305 (list gxc#::collect-expression-refs::t))
            (__tmp208304 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp208305
         '()
         __tmp208304
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args208158%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args208158%_)))
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
      (let ((__tmp208306
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
        (__make-atomic-promise __tmp208306)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords208133%_ _%table208130208134%_ _%stx208135%_)
        (let ((_%table208138%_
               (if (eq? _%table208130208134%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table208130208134%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self208140%_
                  (let ((__obj208285
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj208285
                       _%table208138%_
                       '1
                       '#f
                       '#f))
                    __obj208285))
                 (__tmp208307
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self208140%_ _%stx208135%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp208307
             gxc#current-compile-method
             _%self208140%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords208147%_ . _%args208148%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords208147%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords208147%_
                  'table:
                  absent-value))
               _%args208148%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args208131208154%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args208131208154%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self208059%_ _%stx208060%_)
        (let* ((_%g208062208079%_
                (lambda (_%g208063208076%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208063208076%_))))
               (_%g208061208126%_
                (lambda (_%g208063208082%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208063208082%_))
                      (let ((_%e208066208084%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g208063208082%_))))
                        (let ((_%hd208067208087%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208066208084%_)))
                              (_%tl208068208089%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208066208084%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl208068208089%_))
                              (let ((_%e208069208092%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl208068208089%_))))
                                (let ((_%hd208070208095%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208069208092%_)))
                                      (_%tl208071208097%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208069208092%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl208071208097%_))
                                      (let ((_%e208072208100%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl208071208097%_))))
                                        (let ((_%hd208073208103%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e208072208100%_)))
                                              (_%tl208074208105%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e208072208100%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl208074208105%_))
                                              ((lambda (_%g208064208108%_
                                                        _%g208065208109%_)
                                                 (let ((_%sym208124%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g208065208109%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym208124%_))
                                                   (let ((__tmp208308
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp208308
                                                      _%sym208124%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self208059%_
                                                      _%g208064208108%_))))
                                               _%hd208073208103%_
                                               _%hd208070208095%_)
                                              (_%g208062208079%_
                                               _%g208063208082%_))))
                                      (_%g208062208079%_ _%g208063208082%_))))
                              (_%g208062208079%_ _%g208063208082%_))))
                      (_%g208062208079%_ _%g208063208082%_)))))
          (_%g208061208126%_ _%stx208060%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self208007%_ _%stx208008%_)
        (let* ((_%g208010208023%_
                (lambda (_%g208011208020%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208011208020%_))))
               (_%g208009208056%_
                (lambda (_%g208011208026%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208011208026%_))
                      (let ((_%e208013208028%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g208011208026%_))))
                        (let ((_%hd208014208031%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208013208028%_)))
                              (_%tl208015208033%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208013208028%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl208015208033%_))
                              (let ((_%e208016208036%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl208015208033%_))))
                                (let ((_%hd208017208039%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208016208036%_)))
                                      (_%tl208018208041%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208016208036%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl208018208041%_))
                                      ((lambda (_%g208012208044%_)
                                         (if (let ((__tmp208309
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self208007%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g208012208044%_
                                                __tmp208309))
                                             (let ((__tmp208310
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self208007%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp208310
                                                _%stx208008%_))
                                             _%stx208008%_))
                                       _%hd208017208039%_)
                                      (_%g208010208023%_ _%g208011208026%_))))
                              (_%g208010208023%_ _%g208011208026%_))))
                      (_%g208010208023%_ _%g208011208026%_)))))
          (_%g208009208056%_ _%stx208008%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self207947%_ _%stx207948%_)
        (let* ((_%g207950207963%_
                (lambda (_%g207951207960%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207951207960%_))))
               (_%g207949208004%_
                (lambda (_%g207951207966%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207951207966%_))
                      (let ((_%e207953207968%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207951207966%_))))
                        (let ((_%hd207954207971%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207953207968%_)))
                              (_%tl207955207973%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207953207968%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207955207973%_))
                              (let ((_%e207956207976%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl207955207973%_))))
                                (let ((_%hd207957207979%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207956207976%_)))
                                      (_%tl207958207981%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207956207976%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl207958207981%_))
                                      ((lambda (_%g207952207984%_)
                                         (let ((_%$e207998%_
                                                (let ((__tmp208312
                                                       (lambda (_%sub207996%_)
                                                         (let ((__tmp208313
                                                                (car _%sub207996%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%g207952207984%_
                                                            __tmp208313))))
                                                      (__tmp208311
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self207947%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp208312
                                                          __tmp208311))))
                                           (if _%$e207998%_
                                               ((lambda (_%sub208001%_)
                                                  (let ((__tmp208314
                                                         (cons '%#ref
                                                               (cons (cdr _%sub208001%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp208314
                                                     _%stx207948%_)))
                                                _%$e207998%_)
                                               _%stx207948%_)))
                                       _%hd207957207979%_)
                                      (_%g207950207963%_ _%g207951207966%_))))
                              (_%g207950207963%_ _%g207951207966%_))))
                      (_%g207950207963%_ _%g207951207966%_)))))
          (_%g207949208004%_ _%stx207948%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self207876%_ _%stx207877%_)
        (let* ((_%g207879207896%_
                (lambda (_%g207880207893%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207880207893%_))))
               (_%g207878207944%_
                (lambda (_%g207880207899%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207880207899%_))
                      (let ((_%e207883207901%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207880207899%_))))
                        (let ((_%hd207884207904%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207883207901%_)))
                              (_%tl207885207906%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207883207901%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207885207906%_))
                              (let ((_%e207886207909%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl207885207906%_))))
                                (let ((_%hd207887207912%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207886207909%_)))
                                      (_%tl207888207914%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207886207909%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl207888207914%_))
                                      (let ((_%e207889207917%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl207888207914%_))))
                                        (let ((_%hd207890207920%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e207889207917%_)))
                                              (_%tl207891207922%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e207889207917%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl207891207922%_))
                                              ((lambda (_%g207881207925%_
                                                        _%g207882207926%_)
                                                 (let ((_%new-expr207941%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self207876%_
                                                           _%g207881207925%_)))
                                                       (_%new-xid207942%_
                                                        (if (let ((__tmp208315
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self207876%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%g207882207926%_ __tmp208315))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self207876%_ 'new-id))
                    _%g207882207926%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp208316
                                                          (cons '%#set!
                                                                (cons _%new-xid207942%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr207941%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp208316
                                                      _%stx207877%_))))
                                               _%hd207890207920%_
                                               _%hd207887207912%_)
                                              (_%g207879207896%_
                                               _%g207880207899%_))))
                                      (_%g207879207896%_ _%g207880207899%_))))
                              (_%g207879207896%_ _%g207880207899%_))))
                      (_%g207879207896%_ _%g207880207899%_)))))
          (_%g207878207944%_ _%stx207877%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self207799%_ _%stx207800%_)
        (let* ((_%g207802207819%_
                (lambda (_%g207803207816%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207803207816%_))))
               (_%g207801207873%_
                (lambda (_%g207803207822%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207803207822%_))
                      (let ((_%e207806207824%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207803207822%_))))
                        (let ((_%hd207807207827%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207806207824%_)))
                              (_%tl207808207829%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207806207824%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207808207829%_))
                              (let ((_%e207809207832%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl207808207829%_))))
                                (let ((_%hd207810207835%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207809207832%_)))
                                      (_%tl207811207837%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207809207832%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl207811207837%_))
                                      (let ((_%e207812207840%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl207811207837%_))))
                                        (let ((_%hd207813207843%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e207812207840%_)))
                                              (_%tl207814207845%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e207812207840%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl207814207845%_))
                                              ((lambda (_%g207804207848%_
                                                        _%g207805207849%_)
                                                 (let ((_%new-expr207870%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self207799%_
                                                           _%g207804207848%_)))
                                                       (_%new-xid207871%_
                                                        (let ((_%$e207866%_
                                                               (let ((__tmp208318
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub207864%_)
                                (let ((__tmp208319 (car _%sub207864%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%g207805207849%_
                                   __tmp208319))))
                             (__tmp208317
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self207799%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp208318 __tmp208317))))
                  (if _%$e207866%_ (cdr _%$e207866%_) _%g207805207849%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp208320
                                                          (cons '%#set!
                                                                (cons _%new-xid207871%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr207870%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp208320
                                                      _%stx207800%_))))
                                               _%hd207813207843%_
                                               _%hd207810207835%_)
                                              (_%g207802207819%_
                                               _%g207803207822%_))))
                                      (_%g207802207819%_ _%g207803207822%_))))
                              (_%g207802207819%_ _%g207803207822%_))))
                      (_%g207802207819%_ _%g207803207822%_)))))
          (_%g207801207873%_ _%stx207800%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self207745%_ _%stx207746%_)
        (let* ((_%g207748207761%_
                (lambda (_%g207749207758%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207749207758%_))))
               (_%g207747207796%_
                (lambda (_%g207749207764%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207749207764%_))
                      (let ((_%e207751207766%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207749207764%_))))
                        (let ((_%hd207752207769%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207751207766%_)))
                              (_%tl207753207771%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207751207766%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207753207771%_))
                              (let ((_%e207754207774%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl207753207771%_))))
                                (let ((_%hd207755207777%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207754207774%_)))
                                      (_%tl207756207779%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207754207774%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl207756207779%_))
                                      ((lambda (_%g207750207782%_)
                                         (let* ((_%eid207794%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g207750207782%_)))
                                                (__tmp208321
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self207745%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp208321
                                            _%eid207794%_
                                            1+
                                            '0)))
                                       _%hd207755207777%_)
                                      (_%g207748207761%_ _%g207749207764%_))))
                              (_%g207748207761%_ _%g207749207764%_))))
                      (_%g207748207761%_ _%g207749207764%_)))))
          (_%g207747207796%_ _%stx207746%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self207675%_ _%stx207676%_)
        (let* ((_%g207678207695%_
                (lambda (_%g207679207692%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207679207692%_))))
               (_%g207677207742%_
                (lambda (_%g207679207698%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207679207698%_))
                      (let ((_%e207682207700%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207679207698%_))))
                        (let ((_%hd207683207703%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207682207700%_)))
                              (_%tl207684207705%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207682207700%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207684207705%_))
                              (let ((_%e207685207708%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl207684207705%_))))
                                (let ((_%hd207686207711%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207685207708%_)))
                                      (_%tl207687207713%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207685207708%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl207687207713%_))
                                      (let ((_%e207688207716%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl207687207713%_))))
                                        (let ((_%hd207689207719%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e207688207716%_)))
                                              (_%tl207690207721%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e207688207716%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl207690207721%_))
                                              ((lambda (_%g207680207724%_
                                                        _%g207681207725%_)
                                                 (let ((_%eid207740%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g207681207725%_))))
                                                   (let ((__tmp208322
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self207675%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp208322
                                                      _%eid207740%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self207675%_
                                                      _%g207680207724%_))))
                                               _%hd207689207719%_
                                               _%hd207686207711%_)
                                              (_%g207678207695%_
                                               _%g207679207698%_))))
                                      (_%g207678207695%_ _%g207679207698%_))))
                              (_%g207678207695%_ _%g207679207698%_))))
                      (_%g207678207695%_ _%g207679207698%_)))))
          (_%g207677207742%_ _%stx207676%_))))
    (define gxc#find-body%
      (lambda (_%self207590%_ _%stx207591%_)
        (let* ((_%g207593207612%_
                (lambda (_%g207594207609%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207594207609%_))))
               (_%g207592207672%_
                (lambda (_%g207594207615%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207594207615%_))
                      (let ((_%e207596207617%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207594207615%_))))
                        (let ((_%hd207597207620%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207596207617%_)))
                              (_%tl207598207622%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207596207617%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl207598207622%_))
                              (let ((_g208323_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl207598207622%_
                                        '0))))
                                (begin
                                  (let ((_g208324_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g208323_)
                                               (##values-length _g208323_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g208324_ 2)))
                                        (error "Context expects 2 values"
                                               _g208324_)))
                                  (let ((_%target207599207625%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g208323_ 0)))
                                        (_%tl207601207627%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g208323_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl207601207627%_))
                                        (letrec ((_%loop207602207630%_
                                                  (lambda (_%hd207600207633%_
                                                           _%expr207606207635%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd207600207633%_))
                                                        (let ((_%e207603207637%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd207600207633%_))))
                  (let ((_%lp-hd207604207640%_
                         (let ()
                           (declare (not safe))
                           (##car _%e207603207637%_)))
                        (_%lp-tl207605207642%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e207603207637%_))))
                    (_%loop207602207630%_
                     _%lp-tl207605207642%_
                     (cons _%lp-hd207604207640%_ _%expr207606207635%_))))
                (let ((_%expr207607207645%_ (reverse _%expr207606207635%_)))
                  ((lambda (_%g207595207647%_)
                     (let ((__tmp208327
                            (lambda (_%g207660207662%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self207590%_
                                 _%g207660207662%_))))
                           (__tmp208325
                            (let ((__tmp208326
                                   (lambda (_%g207664207667%_
                                            _%g207665207669%_)
                                     (cons _%g207664207667%_
                                           _%g207665207669%_))))
                              (declare (not safe))
                              (foldr__0 __tmp208326 '() _%g207595207647%_))))
                       (declare (not safe))
                       (ormap__0 __tmp208327 __tmp208325)))
                   _%expr207607207645%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop207602207630%_
                                           _%target207599207625%_
                                           '()))
                                        (_%g207593207612%_
                                         _%g207594207615%_)))))
                              (_%g207593207612%_ _%g207594207615%_))))
                      (_%g207593207612%_ _%g207594207615%_)))))
          (_%g207592207672%_ _%stx207591%_))))
    (define gxc#find-let-values%
      (lambda (_%self207444%_ _%stx207445%_)
        (let* ((_%g207447207482%_
                (lambda (_%g207448207479%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207448207479%_))))
               (_%g207446207587%_
                (lambda (_%g207448207485%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207448207485%_))
                      (let ((_%e207452207487%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207448207485%_))))
                        (let ((_%hd207453207490%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207452207487%_)))
                              (_%tl207454207492%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207452207487%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207454207492%_))
                              (let ((_%e207455207495%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl207454207492%_))))
                                (let ((_%hd207456207498%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207455207495%_)))
                                      (_%tl207457207500%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207455207495%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd207456207498%_))
                                      (let ((_g208328_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd207456207498%_
                                                '0))))
                                        (begin
                                          (let ((_g208329_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g208328_)
                                                       (##values-length
                                                        _g208328_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g208329_ 2)))
                                                (error "Context expects 2 values"
                                                       _g208329_)))
                                          (let ((_%target207458207503%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g208328_ 0)))
                                                (_%tl207460207505%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g208328_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl207460207505%_))
                                                (letrec ((_%loop207461207508%_
                                                          (lambda (_%hd207459207511%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr207465207513%_
                           _%bind207466207514%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd207459207511%_))
                        (let ((_%e207462207516%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd207459207511%_))))
                          (let ((_%lp-hd207463207519%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e207462207516%_)))
                                (_%lp-tl207464207521%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e207462207516%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd207463207519%_))
                                (let ((_%e207469207524%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd207463207519%_))))
                                  (let ((_%hd207470207527%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e207469207524%_)))
                                        (_%tl207471207529%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e207469207524%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl207471207529%_))
                                        (let ((_%e207472207532%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl207471207529%_))))
                                          (let ((_%hd207473207535%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e207472207532%_)))
                                                (_%tl207474207537%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e207472207532%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl207474207537%_))
                                                (_%loop207461207508%_
                                                 _%lp-tl207464207521%_
                                                 (cons _%hd207473207535%_
                                                       _%expr207465207513%_)
                                                 (cons _%hd207470207527%_
                                                       _%bind207466207514%_))
                                                (_%g207447207482%_
                                                 _%g207448207485%_))))
                                        (_%g207447207482%_
                                         _%g207448207485%_))))
                                (_%g207447207482%_ _%g207448207485%_))))
                        (let ((_%expr207467207540%_
                               (reverse _%expr207465207513%_))
                              (_%bind207468207541%_
                               (reverse _%bind207466207514%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207457207500%_))
                              (let ((_%e207475207543%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl207457207500%_))))
                                (let ((_%hd207476207546%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207475207543%_)))
                                      (_%tl207477207548%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207475207543%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl207477207548%_))
                                      ((lambda (_%g207449207551%_
                                                _%g207450207552%_
                                                _%g207451207553%_)
                                         (let ((_%$e207584%_
                                                (let ((__tmp208332
                                                       (lambda (_%g207572207574%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self207444%_
                                                            _%g207572207574%_))))
                                                      (__tmp208330
                                                       (let ((__tmp208331
                                                              (lambda (_%g207576207579%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g207577207581%_)
                        (cons _%g207576207579%_ _%g207577207581%_))))
                 (declare (not safe))
                 (foldr__0 __tmp208331 '() _%g207450207552%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap__0
                                                   __tmp208332
                                                   __tmp208330))))
                                           (if _%$e207584%_
                                               _%$e207584%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self207444%_
                                                  _%g207449207551%_)))))
                                       _%hd207476207546%_
                                       _%expr207467207540%_
                                       _%bind207468207541%_)
                                      (_%g207447207482%_ _%g207448207485%_))))
                              (_%g207447207482%_ _%g207448207485%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop207461207508%_
                                                   _%target207458207503%_
                                                   '()
                                                   '()))
                                                (_%g207447207482%_
                                                 _%g207448207485%_)))))
                                      (_%g207447207482%_ _%g207448207485%_))))
                              (_%g207447207482%_ _%g207448207485%_))))
                      (_%g207447207482%_ _%g207448207485%_)))))
          (_%g207446207587%_ _%stx207445%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self207388%_ _%stx207389%_)
        (let* ((_%g207391207404%_
                (lambda (_%g207392207401%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207392207401%_))))
               (_%g207390207441%_
                (lambda (_%g207392207407%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207392207407%_))
                      (let ((_%e207394207409%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207392207407%_))))
                        (let ((_%hd207395207412%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207394207409%_)))
                              (_%tl207396207414%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207394207409%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207396207414%_))
                              (let ((_%e207397207417%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl207396207414%_))))
                                (let ((_%hd207398207420%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207397207417%_)))
                                      (_%tl207399207422%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207397207417%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl207399207422%_))
                                      ((lambda (_%g207393207425%_)
                                         (let ((__tmp208334
                                                (lambda (_%g207436207438%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g207393207425%_
                                                     _%g207436207438%_))))
                                               (__tmp208333
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self207388%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp208334 __tmp208333)))
                                       _%hd207398207420%_)
                                      (_%g207391207404%_ _%g207392207407%_))))
                              (_%g207391207404%_ _%g207392207407%_))))
                      (_%g207391207404%_ _%g207392207407%_)))))
          (_%g207390207441%_ _%stx207389%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self207313%_ _%stx207314%_)
        (let* ((_%g207316207333%_
                (lambda (_%g207317207330%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g207317207330%_))))
               (_%g207315207385%_
                (lambda (_%g207317207336%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g207317207336%_))
                      (let ((_%e207320207338%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g207317207336%_))))
                        (let ((_%hd207321207341%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e207320207338%_)))
                              (_%tl207322207343%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e207320207338%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl207322207343%_))
                              (let ((_%e207323207346%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl207322207343%_))))
                                (let ((_%hd207324207349%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e207323207346%_)))
                                      (_%tl207325207351%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e207323207346%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl207325207351%_))
                                      (let ((_%e207326207354%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl207325207351%_))))
                                        (let ((_%hd207327207357%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e207326207354%_)))
                                              (_%tl207328207359%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e207326207354%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl207328207359%_))
                                              ((lambda (_%g207318207362%_
                                                        _%g207319207363%_)
                                                 (let ((_%$e207382%_
                                                        (let ((__tmp208336
                                                               (lambda (_%g207377207379%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%g207319207363%_
                            _%g207377207379%_))))
                      (__tmp208335
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self207313%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp208336 __tmp208335))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e207382%_
                                                       _%$e207382%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self207313%_
                                                          _%g207318207362%_)))))
                                               _%hd207327207357%_
                                               _%hd207324207349%_)
                                              (_%g207316207333%_
                                               _%g207317207336%_))))
                                      (_%g207316207333%_ _%g207317207336%_))))
                              (_%g207316207333%_ _%g207317207336%_))))
                      (_%g207316207333%_ _%g207317207336%_)))))
          (_%g207315207385%_ _%stx207314%_))))))
