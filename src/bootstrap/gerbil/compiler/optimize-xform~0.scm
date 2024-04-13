(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1713001409)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp152234 (list gxc#::void::t))
            (__tmp152233 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp152234
         '()
         __tmp152233
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args152220%_
        (apply make-instance gxc#::collect-mutators::t _%$args152220%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp152235
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
        (__make-promise __tmp152235)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx152212%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self152215%_
                (let ((__obj152223
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj152223))
               (__tmp152236
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self152215%_ _%stx152212%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp152236
           gxc#current-compile-method
           _%self152215%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp152238 (list gxc#::basic-xform-expression::t))
            (__tmp152237 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp152238
         '(id new-id)
         __tmp152237
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args152209%_
        (apply make-instance gxc#::expression-subst::t _%$args152209%_)))
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
      (let ((__tmp152239
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
        (__make-promise __tmp152239)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords152179%_
               _%id152175152180%_
               _%new-id152176152182%_
               _%stx152184%_)
        (let* ((_%id152187%_
                (if (eq? _%id152175152180%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id152175152180%_))
               (_%new-id152189%_
                (if (eq? _%new-id152176152182%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id152176152182%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self152191%_
                  (let ((__obj152225
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj152225
                       _%id152187%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj152225
                       _%new-id152189%_
                       '2
                       '#f
                       '#f))
                    __obj152225))
                 (__tmp152240
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self152191%_ _%stx152184%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp152240
             gxc#current-compile-method
             _%self152191%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords152198%_ . _%args152199%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords152198%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords152198%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords152198%_
                  'new-id:
                  absent-value))
               _%args152199%_)))
    (define gxc#apply-expression-subst
      (lambda _%args152177152205%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args152177152205%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp152242 (list gxc#::basic-xform-expression::t))
            (__tmp152241 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp152242
         '(subst)
         __tmp152241
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args152171%_
        (apply make-instance gxc#::expression-subst*::t _%$args152171%_)))
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
      (let ((__tmp152243
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
        (__make-promise __tmp152243)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords152145%_ _%subst152142152146%_ _%stx152148%_)
        (let ((_%subst152151%_
               (if (eq? _%subst152142152146%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst152142152146%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self152153%_
                  (let ((__obj152227
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj152227
                       _%subst152151%_
                       '1
                       '#f
                       '#f))
                    __obj152227))
                 (__tmp152244
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self152153%_ _%stx152148%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp152244
             gxc#current-compile-method
             _%self152153%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords152160%_ . _%args152161%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords152160%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords152160%_
                  'subst:
                  absent-value))
               _%args152161%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args152143152167%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args152143152167%_)))
    (define gxc#::find-expression::t
      (let ((__tmp152245 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp152245
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args152138%_
        (apply make-instance gxc#::find-expression::t _%$args152138%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp152246
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
        (__make-promise __tmp152246)))
    (define gxc#::find-var-refs::t
      (let ((__tmp152248 (list gxc#::find-expression::t))
            (__tmp152247 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp152248
         '(ids)
         __tmp152247
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args152134%_
        (apply make-instance gxc#::find-var-refs::t _%$args152134%_)))
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
      (let ((__tmp152249
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
        (__make-promise __tmp152249)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords152108%_ _%ids152105152109%_ _%stx152111%_)
        (let ((_%ids152114%_
               (if (eq? _%ids152105152109%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids152105152109%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self152116%_
                  (let ((__obj152230
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj152230
                       _%ids152114%_
                       '1
                       '#f
                       '#f))
                    __obj152230))
                 (__tmp152250
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self152116%_ _%stx152111%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp152250
             gxc#current-compile-method
             _%self152116%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords152123%_ . _%args152124%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords152123%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords152123%_ 'ids: absent-value))
               _%args152124%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args152106152130%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args152106152130%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp152252 (list gxc#::collect-expression-refs::t))
            (__tmp152251 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp152252
         '()
         __tmp152251
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args152101%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args152101%_)))
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
      (let ((__tmp152253
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
        (__make-promise __tmp152253)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords152075%_ _%table152072152076%_ _%stx152078%_)
        (let ((_%table152081%_
               (if (eq? _%table152072152076%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table152072152076%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self152083%_
                  (let ((__obj152232
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj152232
                       _%table152081%_
                       '1
                       '#f
                       '#f))
                    __obj152232))
                 (__tmp152254
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self152083%_ _%stx152078%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp152254
             gxc#current-compile-method
             _%self152083%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords152090%_ . _%args152091%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords152090%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords152090%_
                  'table:
                  absent-value))
               _%args152091%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args152073152097%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args152073152097%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self152001%_ _%stx152002%_)
        (let* ((_%g152004152021%_
                (lambda (_%g152005152018%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152005152018%_))))
               (_%g152003152068%_
                (lambda (_%g152005152024%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152005152024%_))
                      (let ((_%e152008152026%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152005152024%_))))
                        (let ((_%hd152009152029%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152008152026%_)))
                              (_%tl152010152031%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152008152026%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl152010152031%_))
                              (let ((_%e152011152034%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl152010152031%_))))
                                (let ((_%hd152012152037%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152011152034%_)))
                                      (_%tl152013152039%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152011152034%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl152013152039%_))
                                      (let ((_%e152014152042%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl152013152039%_))))
                                        (let ((_%hd152015152045%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e152014152042%_)))
                                              (_%tl152016152047%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e152014152042%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl152016152047%_))
                                              ((lambda (_%L152050%_
                                                        _%L152051%_)
                                                 (let ((_%sym152066%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L152051%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym152066%_))
                                                   (let ((__tmp152255
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp152255
                                                      _%sym152066%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self152001%_
                                                      _%L152050%_))))
                                               _%hd152015152045%_
                                               _%hd152012152037%_)
                                              (_%g152004152021%_
                                               _%g152005152024%_))))
                                      (_%g152004152021%_ _%g152005152024%_))))
                              (_%g152004152021%_ _%g152005152024%_))))
                      (_%g152004152021%_ _%g152005152024%_)))))
          (_%g152003152068%_ _%stx152002%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self151949%_ _%stx151950%_)
        (let* ((_%g151952151965%_
                (lambda (_%g151953151962%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151953151962%_))))
               (_%g151951151998%_
                (lambda (_%g151953151968%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151953151968%_))
                      (let ((_%e151955151970%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151953151968%_))))
                        (let ((_%hd151956151973%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151955151970%_)))
                              (_%tl151957151975%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151955151970%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151957151975%_))
                              (let ((_%e151958151978%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151957151975%_))))
                                (let ((_%hd151959151981%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151958151978%_)))
                                      (_%tl151960151983%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151958151978%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl151960151983%_))
                                      ((lambda (_%L151986%_)
                                         (if (let ((__tmp152256
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self151949%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L151986%_
                                                __tmp152256))
                                             (let ((__tmp152257
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self151949%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp152257
                                                _%stx151950%_))
                                             _%stx151950%_))
                                       _%hd151959151981%_)
                                      (_%g151952151965%_ _%g151953151968%_))))
                              (_%g151952151965%_ _%g151953151968%_))))
                      (_%g151952151965%_ _%g151953151968%_)))))
          (_%g151951151998%_ _%stx151950%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self151889%_ _%stx151890%_)
        (let* ((_%g151892151905%_
                (lambda (_%g151893151902%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151893151902%_))))
               (_%g151891151946%_
                (lambda (_%g151893151908%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151893151908%_))
                      (let ((_%e151895151910%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151893151908%_))))
                        (let ((_%hd151896151913%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151895151910%_)))
                              (_%tl151897151915%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151895151910%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151897151915%_))
                              (let ((_%e151898151918%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151897151915%_))))
                                (let ((_%hd151899151921%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151898151918%_)))
                                      (_%tl151900151923%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151898151918%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl151900151923%_))
                                      ((lambda (_%L151926%_)
                                         (let ((_%$e151940%_
                                                (let ((__tmp152259
                                                       (lambda (_%sub151938%_)
                                                         (let ((__tmp152260
                                                                (car _%sub151938%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%L151926%_
                                                            __tmp152260))))
                                                      (__tmp152258
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self151889%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp152259
                                                          __tmp152258))))
                                           (if _%$e151940%_
                                               ((lambda (_%sub151943%_)
                                                  (let ((__tmp152261
                                                         (cons '%#ref
                                                               (cons (cdr _%sub151943%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp152261
                                                     _%stx151890%_)))
                                                _%$e151940%_)
                                               _%stx151890%_)))
                                       _%hd151899151921%_)
                                      (_%g151892151905%_ _%g151893151908%_))))
                              (_%g151892151905%_ _%g151893151908%_))))
                      (_%g151892151905%_ _%g151893151908%_)))))
          (_%g151891151946%_ _%stx151890%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self151818%_ _%stx151819%_)
        (let* ((_%g151821151838%_
                (lambda (_%g151822151835%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151822151835%_))))
               (_%g151820151886%_
                (lambda (_%g151822151841%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151822151841%_))
                      (let ((_%e151825151843%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151822151841%_))))
                        (let ((_%hd151826151846%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151825151843%_)))
                              (_%tl151827151848%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151825151843%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151827151848%_))
                              (let ((_%e151828151851%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151827151848%_))))
                                (let ((_%hd151829151854%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151828151851%_)))
                                      (_%tl151830151856%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151828151851%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151830151856%_))
                                      (let ((_%e151831151859%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151830151856%_))))
                                        (let ((_%hd151832151862%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151831151859%_)))
                                              (_%tl151833151864%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151831151859%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151833151864%_))
                                              ((lambda (_%L151867%_
                                                        _%L151868%_)
                                                 (let ((_%new-expr151883%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self151818%_
                                                           _%L151867%_)))
                                                       (_%new-xid151884%_
                                                        (if (let ((__tmp152262
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self151818%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%L151868%_ __tmp152262))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self151818%_ 'new-id))
                    _%L151868%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp152263
                                                          (cons '%#set!
                                                                (cons _%new-xid151884%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr151883%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp152263
                                                      _%stx151819%_))))
                                               _%hd151832151862%_
                                               _%hd151829151854%_)
                                              (_%g151821151838%_
                                               _%g151822151841%_))))
                                      (_%g151821151838%_ _%g151822151841%_))))
                              (_%g151821151838%_ _%g151822151841%_))))
                      (_%g151821151838%_ _%g151822151841%_)))))
          (_%g151820151886%_ _%stx151819%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self151741%_ _%stx151742%_)
        (let* ((_%g151744151761%_
                (lambda (_%g151745151758%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151745151758%_))))
               (_%g151743151815%_
                (lambda (_%g151745151764%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151745151764%_))
                      (let ((_%e151748151766%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151745151764%_))))
                        (let ((_%hd151749151769%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151748151766%_)))
                              (_%tl151750151771%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151748151766%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151750151771%_))
                              (let ((_%e151751151774%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151750151771%_))))
                                (let ((_%hd151752151777%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151751151774%_)))
                                      (_%tl151753151779%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151751151774%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151753151779%_))
                                      (let ((_%e151754151782%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151753151779%_))))
                                        (let ((_%hd151755151785%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151754151782%_)))
                                              (_%tl151756151787%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151754151782%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151756151787%_))
                                              ((lambda (_%L151790%_
                                                        _%L151791%_)
                                                 (let ((_%new-expr151812%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self151741%_
                                                           _%L151790%_)))
                                                       (_%new-xid151813%_
                                                        (let ((_%$e151808%_
                                                               (let ((__tmp152265
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub151806%_)
                                (let ((__tmp152266 (car _%sub151806%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%L151791%_
                                   __tmp152266))))
                             (__tmp152264
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self151741%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp152265 __tmp152264))))
                  (if _%$e151808%_ (cdr _%$e151808%_) _%L151791%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp152267
                                                          (cons '%#set!
                                                                (cons _%new-xid151813%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr151812%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp152267
                                                      _%stx151742%_))))
                                               _%hd151755151785%_
                                               _%hd151752151777%_)
                                              (_%g151744151761%_
                                               _%g151745151764%_))))
                                      (_%g151744151761%_ _%g151745151764%_))))
                              (_%g151744151761%_ _%g151745151764%_))))
                      (_%g151744151761%_ _%g151745151764%_)))))
          (_%g151743151815%_ _%stx151742%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self151687%_ _%stx151688%_)
        (let* ((_%g151690151703%_
                (lambda (_%g151691151700%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151691151700%_))))
               (_%g151689151738%_
                (lambda (_%g151691151706%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151691151706%_))
                      (let ((_%e151693151708%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151691151706%_))))
                        (let ((_%hd151694151711%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151693151708%_)))
                              (_%tl151695151713%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151693151708%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151695151713%_))
                              (let ((_%e151696151716%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151695151713%_))))
                                (let ((_%hd151697151719%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151696151716%_)))
                                      (_%tl151698151721%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151696151716%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl151698151721%_))
                                      ((lambda (_%L151724%_)
                                         (let* ((_%eid151736%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%L151724%_)))
                                                (__tmp152268
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self151687%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp152268
                                            _%eid151736%_
                                            1+
                                            '0)))
                                       _%hd151697151719%_)
                                      (_%g151690151703%_ _%g151691151706%_))))
                              (_%g151690151703%_ _%g151691151706%_))))
                      (_%g151690151703%_ _%g151691151706%_)))))
          (_%g151689151738%_ _%stx151688%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self151617%_ _%stx151618%_)
        (let* ((_%g151620151637%_
                (lambda (_%g151621151634%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151621151634%_))))
               (_%g151619151684%_
                (lambda (_%g151621151640%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151621151640%_))
                      (let ((_%e151624151642%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151621151640%_))))
                        (let ((_%hd151625151645%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151624151642%_)))
                              (_%tl151626151647%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151624151642%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151626151647%_))
                              (let ((_%e151627151650%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151626151647%_))))
                                (let ((_%hd151628151653%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151627151650%_)))
                                      (_%tl151629151655%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151627151650%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151629151655%_))
                                      (let ((_%e151630151658%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151629151655%_))))
                                        (let ((_%hd151631151661%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151630151658%_)))
                                              (_%tl151632151663%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151630151658%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151632151663%_))
                                              ((lambda (_%L151666%_
                                                        _%L151667%_)
                                                 (let ((_%eid151682%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%L151667%_))))
                                                   (let ((__tmp152269
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self151617%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp152269
                                                      _%eid151682%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self151617%_
                                                      _%L151666%_))))
                                               _%hd151631151661%_
                                               _%hd151628151653%_)
                                              (_%g151620151637%_
                                               _%g151621151640%_))))
                                      (_%g151620151637%_ _%g151621151640%_))))
                              (_%g151620151637%_ _%g151621151640%_))))
                      (_%g151620151637%_ _%g151621151640%_)))))
          (_%g151619151684%_ _%stx151618%_))))
    (define gxc#find-body%
      (lambda (_%self151530%_ _%stx151531%_)
        (let* ((_%g151533151552%_
                (lambda (_%g151534151549%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151534151549%_))))
               (_%g151532151614%_
                (lambda (_%g151534151555%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151534151555%_))
                      (let ((_%e151536151557%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151534151555%_))))
                        (let ((_%hd151537151560%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151536151557%_)))
                              (_%tl151538151562%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151536151557%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl151538151562%_))
                              (let ((_g152270_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl151538151562%_
                                        '0))))
                                (begin
                                  (let ((_g152271_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g152270_)
                                               (##vector-length _g152270_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g152271_ 2)))
                                        (error "Context expects 2 values"
                                               _g152271_)))
                                  (let ((_%target151539151565%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g152270_ 0)))
                                        (_%tl151541151567%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g152270_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl151541151567%_))
                                        (letrec ((_%loop151542151570%_
                                                  (lambda (_%hd151540151573%_
                                                           _%expr151546151575%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd151540151573%_))
                                                        (let ((_%e151543151578%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd151540151573%_))))
                  (let ((_%lp-hd151544151581%_
                         (let ()
                           (declare (not safe))
                           (##car _%e151543151578%_)))
                        (_%lp-tl151545151583%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e151543151578%_))))
                    (_%loop151542151570%_
                     _%lp-tl151545151583%_
                     (cons _%lp-hd151544151581%_ _%expr151546151575%_))))
                (let ((_%expr151547151586%_ (reverse _%expr151546151575%_)))
                  ((lambda (_%L151589%_)
                     (let ((__tmp152274
                            (lambda (_%g151602151604%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self151530%_
                                 _%g151602151604%_))))
                           (__tmp152272
                            (let ((__tmp152273
                                   (lambda (_%g151606151609%_
                                            _%g151607151611%_)
                                     (cons _%g151606151609%_
                                           _%g151607151611%_))))
                              (declare (not safe))
                              (__foldr1 __tmp152273 '() _%L151589%_))))
                       (declare (not safe))
                       (__ormap1 __tmp152274 __tmp152272)))
                   _%expr151547151586%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop151542151570%_
                                           _%target151539151565%_
                                           '()))
                                        (_%g151533151552%_
                                         _%g151534151555%_)))))
                              (_%g151533151552%_ _%g151534151555%_))))
                      (_%g151533151552%_ _%g151534151555%_)))))
          (_%g151532151614%_ _%stx151531%_))))
    (define gxc#find-let-values%
      (lambda (_%self151380%_ _%stx151381%_)
        (let* ((_%g151383151418%_
                (lambda (_%g151384151415%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151384151415%_))))
               (_%g151382151527%_
                (lambda (_%g151384151421%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151384151421%_))
                      (let ((_%e151388151423%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151384151421%_))))
                        (let ((_%hd151389151426%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151388151423%_)))
                              (_%tl151390151428%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151388151423%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151390151428%_))
                              (let ((_%e151391151431%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151390151428%_))))
                                (let ((_%hd151392151434%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151391151431%_)))
                                      (_%tl151393151436%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151391151431%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd151392151434%_))
                                      (let ((_g152275_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd151392151434%_
                                                '0))))
                                        (begin
                                          (let ((_g152276_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g152275_)
                                                       (##vector-length
                                                        _g152275_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g152276_ 2)))
                                                (error "Context expects 2 values"
                                                       _g152276_)))
                                          (let ((_%target151394151439%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g152275_ 0)))
                                                (_%tl151396151441%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g152275_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl151396151441%_))
                                                (letrec ((_%loop151397151444%_
                                                          (lambda (_%hd151395151447%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr151401151449%_
                           _%bind151402151451%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd151395151447%_))
                        (let ((_%e151398151454%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd151395151447%_))))
                          (let ((_%lp-hd151399151457%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e151398151454%_)))
                                (_%lp-tl151400151459%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e151398151454%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd151399151457%_))
                                (let ((_%e151408151462%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd151399151457%_))))
                                  (let ((_%hd151409151465%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e151408151462%_)))
                                        (_%tl151410151467%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e151408151462%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl151410151467%_))
                                        (let ((_%e151411151470%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl151410151467%_))))
                                          (let ((_%hd151412151473%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e151411151470%_)))
                                                (_%tl151413151475%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e151411151470%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl151413151475%_))
                                                (_%loop151397151444%_
                                                 _%lp-tl151400151459%_
                                                 (cons _%hd151412151473%_
                                                       _%expr151401151449%_)
                                                 (cons _%hd151409151465%_
                                                       _%bind151402151451%_))
                                                (_%g151383151418%_
                                                 _%g151384151421%_))))
                                        (_%g151383151418%_
                                         _%g151384151421%_))))
                                (_%g151383151418%_ _%g151384151421%_))))
                        (let ((_%expr151403151478%_
                               (reverse _%expr151401151449%_))
                              (_%bind151404151480%_
                               (reverse _%bind151402151451%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151393151436%_))
                              (let ((_%e151405151483%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151393151436%_))))
                                (let ((_%hd151406151486%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151405151483%_)))
                                      (_%tl151407151488%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151405151483%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl151407151488%_))
                                      ((lambda (_%L151491%_
                                                _%L151492%_
                                                _%L151493%_)
                                         (let ((_%$e151524%_
                                                (let ((__tmp152279
                                                       (lambda (_%g151512151514%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self151380%_
                                                            _%g151512151514%_))))
                                                      (__tmp152277
                                                       (let ((__tmp152278
                                                              (lambda (_%g151516151519%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g151517151521%_)
                        (cons _%g151516151519%_ _%g151517151521%_))))
                 (declare (not safe))
                 (__foldr1 __tmp152278 '() _%L151492%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp152279
                                                   __tmp152277))))
                                           (if _%$e151524%_
                                               _%$e151524%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self151380%_
                                                  _%L151491%_)))))
                                       _%hd151406151486%_
                                       _%expr151403151478%_
                                       _%bind151404151480%_)
                                      (_%g151383151418%_ _%g151384151421%_))))
                              (_%g151383151418%_ _%g151384151421%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop151397151444%_
                                                   _%target151394151439%_
                                                   '()
                                                   '()))
                                                (_%g151383151418%_
                                                 _%g151384151421%_)))))
                                      (_%g151383151418%_ _%g151384151421%_))))
                              (_%g151383151418%_ _%g151384151421%_))))
                      (_%g151383151418%_ _%g151384151421%_)))))
          (_%g151382151527%_ _%stx151381%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self151324%_ _%stx151325%_)
        (let* ((_%g151327151340%_
                (lambda (_%g151328151337%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151328151337%_))))
               (_%g151326151377%_
                (lambda (_%g151328151343%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151328151343%_))
                      (let ((_%e151330151345%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151328151343%_))))
                        (let ((_%hd151331151348%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151330151345%_)))
                              (_%tl151332151350%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151330151345%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151332151350%_))
                              (let ((_%e151333151353%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151332151350%_))))
                                (let ((_%hd151334151356%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151333151353%_)))
                                      (_%tl151335151358%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151333151353%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl151335151358%_))
                                      ((lambda (_%L151361%_)
                                         (let ((__tmp152281
                                                (lambda (_%g151372151374%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L151361%_
                                                     _%g151372151374%_))))
                                               (__tmp152280
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self151324%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp152281 __tmp152280)))
                                       _%hd151334151356%_)
                                      (_%g151327151340%_ _%g151328151343%_))))
                              (_%g151327151340%_ _%g151328151343%_))))
                      (_%g151327151340%_ _%g151328151343%_)))))
          (_%g151326151377%_ _%stx151325%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self151249%_ _%stx151250%_)
        (let* ((_%g151252151269%_
                (lambda (_%g151253151266%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151253151266%_))))
               (_%g151251151321%_
                (lambda (_%g151253151272%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151253151272%_))
                      (let ((_%e151256151274%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151253151272%_))))
                        (let ((_%hd151257151277%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151256151274%_)))
                              (_%tl151258151279%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151256151274%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151258151279%_))
                              (let ((_%e151259151282%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151258151279%_))))
                                (let ((_%hd151260151285%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151259151282%_)))
                                      (_%tl151261151287%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151259151282%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151261151287%_))
                                      (let ((_%e151262151290%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151261151287%_))))
                                        (let ((_%hd151263151293%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151262151290%_)))
                                              (_%tl151264151295%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151262151290%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151264151295%_))
                                              ((lambda (_%L151298%_
                                                        _%L151299%_)
                                                 (let ((_%$e151318%_
                                                        (let ((__tmp152283
                                                               (lambda (_%g151313151315%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%L151299%_
                            _%g151313151315%_))))
                      (__tmp152282
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self151249%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp152283 __tmp152282))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e151318%_
                                                       _%$e151318%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self151249%_
                                                          _%L151298%_)))))
                                               _%hd151263151293%_
                                               _%hd151260151285%_)
                                              (_%g151252151269%_
                                               _%g151253151272%_))))
                                      (_%g151252151269%_ _%g151253151272%_))))
                              (_%g151252151269%_ _%g151253151272%_))))
                      (_%g151252151269%_ _%g151253151272%_)))))
          (_%g151251151321%_ _%stx151250%_))))))
