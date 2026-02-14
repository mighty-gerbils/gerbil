(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1771037611)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp220265 (list gxc#::void::t))
            (__tmp220264 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp220265
         '()
         __tmp220264
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args220251%_
        (apply make-instance gxc#::collect-mutators::t _%$args220251%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp220266
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
        (__make-atomic-promise __tmp220266)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx220243%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self220246%_
                (let ((__obj220254
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj220254))
               (__tmp220267
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self220246%_ _%stx220243%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp220267
           gxc#current-compile-method
           _%self220246%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp220269 (list gxc#::basic-xform-expression::t))
            (__tmp220268 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp220269
         '(id new-id)
         __tmp220268
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args220240%_
        (apply make-instance gxc#::expression-subst::t _%$args220240%_)))
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
      (let ((__tmp220270
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
        (__make-atomic-promise __tmp220270)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords220212%_
               _%id220208220213%_
               _%new-id220209220214%_
               _%stx220215%_)
        (let* ((_%id220218%_
                (if (eq? _%id220208220213%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id220208220213%_))
               (_%new-id220220%_
                (if (eq? _%new-id220209220214%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id220209220214%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self220222%_
                  (let ((__obj220256
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj220256
                       _%id220218%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj220256
                       _%new-id220220%_
                       '2
                       '#f
                       '#f))
                    __obj220256))
                 (__tmp220271
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self220222%_ _%stx220215%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp220271
             gxc#current-compile-method
             _%self220222%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords220229%_ . _%args220230%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords220229%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords220229%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords220229%_
                  'new-id:
                  absent-value))
               _%args220230%_)))
    (define gxc#apply-expression-subst
      (lambda _%args220210220236%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args220210220236%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp220273 (list gxc#::basic-xform-expression::t))
            (__tmp220272 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp220273
         '(subst)
         __tmp220272
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args220204%_
        (apply make-instance gxc#::expression-subst*::t _%$args220204%_)))
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
      (let ((__tmp220274
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
        (__make-atomic-promise __tmp220274)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords220179%_ _%subst220176220180%_ _%stx220181%_)
        (let ((_%subst220184%_
               (if (eq? _%subst220176220180%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst220176220180%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self220186%_
                  (let ((__obj220258
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj220258
                       _%subst220184%_
                       '1
                       '#f
                       '#f))
                    __obj220258))
                 (__tmp220275
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self220186%_ _%stx220181%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp220275
             gxc#current-compile-method
             _%self220186%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords220193%_ . _%args220194%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords220193%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords220193%_
                  'subst:
                  absent-value))
               _%args220194%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args220177220200%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args220177220200%_)))
    (define gxc#::find-expression::t
      (let ((__tmp220276 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp220276
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args220172%_
        (apply make-instance gxc#::find-expression::t _%$args220172%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp220277
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
        (__make-atomic-promise __tmp220277)))
    (define gxc#::find-var-refs::t
      (let ((__tmp220279 (list gxc#::find-expression::t))
            (__tmp220278 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp220279
         '(ids)
         __tmp220278
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args220168%_
        (apply make-instance gxc#::find-var-refs::t _%$args220168%_)))
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
      (let ((__tmp220280
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
        (__make-atomic-promise __tmp220280)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords220143%_ _%ids220140220144%_ _%stx220145%_)
        (let ((_%ids220148%_
               (if (eq? _%ids220140220144%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids220140220144%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self220150%_
                  (let ((__obj220261
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj220261
                       _%ids220148%_
                       '1
                       '#f
                       '#f))
                    __obj220261))
                 (__tmp220281
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self220150%_ _%stx220145%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp220281
             gxc#current-compile-method
             _%self220150%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords220157%_ . _%args220158%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords220157%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords220157%_ 'ids: absent-value))
               _%args220158%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args220141220164%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args220141220164%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp220283 (list gxc#::collect-expression-refs::t))
            (__tmp220282 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp220283
         '()
         __tmp220282
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args220136%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args220136%_)))
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
      (let ((__tmp220284
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
        (__make-atomic-promise __tmp220284)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords220111%_ _%table220108220112%_ _%stx220113%_)
        (let ((_%table220116%_
               (if (eq? _%table220108220112%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table220108220112%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self220118%_
                  (let ((__obj220263
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj220263
                       _%table220116%_
                       '1
                       '#f
                       '#f))
                    __obj220263))
                 (__tmp220285
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self220118%_ _%stx220113%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp220285
             gxc#current-compile-method
             _%self220118%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords220125%_ . _%args220126%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords220125%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords220125%_
                  'table:
                  absent-value))
               _%args220126%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args220109220132%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args220109220132%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self220037%_ _%stx220038%_)
        (let* ((_%g220040220057%_
                (lambda (_%g220041220054%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g220041220054%_))))
               (_%g220039220104%_
                (lambda (_%g220041220060%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g220041220060%_))
                      (let ((_%e220044220062%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g220041220060%_))))
                        (let ((_%hd220045220065%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e220044220062%_)))
                              (_%tl220046220067%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e220044220062%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl220046220067%_))
                              (let ((_%e220047220070%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl220046220067%_))))
                                (let ((_%hd220048220073%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e220047220070%_)))
                                      (_%tl220049220075%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e220047220070%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl220049220075%_))
                                      (let ((_%e220050220078%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl220049220075%_))))
                                        (let ((_%hd220051220081%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e220050220078%_)))
                                              (_%tl220052220083%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e220050220078%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl220052220083%_))
                                              ((lambda (_%g220042220086%_
                                                        _%g220043220087%_)
                                                 (let ((_%sym220102%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g220043220087%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym220102%_))
                                                   (let ((__tmp220286
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp220286
                                                      _%sym220102%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self220037%_
                                                      _%g220042220086%_))))
                                               _%hd220051220081%_
                                               _%hd220048220073%_)
                                              (_%g220040220057%_
                                               _%g220041220060%_))))
                                      (_%g220040220057%_ _%g220041220060%_))))
                              (_%g220040220057%_ _%g220041220060%_))))
                      (_%g220040220057%_ _%g220041220060%_)))))
          (_%g220039220104%_ _%stx220038%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self219985%_ _%stx219986%_)
        (let* ((_%g219988220001%_
                (lambda (_%g219989219998%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g219989219998%_))))
               (_%g219987220034%_
                (lambda (_%g219989220004%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g219989220004%_))
                      (let ((_%e219991220006%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g219989220004%_))))
                        (let ((_%hd219992220009%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e219991220006%_)))
                              (_%tl219993220011%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e219991220006%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl219993220011%_))
                              (let ((_%e219994220014%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl219993220011%_))))
                                (let ((_%hd219995220017%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e219994220014%_)))
                                      (_%tl219996220019%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e219994220014%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl219996220019%_))
                                      ((lambda (_%g219990220022%_)
                                         (if (let ((__tmp220287
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self219985%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g219990220022%_
                                                __tmp220287))
                                             (let ((__tmp220288
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self219985%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp220288
                                                _%stx219986%_))
                                             _%stx219986%_))
                                       _%hd219995220017%_)
                                      (_%g219988220001%_ _%g219989220004%_))))
                              (_%g219988220001%_ _%g219989220004%_))))
                      (_%g219988220001%_ _%g219989220004%_)))))
          (_%g219987220034%_ _%stx219986%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self219925%_ _%stx219926%_)
        (let* ((_%g219928219941%_
                (lambda (_%g219929219938%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g219929219938%_))))
               (_%g219927219982%_
                (lambda (_%g219929219944%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g219929219944%_))
                      (let ((_%e219931219946%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g219929219944%_))))
                        (let ((_%hd219932219949%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e219931219946%_)))
                              (_%tl219933219951%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e219931219946%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl219933219951%_))
                              (let ((_%e219934219954%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl219933219951%_))))
                                (let ((_%hd219935219957%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e219934219954%_)))
                                      (_%tl219936219959%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e219934219954%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl219936219959%_))
                                      ((lambda (_%g219930219962%_)
                                         (let ((_%$e219976%_
                                                (let ((__tmp220290
                                                       (lambda (_%sub219974%_)
                                                         (let ((__tmp220291
                                                                (car _%sub219974%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%g219930219962%_
                                                            __tmp220291))))
                                                      (__tmp220289
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self219925%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp220290
                                                          __tmp220289))))
                                           (if _%$e219976%_
                                               ((lambda (_%sub219979%_)
                                                  (let ((__tmp220292
                                                         (cons '%#ref
                                                               (cons (cdr _%sub219979%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp220292
                                                     _%stx219926%_)))
                                                _%$e219976%_)
                                               _%stx219926%_)))
                                       _%hd219935219957%_)
                                      (_%g219928219941%_ _%g219929219944%_))))
                              (_%g219928219941%_ _%g219929219944%_))))
                      (_%g219928219941%_ _%g219929219944%_)))))
          (_%g219927219982%_ _%stx219926%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self219854%_ _%stx219855%_)
        (let* ((_%g219857219874%_
                (lambda (_%g219858219871%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g219858219871%_))))
               (_%g219856219922%_
                (lambda (_%g219858219877%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g219858219877%_))
                      (let ((_%e219861219879%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g219858219877%_))))
                        (let ((_%hd219862219882%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e219861219879%_)))
                              (_%tl219863219884%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e219861219879%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl219863219884%_))
                              (let ((_%e219864219887%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl219863219884%_))))
                                (let ((_%hd219865219890%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e219864219887%_)))
                                      (_%tl219866219892%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e219864219887%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl219866219892%_))
                                      (let ((_%e219867219895%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl219866219892%_))))
                                        (let ((_%hd219868219898%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e219867219895%_)))
                                              (_%tl219869219900%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e219867219895%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl219869219900%_))
                                              ((lambda (_%g219859219903%_
                                                        _%g219860219904%_)
                                                 (let ((_%new-expr219919%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self219854%_
                                                           _%g219859219903%_)))
                                                       (_%new-xid219920%_
                                                        (if (let ((__tmp220293
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self219854%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%g219860219904%_ __tmp220293))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self219854%_ 'new-id))
                    _%g219860219904%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp220294
                                                          (cons '%#set!
                                                                (cons _%new-xid219920%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr219919%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp220294
                                                      _%stx219855%_))))
                                               _%hd219868219898%_
                                               _%hd219865219890%_)
                                              (_%g219857219874%_
                                               _%g219858219877%_))))
                                      (_%g219857219874%_ _%g219858219877%_))))
                              (_%g219857219874%_ _%g219858219877%_))))
                      (_%g219857219874%_ _%g219858219877%_)))))
          (_%g219856219922%_ _%stx219855%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self219777%_ _%stx219778%_)
        (let* ((_%g219780219797%_
                (lambda (_%g219781219794%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g219781219794%_))))
               (_%g219779219851%_
                (lambda (_%g219781219800%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g219781219800%_))
                      (let ((_%e219784219802%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g219781219800%_))))
                        (let ((_%hd219785219805%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e219784219802%_)))
                              (_%tl219786219807%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e219784219802%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl219786219807%_))
                              (let ((_%e219787219810%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl219786219807%_))))
                                (let ((_%hd219788219813%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e219787219810%_)))
                                      (_%tl219789219815%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e219787219810%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl219789219815%_))
                                      (let ((_%e219790219818%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl219789219815%_))))
                                        (let ((_%hd219791219821%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e219790219818%_)))
                                              (_%tl219792219823%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e219790219818%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl219792219823%_))
                                              ((lambda (_%g219782219826%_
                                                        _%g219783219827%_)
                                                 (let ((_%new-expr219848%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self219777%_
                                                           _%g219782219826%_)))
                                                       (_%new-xid219849%_
                                                        (let ((_%$e219844%_
                                                               (let ((__tmp220296
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub219842%_)
                                (let ((__tmp220297 (car _%sub219842%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%g219783219827%_
                                   __tmp220297))))
                             (__tmp220295
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self219777%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp220296 __tmp220295))))
                  (if _%$e219844%_ (cdr _%$e219844%_) _%g219783219827%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp220298
                                                          (cons '%#set!
                                                                (cons _%new-xid219849%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr219848%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp220298
                                                      _%stx219778%_))))
                                               _%hd219791219821%_
                                               _%hd219788219813%_)
                                              (_%g219780219797%_
                                               _%g219781219800%_))))
                                      (_%g219780219797%_ _%g219781219800%_))))
                              (_%g219780219797%_ _%g219781219800%_))))
                      (_%g219780219797%_ _%g219781219800%_)))))
          (_%g219779219851%_ _%stx219778%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self219723%_ _%stx219724%_)
        (let* ((_%g219726219739%_
                (lambda (_%g219727219736%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g219727219736%_))))
               (_%g219725219774%_
                (lambda (_%g219727219742%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g219727219742%_))
                      (let ((_%e219729219744%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g219727219742%_))))
                        (let ((_%hd219730219747%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e219729219744%_)))
                              (_%tl219731219749%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e219729219744%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl219731219749%_))
                              (let ((_%e219732219752%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl219731219749%_))))
                                (let ((_%hd219733219755%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e219732219752%_)))
                                      (_%tl219734219757%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e219732219752%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl219734219757%_))
                                      ((lambda (_%g219728219760%_)
                                         (let* ((_%eid219772%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g219728219760%_)))
                                                (__tmp220299
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self219723%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp220299
                                            _%eid219772%_
                                            1+
                                            '0)))
                                       _%hd219733219755%_)
                                      (_%g219726219739%_ _%g219727219742%_))))
                              (_%g219726219739%_ _%g219727219742%_))))
                      (_%g219726219739%_ _%g219727219742%_)))))
          (_%g219725219774%_ _%stx219724%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self219653%_ _%stx219654%_)
        (let* ((_%g219656219673%_
                (lambda (_%g219657219670%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g219657219670%_))))
               (_%g219655219720%_
                (lambda (_%g219657219676%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g219657219676%_))
                      (let ((_%e219660219678%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g219657219676%_))))
                        (let ((_%hd219661219681%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e219660219678%_)))
                              (_%tl219662219683%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e219660219678%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl219662219683%_))
                              (let ((_%e219663219686%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl219662219683%_))))
                                (let ((_%hd219664219689%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e219663219686%_)))
                                      (_%tl219665219691%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e219663219686%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl219665219691%_))
                                      (let ((_%e219666219694%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl219665219691%_))))
                                        (let ((_%hd219667219697%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e219666219694%_)))
                                              (_%tl219668219699%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e219666219694%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl219668219699%_))
                                              ((lambda (_%g219658219702%_
                                                        _%g219659219703%_)
                                                 (let ((_%eid219718%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g219659219703%_))))
                                                   (let ((__tmp220300
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self219653%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp220300
                                                      _%eid219718%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self219653%_
                                                      _%g219658219702%_))))
                                               _%hd219667219697%_
                                               _%hd219664219689%_)
                                              (_%g219656219673%_
                                               _%g219657219676%_))))
                                      (_%g219656219673%_ _%g219657219676%_))))
                              (_%g219656219673%_ _%g219657219676%_))))
                      (_%g219656219673%_ _%g219657219676%_)))))
          (_%g219655219720%_ _%stx219654%_))))
    (define gxc#find-body%
      (lambda (_%self219568%_ _%stx219569%_)
        (let* ((_%g219571219590%_
                (lambda (_%g219572219587%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g219572219587%_))))
               (_%g219570219650%_
                (lambda (_%g219572219593%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g219572219593%_))
                      (let ((_%e219574219595%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g219572219593%_))))
                        (let ((_%hd219575219598%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e219574219595%_)))
                              (_%tl219576219600%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e219574219595%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl219576219600%_))
                              (let ((_g220301_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl219576219600%_
                                        '0))))
                                (begin
                                  (let ((_g220302_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g220301_)
                                               (##values-length _g220301_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g220302_ 2)))
                                        (error "Context expects 2 values"
                                               _g220302_)))
                                  (let ((_%target219577219603%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g220301_ 0)))
                                        (_%tl219579219605%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g220301_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl219579219605%_))
                                        (letrec ((_%loop219580219608%_
                                                  (lambda (_%hd219578219611%_
                                                           _%expr219584219613%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd219578219611%_))
                                                        (let ((_%e219581219615%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd219578219611%_))))
                  (let ((_%lp-hd219582219618%_
                         (let ()
                           (declare (not safe))
                           (##car _%e219581219615%_)))
                        (_%lp-tl219583219620%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e219581219615%_))))
                    (_%loop219580219608%_
                     _%lp-tl219583219620%_
                     (cons _%lp-hd219582219618%_ _%expr219584219613%_))))
                (let ((_%expr219585219623%_ (reverse _%expr219584219613%_)))
                  ((lambda (_%g219573219625%_)
                     (let ((__tmp220305
                            (lambda (_%g219638219640%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self219568%_
                                 _%g219638219640%_))))
                           (__tmp220303
                            (let ((__tmp220304
                                   (lambda (_%g219642219645%_
                                            _%g219643219647%_)
                                     (cons _%g219642219645%_
                                           _%g219643219647%_))))
                              (declare (not safe))
                              (foldr__0 __tmp220304 '() _%g219573219625%_))))
                       (declare (not safe))
                       (ormap__0 __tmp220305 __tmp220303)))
                   _%expr219585219623%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop219580219608%_
                                           _%target219577219603%_
                                           '()))
                                        (_%g219571219590%_
                                         _%g219572219593%_)))))
                              (_%g219571219590%_ _%g219572219593%_))))
                      (_%g219571219590%_ _%g219572219593%_)))))
          (_%g219570219650%_ _%stx219569%_))))
    (define gxc#find-let-values%
      (lambda (_%self219422%_ _%stx219423%_)
        (let* ((_%g219425219460%_
                (lambda (_%g219426219457%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g219426219457%_))))
               (_%g219424219565%_
                (lambda (_%g219426219463%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g219426219463%_))
                      (let ((_%e219430219465%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g219426219463%_))))
                        (let ((_%hd219431219468%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e219430219465%_)))
                              (_%tl219432219470%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e219430219465%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl219432219470%_))
                              (let ((_%e219433219473%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl219432219470%_))))
                                (let ((_%hd219434219476%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e219433219473%_)))
                                      (_%tl219435219478%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e219433219473%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd219434219476%_))
                                      (let ((_g220306_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd219434219476%_
                                                '0))))
                                        (begin
                                          (let ((_g220307_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g220306_)
                                                       (##values-length
                                                        _g220306_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g220307_ 2)))
                                                (error "Context expects 2 values"
                                                       _g220307_)))
                                          (let ((_%target219436219481%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g220306_ 0)))
                                                (_%tl219438219483%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g220306_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl219438219483%_))
                                                (letrec ((_%loop219439219486%_
                                                          (lambda (_%hd219437219489%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr219443219491%_
                           _%bind219444219492%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd219437219489%_))
                        (let ((_%e219440219494%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd219437219489%_))))
                          (let ((_%lp-hd219441219497%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e219440219494%_)))
                                (_%lp-tl219442219499%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e219440219494%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd219441219497%_))
                                (let ((_%e219447219502%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd219441219497%_))))
                                  (let ((_%hd219448219505%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e219447219502%_)))
                                        (_%tl219449219507%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e219447219502%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl219449219507%_))
                                        (let ((_%e219450219510%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl219449219507%_))))
                                          (let ((_%hd219451219513%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e219450219510%_)))
                                                (_%tl219452219515%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e219450219510%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl219452219515%_))
                                                (_%loop219439219486%_
                                                 _%lp-tl219442219499%_
                                                 (cons _%hd219451219513%_
                                                       _%expr219443219491%_)
                                                 (cons _%hd219448219505%_
                                                       _%bind219444219492%_))
                                                (_%g219425219460%_
                                                 _%g219426219463%_))))
                                        (_%g219425219460%_
                                         _%g219426219463%_))))
                                (_%g219425219460%_ _%g219426219463%_))))
                        (let ((_%expr219445219518%_
                               (reverse _%expr219443219491%_))
                              (_%bind219446219519%_
                               (reverse _%bind219444219492%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl219435219478%_))
                              (let ((_%e219453219521%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl219435219478%_))))
                                (let ((_%hd219454219524%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e219453219521%_)))
                                      (_%tl219455219526%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e219453219521%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl219455219526%_))
                                      ((lambda (_%g219427219529%_
                                                _%g219428219530%_
                                                _%g219429219531%_)
                                         (let ((_%$e219562%_
                                                (let ((__tmp220310
                                                       (lambda (_%g219550219552%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self219422%_
                                                            _%g219550219552%_))))
                                                      (__tmp220308
                                                       (let ((__tmp220309
                                                              (lambda (_%g219554219557%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g219555219559%_)
                        (cons _%g219554219557%_ _%g219555219559%_))))
                 (declare (not safe))
                 (foldr__0 __tmp220309 '() _%g219428219530%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (ormap__0
                                                   __tmp220310
                                                   __tmp220308))))
                                           (if _%$e219562%_
                                               _%$e219562%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self219422%_
                                                  _%g219427219529%_)))))
                                       _%hd219454219524%_
                                       _%expr219445219518%_
                                       _%bind219446219519%_)
                                      (_%g219425219460%_ _%g219426219463%_))))
                              (_%g219425219460%_ _%g219426219463%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop219439219486%_
                                                   _%target219436219481%_
                                                   '()
                                                   '()))
                                                (_%g219425219460%_
                                                 _%g219426219463%_)))))
                                      (_%g219425219460%_ _%g219426219463%_))))
                              (_%g219425219460%_ _%g219426219463%_))))
                      (_%g219425219460%_ _%g219426219463%_)))))
          (_%g219424219565%_ _%stx219423%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self219366%_ _%stx219367%_)
        (let* ((_%g219369219382%_
                (lambda (_%g219370219379%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g219370219379%_))))
               (_%g219368219419%_
                (lambda (_%g219370219385%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g219370219385%_))
                      (let ((_%e219372219387%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g219370219385%_))))
                        (let ((_%hd219373219390%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e219372219387%_)))
                              (_%tl219374219392%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e219372219387%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl219374219392%_))
                              (let ((_%e219375219395%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl219374219392%_))))
                                (let ((_%hd219376219398%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e219375219395%_)))
                                      (_%tl219377219400%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e219375219395%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl219377219400%_))
                                      ((lambda (_%g219371219403%_)
                                         (let ((__tmp220312
                                                (lambda (_%g219414219416%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g219371219403%_
                                                     _%g219414219416%_))))
                                               (__tmp220311
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self219366%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp220312 __tmp220311)))
                                       _%hd219376219398%_)
                                      (_%g219369219382%_ _%g219370219385%_))))
                              (_%g219369219382%_ _%g219370219385%_))))
                      (_%g219369219382%_ _%g219370219385%_)))))
          (_%g219368219419%_ _%stx219367%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self219291%_ _%stx219292%_)
        (let* ((_%g219294219311%_
                (lambda (_%g219295219308%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g219295219308%_))))
               (_%g219293219363%_
                (lambda (_%g219295219314%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g219295219314%_))
                      (let ((_%e219298219316%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g219295219314%_))))
                        (let ((_%hd219299219319%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e219298219316%_)))
                              (_%tl219300219321%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e219298219316%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl219300219321%_))
                              (let ((_%e219301219324%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl219300219321%_))))
                                (let ((_%hd219302219327%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e219301219324%_)))
                                      (_%tl219303219329%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e219301219324%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl219303219329%_))
                                      (let ((_%e219304219332%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl219303219329%_))))
                                        (let ((_%hd219305219335%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e219304219332%_)))
                                              (_%tl219306219337%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e219304219332%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl219306219337%_))
                                              ((lambda (_%g219296219340%_
                                                        _%g219297219341%_)
                                                 (let ((_%$e219360%_
                                                        (let ((__tmp220314
                                                               (lambda (_%g219355219357%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%g219297219341%_
                            _%g219355219357%_))))
                      (__tmp220313
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self219291%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp220314 __tmp220313))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e219360%_
                                                       _%$e219360%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self219291%_
                                                          _%g219296219340%_)))))
                                               _%hd219305219335%_
                                               _%hd219302219327%_)
                                              (_%g219294219311%_
                                               _%g219295219314%_))))
                                      (_%g219294219311%_ _%g219295219314%_))))
                              (_%g219294219311%_ _%g219295219314%_))))
                      (_%g219294219311%_ _%g219295219314%_)))))
          (_%g219293219363%_ _%stx219292%_))))))
