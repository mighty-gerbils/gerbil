(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1770752339)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp209364 (list gxc#::void::t))
            (__tmp209363 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp209364
         '()
         __tmp209363
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args209350%_
        (apply make-instance gxc#::collect-mutators::t _%$args209350%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp209365
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
        (__make-atomic-promise __tmp209365)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx209342%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self209345%_
                (let ((__obj209353
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj209353))
               (__tmp209366
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self209345%_ _%stx209342%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp209366
           gxc#current-compile-method
           _%self209345%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp209368 (list gxc#::basic-xform-expression::t))
            (__tmp209367 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp209368
         '(id new-id)
         __tmp209367
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args209339%_
        (apply make-instance gxc#::expression-subst::t _%$args209339%_)))
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
      (let ((__tmp209369
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
        (__make-atomic-promise __tmp209369)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords209311%_
               _%id209307209312%_
               _%new-id209308209313%_
               _%stx209314%_)
        (let* ((_%id209317%_
                (if (eq? _%id209307209312%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id209307209312%_))
               (_%new-id209319%_
                (if (eq? _%new-id209308209313%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id209308209313%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self209321%_
                  (let ((__obj209355
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj209355
                       _%id209317%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj209355
                       _%new-id209319%_
                       '2
                       '#f
                       '#f))
                    __obj209355))
                 (__tmp209370
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self209321%_ _%stx209314%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp209370
             gxc#current-compile-method
             _%self209321%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords209328%_ . _%args209329%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords209328%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords209328%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords209328%_
                  'new-id:
                  absent-value))
               _%args209329%_)))
    (define gxc#apply-expression-subst
      (lambda _%args209309209335%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args209309209335%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp209372 (list gxc#::basic-xform-expression::t))
            (__tmp209371 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp209372
         '(subst)
         __tmp209371
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args209303%_
        (apply make-instance gxc#::expression-subst*::t _%$args209303%_)))
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
      (let ((__tmp209373
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
        (__make-atomic-promise __tmp209373)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords209278%_ _%subst209275209279%_ _%stx209280%_)
        (let ((_%subst209283%_
               (if (eq? _%subst209275209279%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst209275209279%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self209285%_
                  (let ((__obj209357
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj209357
                       _%subst209283%_
                       '1
                       '#f
                       '#f))
                    __obj209357))
                 (__tmp209374
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self209285%_ _%stx209280%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp209374
             gxc#current-compile-method
             _%self209285%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords209292%_ . _%args209293%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords209292%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords209292%_
                  'subst:
                  absent-value))
               _%args209293%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args209276209299%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args209276209299%_)))
    (define gxc#::find-expression::t
      (let ((__tmp209375 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp209375
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args209271%_
        (apply make-instance gxc#::find-expression::t _%$args209271%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp209376
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
        (__make-atomic-promise __tmp209376)))
    (define gxc#::find-var-refs::t
      (let ((__tmp209378 (list gxc#::find-expression::t))
            (__tmp209377 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp209378
         '(ids)
         __tmp209377
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args209267%_
        (apply make-instance gxc#::find-var-refs::t _%$args209267%_)))
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
      (let ((__tmp209379
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
        (__make-atomic-promise __tmp209379)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords209242%_ _%ids209239209243%_ _%stx209244%_)
        (let ((_%ids209247%_
               (if (eq? _%ids209239209243%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids209239209243%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self209249%_
                  (let ((__obj209360
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj209360
                       _%ids209247%_
                       '1
                       '#f
                       '#f))
                    __obj209360))
                 (__tmp209380
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self209249%_ _%stx209244%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp209380
             gxc#current-compile-method
             _%self209249%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords209256%_ . _%args209257%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords209256%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords209256%_ 'ids: absent-value))
               _%args209257%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args209240209263%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args209240209263%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp209382 (list gxc#::collect-expression-refs::t))
            (__tmp209381 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp209382
         '()
         __tmp209381
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args209235%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args209235%_)))
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
      (let ((__tmp209383
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
        (__make-atomic-promise __tmp209383)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords209210%_ _%table209207209211%_ _%stx209212%_)
        (let ((_%table209215%_
               (if (eq? _%table209207209211%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table209207209211%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self209217%_
                  (let ((__obj209362
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj209362
                       _%table209215%_
                       '1
                       '#f
                       '#f))
                    __obj209362))
                 (__tmp209384
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self209217%_ _%stx209212%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp209384
             gxc#current-compile-method
             _%self209217%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords209224%_ . _%args209225%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords209224%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords209224%_
                  'table:
                  absent-value))
               _%args209225%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args209208209231%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args209208209231%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self209136%_ _%stx209137%_)
        (let* ((_%g209139209156%_
                (lambda (_%g209140209153%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g209140209153%_))))
               (_%g209138209203%_
                (lambda (_%g209140209159%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g209140209159%_))
                      (let ((_%e209143209161%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g209140209159%_))))
                        (let ((_%hd209144209164%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e209143209161%_)))
                              (_%tl209145209166%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e209143209161%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl209145209166%_))
                              (let ((_%e209146209169%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl209145209166%_))))
                                (let ((_%hd209147209172%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e209146209169%_)))
                                      (_%tl209148209174%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e209146209169%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl209148209174%_))
                                      (let ((_%e209149209177%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl209148209174%_))))
                                        (let ((_%hd209150209180%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e209149209177%_)))
                                              (_%tl209151209182%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e209149209177%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl209151209182%_))
                                              ((lambda (_%g209141209185%_
                                                        _%g209142209186%_)
                                                 (let ((_%sym209201%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g209142209186%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym209201%_))
                                                   (let ((__tmp209385
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp209385
                                                      _%sym209201%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self209136%_
                                                      _%g209141209185%_))))
                                               _%hd209150209180%_
                                               _%hd209147209172%_)
                                              (_%g209139209156%_
                                               _%g209140209159%_))))
                                      (_%g209139209156%_ _%g209140209159%_))))
                              (_%g209139209156%_ _%g209140209159%_))))
                      (_%g209139209156%_ _%g209140209159%_)))))
          (_%g209138209203%_ _%stx209137%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self209084%_ _%stx209085%_)
        (let* ((_%g209087209100%_
                (lambda (_%g209088209097%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g209088209097%_))))
               (_%g209086209133%_
                (lambda (_%g209088209103%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g209088209103%_))
                      (let ((_%e209090209105%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g209088209103%_))))
                        (let ((_%hd209091209108%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e209090209105%_)))
                              (_%tl209092209110%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e209090209105%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl209092209110%_))
                              (let ((_%e209093209113%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl209092209110%_))))
                                (let ((_%hd209094209116%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e209093209113%_)))
                                      (_%tl209095209118%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e209093209113%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl209095209118%_))
                                      ((lambda (_%g209089209121%_)
                                         (if (let ((__tmp209386
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self209084%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g209089209121%_
                                                __tmp209386))
                                             (let ((__tmp209387
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self209084%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp209387
                                                _%stx209085%_))
                                             _%stx209085%_))
                                       _%hd209094209116%_)
                                      (_%g209087209100%_ _%g209088209103%_))))
                              (_%g209087209100%_ _%g209088209103%_))))
                      (_%g209087209100%_ _%g209088209103%_)))))
          (_%g209086209133%_ _%stx209085%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self209024%_ _%stx209025%_)
        (let* ((_%g209027209040%_
                (lambda (_%g209028209037%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g209028209037%_))))
               (_%g209026209081%_
                (lambda (_%g209028209043%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g209028209043%_))
                      (let ((_%e209030209045%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g209028209043%_))))
                        (let ((_%hd209031209048%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e209030209045%_)))
                              (_%tl209032209050%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e209030209045%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl209032209050%_))
                              (let ((_%e209033209053%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl209032209050%_))))
                                (let ((_%hd209034209056%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e209033209053%_)))
                                      (_%tl209035209058%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e209033209053%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl209035209058%_))
                                      ((lambda (_%g209029209061%_)
                                         (let ((_%$e209075%_
                                                (let ((__tmp209389
                                                       (lambda (_%sub209073%_)
                                                         (let ((__tmp209390
                                                                (car _%sub209073%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%g209029209061%_
                                                            __tmp209390))))
                                                      (__tmp209388
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self209024%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp209389
                                                          __tmp209388))))
                                           (if _%$e209075%_
                                               ((lambda (_%sub209078%_)
                                                  (let ((__tmp209391
                                                         (cons '%#ref
                                                               (cons (cdr _%sub209078%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp209391
                                                     _%stx209025%_)))
                                                _%$e209075%_)
                                               _%stx209025%_)))
                                       _%hd209034209056%_)
                                      (_%g209027209040%_ _%g209028209043%_))))
                              (_%g209027209040%_ _%g209028209043%_))))
                      (_%g209027209040%_ _%g209028209043%_)))))
          (_%g209026209081%_ _%stx209025%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self208953%_ _%stx208954%_)
        (let* ((_%g208956208973%_
                (lambda (_%g208957208970%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208957208970%_))))
               (_%g208955209021%_
                (lambda (_%g208957208976%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208957208976%_))
                      (let ((_%e208960208978%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g208957208976%_))))
                        (let ((_%hd208961208981%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208960208978%_)))
                              (_%tl208962208983%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208960208978%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl208962208983%_))
                              (let ((_%e208963208986%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl208962208983%_))))
                                (let ((_%hd208964208989%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208963208986%_)))
                                      (_%tl208965208991%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208963208986%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl208965208991%_))
                                      (let ((_%e208966208994%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl208965208991%_))))
                                        (let ((_%hd208967208997%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e208966208994%_)))
                                              (_%tl208968208999%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e208966208994%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl208968208999%_))
                                              ((lambda (_%g208958209002%_
                                                        _%g208959209003%_)
                                                 (let ((_%new-expr209018%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self208953%_
                                                           _%g208958209002%_)))
                                                       (_%new-xid209019%_
                                                        (if (let ((__tmp209392
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self208953%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%g208959209003%_ __tmp209392))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self208953%_ 'new-id))
                    _%g208959209003%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp209393
                                                          (cons '%#set!
                                                                (cons _%new-xid209019%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr209018%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp209393
                                                      _%stx208954%_))))
                                               _%hd208967208997%_
                                               _%hd208964208989%_)
                                              (_%g208956208973%_
                                               _%g208957208976%_))))
                                      (_%g208956208973%_ _%g208957208976%_))))
                              (_%g208956208973%_ _%g208957208976%_))))
                      (_%g208956208973%_ _%g208957208976%_)))))
          (_%g208955209021%_ _%stx208954%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self208876%_ _%stx208877%_)
        (let* ((_%g208879208896%_
                (lambda (_%g208880208893%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208880208893%_))))
               (_%g208878208950%_
                (lambda (_%g208880208899%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208880208899%_))
                      (let ((_%e208883208901%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g208880208899%_))))
                        (let ((_%hd208884208904%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208883208901%_)))
                              (_%tl208885208906%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208883208901%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl208885208906%_))
                              (let ((_%e208886208909%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl208885208906%_))))
                                (let ((_%hd208887208912%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208886208909%_)))
                                      (_%tl208888208914%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208886208909%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl208888208914%_))
                                      (let ((_%e208889208917%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl208888208914%_))))
                                        (let ((_%hd208890208920%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e208889208917%_)))
                                              (_%tl208891208922%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e208889208917%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl208891208922%_))
                                              ((lambda (_%g208881208925%_
                                                        _%g208882208926%_)
                                                 (let ((_%new-expr208947%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self208876%_
                                                           _%g208881208925%_)))
                                                       (_%new-xid208948%_
                                                        (let ((_%$e208943%_
                                                               (let ((__tmp209395
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub208941%_)
                                (let ((__tmp209396 (car _%sub208941%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%g208882208926%_
                                   __tmp209396))))
                             (__tmp209394
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self208876%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp209395 __tmp209394))))
                  (if _%$e208943%_ (cdr _%$e208943%_) _%g208882208926%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp209397
                                                          (cons '%#set!
                                                                (cons _%new-xid208948%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr208947%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp209397
                                                      _%stx208877%_))))
                                               _%hd208890208920%_
                                               _%hd208887208912%_)
                                              (_%g208879208896%_
                                               _%g208880208899%_))))
                                      (_%g208879208896%_ _%g208880208899%_))))
                              (_%g208879208896%_ _%g208880208899%_))))
                      (_%g208879208896%_ _%g208880208899%_)))))
          (_%g208878208950%_ _%stx208877%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self208822%_ _%stx208823%_)
        (let* ((_%g208825208838%_
                (lambda (_%g208826208835%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208826208835%_))))
               (_%g208824208873%_
                (lambda (_%g208826208841%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208826208841%_))
                      (let ((_%e208828208843%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g208826208841%_))))
                        (let ((_%hd208829208846%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208828208843%_)))
                              (_%tl208830208848%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208828208843%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl208830208848%_))
                              (let ((_%e208831208851%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl208830208848%_))))
                                (let ((_%hd208832208854%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208831208851%_)))
                                      (_%tl208833208856%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208831208851%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl208833208856%_))
                                      ((lambda (_%g208827208859%_)
                                         (let* ((_%eid208871%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g208827208859%_)))
                                                (__tmp209398
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self208822%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp209398
                                            _%eid208871%_
                                            1+
                                            '0)))
                                       _%hd208832208854%_)
                                      (_%g208825208838%_ _%g208826208841%_))))
                              (_%g208825208838%_ _%g208826208841%_))))
                      (_%g208825208838%_ _%g208826208841%_)))))
          (_%g208824208873%_ _%stx208823%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self208752%_ _%stx208753%_)
        (let* ((_%g208755208772%_
                (lambda (_%g208756208769%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208756208769%_))))
               (_%g208754208819%_
                (lambda (_%g208756208775%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208756208775%_))
                      (let ((_%e208759208777%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g208756208775%_))))
                        (let ((_%hd208760208780%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208759208777%_)))
                              (_%tl208761208782%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208759208777%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl208761208782%_))
                              (let ((_%e208762208785%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl208761208782%_))))
                                (let ((_%hd208763208788%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208762208785%_)))
                                      (_%tl208764208790%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208762208785%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl208764208790%_))
                                      (let ((_%e208765208793%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl208764208790%_))))
                                        (let ((_%hd208766208796%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e208765208793%_)))
                                              (_%tl208767208798%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e208765208793%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl208767208798%_))
                                              ((lambda (_%g208757208801%_
                                                        _%g208758208802%_)
                                                 (let ((_%eid208817%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g208758208802%_))))
                                                   (let ((__tmp209399
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self208752%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp209399
                                                      _%eid208817%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self208752%_
                                                      _%g208757208801%_))))
                                               _%hd208766208796%_
                                               _%hd208763208788%_)
                                              (_%g208755208772%_
                                               _%g208756208775%_))))
                                      (_%g208755208772%_ _%g208756208775%_))))
                              (_%g208755208772%_ _%g208756208775%_))))
                      (_%g208755208772%_ _%g208756208775%_)))))
          (_%g208754208819%_ _%stx208753%_))))
    (define gxc#find-body%
      (lambda (_%self208667%_ _%stx208668%_)
        (let* ((_%g208670208689%_
                (lambda (_%g208671208686%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208671208686%_))))
               (_%g208669208749%_
                (lambda (_%g208671208692%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208671208692%_))
                      (let ((_%e208673208694%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g208671208692%_))))
                        (let ((_%hd208674208697%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208673208694%_)))
                              (_%tl208675208699%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208673208694%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl208675208699%_))
                              (let ((_g209400_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl208675208699%_
                                        '0))))
                                (begin
                                  (let ((_g209401_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g209400_)
                                               (##values-length _g209400_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g209401_ 2)))
                                        (error "Context expects 2 values"
                                               _g209401_)))
                                  (let ((_%target208676208702%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g209400_ 0)))
                                        (_%tl208678208704%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g209400_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl208678208704%_))
                                        (letrec ((_%loop208679208707%_
                                                  (lambda (_%hd208677208710%_
                                                           _%expr208683208712%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd208677208710%_))
                                                        (let ((_%e208680208714%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd208677208710%_))))
                  (let ((_%lp-hd208681208717%_
                         (let ()
                           (declare (not safe))
                           (##car _%e208680208714%_)))
                        (_%lp-tl208682208719%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e208680208714%_))))
                    (_%loop208679208707%_
                     _%lp-tl208682208719%_
                     (cons _%lp-hd208681208717%_ _%expr208683208712%_))))
                (let ((_%expr208684208722%_ (reverse _%expr208683208712%_)))
                  ((lambda (_%g208672208724%_)
                     (let ((__tmp209404
                            (lambda (_%g208737208739%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self208667%_
                                 _%g208737208739%_))))
                           (__tmp209402
                            (let ((__tmp209403
                                   (lambda (_%g208741208744%_
                                            _%g208742208746%_)
                                     (cons _%g208741208744%_
                                           _%g208742208746%_))))
                              (declare (not safe))
                              (foldr__0 __tmp209403 '() _%g208672208724%_))))
                       (declare (not safe))
                       (ormap__0 __tmp209404 __tmp209402)))
                   _%expr208684208722%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop208679208707%_
                                           _%target208676208702%_
                                           '()))
                                        (_%g208670208689%_
                                         _%g208671208692%_)))))
                              (_%g208670208689%_ _%g208671208692%_))))
                      (_%g208670208689%_ _%g208671208692%_)))))
          (_%g208669208749%_ _%stx208668%_))))
    (define gxc#find-let-values%
      (lambda (_%self208521%_ _%stx208522%_)
        (let* ((_%g208524208559%_
                (lambda (_%g208525208556%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208525208556%_))))
               (_%g208523208664%_
                (lambda (_%g208525208562%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208525208562%_))
                      (let ((_%e208529208564%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g208525208562%_))))
                        (let ((_%hd208530208567%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208529208564%_)))
                              (_%tl208531208569%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208529208564%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl208531208569%_))
                              (let ((_%e208532208572%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl208531208569%_))))
                                (let ((_%hd208533208575%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208532208572%_)))
                                      (_%tl208534208577%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208532208572%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd208533208575%_))
                                      (let ((_g209405_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd208533208575%_
                                                '0))))
                                        (begin
                                          (let ((_g209406_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g209405_)
                                                       (##values-length
                                                        _g209405_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g209406_ 2)))
                                                (error "Context expects 2 values"
                                                       _g209406_)))
                                          (let ((_%target208535208580%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g209405_ 0)))
                                                (_%tl208537208582%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g209405_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl208537208582%_))
                                                (letrec ((_%loop208538208585%_
                                                          (lambda (_%hd208536208588%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr208542208590%_
                           _%bind208543208591%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd208536208588%_))
                        (let ((_%e208539208593%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd208536208588%_))))
                          (let ((_%lp-hd208540208596%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e208539208593%_)))
                                (_%lp-tl208541208598%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e208539208593%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd208540208596%_))
                                (let ((_%e208546208601%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd208540208596%_))))
                                  (let ((_%hd208547208604%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e208546208601%_)))
                                        (_%tl208548208606%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e208546208601%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl208548208606%_))
                                        (let ((_%e208549208609%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl208548208606%_))))
                                          (let ((_%hd208550208612%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e208549208609%_)))
                                                (_%tl208551208614%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e208549208609%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl208551208614%_))
                                                (_%loop208538208585%_
                                                 _%lp-tl208541208598%_
                                                 (cons _%hd208550208612%_
                                                       _%expr208542208590%_)
                                                 (cons _%hd208547208604%_
                                                       _%bind208543208591%_))
                                                (_%g208524208559%_
                                                 _%g208525208562%_))))
                                        (_%g208524208559%_
                                         _%g208525208562%_))))
                                (_%g208524208559%_ _%g208525208562%_))))
                        (let ((_%expr208544208617%_
                               (reverse _%expr208542208590%_))
                              (_%bind208545208618%_
                               (reverse _%bind208543208591%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl208534208577%_))
                              (let ((_%e208552208620%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl208534208577%_))))
                                (let ((_%hd208553208623%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208552208620%_)))
                                      (_%tl208554208625%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208552208620%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl208554208625%_))
                                      ((lambda (_%g208526208628%_
                                                _%g208527208629%_
                                                _%g208528208630%_)
                                         (let ((_%$e208661%_
                                                (let ((__tmp209409
                                                       (lambda (_%g208649208651%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self208521%_
                                                            _%g208649208651%_))))
                                                      (__tmp209407
                                                       (let ((__tmp209408
                                                              (lambda (_%g208653208656%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g208654208658%_)
                        (cons _%g208653208656%_ _%g208654208658%_))))
                 (declare (not safe))
                 (foldr__0 __tmp209408 '() _%g208527208629%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap__0
                                                   __tmp209409
                                                   __tmp209407))))
                                           (if _%$e208661%_
                                               _%$e208661%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self208521%_
                                                  _%g208526208628%_)))))
                                       _%hd208553208623%_
                                       _%expr208544208617%_
                                       _%bind208545208618%_)
                                      (_%g208524208559%_ _%g208525208562%_))))
                              (_%g208524208559%_ _%g208525208562%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop208538208585%_
                                                   _%target208535208580%_
                                                   '()
                                                   '()))
                                                (_%g208524208559%_
                                                 _%g208525208562%_)))))
                                      (_%g208524208559%_ _%g208525208562%_))))
                              (_%g208524208559%_ _%g208525208562%_))))
                      (_%g208524208559%_ _%g208525208562%_)))))
          (_%g208523208664%_ _%stx208522%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self208465%_ _%stx208466%_)
        (let* ((_%g208468208481%_
                (lambda (_%g208469208478%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208469208478%_))))
               (_%g208467208518%_
                (lambda (_%g208469208484%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208469208484%_))
                      (let ((_%e208471208486%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g208469208484%_))))
                        (let ((_%hd208472208489%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208471208486%_)))
                              (_%tl208473208491%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208471208486%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl208473208491%_))
                              (let ((_%e208474208494%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl208473208491%_))))
                                (let ((_%hd208475208497%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208474208494%_)))
                                      (_%tl208476208499%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208474208494%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl208476208499%_))
                                      ((lambda (_%g208470208502%_)
                                         (let ((__tmp209411
                                                (lambda (_%g208513208515%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g208470208502%_
                                                     _%g208513208515%_))))
                                               (__tmp209410
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self208465%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp209411 __tmp209410)))
                                       _%hd208475208497%_)
                                      (_%g208468208481%_ _%g208469208484%_))))
                              (_%g208468208481%_ _%g208469208484%_))))
                      (_%g208468208481%_ _%g208469208484%_)))))
          (_%g208467208518%_ _%stx208466%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self208390%_ _%stx208391%_)
        (let* ((_%g208393208410%_
                (lambda (_%g208394208407%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208394208407%_))))
               (_%g208392208462%_
                (lambda (_%g208394208413%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208394208413%_))
                      (let ((_%e208397208415%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g208394208413%_))))
                        (let ((_%hd208398208418%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208397208415%_)))
                              (_%tl208399208420%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208397208415%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl208399208420%_))
                              (let ((_%e208400208423%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl208399208420%_))))
                                (let ((_%hd208401208426%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208400208423%_)))
                                      (_%tl208402208428%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208400208423%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl208402208428%_))
                                      (let ((_%e208403208431%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl208402208428%_))))
                                        (let ((_%hd208404208434%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e208403208431%_)))
                                              (_%tl208405208436%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e208403208431%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl208405208436%_))
                                              ((lambda (_%g208395208439%_
                                                        _%g208396208440%_)
                                                 (let ((_%$e208459%_
                                                        (let ((__tmp209413
                                                               (lambda (_%g208454208456%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%g208396208440%_
                            _%g208454208456%_))))
                      (__tmp209412
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self208390%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp209413 __tmp209412))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e208459%_
                                                       _%$e208459%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self208390%_
                                                          _%g208395208439%_)))))
                                               _%hd208404208434%_
                                               _%hd208401208426%_)
                                              (_%g208393208410%_
                                               _%g208394208413%_))))
                                      (_%g208393208410%_ _%g208394208413%_))))
                              (_%g208393208410%_ _%g208394208413%_))))
                      (_%g208393208410%_ _%g208394208413%_)))))
          (_%g208392208462%_ _%stx208391%_))))))
