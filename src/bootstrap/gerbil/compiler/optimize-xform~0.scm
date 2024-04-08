(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1712602657)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp150267 (list gxc#::void::t))
            (__tmp150266 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp150267
         '()
         __tmp150266
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args150007%_
        (apply make-instance gxc#::collect-mutators::t _%$args150007%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp150268
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
        (__make-promise __tmp150268)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx149999%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self150002%_
                (let ((__obj150254
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj150254))
               (__tmp150269
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self150002%_ _%stx149999%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150269
           gxc#current-compile-method
           _%self150002%_))))
    (define gxc#::collect-methods::t
      (let ((__tmp150271 (list gxc#::void::t))
            (__tmp150270 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-methods::t
         '::collect-methods
         __tmp150271
         '()
         __tmp150270
         '#f)))
    (define gxc#::collect-methods?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-methods::t)))
    (define gxc#make-::collect-methods
      (lambda _%$args149996%_
        (apply make-instance gxc#::collect-methods::t _%$args149996%_)))
    (define gxc#::collect-methods-bind-methods!
      (let ((__tmp150272
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
        (__make-promise __tmp150272)))
    (define gxc#apply-collect-methods
      (lambda (_%stx149988%_)
        (force gxc#::collect-methods-bind-methods!)
        (let* ((_%self149991%_
                (let ((__obj150256
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-methods::t))))
                  __obj150256))
               (__tmp150273
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self149991%_ _%stx149988%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp150273
           gxc#current-compile-method
           _%self149991%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp150275 (list gxc#::basic-xform-expression::t))
            (__tmp150274 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp150275
         '(id new-id)
         __tmp150274
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args149985%_
        (apply make-instance gxc#::expression-subst::t _%$args149985%_)))
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
      (let ((__tmp150276
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
        (__make-promise __tmp150276)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords149955%_
               _%id149951149956%_
               _%new-id149952149958%_
               _%stx149960%_)
        (let* ((_%id149963%_
                (if (eq? _%id149951149956%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id149951149956%_))
               (_%new-id149965%_
                (if (eq? _%new-id149952149958%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id149952149958%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self149967%_
                  (let ((__obj150258
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150258
                       _%id149963%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150258
                       _%new-id149965%_
                       '2
                       '#f
                       '#f))
                    __obj150258))
                 (__tmp150277
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self149967%_ _%stx149960%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150277
             gxc#current-compile-method
             _%self149967%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords149974%_ . _%args149975%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords149974%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords149974%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords149974%_
                  'new-id:
                  absent-value))
               _%args149975%_)))
    (define gxc#apply-expression-subst
      (lambda _%args149953149981%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args149953149981%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp150279 (list gxc#::basic-xform-expression::t))
            (__tmp150278 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp150279
         '(subst)
         __tmp150278
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args149947%_
        (apply make-instance gxc#::expression-subst*::t _%$args149947%_)))
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
      (let ((__tmp150280
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
        (__make-promise __tmp150280)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords149921%_ _%subst149918149922%_ _%stx149924%_)
        (let ((_%subst149927%_
               (if (eq? _%subst149918149922%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst149918149922%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self149929%_
                  (let ((__obj150260
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150260
                       _%subst149927%_
                       '1
                       '#f
                       '#f))
                    __obj150260))
                 (__tmp150281
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self149929%_ _%stx149924%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150281
             gxc#current-compile-method
             _%self149929%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords149936%_ . _%args149937%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords149936%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords149936%_
                  'subst:
                  absent-value))
               _%args149937%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args149919149943%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args149919149943%_)))
    (define gxc#::find-expression::t
      (let ((__tmp150282 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp150282
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args149914%_
        (apply make-instance gxc#::find-expression::t _%$args149914%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp150283
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
        (__make-promise __tmp150283)))
    (define gxc#::find-var-refs::t
      (let ((__tmp150285 (list gxc#::find-expression::t))
            (__tmp150284 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp150285
         '(ids)
         __tmp150284
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args149910%_
        (apply make-instance gxc#::find-var-refs::t _%$args149910%_)))
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
      (let ((__tmp150286
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
        (__make-promise __tmp150286)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords149884%_ _%ids149881149885%_ _%stx149887%_)
        (let ((_%ids149890%_
               (if (eq? _%ids149881149885%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids149881149885%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self149892%_
                  (let ((__obj150263
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150263
                       _%ids149890%_
                       '1
                       '#f
                       '#f))
                    __obj150263))
                 (__tmp150287
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self149892%_ _%stx149887%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150287
             gxc#current-compile-method
             _%self149892%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords149899%_ . _%args149900%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords149899%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords149899%_ 'ids: absent-value))
               _%args149900%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args149882149906%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args149882149906%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp150289 (list gxc#::collect-expression-refs::t))
            (__tmp150288 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp150289
         '()
         __tmp150288
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args149877%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args149877%_)))
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
      (let ((__tmp150290
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
        (__make-promise __tmp150290)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords149851%_ _%table149848149852%_ _%stx149854%_)
        (let ((_%table149857%_
               (if (eq? _%table149848149852%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table149848149852%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self149859%_
                  (let ((__obj150265
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj150265
                       _%table149857%_
                       '1
                       '#f
                       '#f))
                    __obj150265))
                 (__tmp150291
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self149859%_ _%stx149854%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp150291
             gxc#current-compile-method
             _%self149859%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords149866%_ . _%args149867%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords149866%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords149866%_
                  'table:
                  absent-value))
               _%args149867%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args149849149873%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args149849149873%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self149777%_ _%stx149778%_)
        (let* ((_%g149780149797%_
                (lambda (_%g149781149794%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149781149794%_))))
               (_%g149779149844%_
                (lambda (_%g149781149800%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149781149800%_))
                      (let ((_%e149784149802%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149781149800%_))))
                        (let ((_%hd149785149805%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149784149802%_)))
                              (_%tl149786149807%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149784149802%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149786149807%_))
                              (let ((_%e149787149810%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149786149807%_))))
                                (let ((_%hd149788149813%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149787149810%_)))
                                      (_%tl149789149815%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149787149810%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149789149815%_))
                                      (let ((_%e149790149818%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149789149815%_))))
                                        (let ((_%hd149791149821%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149790149818%_)))
                                              (_%tl149792149823%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149790149818%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149792149823%_))
                                              ((lambda (_%L149826%_
                                                        _%L149827%_)
                                                 (let ((_%sym149842%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L149827%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym149842%_))
                                                   (let ((__tmp150292
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp150292
                                                      _%sym149842%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self149777%_
                                                      _%L149826%_))))
                                               _%hd149791149821%_
                                               _%hd149788149813%_)
                                              (_%g149780149797%_
                                               _%g149781149800%_))))
                                      (_%g149780149797%_ _%g149781149800%_))))
                              (_%g149780149797%_ _%g149781149800%_))))
                      (_%g149780149797%_ _%g149781149800%_)))))
          (_%g149779149844%_ _%stx149778%_))))
    (define gxc#collect-methods-call%
      (lambda (_%self149330%_ _%stx149331%_)
        (let* ((_%__stx150010150011%_ _%stx149331%_)
               (_%g149335149437%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx150010150011%_)))))
          (let ((_%__kont150012150013%_
                 (lambda (_%L149727%_
                          _%L149728%_
                          _%L149729%_
                          _%L149730%_
                          _%L149731%_)
                   (let ((__tmp150293
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _%L149728%_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp150293))))
                (_%__kont150014150015%_
                 (lambda (_%L149553%_ _%L149554%_ _%L149555%_ _%L149556%_)
                   (let ((__tmp150294
                          (let ()
                            (declare (not safe))
                            (gxc#identifier-symbol _%L149553%_))))
                     (declare (not safe))
                     (gxc#optimizer-top-level-method! __tmp150294))))
                (_%__kont150016150017%_ (lambda () '#!void)))
            (let ((_%__match150145150146%_
                   (lambda (_%e149342149599%_
                            _%hd149343149602%_
                            _%tl149344149604%_
                            _%e149345149607%_
                            _%hd149346149610%_
                            _%tl149347149612%_
                            _%e149348149615%_
                            _%hd149349149618%_
                            _%tl149350149620%_
                            _%e149351149623%_
                            _%hd149352149626%_
                            _%tl149353149628%_
                            _%e149354149631%_
                            _%hd149355149634%_
                            _%tl149356149636%_
                            _%e149357149639%_
                            _%hd149358149642%_
                            _%tl149359149644%_
                            _%e149360149647%_
                            _%hd149361149650%_
                            _%tl149362149652%_
                            _%e149363149655%_
                            _%hd149364149658%_
                            _%tl149365149660%_
                            _%e149366149663%_
                            _%hd149367149666%_
                            _%tl149368149668%_
                            _%e149369149671%_
                            _%hd149370149674%_
                            _%tl149371149676%_
                            _%e149372149679%_
                            _%hd149373149682%_
                            _%tl149374149684%_
                            _%e149375149687%_
                            _%hd149376149690%_
                            _%tl149377149692%_
                            _%e149378149695%_
                            _%hd149379149698%_
                            _%tl149380149700%_
                            _%e149381149703%_
                            _%hd149382149706%_
                            _%tl149383149708%_
                            _%e149384149711%_
                            _%hd149385149714%_
                            _%tl149386149716%_
                            _%e149387149719%_
                            _%hd149388149722%_
                            _%tl149389149724%_)
                     (let ((_%L149727%_ _%hd149388149722%_)
                           (_%L149728%_ _%hd149379149698%_)
                           (_%L149729%_ _%hd149370149674%_)
                           (_%L149730%_ _%hd149361149650%_)
                           (_%L149731%_ _%hd149352149626%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%L149731%_
                              'bind-method!))
                           (_%__kont150012150013%_
                            _%L149727%_
                            _%L149728%_
                            _%L149729%_
                            _%L149730%_
                            _%L149731%_)
                           (_%__kont150016150017%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx150010150011%_))
                  (let ((_%e149342149599%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx150010150011%_))))
                    (let ((_%tl149344149604%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e149342149599%_)))
                          (_%hd149343149602%_
                           (let ()
                             (declare (not safe))
                             (##car _%e149342149599%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl149344149604%_))
                          (let ((_%e149345149607%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl149344149604%_))))
                            (let ((_%tl149347149612%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e149345149607%_)))
                                  (_%hd149346149610%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e149345149607%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd149346149610%_))
                                  (let ((_%e149348149615%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd149346149610%_))))
                                    (let ((_%tl149350149620%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e149348149615%_)))
                                          (_%hd149349149618%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e149348149615%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd149349149618%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd149349149618%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl149350149620%_))
                                                  (let ((_%e149351149623%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl149350149620%_))))
                                                    (let ((_%tl149353149628%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e149351149623%_)))
                                                          (_%hd149352149626%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e149351149623%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl149353149628%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl149347149612%_))
                      (let ((_%e149354149631%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl149347149612%_))))
                        (let ((_%tl149356149636%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149354149631%_)))
                              (_%hd149355149634%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149354149631%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd149355149634%_))
                              (let ((_%e149357149639%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd149355149634%_))))
                                (let ((_%tl149359149644%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149357149639%_)))
                                      (_%hd149358149642%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149357149639%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd149358149642%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd149358149642%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl149359149644%_))
                                              (let ((_%e149360149647%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl149359149644%_))))
                                                (let ((_%tl149362149652%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e149360149647%_)))
                                                      (_%hd149361149650%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e149360149647%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl149362149652%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl149356149636%_))
                                                          (let ((_%e149363149655%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl149356149636%_))))
                    (let ((_%tl149365149660%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e149363149655%_)))
                          (_%hd149364149658%_
                           (let ()
                             (declare (not safe))
                             (##car _%e149363149655%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd149364149658%_))
                          (let ((_%e149366149663%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd149364149658%_))))
                            (let ((_%tl149368149668%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e149366149663%_)))
                                  (_%hd149367149666%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e149366149663%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd149367149666%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%hd149367149666%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl149368149668%_))
                                          (let ((_%e149369149671%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl149368149668%_))))
                                            (let ((_%tl149371149676%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e149369149671%_)))
                                                  (_%hd149370149674%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e149369149671%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl149371149676%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl149365149660%_))
                                                      (let ((_%e149372149679%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl149365149660%_))))
                (let ((_%tl149374149684%_
                       (let () (declare (not safe)) (##cdr _%e149372149679%_)))
                      (_%hd149373149682%_
                       (let ()
                         (declare (not safe))
                         (##car _%e149372149679%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%hd149373149682%_))
                      (let ((_%e149375149687%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd149373149682%_))))
                        (let ((_%tl149377149692%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149375149687%_)))
                              (_%hd149376149690%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149375149687%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%hd149376149690%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%hd149376149690%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149377149692%_))
                                      (let ((_%e149378149695%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149377149692%_))))
                                        (let ((_%tl149380149700%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149378149695%_)))
                                              (_%hd149379149698%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149378149695%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149380149700%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl149374149684%_))
                                                  (let ((_%e149381149703%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl149374149684%_))))
                                                    (let ((_%tl149383149708%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e149381149703%_)))
                                                          (_%hd149382149706%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e149381149703%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd149382149706%_))
                                                          (let ((_%e149384149711%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd149382149706%_))))
                    (let ((_%tl149386149716%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e149384149711%_)))
                          (_%hd149385149714%_
                           (let ()
                             (declare (not safe))
                             (##car _%e149384149711%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd149385149714%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%hd149385149714%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl149386149716%_))
                                  (let ((_%e149387149719%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl149386149716%_))))
                                    (let ((_%tl149389149724%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e149387149719%_)))
                                          (_%hd149388149722%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e149387149719%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl149389149724%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149383149708%_))
                                              (_%__match150145150146%_
                                               _%e149342149599%_
                                               _%hd149343149602%_
                                               _%tl149344149604%_
                                               _%e149345149607%_
                                               _%hd149346149610%_
                                               _%tl149347149612%_
                                               _%e149348149615%_
                                               _%hd149349149618%_
                                               _%tl149350149620%_
                                               _%e149351149623%_
                                               _%hd149352149626%_
                                               _%tl149353149628%_
                                               _%e149354149631%_
                                               _%hd149355149634%_
                                               _%tl149356149636%_
                                               _%e149357149639%_
                                               _%hd149358149642%_
                                               _%tl149359149644%_
                                               _%e149360149647%_
                                               _%hd149361149650%_
                                               _%tl149362149652%_
                                               _%e149363149655%_
                                               _%hd149364149658%_
                                               _%tl149365149660%_
                                               _%e149366149663%_
                                               _%hd149367149666%_
                                               _%tl149368149668%_
                                               _%e149369149671%_
                                               _%hd149370149674%_
                                               _%tl149371149676%_
                                               _%e149372149679%_
                                               _%hd149373149682%_
                                               _%tl149374149684%_
                                               _%e149375149687%_
                                               _%hd149376149690%_
                                               _%tl149377149692%_
                                               _%e149378149695%_
                                               _%hd149379149698%_
                                               _%tl149380149700%_
                                               _%e149381149703%_
                                               _%hd149382149706%_
                                               _%tl149383149708%_
                                               _%e149384149711%_
                                               _%hd149385149714%_
                                               _%tl149386149716%_
                                               _%e149387149719%_
                                               _%hd149388149722%_
                                               _%tl149389149724%_)
                                              (_%__kont150016150017%_))
                                          (_%__kont150016150017%_))))
                                  (_%__kont150016150017%_))
                              (_%__kont150016150017%_))
                          (_%__kont150016150017%_))))
                  (_%__kont150016150017%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl149374149684%_))
                                                      (if (let ((__tmp150295
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp150295 'bind-method!))
                  (let ((_%L149553%_ _%hd149379149698%_)
                        (_%L149554%_ _%hd149370149674%_)
                        (_%L149555%_ _%hd149361149650%_)
                        (_%L149556%_ _%hd149352149626%_))
                    (_%__kont150014150015%_
                     _%L149553%_
                     _%L149554%_
                     _%L149555%_
                     _%L149556%_))
                  (_%__kont150016150017%_))
              (_%__kont150016150017%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont150016150017%_))))
                                      (_%__kont150016150017%_))
                                  (_%__kont150016150017%_))
                              (_%__kont150016150017%_))))
                      (_%__kont150016150017%_))))
              (_%__kont150016150017%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont150016150017%_))))
                                          (_%__kont150016150017%_))
                                      (_%__kont150016150017%_))
                                  (_%__kont150016150017%_))))
                          (_%__kont150016150017%_))))
                  (_%__kont150016150017%_))
              (_%__kont150016150017%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont150016150017%_))
                                          (_%__kont150016150017%_))
                                      (_%__kont150016150017%_))))
                              (_%__kont150016150017%_))))
                      (_%__kont150016150017%_))
                  (_%__kont150016150017%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont150016150017%_))
                                              (_%__kont150016150017%_))
                                          (_%__kont150016150017%_))))
                                  (_%__kont150016150017%_))))
                          (_%__kont150016150017%_))))
                  (_%__kont150016150017%_)))))))
    (define gxc#expression-subst-ref%
      (lambda (_%self149278%_ _%stx149279%_)
        (let* ((_%g149281149294%_
                (lambda (_%g149282149291%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149282149291%_))))
               (_%g149280149327%_
                (lambda (_%g149282149297%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149282149297%_))
                      (let ((_%e149284149299%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149282149297%_))))
                        (let ((_%hd149285149302%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149284149299%_)))
                              (_%tl149286149304%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149284149299%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149286149304%_))
                              (let ((_%e149287149307%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149286149304%_))))
                                (let ((_%hd149288149310%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149287149307%_)))
                                      (_%tl149289149312%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149287149307%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149289149312%_))
                                      ((lambda (_%L149315%_)
                                         (if (let ((__tmp150296
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self149278%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L149315%_
                                                __tmp150296))
                                             (let ((__tmp150297
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self149278%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp150297
                                                _%stx149279%_))
                                             _%stx149279%_))
                                       _%hd149288149310%_)
                                      (_%g149281149294%_ _%g149282149297%_))))
                              (_%g149281149294%_ _%g149282149297%_))))
                      (_%g149281149294%_ _%g149282149297%_)))))
          (_%g149280149327%_ _%stx149279%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self149218%_ _%stx149219%_)
        (let* ((_%g149221149234%_
                (lambda (_%g149222149231%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149222149231%_))))
               (_%g149220149275%_
                (lambda (_%g149222149237%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149222149237%_))
                      (let ((_%e149224149239%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149222149237%_))))
                        (let ((_%hd149225149242%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149224149239%_)))
                              (_%tl149226149244%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149224149239%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149226149244%_))
                              (let ((_%e149227149247%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149226149244%_))))
                                (let ((_%hd149228149250%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149227149247%_)))
                                      (_%tl149229149252%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149227149247%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149229149252%_))
                                      ((lambda (_%L149255%_)
                                         (let ((_%$e149269%_
                                                (let ((__tmp150299
                                                       (lambda (_%sub149267%_)
                                                         (let ((__tmp150300
                                                                (car _%sub149267%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L149255%_
                                                            __tmp150300))))
                                                      (__tmp150298
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self149218%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp150299
                                                          __tmp150298))))
                                           (if _%$e149269%_
                                               ((lambda (_%sub149272%_)
                                                  (let ((__tmp150301
                                                         (cons '%#ref
                                                               (cons (cdr _%sub149272%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp150301
                                                     _%stx149219%_)))
                                                _%$e149269%_)
                                               _%stx149219%_)))
                                       _%hd149228149250%_)
                                      (_%g149221149234%_ _%g149222149237%_))))
                              (_%g149221149234%_ _%g149222149237%_))))
                      (_%g149221149234%_ _%g149222149237%_)))))
          (_%g149220149275%_ _%stx149219%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self149147%_ _%stx149148%_)
        (let* ((_%g149150149167%_
                (lambda (_%g149151149164%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149151149164%_))))
               (_%g149149149215%_
                (lambda (_%g149151149170%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149151149170%_))
                      (let ((_%e149154149172%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149151149170%_))))
                        (let ((_%hd149155149175%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149154149172%_)))
                              (_%tl149156149177%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149154149172%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149156149177%_))
                              (let ((_%e149157149180%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149156149177%_))))
                                (let ((_%hd149158149183%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149157149180%_)))
                                      (_%tl149159149185%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149157149180%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149159149185%_))
                                      (let ((_%e149160149188%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149159149185%_))))
                                        (let ((_%hd149161149191%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149160149188%_)))
                                              (_%tl149162149193%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149160149188%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149162149193%_))
                                              ((lambda (_%L149196%_
                                                        _%L149197%_)
                                                 (let ((_%new-expr149212%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self149147%_
                                                           _%L149196%_)))
                                                       (_%new-xid149213%_
                                                        (if (let ((__tmp150302
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self149147%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L149197%_ __tmp150302))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self149147%_ 'new-id))
                    _%L149197%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp150303
                                                          (cons '%#set!
                                                                (cons _%new-xid149213%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr149212%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp150303
                                                      _%stx149148%_))))
                                               _%hd149161149191%_
                                               _%hd149158149183%_)
                                              (_%g149150149167%_
                                               _%g149151149170%_))))
                                      (_%g149150149167%_ _%g149151149170%_))))
                              (_%g149150149167%_ _%g149151149170%_))))
                      (_%g149150149167%_ _%g149151149170%_)))))
          (_%g149149149215%_ _%stx149148%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self149070%_ _%stx149071%_)
        (let* ((_%g149073149090%_
                (lambda (_%g149074149087%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149074149087%_))))
               (_%g149072149144%_
                (lambda (_%g149074149093%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149074149093%_))
                      (let ((_%e149077149095%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149074149093%_))))
                        (let ((_%hd149078149098%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149077149095%_)))
                              (_%tl149079149100%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149077149095%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149079149100%_))
                              (let ((_%e149080149103%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149079149100%_))))
                                (let ((_%hd149081149106%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149080149103%_)))
                                      (_%tl149082149108%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149080149103%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149082149108%_))
                                      (let ((_%e149083149111%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149082149108%_))))
                                        (let ((_%hd149084149114%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149083149111%_)))
                                              (_%tl149085149116%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149083149111%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl149085149116%_))
                                              ((lambda (_%L149119%_
                                                        _%L149120%_)
                                                 (let ((_%new-expr149141%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self149070%_
                                                           _%L149119%_)))
                                                       (_%new-xid149142%_
                                                        (let ((_%$e149137%_
                                                               (let ((__tmp150305
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub149135%_)
                                (let ((__tmp150306 (car _%sub149135%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L149120%_
                                   __tmp150306))))
                             (__tmp150304
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self149070%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp150305 __tmp150304))))
                  (if _%$e149137%_ (cdr _%$e149137%_) _%L149120%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp150307
                                                          (cons '%#set!
                                                                (cons _%new-xid149142%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr149141%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp150307
                                                      _%stx149071%_))))
                                               _%hd149084149114%_
                                               _%hd149081149106%_)
                                              (_%g149073149090%_
                                               _%g149074149093%_))))
                                      (_%g149073149090%_ _%g149074149093%_))))
                              (_%g149073149090%_ _%g149074149093%_))))
                      (_%g149073149090%_ _%g149074149093%_)))))
          (_%g149072149144%_ _%stx149071%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self149016%_ _%stx149017%_)
        (let* ((_%g149019149032%_
                (lambda (_%g149020149029%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149020149029%_))))
               (_%g149018149067%_
                (lambda (_%g149020149035%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149020149035%_))
                      (let ((_%e149022149037%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149020149035%_))))
                        (let ((_%hd149023149040%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149022149037%_)))
                              (_%tl149024149042%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149022149037%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149024149042%_))
                              (let ((_%e149025149045%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149024149042%_))))
                                (let ((_%hd149026149048%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149025149045%_)))
                                      (_%tl149027149050%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149025149045%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl149027149050%_))
                                      ((lambda (_%L149053%_)
                                         (let* ((_%eid149065%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L149053%_)))
                                                (__tmp150308
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self149016%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp150308
                                            _%eid149065%_
                                            1+
                                            '0)))
                                       _%hd149026149048%_)
                                      (_%g149019149032%_ _%g149020149035%_))))
                              (_%g149019149032%_ _%g149020149035%_))))
                      (_%g149019149032%_ _%g149020149035%_)))))
          (_%g149018149067%_ _%stx149017%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self148946%_ _%stx148947%_)
        (let* ((_%g148949148966%_
                (lambda (_%g148950148963%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148950148963%_))))
               (_%g148948149013%_
                (lambda (_%g148950148969%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148950148969%_))
                      (let ((_%e148953148971%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148950148969%_))))
                        (let ((_%hd148954148974%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148953148971%_)))
                              (_%tl148955148976%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148953148971%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148955148976%_))
                              (let ((_%e148956148979%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148955148976%_))))
                                (let ((_%hd148957148982%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148956148979%_)))
                                      (_%tl148958148984%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148956148979%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148958148984%_))
                                      (let ((_%e148959148987%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148958148984%_))))
                                        (let ((_%hd148960148990%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148959148987%_)))
                                              (_%tl148961148992%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148959148987%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148961148992%_))
                                              ((lambda (_%L148995%_
                                                        _%L148996%_)
                                                 (let ((_%eid149011%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L148996%_))))
                                                   (let ((__tmp150309
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self148946%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp150309
                                                      _%eid149011%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self148946%_
                                                      _%L148995%_))))
                                               _%hd148960148990%_
                                               _%hd148957148982%_)
                                              (_%g148949148966%_
                                               _%g148950148969%_))))
                                      (_%g148949148966%_ _%g148950148969%_))))
                              (_%g148949148966%_ _%g148950148969%_))))
                      (_%g148949148966%_ _%g148950148969%_)))))
          (_%g148948149013%_ _%stx148947%_))))
    (define gxc#find-body%
      (lambda (_%self148859%_ _%stx148860%_)
        (let* ((_%g148862148881%_
                (lambda (_%g148863148878%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148863148878%_))))
               (_%g148861148943%_
                (lambda (_%g148863148884%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148863148884%_))
                      (let ((_%e148865148886%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148863148884%_))))
                        (let ((_%hd148866148889%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148865148886%_)))
                              (_%tl148867148891%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148865148886%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl148867148891%_))
                              (let ((_g150310_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl148867148891%_
                                        '0))))
                                (begin
                                  (let ((_g150311_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g150310_)
                                               (##vector-length _g150310_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g150311_ 2)))
                                        (error "Context expects 2 values"
                                               _g150311_)))
                                  (let ((_%target148868148894%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g150310_ 0)))
                                        (_%tl148870148896%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g150310_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl148870148896%_))
                                        (letrec ((_%loop148871148899%_
                                                  (lambda (_%hd148869148902%_
                                                           _%expr148875148904%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd148869148902%_))
                                                        (let ((_%e148872148907%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd148869148902%_))))
                  (let ((_%lp-hd148873148910%_
                         (let ()
                           (declare (not safe))
                           (##car _%e148872148907%_)))
                        (_%lp-tl148874148912%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e148872148907%_))))
                    (_%loop148871148899%_
                     _%lp-tl148874148912%_
                     (cons _%lp-hd148873148910%_ _%expr148875148904%_))))
                (let ((_%expr148876148915%_ (reverse _%expr148875148904%_)))
                  ((lambda (_%L148918%_)
                     (let ((__tmp150314
                            (lambda (_%g148931148933%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self148859%_
                                 _%g148931148933%_))))
                           (__tmp150312
                            (let ((__tmp150313
                                   (lambda (_%g148935148938%_
                                            _%g148936148940%_)
                                     (cons _%g148935148938%_
                                           _%g148936148940%_))))
                              (declare (not safe))
                              (__foldr1 __tmp150313 '() _%L148918%_))))
                       (declare (not safe))
                       (__ormap1 __tmp150314 __tmp150312)))
                   _%expr148876148915%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop148871148899%_
                                           _%target148868148894%_
                                           '()))
                                        (_%g148862148881%_
                                         _%g148863148884%_)))))
                              (_%g148862148881%_ _%g148863148884%_))))
                      (_%g148862148881%_ _%g148863148884%_)))))
          (_%g148861148943%_ _%stx148860%_))))
    (define gxc#find-let-values%
      (lambda (_%self148709%_ _%stx148710%_)
        (let* ((_%g148712148747%_
                (lambda (_%g148713148744%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148713148744%_))))
               (_%g148711148856%_
                (lambda (_%g148713148750%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148713148750%_))
                      (let ((_%e148717148752%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148713148750%_))))
                        (let ((_%hd148718148755%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148717148752%_)))
                              (_%tl148719148757%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148717148752%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148719148757%_))
                              (let ((_%e148720148760%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148719148757%_))))
                                (let ((_%hd148721148763%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148720148760%_)))
                                      (_%tl148722148765%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148720148760%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd148721148763%_))
                                      (let ((_g150315_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd148721148763%_
                                                '0))))
                                        (begin
                                          (let ((_g150316_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g150315_)
                                                       (##vector-length
                                                        _g150315_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g150316_ 2)))
                                                (error "Context expects 2 values"
                                                       _g150316_)))
                                          (let ((_%target148723148768%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g150315_ 0)))
                                                (_%tl148725148770%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g150315_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl148725148770%_))
                                                (letrec ((_%loop148726148773%_
                                                          (lambda (_%hd148724148776%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr148730148778%_
                           _%bind148731148780%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd148724148776%_))
                        (let ((_%e148727148783%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd148724148776%_))))
                          (let ((_%lp-hd148728148786%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e148727148783%_)))
                                (_%lp-tl148729148788%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e148727148783%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd148728148786%_))
                                (let ((_%e148737148791%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd148728148786%_))))
                                  (let ((_%hd148738148794%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e148737148791%_)))
                                        (_%tl148739148796%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e148737148791%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl148739148796%_))
                                        (let ((_%e148740148799%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl148739148796%_))))
                                          (let ((_%hd148741148802%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e148740148799%_)))
                                                (_%tl148742148804%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e148740148799%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl148742148804%_))
                                                (_%loop148726148773%_
                                                 _%lp-tl148729148788%_
                                                 (cons _%hd148741148802%_
                                                       _%expr148730148778%_)
                                                 (cons _%hd148738148794%_
                                                       _%bind148731148780%_))
                                                (_%g148712148747%_
                                                 _%g148713148750%_))))
                                        (_%g148712148747%_
                                         _%g148713148750%_))))
                                (_%g148712148747%_ _%g148713148750%_))))
                        (let ((_%expr148732148807%_
                               (reverse _%expr148730148778%_))
                              (_%bind148733148809%_
                               (reverse _%bind148731148780%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148722148765%_))
                              (let ((_%e148734148812%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148722148765%_))))
                                (let ((_%hd148735148815%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148734148812%_)))
                                      (_%tl148736148817%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148734148812%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl148736148817%_))
                                      ((lambda (_%L148820%_
                                                _%L148821%_
                                                _%L148822%_)
                                         (let ((_%$e148853%_
                                                (let ((__tmp150319
                                                       (lambda (_%g148841148843%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self148709%_
                                                            _%g148841148843%_))))
                                                      (__tmp150317
                                                       (let ((__tmp150318
                                                              (lambda (_%g148845148848%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g148846148850%_)
                        (cons _%g148845148848%_ _%g148846148850%_))))
                 (declare (not safe))
                 (__foldr1 __tmp150318 '() _%L148821%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp150319
                                                   __tmp150317))))
                                           (if _%$e148853%_
                                               _%$e148853%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self148709%_
                                                  _%L148820%_)))))
                                       _%hd148735148815%_
                                       _%expr148732148807%_
                                       _%bind148733148809%_)
                                      (_%g148712148747%_ _%g148713148750%_))))
                              (_%g148712148747%_ _%g148713148750%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop148726148773%_
                                                   _%target148723148768%_
                                                   '()
                                                   '()))
                                                (_%g148712148747%_
                                                 _%g148713148750%_)))))
                                      (_%g148712148747%_ _%g148713148750%_))))
                              (_%g148712148747%_ _%g148713148750%_))))
                      (_%g148712148747%_ _%g148713148750%_)))))
          (_%g148711148856%_ _%stx148710%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self148653%_ _%stx148654%_)
        (let* ((_%g148656148669%_
                (lambda (_%g148657148666%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148657148666%_))))
               (_%g148655148706%_
                (lambda (_%g148657148672%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148657148672%_))
                      (let ((_%e148659148674%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148657148672%_))))
                        (let ((_%hd148660148677%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148659148674%_)))
                              (_%tl148661148679%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148659148674%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148661148679%_))
                              (let ((_%e148662148682%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148661148679%_))))
                                (let ((_%hd148663148685%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148662148682%_)))
                                      (_%tl148664148687%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148662148682%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl148664148687%_))
                                      ((lambda (_%L148690%_)
                                         (let ((__tmp150321
                                                (lambda (_%g148701148703%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L148690%_
                                                     _%g148701148703%_))))
                                               (__tmp150320
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self148653%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp150321 __tmp150320)))
                                       _%hd148663148685%_)
                                      (_%g148656148669%_ _%g148657148672%_))))
                              (_%g148656148669%_ _%g148657148672%_))))
                      (_%g148656148669%_ _%g148657148672%_)))))
          (_%g148655148706%_ _%stx148654%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self148578%_ _%stx148579%_)
        (let* ((_%g148581148598%_
                (lambda (_%g148582148595%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148582148595%_))))
               (_%g148580148650%_
                (lambda (_%g148582148601%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148582148601%_))
                      (let ((_%e148585148603%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148582148601%_))))
                        (let ((_%hd148586148606%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148585148603%_)))
                              (_%tl148587148608%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148585148603%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148587148608%_))
                              (let ((_%e148588148611%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148587148608%_))))
                                (let ((_%hd148589148614%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148588148611%_)))
                                      (_%tl148590148616%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148588148611%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148590148616%_))
                                      (let ((_%e148591148619%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148590148616%_))))
                                        (let ((_%hd148592148622%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148591148619%_)))
                                              (_%tl148593148624%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148591148619%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148593148624%_))
                                              ((lambda (_%L148627%_
                                                        _%L148628%_)
                                                 (let ((_%$e148647%_
                                                        (let ((__tmp150323
                                                               (lambda (_%g148642148644%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L148628%_
                            _%g148642148644%_))))
                      (__tmp150322
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self148578%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp150323 __tmp150322))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e148647%_
                                                       _%$e148647%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self148578%_
                                                          _%L148627%_)))))
                                               _%hd148592148622%_
                                               _%hd148589148614%_)
                                              (_%g148581148598%_
                                               _%g148582148601%_))))
                                      (_%g148581148598%_ _%g148582148601%_))))
                              (_%g148581148598%_ _%g148582148601%_))))
                      (_%g148581148598%_ _%g148582148601%_)))))
          (_%g148580148650%_ _%stx148579%_))))))
