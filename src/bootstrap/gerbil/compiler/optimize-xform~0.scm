(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-xform::timestamp 1769384631)
  (begin
    (define gxc#::collect-mutators::t
      (let ((__tmp166219 (list gxc#::void::t))
            (__tmp166218 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-mutators::t
         '::collect-mutators
         __tmp166219
         '()
         __tmp166218
         '#f)))
    (define gxc#::collect-mutators?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-mutators::t)))
    (define gxc#make-::collect-mutators
      (lambda _%$args166205%_
        (apply make-instance gxc#::collect-mutators::t _%$args166205%_)))
    (define gxc#::collect-mutators-bind-methods!
      (let ((__tmp166220
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
        (__make-atomic-promise __tmp166220)))
    (define gxc#apply-collect-mutators
      (lambda (_%stx166197%_)
        (force gxc#::collect-mutators-bind-methods!)
        (let* ((_%self166200%_
                (let ((__obj166208
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-mutators::t))))
                  __obj166208))
               (__tmp166221
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self166200%_ _%stx166197%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp166221
           gxc#current-compile-method
           _%self166200%_))))
    (define gxc#::expression-subst::t
      (let ((__tmp166223 (list gxc#::basic-xform-expression::t))
            (__tmp166222 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst::t
         '::expression-subst
         __tmp166223
         '(id new-id)
         __tmp166222
         '#f)))
    (define gxc#::expression-subst?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst::t)))
    (define gxc#make-::expression-subst
      (lambda _%$args166194%_
        (apply make-instance gxc#::expression-subst::t _%$args166194%_)))
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
      (let ((__tmp166224
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
        (__make-atomic-promise __tmp166224)))
    (define gxc#apply-expression-subst__%
      (lambda (_%@@keywords166166%_
               _%id166162166167%_
               _%new-id166163166168%_
               _%stx166169%_)
        (let* ((_%id166172%_
                (if (eq? _%id166162166167%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'id:))
                    _%id166162166167%_))
               (_%new-id166174%_
                (if (eq? _%new-id166163166168%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'new-id:))
                    _%new-id166163166168%_)))
          (force gxc#::expression-subst-bind-methods!)
          (let* ((_%self166176%_
                  (let ((__obj166210
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst::t '#f '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj166210
                       _%id166172%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj166210
                       _%new-id166174%_
                       '2
                       '#f
                       '#f))
                    __obj166210))
                 (__tmp166225
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self166176%_ _%stx166169%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp166225
             gxc#current-compile-method
             _%self166176%_)))))
    (define gxc#apply-expression-subst__@
      (lambda (_%@@keywords166183%_ . _%args166184%_)
        (apply gxc#apply-expression-subst__%
               _%@@keywords166183%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords166183%_ 'id: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords166183%_
                  'new-id:
                  absent-value))
               _%args166184%_)))
    (define gxc#apply-expression-subst
      (lambda _%args166164166190%_
        (apply keyword-dispatch
               '#(id: new-id:)
               gxc#apply-expression-subst__@
               _%args166164166190%_)))
    (define gxc#::expression-subst*::t
      (let ((__tmp166227 (list gxc#::basic-xform-expression::t))
            (__tmp166226 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::expression-subst*::t
         '::expression-subst*
         __tmp166227
         '(subst)
         __tmp166226
         '#f)))
    (define gxc#::expression-subst*?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::expression-subst*::t)))
    (define gxc#make-::expression-subst*
      (lambda _%$args166158%_
        (apply make-instance gxc#::expression-subst*::t _%$args166158%_)))
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
      (let ((__tmp166228
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
        (__make-atomic-promise __tmp166228)))
    (define gxc#apply-expression-subst*__%
      (lambda (_%@@keywords166133%_ _%subst166130166134%_ _%stx166135%_)
        (let ((_%subst166138%_
               (if (eq? _%subst166130166134%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'subst:))
                   _%subst166130166134%_)))
          (force gxc#::expression-subst*-bind-methods!)
          (let* ((_%self166140%_
                  (let ((__obj166212
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::expression-subst*::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj166212
                       _%subst166138%_
                       '1
                       '#f
                       '#f))
                    __obj166212))
                 (__tmp166229
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self166140%_ _%stx166135%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp166229
             gxc#current-compile-method
             _%self166140%_)))))
    (define gxc#apply-expression-subst*__@
      (lambda (_%@@keywords166147%_ . _%args166148%_)
        (apply gxc#apply-expression-subst*__%
               _%@@keywords166147%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords166147%_
                  'subst:
                  absent-value))
               _%args166148%_)))
    (define gxc#apply-expression-subst*
      (lambda _%args166131166154%_
        (apply keyword-dispatch
               '#(subst:)
               gxc#apply-expression-subst*__@
               _%args166131166154%_)))
    (define gxc#::find-expression::t
      (let ((__tmp166230 (list gxc#::false-expression::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-expression::t
         '::find-expression
         __tmp166230
         '()
         '()
         '#f)))
    (define gxc#::find-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-expression::t)))
    (define gxc#make-::find-expression
      (lambda _%$args166126%_
        (apply make-instance gxc#::find-expression::t _%$args166126%_)))
    (define gxc#::find-expression-bind-methods!
      (let ((__tmp166231
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
        (__make-atomic-promise __tmp166231)))
    (define gxc#::find-var-refs::t
      (let ((__tmp166233 (list gxc#::find-expression::t))
            (__tmp166232 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-var-refs::t
         '::find-var-refs
         __tmp166233
         '(ids)
         __tmp166232
         '#f)))
    (define gxc#::find-var-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-var-refs::t)))
    (define gxc#make-::find-var-refs
      (lambda _%$args166122%_
        (apply make-instance gxc#::find-var-refs::t _%$args166122%_)))
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
      (let ((__tmp166234
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
        (__make-atomic-promise __tmp166234)))
    (define gxc#apply-find-var-refs__%
      (lambda (_%@@keywords166097%_ _%ids166094166098%_ _%stx166099%_)
        (let ((_%ids166102%_
               (if (eq? _%ids166094166098%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'ids:))
                   _%ids166094166098%_)))
          (force gxc#::find-var-refs-bind-methods!)
          (let* ((_%self166104%_
                  (let ((__obj166215
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::find-var-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj166215
                       _%ids166102%_
                       '1
                       '#f
                       '#f))
                    __obj166215))
                 (__tmp166235
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self166104%_ _%stx166099%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp166235
             gxc#current-compile-method
             _%self166104%_)))))
    (define gxc#apply-find-var-refs__@
      (lambda (_%@@keywords166111%_ . _%args166112%_)
        (apply gxc#apply-find-var-refs__%
               _%@@keywords166111%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords166111%_ 'ids: absent-value))
               _%args166112%_)))
    (define gxc#apply-find-var-refs
      (lambda _%args166095166118%_
        (apply keyword-dispatch
               '#(ids:)
               gxc#apply-find-var-refs__@
               _%args166095166118%_)))
    (define gxc#::collect-runtime-refs::t
      (let ((__tmp166237 (list gxc#::collect-expression-refs::t))
            (__tmp166236 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-runtime-refs::t
         '::collect-runtime-refs
         __tmp166237
         '()
         __tmp166236
         '#f)))
    (define gxc#::collect-runtime-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-runtime-refs::t)))
    (define gxc#make-::collect-runtime-refs
      (lambda _%$args166090%_
        (apply make-instance gxc#::collect-runtime-refs::t _%$args166090%_)))
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
      (let ((__tmp166238
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
        (__make-atomic-promise __tmp166238)))
    (define gxc#apply-collect-runtime-refs__%
      (lambda (_%@@keywords166065%_ _%table166062166066%_ _%stx166067%_)
        (let ((_%table166070%_
               (if (eq? _%table166062166066%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table166062166066%_)))
          (force gxc#::collect-runtime-refs-bind-methods!)
          (let* ((_%self166072%_
                  (let ((__obj166217
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::collect-runtime-refs::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj166217
                       _%table166070%_
                       '1
                       '#f
                       '#f))
                    __obj166217))
                 (__tmp166239
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self166072%_ _%stx166067%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp166239
             gxc#current-compile-method
             _%self166072%_)))))
    (define gxc#apply-collect-runtime-refs__@
      (lambda (_%@@keywords166079%_ . _%args166080%_)
        (apply gxc#apply-collect-runtime-refs__%
               _%@@keywords166079%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords166079%_
                  'table:
                  absent-value))
               _%args166080%_)))
    (define gxc#apply-collect-runtime-refs
      (lambda _%args166063166086%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-runtime-refs__@
               _%args166063166086%_)))
    (define gxc#collect-mutators-setq%
      (lambda (_%self165991%_ _%stx165992%_)
        (let* ((_%g165994166011%_
                (lambda (_%g165995166008%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165995166008%_))))
               (_%g165993166058%_
                (lambda (_%g165995166014%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165995166014%_))
                      (let ((_%e165998166016%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165995166014%_))))
                        (let ((_%hd165999166019%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165998166016%_)))
                              (_%tl166000166021%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165998166016%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl166000166021%_))
                              (let ((_%e166001166024%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl166000166021%_))))
                                (let ((_%hd166002166027%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e166001166024%_)))
                                      (_%tl166003166029%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e166001166024%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl166003166029%_))
                                      (let ((_%e166004166032%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl166003166029%_))))
                                        (let ((_%hd166005166035%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e166004166032%_)))
                                              (_%tl166006166037%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e166004166032%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl166006166037%_))
                                              ((lambda (_%g165996166040%_
                                                        _%g165997166041%_)
                                                 (let ((_%sym166056%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g165997166041%_))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#verbose
                                                      '"collect mutator "
                                                      _%sym166056%_))
                                                   (let ((__tmp166240
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#current-compile-mutators))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp166240
                                                      _%sym166056%_
                                                      '#t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self165991%_
                                                      _%g165996166040%_))))
                                               _%hd166005166035%_
                                               _%hd166002166027%_)
                                              (_%g165994166011%_
                                               _%g165995166014%_))))
                                      (_%g165994166011%_ _%g165995166014%_))))
                              (_%g165994166011%_ _%g165995166014%_))))
                      (_%g165994166011%_ _%g165995166014%_)))))
          (_%g165993166058%_ _%stx165992%_))))
    (define gxc#expression-subst-ref%
      (lambda (_%self165939%_ _%stx165940%_)
        (let* ((_%g165942165955%_
                (lambda (_%g165943165952%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165943165952%_))))
               (_%g165941165988%_
                (lambda (_%g165943165958%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165943165958%_))
                      (let ((_%e165945165960%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165943165958%_))))
                        (let ((_%hd165946165963%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165945165960%_)))
                              (_%tl165947165965%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165945165960%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165947165965%_))
                              (let ((_%e165948165968%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165947165965%_))))
                                (let ((_%hd165949165971%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165948165968%_)))
                                      (_%tl165950165973%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165948165968%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl165950165973%_))
                                      ((lambda (_%g165944165976%_)
                                         (if (let ((__tmp166241
                                                    (let ()
                                                      (declare (not safe))
                                                      (slot-ref__0
                                                       _%self165939%_
                                                       'id))))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g165944165976%_
                                                __tmp166241))
                                             (let ((__tmp166242
                                                    (cons '%#ref
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _%self165939%_ 'new-id))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp166242
                                                _%stx165940%_))
                                             _%stx165940%_))
                                       _%hd165949165971%_)
                                      (_%g165942165955%_ _%g165943165958%_))))
                              (_%g165942165955%_ _%g165943165958%_))))
                      (_%g165942165955%_ _%g165943165958%_)))))
          (_%g165941165988%_ _%stx165940%_))))
    (define gxc#expression-subst*-ref%
      (lambda (_%self165879%_ _%stx165880%_)
        (let* ((_%g165882165895%_
                (lambda (_%g165883165892%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165883165892%_))))
               (_%g165881165936%_
                (lambda (_%g165883165898%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165883165898%_))
                      (let ((_%e165885165900%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165883165898%_))))
                        (let ((_%hd165886165903%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165885165900%_)))
                              (_%tl165887165905%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165885165900%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165887165905%_))
                              (let ((_%e165888165908%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165887165905%_))))
                                (let ((_%hd165889165911%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165888165908%_)))
                                      (_%tl165890165913%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165888165908%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl165890165913%_))
                                      ((lambda (_%g165884165916%_)
                                         (let ((_%$e165930%_
                                                (let ((__tmp166244
                                                       (lambda (_%sub165928%_)
                                                         (let ((__tmp166245
                                                                (car _%sub165928%_)))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            _%g165884165916%_
                                                            __tmp166245))))
                                                      (__tmp166243
                                                       (let ()
                                                         (declare (not safe))
                                                         (slot-ref__0
                                                          _%self165879%_
                                                          'subst))))
                                                  (declare (not safe))
                                                  (__find __tmp166244
                                                          __tmp166243))))
                                           (if _%$e165930%_
                                               ((lambda (_%sub165933%_)
                                                  (let ((__tmp166246
                                                         (cons '%#ref
                                                               (cons (cdr _%sub165933%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gxc#xform-wrap-source
                                                     __tmp166246
                                                     _%stx165880%_)))
                                                _%$e165930%_)
                                               _%stx165880%_)))
                                       _%hd165889165911%_)
                                      (_%g165882165895%_ _%g165883165898%_))))
                              (_%g165882165895%_ _%g165883165898%_))))
                      (_%g165882165895%_ _%g165883165898%_)))))
          (_%g165881165936%_ _%stx165880%_))))
    (define gxc#expression-subst-setq%
      (lambda (_%self165808%_ _%stx165809%_)
        (let* ((_%g165811165828%_
                (lambda (_%g165812165825%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165812165825%_))))
               (_%g165810165876%_
                (lambda (_%g165812165831%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165812165831%_))
                      (let ((_%e165815165833%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165812165831%_))))
                        (let ((_%hd165816165836%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165815165833%_)))
                              (_%tl165817165838%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165815165833%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165817165838%_))
                              (let ((_%e165818165841%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165817165838%_))))
                                (let ((_%hd165819165844%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165818165841%_)))
                                      (_%tl165820165846%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165818165841%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165820165846%_))
                                      (let ((_%e165821165849%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165820165846%_))))
                                        (let ((_%hd165822165852%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165821165849%_)))
                                              (_%tl165823165854%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165821165849%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl165823165854%_))
                                              ((lambda (_%g165813165857%_
                                                        _%g165814165858%_)
                                                 (let ((_%new-expr165873%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self165808%_
                                                           _%g165813165857%_)))
                                                       (_%new-xid165874%_
                                                        (if (let ((__tmp166247
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (slot-ref__0 _%self165808%_ 'id))))
                      (declare (not safe))
                      (gx#free-identifier=? _%g165814165858%_ __tmp166247))
                    (let ()
                      (declare (not safe))
                      (slot-ref__0 _%self165808%_ 'new-id))
                    _%g165814165858%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp166248
                                                          (cons '%#set!
                                                                (cons _%new-xid165874%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr165873%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp166248
                                                      _%stx165809%_))))
                                               _%hd165822165852%_
                                               _%hd165819165844%_)
                                              (_%g165811165828%_
                                               _%g165812165831%_))))
                                      (_%g165811165828%_ _%g165812165831%_))))
                              (_%g165811165828%_ _%g165812165831%_))))
                      (_%g165811165828%_ _%g165812165831%_)))))
          (_%g165810165876%_ _%stx165809%_))))
    (define gxc#expression-subst*-setq%
      (lambda (_%self165731%_ _%stx165732%_)
        (let* ((_%g165734165751%_
                (lambda (_%g165735165748%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165735165748%_))))
               (_%g165733165805%_
                (lambda (_%g165735165754%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165735165754%_))
                      (let ((_%e165738165756%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165735165754%_))))
                        (let ((_%hd165739165759%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165738165756%_)))
                              (_%tl165740165761%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165738165756%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165740165761%_))
                              (let ((_%e165741165764%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165740165761%_))))
                                (let ((_%hd165742165767%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165741165764%_)))
                                      (_%tl165743165769%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165741165764%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165743165769%_))
                                      (let ((_%e165744165772%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165743165769%_))))
                                        (let ((_%hd165745165775%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165744165772%_)))
                                              (_%tl165746165777%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165744165772%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl165746165777%_))
                                              ((lambda (_%g165736165780%_
                                                        _%g165737165781%_)
                                                 (let ((_%new-expr165802%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self165731%_
                                                           _%g165736165780%_)))
                                                       (_%new-xid165803%_
                                                        (let ((_%$e165798%_
                                                               (let ((__tmp166250
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%sub165796%_)
                                (let ((__tmp166251 (car _%sub165796%_)))
                                  (declare (not safe))
                                  (gx#free-identifier=?
                                   _%g165737165781%_
                                   __tmp166251))))
                             (__tmp166249
                              (let ()
                                (declare (not safe))
                                (slot-ref__0 _%self165731%_ 'subst))))
                         (declare (not safe))
                         (__find __tmp166250 __tmp166249))))
                  (if _%$e165798%_ (cdr _%$e165798%_) _%g165737165781%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp166252
                                                          (cons '%#set!
                                                                (cons _%new-xid165803%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%new-expr165802%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp166252
                                                      _%stx165732%_))))
                                               _%hd165745165775%_
                                               _%hd165742165767%_)
                                              (_%g165734165751%_
                                               _%g165735165754%_))))
                                      (_%g165734165751%_ _%g165735165754%_))))
                              (_%g165734165751%_ _%g165735165754%_))))
                      (_%g165734165751%_ _%g165735165754%_)))))
          (_%g165733165805%_ _%stx165732%_))))
    (define gxc#collect-runtime-refs-ref%
      (lambda (_%self165677%_ _%stx165678%_)
        (let* ((_%g165680165693%_
                (lambda (_%g165681165690%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165681165690%_))))
               (_%g165679165728%_
                (lambda (_%g165681165696%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165681165696%_))
                      (let ((_%e165683165698%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165681165696%_))))
                        (let ((_%hd165684165701%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165683165698%_)))
                              (_%tl165685165703%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165683165698%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165685165703%_))
                              (let ((_%e165686165706%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165685165703%_))))
                                (let ((_%hd165687165709%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165686165706%_)))
                                      (_%tl165688165711%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165686165706%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl165688165711%_))
                                      ((lambda (_%g165682165714%_)
                                         (let* ((_%eid165726%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%g165682165714%_)))
                                                (__tmp166253
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self165677%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-update!__%
                                            __tmp166253
                                            _%eid165726%_
                                            1+
                                            '0)))
                                       _%hd165687165709%_)
                                      (_%g165680165693%_ _%g165681165696%_))))
                              (_%g165680165693%_ _%g165681165696%_))))
                      (_%g165680165693%_ _%g165681165696%_)))))
          (_%g165679165728%_ _%stx165678%_))))
    (define gxc#collect-runtime-refs-setq%
      (lambda (_%self165607%_ _%stx165608%_)
        (let* ((_%g165610165627%_
                (lambda (_%g165611165624%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165611165624%_))))
               (_%g165609165674%_
                (lambda (_%g165611165630%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165611165630%_))
                      (let ((_%e165614165632%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165611165630%_))))
                        (let ((_%hd165615165635%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165614165632%_)))
                              (_%tl165616165637%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165614165632%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165616165637%_))
                              (let ((_%e165617165640%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165616165637%_))))
                                (let ((_%hd165618165643%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165617165640%_)))
                                      (_%tl165619165645%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165617165640%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165619165645%_))
                                      (let ((_%e165620165648%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165619165645%_))))
                                        (let ((_%hd165621165651%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165620165648%_)))
                                              (_%tl165622165653%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165620165648%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl165622165653%_))
                                              ((lambda (_%g165612165656%_
                                                        _%g165613165657%_)
                                                 (let ((_%eid165672%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#identifier-symbol
                                                           _%g165613165657%_))))
                                                   (let ((__tmp166254
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self165607%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-update!__%
                                                      __tmp166254
                                                      _%eid165672%_
                                                      1+
                                                      '0))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self165607%_
                                                      _%g165612165656%_))))
                                               _%hd165621165651%_
                                               _%hd165618165643%_)
                                              (_%g165610165627%_
                                               _%g165611165630%_))))
                                      (_%g165610165627%_ _%g165611165630%_))))
                              (_%g165610165627%_ _%g165611165630%_))))
                      (_%g165610165627%_ _%g165611165630%_)))))
          (_%g165609165674%_ _%stx165608%_))))
    (define gxc#find-body%
      (lambda (_%self165522%_ _%stx165523%_)
        (let* ((_%g165525165544%_
                (lambda (_%g165526165541%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165526165541%_))))
               (_%g165524165604%_
                (lambda (_%g165526165547%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165526165547%_))
                      (let ((_%e165528165549%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165526165547%_))))
                        (let ((_%hd165529165552%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165528165549%_)))
                              (_%tl165530165554%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165528165549%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl165530165554%_))
                              (let ((_g166255_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl165530165554%_
                                        '0))))
                                (begin
                                  (let ((_g166256_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g166255_)
                                               (##values-length _g166255_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g166256_ 2)))
                                        (error "Context expects 2 values"
                                               _g166256_)))
                                  (let ((_%target165531165557%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g166255_ 0)))
                                        (_%tl165533165559%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g166255_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl165533165559%_))
                                        (letrec ((_%loop165534165562%_
                                                  (lambda (_%hd165532165565%_
                                                           _%expr165538165567%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd165532165565%_))
                                                        (let ((_%e165535165569%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd165532165565%_))))
                  (let ((_%lp-hd165536165572%_
                         (let ()
                           (declare (not safe))
                           (##car _%e165535165569%_)))
                        (_%lp-tl165537165574%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e165535165569%_))))
                    (_%loop165534165562%_
                     _%lp-tl165537165574%_
                     (cons _%lp-hd165536165572%_ _%expr165538165567%_))))
                (let ((_%expr165539165577%_ (reverse _%expr165538165567%_)))
                  ((lambda (_%g165527165579%_)
                     (let ((__tmp166259
                            (lambda (_%g165592165594%_)
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self165522%_
                                 _%g165592165594%_))))
                           (__tmp166257
                            (let ((__tmp166258
                                   (lambda (_%g165596165599%_
                                            _%g165597165601%_)
                                     (cons _%g165596165599%_
                                           _%g165597165601%_))))
                              (declare (not safe))
                              (__foldr1 __tmp166258 '() _%g165527165579%_))))
                       (declare (not safe))
                       (__ormap1 __tmp166259 __tmp166257)))
                   _%expr165539165577%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop165534165562%_
                                           _%target165531165557%_
                                           '()))
                                        (_%g165525165544%_
                                         _%g165526165547%_)))))
                              (_%g165525165544%_ _%g165526165547%_))))
                      (_%g165525165544%_ _%g165526165547%_)))))
          (_%g165524165604%_ _%stx165523%_))))
    (define gxc#find-let-values%
      (lambda (_%self165376%_ _%stx165377%_)
        (let* ((_%g165379165414%_
                (lambda (_%g165380165411%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165380165411%_))))
               (_%g165378165519%_
                (lambda (_%g165380165417%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165380165417%_))
                      (let ((_%e165384165419%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165380165417%_))))
                        (let ((_%hd165385165422%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165384165419%_)))
                              (_%tl165386165424%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165384165419%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165386165424%_))
                              (let ((_%e165387165427%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165386165424%_))))
                                (let ((_%hd165388165430%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165387165427%_)))
                                      (_%tl165389165432%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165387165427%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd165388165430%_))
                                      (let ((_g166260_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd165388165430%_
                                                '0))))
                                        (begin
                                          (let ((_g166261_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g166260_)
                                                       (##values-length
                                                        _g166260_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g166261_ 2)))
                                                (error "Context expects 2 values"
                                                       _g166261_)))
                                          (let ((_%target165390165435%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g166260_ 0)))
                                                (_%tl165392165437%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g166260_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl165392165437%_))
                                                (letrec ((_%loop165393165440%_
                                                          (lambda (_%hd165391165443%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%expr165397165445%_
                           _%bind165398165446%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd165391165443%_))
                        (let ((_%e165394165448%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd165391165443%_))))
                          (let ((_%lp-hd165395165451%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e165394165448%_)))
                                (_%lp-tl165396165453%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e165394165448%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd165395165451%_))
                                (let ((_%e165401165456%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%lp-hd165395165451%_))))
                                  (let ((_%hd165402165459%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e165401165456%_)))
                                        (_%tl165403165461%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e165401165456%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl165403165461%_))
                                        (let ((_%e165404165464%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl165403165461%_))))
                                          (let ((_%hd165405165467%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e165404165464%_)))
                                                (_%tl165406165469%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e165404165464%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl165406165469%_))
                                                (_%loop165393165440%_
                                                 _%lp-tl165396165453%_
                                                 (cons _%hd165405165467%_
                                                       _%expr165397165445%_)
                                                 (cons _%hd165402165459%_
                                                       _%bind165398165446%_))
                                                (_%g165379165414%_
                                                 _%g165380165417%_))))
                                        (_%g165379165414%_
                                         _%g165380165417%_))))
                                (_%g165379165414%_ _%g165380165417%_))))
                        (let ((_%expr165399165472%_
                               (reverse _%expr165397165445%_))
                              (_%bind165400165473%_
                               (reverse _%bind165398165446%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165389165432%_))
                              (let ((_%e165407165475%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165389165432%_))))
                                (let ((_%hd165408165478%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165407165475%_)))
                                      (_%tl165409165480%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165407165475%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl165409165480%_))
                                      ((lambda (_%g165381165483%_
                                                _%g165382165484%_
                                                _%g165383165485%_)
                                         (let ((_%$e165516%_
                                                (let ((__tmp166264
                                                       (lambda (_%g165504165506%_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _%self165376%_
                                                            _%g165504165506%_))))
                                                      (__tmp166262
                                                       (let ((__tmp166263
                                                              (lambda (_%g165508165511%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g165509165513%_)
                        (cons _%g165508165511%_ _%g165509165513%_))))
                 (declare (not safe))
                 (__foldr1 __tmp166263 '() _%g165382165484%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__ormap1
                                                   __tmp166264
                                                   __tmp166262))))
                                           (if _%$e165516%_
                                               _%$e165516%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self165376%_
                                                  _%g165381165483%_)))))
                                       _%hd165408165478%_
                                       _%expr165399165472%_
                                       _%bind165400165473%_)
                                      (_%g165379165414%_ _%g165380165417%_))))
                              (_%g165379165414%_ _%g165380165417%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop165393165440%_
                                                   _%target165390165435%_
                                                   '()
                                                   '()))
                                                (_%g165379165414%_
                                                 _%g165380165417%_)))))
                                      (_%g165379165414%_ _%g165380165417%_))))
                              (_%g165379165414%_ _%g165380165417%_))))
                      (_%g165379165414%_ _%g165380165417%_)))))
          (_%g165378165519%_ _%stx165377%_))))
    (define gxc#find-var-refs-ref%
      (lambda (_%self165320%_ _%stx165321%_)
        (let* ((_%g165323165336%_
                (lambda (_%g165324165333%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165324165333%_))))
               (_%g165322165373%_
                (lambda (_%g165324165339%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165324165339%_))
                      (let ((_%e165326165341%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165324165339%_))))
                        (let ((_%hd165327165344%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165326165341%_)))
                              (_%tl165328165346%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165326165341%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165328165346%_))
                              (let ((_%e165329165349%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165328165346%_))))
                                (let ((_%hd165330165352%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165329165349%_)))
                                      (_%tl165331165354%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165329165349%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl165331165354%_))
                                      ((lambda (_%g165325165357%_)
                                         (let ((__tmp166266
                                                (lambda (_%g165368165370%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g165325165357%_
                                                     _%g165368165370%_))))
                                               (__tmp166265
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _%self165320%_
                                                   'ids))))
                                           (declare (not safe))
                                           (__find __tmp166266 __tmp166265)))
                                       _%hd165330165352%_)
                                      (_%g165323165336%_ _%g165324165339%_))))
                              (_%g165323165336%_ _%g165324165339%_))))
                      (_%g165323165336%_ _%g165324165339%_)))))
          (_%g165322165373%_ _%stx165321%_))))
    (define gxc#find-var-refs-setq%
      (lambda (_%self165245%_ _%stx165246%_)
        (let* ((_%g165248165265%_
                (lambda (_%g165249165262%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g165249165262%_))))
               (_%g165247165317%_
                (lambda (_%g165249165268%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g165249165268%_))
                      (let ((_%e165252165270%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g165249165268%_))))
                        (let ((_%hd165253165273%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e165252165270%_)))
                              (_%tl165254165275%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e165252165270%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl165254165275%_))
                              (let ((_%e165255165278%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl165254165275%_))))
                                (let ((_%hd165256165281%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e165255165278%_)))
                                      (_%tl165257165283%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e165255165278%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl165257165283%_))
                                      (let ((_%e165258165286%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl165257165283%_))))
                                        (let ((_%hd165259165289%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e165258165286%_)))
                                              (_%tl165260165291%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e165258165286%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl165260165291%_))
                                              ((lambda (_%g165250165294%_
                                                        _%g165251165295%_)
                                                 (let ((_%$e165314%_
                                                        (let ((__tmp166268
                                                               (lambda (_%g165309165311%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#free-identifier=?
                            _%g165251165295%_
                            _%g165309165311%_))))
                      (__tmp166267
                       (let ()
                         (declare (not safe))
                         (slot-ref__0 _%self165245%_ 'ids))))
                  (declare (not safe))
                  (__find __tmp166268 __tmp166267))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if _%$e165314%_
                                                       _%$e165314%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self165245%_
                                                          _%g165250165294%_)))))
                                               _%hd165259165289%_
                                               _%hd165256165281%_)
                                              (_%g165248165265%_
                                               _%g165249165268%_))))
                                      (_%g165248165265%_ _%g165249165268%_))))
                              (_%g165248165265%_ _%g165249165268%_))))
                      (_%g165248165265%_ _%g165249165268%_)))))
          (_%g165247165317%_ _%stx165246%_))))))
