(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1770607525)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp209357 (list gxc#::void::t))
            (__tmp209356 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp209357
         '()
         __tmp209356
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args209343%_
        (apply make-instance gxc#::collect-mutators::t _%$args209343%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp209358
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
        (__make-atomic-promise __tmp209358)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx209335%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self209338%_
                (let ((__obj209346
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj209346))
               (__tmp209359
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self209338%_ _%stx209335%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp209359
           gxc#current-compile-method
           _%self209338%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp209361 (list gxc#::basic-xform-expression::t))
            (__tmp209360 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp209361
         '(id new-id)
         __tmp209360
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args209332%_
        (apply make-instance gxc#::expression-subst::t _%$args209332%_)))
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
      (let ((__tmp209362
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
        (__make-atomic-promise __tmp209362)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords209304%_
               _%id209300209305%_
               _%new-id209301209306%_
               _%stx209307%_)
        (let* ((_%id209310%_
                (if (eq? _%id209300209305%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id209300209305%_))
               (_%new-id209312%_
                (if (eq? _%new-id209301209306%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id209301209306%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self209314%_
                  (let ((__obj209348
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj209348
                       _%id209310%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj209348
                       _%new-id209312%_
                       '2
                       '#f
                       '#f))
                    __obj209348))
                 (__tmp209363
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self209314%_ _%stx209307%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp209363
             gxc#current-compile-method
             _%self209314%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords209321%_ . _%args209322%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords209321%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords209321%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords209321%_
                  'new-id:
                  absent-value))
               _%args209322%_)))
    (define gxc#apply-expression-subst
      (lambda _%args209302209328%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args209302209328%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp209365 (list gxc#::basic-xform-expression::t))
            (__tmp209364 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp209365
         '(subst)
         __tmp209364
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args209296%_
        (apply make-instance gxc#::expression-subst*::t _%$args209296%_)))
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
      (let ((__tmp209366
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
        (__make-atomic-promise __tmp209366)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords209271%_ _%subst209268209272%_ _%stx209273%_)
        (let ((_%subst209276%_
               (if (eq? _%subst209268209272%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst209268209272%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self209278%_
                  (let ((__obj209350
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj209350
                       _%subst209276%_
                       '1
                       '#f
                       '#f))
                    __obj209350))
                 (__tmp209367
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self209278%_ _%stx209273%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp209367
             gxc#current-compile-method
             _%self209278%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords209285%_ . _%args209286%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords209285%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords209285%_
                  'subst:
                  absent-value))
               _%args209286%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args209269209292%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args209269209292%_)))
    (define gxc#::find-expression::t
      (let ((__tmp209368 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp209368
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args209264%_
        (apply make-instance gxc#::find-expression::t _%$args209264%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp209369
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
        (__make-atomic-promise __tmp209369)))
    (define gxc#::find-var-refs::t
      (let ((__tmp209371 (list gxc#::find-expression::t))
            (__tmp209370 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp209371
         '(ids)
         __tmp209370
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args209260%_
        (apply make-instance gxc#::find-var-refs::t _%$args209260%_)))
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
      (let ((__tmp209372
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
        (__make-atomic-promise __tmp209372)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords209235%_ _%ids209232209236%_ _%stx209237%_)
        (let ((_%ids209240%_
               (if (eq? _%ids209232209236%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids209232209236%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self209242%_
                  (let ((__obj209353
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj209353
                       _%ids209240%_
                       '1
                       '#f
                       '#f))
                    __obj209353))
                 (__tmp209373
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self209242%_ _%stx209237%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp209373
             gxc#current-compile-method
             _%self209242%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords209249%_ . _%args209250%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords209249%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords209249%_ 'ids: absent-value))
               _%args209250%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args209233209256%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args209233209256%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp209375 (list gxc#::collect-expression-refs::t))
            (__tmp209374 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp209375
         '()
         __tmp209374
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args209228%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args209228%_)))
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
      (let ((__tmp209376
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
        (__make-atomic-promise __tmp209376)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords209203%_ _%table209200209204%_ _%stx209205%_)
        (let ((_%table209208%_
               (if (eq? _%table209200209204%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table209200209204%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self209210%_
                  (let ((__obj209355
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj209355
                       _%table209208%_
                       '1
                       '#f
                       '#f))
                    __obj209355))
                 (__tmp209377
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self209210%_ _%stx209205%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp209377
             gxc#current-compile-method
             _%self209210%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords209217%_ . _%args209218%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords209217%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords209217%_
                  'table:
                  absent-value))
               _%args209218%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args209201209224%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args209201209224%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self209129%_ _%stx209130%_)
        (let* ((_%g209132209149%_
                (lambda (_%g209133209146%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g209133209146%_))))
               (_%g209131209196%_
                (lambda (_%g209133209152%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g209133209152%_))
                      (let ((_%e209136209154%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g209133209152%_))))
                        (let ((_%hd209137209157%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e209136209154%_)))
                              (_%tl209138209159%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e209136209154%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl209138209159%_))
                              (let ((_%e209139209162%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl209138209159%_))))
                                (let ((_%hd209140209165%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e209139209162%_)))
                                      (_%tl209141209167%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e209139209162%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl209141209167%_))
                                      (let ((_%e209142209170%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl209141209167%_))))
                                        (let ((_%hd209143209173%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e209142209170%_)))
                                              (_%tl209144209175%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e209142209170%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl209144209175%_))
                                              ((lambda (_%g209134209178%_
                                                        _%g209135209179%_)
                                                 (let ((_%sym209194%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g209135209179%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym209194%_))
                                                   (let ((__tmp209378
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp209378
                                                      _%sym209194%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self209129%_
                                                      _%g209134209178%_))))
                                               _%hd209143209173%_
                                               _%hd209140209165%_)
                                              (_%g209132209149%_
                                               _%g209133209152%_))))
                                      (_%g209132209149%_ _%g209133209152%_))))
                              (_%g209132209149%_ _%g209133209152%_))))
                      (_%g209132209149%_ _%g209133209152%_)))))
          (_%g209131209196%_ _%stx209130%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self209077%_ _%stx209078%_)
        (let* ((_%g209080209093%_
                (lambda (_%g209081209090%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g209081209090%_))))
               (_%g209079209126%_
                (lambda (_%g209081209096%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g209081209096%_))
                      (let ((_%e209083209098%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g209081209096%_))))
                        (let ((_%hd209084209101%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e209083209098%_)))
                              (_%tl209085209103%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e209083209098%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl209085209103%_))
                              (let ((_%e209086209106%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl209085209103%_))))
                                (let ((_%hd209087209109%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e209086209106%_)))
                                      (_%tl209088209111%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e209086209106%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl209088209111%_))
                                      ((lambda (_%g209082209114%_)
                                         (if (let ((__tmp209379
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self209077%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g209082209114%_
                                                __tmp209379))
                                             (let ((__tmp209380
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self209077%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp209380
                                                _%stx209078%_))
                                             _%stx209078%_))
                                       _%hd209087209109%_)
                                      (_%g209080209093%_ _%g209081209096%_))))
                              (_%g209080209093%_ _%g209081209096%_))))
                      (_%g209080209093%_ _%g209081209096%_)))))
          (_%g209079209126%_ _%stx209078%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self209017%_ _%stx209018%_)
        (let* ((_%g209020209033%_
                (lambda (_%g209021209030%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g209021209030%_))))
               (_%g209019209074%_
                (lambda (_%g209021209036%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g209021209036%_))
                      (let ((_%e209023209038%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g209021209036%_))))
                        (let ((_%hd209024209041%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e209023209038%_)))
                              (_%tl209025209043%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e209023209038%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl209025209043%_))
                              (let ((_%e209026209046%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl209025209043%_))))
                                (let ((_%hd209027209049%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e209026209046%_)))
                                      (_%tl209028209051%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e209026209046%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl209028209051%_))
                                      ((lambda (_%g209022209054%_)
                                         (let ((_%$e209068%_
                                                (let ((__tmp209382
                                                       (lambda (_%sub209066%_)
                                                         (let ((__tmp209383
                                                                (car _%sub209066%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%g209022209054%_
                                                            __tmp209383))))
                                                      (__tmp209381
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self209017%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp209382
                                                          __tmp209381))))
                                           (if _%$e209068%_
                                               ((lambda (_%sub209071%_)
                                                  (let ((__tmp209384
                                                         (cons '%#ref
                                                               (cons (cdr _%sub209071%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp209384
                                                     _%stx209018%_)))
                                                _%$e209068%_)
                                               _%stx209018%_)))
                                       _%hd209027209049%_)
                                      (_%g209020209033%_ _%g209021209036%_))))
                              (_%g209020209033%_ _%g209021209036%_))))
                      (_%g209020209033%_ _%g209021209036%_)))))
          (_%g209019209074%_ _%stx209018%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self208946%_ _%stx208947%_)
        (let* ((_%g208949208966%_
                (lambda (_%g208950208963%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208950208963%_))))
               (_%g208948209014%_
                (lambda (_%g208950208969%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208950208969%_))
                      (let ((_%e208953208971%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g208950208969%_))))
                        (let ((_%hd208954208974%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208953208971%_)))
                              (_%tl208955208976%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208953208971%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl208955208976%_))
                              (let ((_%e208956208979%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl208955208976%_))))
                                (let ((_%hd208957208982%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208956208979%_)))
                                      (_%tl208958208984%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208956208979%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl208958208984%_))
                                      (let ((_%e208959208987%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl208958208984%_))))
                                        (let ((_%hd208960208990%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e208959208987%_)))
                                              (_%tl208961208992%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e208959208987%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl208961208992%_))
                                              ((lambda (_%g208951208995%_
                                                        _%g208952208996%_)
                                                 (let ((_%new-expr209011%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self208946%_
                                                           _%g208951208995%_)))
                                                       (_%new-xid209012%_
                                                        (if (let ((__tmp209385
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self208946%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%g208952208996%_ __tmp209385))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self208946%_ 'new-id))
                    _%g208952208996%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp209386
                                                          (cons '%#set!
                                                                (cons _%new-xid209012%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr209011%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp209386
                                                      _%stx208947%_))))
                                               _%hd208960208990%_
                                               _%hd208957208982%_)
                                              (_%g208949208966%_
                                               _%g208950208969%_))))
                                      (_%g208949208966%_ _%g208950208969%_))))
                              (_%g208949208966%_ _%g208950208969%_))))
                      (_%g208949208966%_ _%g208950208969%_)))))
          (_%g208948209014%_ _%stx208947%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self208869%_ _%stx208870%_)
        (let* ((_%g208872208889%_
                (lambda (_%g208873208886%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208873208886%_))))
               (_%g208871208943%_
                (lambda (_%g208873208892%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208873208892%_))
                      (let ((_%e208876208894%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g208873208892%_))))
                        (let ((_%hd208877208897%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208876208894%_)))
                              (_%tl208878208899%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208876208894%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl208878208899%_))
                              (let ((_%e208879208902%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl208878208899%_))))
                                (let ((_%hd208880208905%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208879208902%_)))
                                      (_%tl208881208907%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208879208902%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl208881208907%_))
                                      (let ((_%e208882208910%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl208881208907%_))))
                                        (let ((_%hd208883208913%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e208882208910%_)))
                                              (_%tl208884208915%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e208882208910%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl208884208915%_))
                                              ((lambda (_%g208874208918%_
                                                        _%g208875208919%_)
                                                 (let ((_%new-expr208940%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self208869%_
                                                           _%g208874208918%_)))
                                                       (_%new-xid208941%_
                                                        (let ((_%$e208936%_
                                                               (let ((__tmp209388
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub208934%_)
                                (let ((__tmp209389 (car _%sub208934%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%g208875208919%_
                                   __tmp209389))))
                             (__tmp209387
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self208869%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp209388 __tmp209387))))
                  (if _%$e208936%_ (cdr _%$e208936%_) _%g208875208919%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp209390
                                                          (cons '%#set!
                                                                (cons _%new-xid208941%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr208940%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp209390
                                                      _%stx208870%_))))
                                               _%hd208883208913%_
                                               _%hd208880208905%_)
                                              (_%g208872208889%_
                                               _%g208873208892%_))))
                                      (_%g208872208889%_ _%g208873208892%_))))
                              (_%g208872208889%_ _%g208873208892%_))))
                      (_%g208872208889%_ _%g208873208892%_)))))
          (_%g208871208943%_ _%stx208870%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self208815%_ _%stx208816%_)
        (let* ((_%g208818208831%_
                (lambda (_%g208819208828%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208819208828%_))))
               (_%g208817208866%_
                (lambda (_%g208819208834%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208819208834%_))
                      (let ((_%e208821208836%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g208819208834%_))))
                        (let ((_%hd208822208839%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208821208836%_)))
                              (_%tl208823208841%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208821208836%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl208823208841%_))
                              (let ((_%e208824208844%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl208823208841%_))))
                                (let ((_%hd208825208847%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208824208844%_)))
                                      (_%tl208826208849%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208824208844%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl208826208849%_))
                                      ((lambda (_%g208820208852%_)
                                         (let* ((_%eid208864%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g208820208852%_)))
                                                (__tmp209391
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self208815%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp209391
                                            _%eid208864%_
                                            1+
                                            '0)))
                                       _%hd208825208847%_)
                                      (_%g208818208831%_ _%g208819208834%_))))
                              (_%g208818208831%_ _%g208819208834%_))))
                      (_%g208818208831%_ _%g208819208834%_)))))
          (_%g208817208866%_ _%stx208816%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self208745%_ _%stx208746%_)
        (let* ((_%g208748208765%_
                (lambda (_%g208749208762%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208749208762%_))))
               (_%g208747208812%_
                (lambda (_%g208749208768%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208749208768%_))
                      (let ((_%e208752208770%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g208749208768%_))))
                        (let ((_%hd208753208773%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208752208770%_)))
                              (_%tl208754208775%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208752208770%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl208754208775%_))
                              (let ((_%e208755208778%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl208754208775%_))))
                                (let ((_%hd208756208781%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208755208778%_)))
                                      (_%tl208757208783%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208755208778%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl208757208783%_))
                                      (let ((_%e208758208786%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl208757208783%_))))
                                        (let ((_%hd208759208789%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e208758208786%_)))
                                              (_%tl208760208791%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e208758208786%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl208760208791%_))
                                              ((lambda (_%g208750208794%_
                                                        _%g208751208795%_)
                                                 (let ((_%eid208810%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g208751208795%_))))
                                                   (let ((__tmp209392
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self208745%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp209392
                                                      _%eid208810%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self208745%_
                                                      _%g208750208794%_))))
                                               _%hd208759208789%_
                                               _%hd208756208781%_)
                                              (_%g208748208765%_
                                               _%g208749208768%_))))
                                      (_%g208748208765%_ _%g208749208768%_))))
                              (_%g208748208765%_ _%g208749208768%_))))
                      (_%g208748208765%_ _%g208749208768%_)))))
          (_%g208747208812%_ _%stx208746%_))))
    (define gxc#find-body%
      (lambda (_%self208660%_ _%stx208661%_)
        (let* ((_%g208663208682%_
                (lambda (_%g208664208679%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208664208679%_))))
               (_%g208662208742%_
                (lambda (_%g208664208685%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208664208685%_))
                      (let ((_%e208666208687%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g208664208685%_))))
                        (let ((_%hd208667208690%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208666208687%_)))
                              (_%tl208668208692%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208666208687%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl208668208692%_))
                              (let ((_g209393_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl208668208692%_
                                        '0))))
                                (begin
                                  (let ((_g209394_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g209393_)
                                               (##values-length _g209393_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g209394_ 2)))
                                        (error "Context expects 2 values"
                                               _g209394_)))
                                  (let ((_%target208669208695%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g209393_ 0)))
                                        (_%tl208671208697%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g209393_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl208671208697%_))
                                        (letrec ((_%loop208672208700%_
                                                  (lambda (_%hd208670208703%_
                                                           _%expr208676208705%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd208670208703%_))
                                                        (let ((_%e208673208707%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd208670208703%_))))
                  (let ((_%lp-hd208674208710%_
                         (let ()
                           (declare (not safe))
                           (##car _%e208673208707%_)))
                        (_%lp-tl208675208712%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e208673208707%_))))
                    (_%loop208672208700%_
                     _%lp-tl208675208712%_
                     (cons _%lp-hd208674208710%_ _%expr208676208705%_))))
                (let ((_%expr208677208715%_ (reverse _%expr208676208705%_)))
                  ((lambda (_%g208665208717%_)
                     (let ((__tmp209397
                            (lambda (_%g208730208732%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self208660%_
                                 _%g208730208732%_))))
                           (__tmp209395
                            (let ((__tmp209396
                                   (lambda (_%g208734208737%_
                                            _%g208735208739%_)
                                     (cons _%g208734208737%_
                                           _%g208735208739%_))))
                              (declare (not safe))
                              (foldr__0 __tmp209396 '() _%g208665208717%_))))
                       (declare (not safe))
                       (ormap__0 __tmp209397 __tmp209395)))
                   _%expr208677208715%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop208672208700%_
                                           _%target208669208695%_
                                           '()))
                                        (_%g208663208682%_
                                         _%g208664208685%_)))))
                              (_%g208663208682%_ _%g208664208685%_))))
                      (_%g208663208682%_ _%g208664208685%_)))))
          (_%g208662208742%_ _%stx208661%_))))
    (define gxc#find-let-values%
      (lambda (_%self208514%_ _%stx208515%_)
        (let* ((_%g208517208552%_
                (lambda (_%g208518208549%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208518208549%_))))
               (_%g208516208657%_
                (lambda (_%g208518208555%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208518208555%_))
                      (let ((_%e208522208557%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g208518208555%_))))
                        (let ((_%hd208523208560%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208522208557%_)))
                              (_%tl208524208562%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208522208557%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl208524208562%_))
                              (let ((_%e208525208565%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl208524208562%_))))
                                (let ((_%hd208526208568%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208525208565%_)))
                                      (_%tl208527208570%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208525208565%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd208526208568%_))
                                      (let ((_g209398_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd208526208568%_
                                                '0))))
                                        (begin
                                          (let ((_g209399_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g209398_)
                                                       (##values-length
                                                        _g209398_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g209399_ 2)))
                                                (error "Context expects 2 values"
                                                       _g209399_)))
                                          (let ((_%target208528208573%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g209398_ 0)))
                                                (_%tl208530208575%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g209398_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl208530208575%_))
                                                (letrec ((_%loop208531208578%_
                                                          (lambda (_%hd208529208581%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr208535208583%_
                           _%bind208536208584%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd208529208581%_))
                        (let ((_%e208532208586%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd208529208581%_))))
                          (let ((_%lp-hd208533208589%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e208532208586%_)))
                                (_%lp-tl208534208591%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e208532208586%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd208533208589%_))
                                (let ((_%e208539208594%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd208533208589%_))))
                                  (let ((_%hd208540208597%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e208539208594%_)))
                                        (_%tl208541208599%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e208539208594%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl208541208599%_))
                                        (let ((_%e208542208602%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl208541208599%_))))
                                          (let ((_%hd208543208605%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e208542208602%_)))
                                                (_%tl208544208607%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e208542208602%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl208544208607%_))
                                                (_%loop208531208578%_
                                                 _%lp-tl208534208591%_
                                                 (cons _%hd208543208605%_
                                                       _%expr208535208583%_)
                                                 (cons _%hd208540208597%_
                                                       _%bind208536208584%_))
                                                (_%g208517208552%_
                                                 _%g208518208555%_))))
                                        (_%g208517208552%_
                                         _%g208518208555%_))))
                                (_%g208517208552%_ _%g208518208555%_))))
                        (let ((_%expr208537208610%_
                               (reverse _%expr208535208583%_))
                              (_%bind208538208611%_
                               (reverse _%bind208536208584%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl208527208570%_))
                              (let ((_%e208545208613%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl208527208570%_))))
                                (let ((_%hd208546208616%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208545208613%_)))
                                      (_%tl208547208618%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208545208613%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl208547208618%_))
                                      ((lambda (_%g208519208621%_
                                                _%g208520208622%_
                                                _%g208521208623%_)
                                         (let ((_%$e208654%_
                                                (let ((__tmp209402
                                                       (lambda (_%g208642208644%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self208514%_
                                                            _%g208642208644%_))))
                                                      (__tmp209400
                                                       (let ((__tmp209401
                                                              (lambda (_%g208646208649%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g208647208651%_)
                        (cons _%g208646208649%_ _%g208647208651%_))))
                 (declare (not safe))
                 (foldr__0 __tmp209401 '() _%g208520208622%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap__0
                                                   __tmp209402
                                                   __tmp209400))))
                                           (if _%$e208654%_
                                               _%$e208654%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self208514%_
                                                  _%g208519208621%_)))))
                                       _%hd208546208616%_
                                       _%expr208537208610%_
                                       _%bind208538208611%_)
                                      (_%g208517208552%_ _%g208518208555%_))))
                              (_%g208517208552%_ _%g208518208555%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop208531208578%_
                                                   _%target208528208573%_
                                                   '()
                                                   '()))
                                                (_%g208517208552%_
                                                 _%g208518208555%_)))))
                                      (_%g208517208552%_ _%g208518208555%_))))
                              (_%g208517208552%_ _%g208518208555%_))))
                      (_%g208517208552%_ _%g208518208555%_)))))
          (_%g208516208657%_ _%stx208515%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self208458%_ _%stx208459%_)
        (let* ((_%g208461208474%_
                (lambda (_%g208462208471%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208462208471%_))))
               (_%g208460208511%_
                (lambda (_%g208462208477%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208462208477%_))
                      (let ((_%e208464208479%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g208462208477%_))))
                        (let ((_%hd208465208482%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208464208479%_)))
                              (_%tl208466208484%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208464208479%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl208466208484%_))
                              (let ((_%e208467208487%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl208466208484%_))))
                                (let ((_%hd208468208490%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208467208487%_)))
                                      (_%tl208469208492%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208467208487%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl208469208492%_))
                                      ((lambda (_%g208463208495%_)
                                         (let ((__tmp209404
                                                (lambda (_%g208506208508%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g208463208495%_
                                                     _%g208506208508%_))))
                                               (__tmp209403
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self208458%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp209404 __tmp209403)))
                                       _%hd208468208490%_)
                                      (_%g208461208474%_ _%g208462208477%_))))
                              (_%g208461208474%_ _%g208462208477%_))))
                      (_%g208461208474%_ _%g208462208477%_)))))
          (_%g208460208511%_ _%stx208459%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self208383%_ _%stx208384%_)
        (let* ((_%g208386208403%_
                (lambda (_%g208387208400%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g208387208400%_))))
               (_%g208385208455%_
                (lambda (_%g208387208406%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g208387208406%_))
                      (let ((_%e208390208408%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g208387208406%_))))
                        (let ((_%hd208391208411%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e208390208408%_)))
                              (_%tl208392208413%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e208390208408%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl208392208413%_))
                              (let ((_%e208393208416%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl208392208413%_))))
                                (let ((_%hd208394208419%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e208393208416%_)))
                                      (_%tl208395208421%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e208393208416%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl208395208421%_))
                                      (let ((_%e208396208424%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl208395208421%_))))
                                        (let ((_%hd208397208427%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e208396208424%_)))
                                              (_%tl208398208429%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e208396208424%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl208398208429%_))
                                              ((lambda (_%g208388208432%_
                                                        _%g208389208433%_)
                                                 (let ((_%$e208452%_
                                                        (let ((__tmp209406
                                                               (lambda (_%g208447208449%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%g208389208433%_
                            _%g208447208449%_))))
                      (__tmp209405
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self208383%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp209406 __tmp209405))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e208452%_
                                                       _%$e208452%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self208383%_
                                                          _%g208388208432%_)))))
                                               _%hd208397208427%_
                                               _%hd208394208419%_)
                                              (_%g208386208403%_
                                               _%g208387208406%_))))
                                      (_%g208386208403%_ _%g208387208406%_))))
                              (_%g208386208403%_ _%g208387208406%_))))
                      (_%g208386208403%_ _%g208387208406%_)))))
          (_%g208385208455%_ _%stx208384%_))))))
