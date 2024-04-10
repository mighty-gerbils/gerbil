(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1712784666)
  (begin
    (define gxc#gambit-annotations
      '(not gambit-scheme
            ieee-scheme
            r4rs-scheme
            r5rs-scheme
            block
            separate
            core
            inline
            inline-primitives
            inlining-limit
            constant-fold
            lambda-lift
            standard-bindings
            extended-bindings
            run-time-bindings
            safe
            interrupts-enabled
            poll-on-return
            proper-tail-calls
            generative-lambda
            optimize-dead-local-variables
            optimize-dead-definitions
            generic
            fixnum
            flonum
            mostly-fixnum
            mostly-flonum
            mostly-fixnum-flonum
            debug
            debug-location
            debug-source
            debug-environments))
    (define gxc#checked-primitives
      '(##direct-structure-ref
        ##direct-structure-set!
        ##structure-ref
        ##structure-set!))
    (define gxc#current-compile-lift (make-parameter '#f))
    (define gxc#current-compile-marks (make-parameter '#f))
    (define gxc#current-compile-identifiers (make-parameter '#f))
    (define gxc#current-compile-boolean-context (make-parameter '#f))
    (define gxc#make-bound-identifier-table
      (lambda ()
        (letrec ((_%hash-e144936%_
                  (lambda (_%id144938%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id144938%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e144936%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp146323 (list gxc#::void::t))
            (__tmp146322 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp146323
         '()
         __tmp146322
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args144932%_
        (apply make-instance gxc#::collect-bindings::t _%$args144932%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp146324
             (lambda ()
               (force gxc#::void-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-bindings::t
                  '%#begin
                  gxc#apply-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-bindings::t
                  '%#begin-syntax
                  gxc#apply-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-bindings::t
                  '%#module
                  gxc#apply-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-bindings::t
                  '%#define-values
                  gxc#collect-bindings-define-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-bindings::t
                  '%#define-syntax
                  gxc#collect-bindings-define-syntax%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::collect-bindings::t)))))
        (declare (not safe))
        (__make-promise __tmp146324)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx144924%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self144927%_
                (let ((__obj146298
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj146298))
               (__tmp146325
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144927%_ _%stx144924%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp146325
           gxc#current-compile-method
           _%self144927%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp146327 (list gxc#::void::t))
            (__tmp146326 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp146327
         '(modules)
         __tmp146326
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args144921%_
        (apply make-instance gxc#::lift-modules::t _%$args144921%_)))
    (define gxc#::lift-modules-modules
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::lift-modules::t 'modules)))
    (define gxc#::lift-modules-modules-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::lift-modules::t 'modules)))
    (define gxc#&::lift-modules-modules
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#::lift-modules::t 'modules)))
    (define gxc#&::lift-modules-modules-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#::lift-modules::t 'modules)))
    (define gxc#::lift-modules-bind-methods!
      (let ((__tmp146328
             (lambda ()
               (force gxc#::void-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::lift-modules::t
                  '%#begin
                  gxc#apply-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::lift-modules::t
                  '%#module
                  gxc#lift-modules-module%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::lift-modules::t)))))
        (declare (not safe))
        (__make-promise __tmp146328)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords144895%_ _%modules144892144896%_ _%stx144898%_)
        (let ((_%modules144901%_
               (if (eq? _%modules144892144896%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules144892144896%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self144903%_
                  (let ((__obj146300
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj146300
                       _%modules144901%_
                       '1
                       '#f
                       '#f))
                    __obj146300))
                 (__tmp146329
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self144903%_ _%stx144898%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp146329
             gxc#current-compile-method
             _%self144903%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords144910%_ . _%args144911%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords144910%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords144910%_
                  'modules:
                  absent-value))
               _%args144911%_)))
    (define gxc#apply-lift-modules
      (lambda _%args144893144917%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args144893144917%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp146331 (list)) (__tmp146330 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp146331
         '()
         __tmp146330
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args144888%_
        (apply make-instance gxc#::find-runtime-code::t _%$args144888%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp146332
             (lambda ()
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#begin
                  gxc#find-runtime-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#begin-syntax
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#begin-foreign
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#begin-annotation
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#module
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#import
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#export
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#provide
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#extern
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#define-values
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#define-syntax
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#define-alias
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#declare
                  gxc#false-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#lambda
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#case-lambda
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#let-values
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#letrec-values
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#letrec*-values
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#quote
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#call
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#call-unchecked
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#if
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#ref
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#set!
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#struct-instance?
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#struct-direct-instance?
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#struct-ref
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#struct-set!
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#struct-direct-ref
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#struct-direct-set!
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#struct-unchecked-ref
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-runtime-code::t
                  '%#struct-unchecked-set!
                  gxc#true-method))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::find-runtime-code::t)))))
        (declare (not safe))
        (__make-promise __tmp146332)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx144880%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self144883%_
                (let ((__obj146302
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj146302))
               (__tmp146333
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144883%_ _%stx144880%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp146333
           gxc#current-compile-method
           _%self144883%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp146335 (list gxc#::false::t))
            (__tmp146334 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp146335
         '()
         __tmp146334
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args144877%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args144877%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp146336
             (lambda ()
               (force gxc#::false-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-lambda-expression::t
                  '%#begin
                  gxc#apply-last-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-lambda-expression::t
                  '%#begin-annotation
                  gxc#apply-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-lambda-expression::t
                  '%#lambda
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-lambda-expression::t
                  '%#case-lambda
                  gxc#identity-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-lambda-expression::t
                  '%#let-values
                  gxc#apply-body-last-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-lambda-expression::t
                  '%#letrec-values
                  gxc#apply-body-last-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::find-lambda-expression::t
                  '%#letrec*-values
                  gxc#apply-body-last-let-values%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::find-lambda-expression::t)))))
        (declare (not safe))
        (__make-promise __tmp146336)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx144869%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self144872%_
                (let ((__obj146304
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj146304))
               (__tmp146337
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144872%_ _%stx144869%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp146337
           gxc#current-compile-method
           _%self144872%_))))
    (define gxc#::count-values::t
      (let ((__tmp146339 (list gxc#::false-expression::t))
            (__tmp146338 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp146339
         '()
         __tmp146338
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args144866%_
        (apply make-instance gxc#::count-values::t _%$args144866%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp146340
             (lambda ()
               (force gxc#::false-expression-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::count-values::t
                  '%#begin
                  gxc#apply-last-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::count-values::t
                  '%#begin-annotation
                  gxc#apply-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::count-values::t
                  '%#lambda
                  gxc#count-values-single%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::count-values::t
                  '%#case-lambda
                  gxc#count-values-single%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::count-values::t
                  '%#let-values
                  gxc#apply-body-last-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::count-values::t
                  '%#letrec-values
                  gxc#apply-body-last-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::count-values::t
                  '%#letrec*-values
                  gxc#apply-body-last-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::count-values::t
                  '%#quote
                  gxc#count-values-single%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::count-values::t
                  '%#call
                  gxc#count-values-call%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::count-values::t
                  '%#call-unchecked
                  gxc#count-values-call%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::count-values::t
                  '%#if
                  gxc#count-values-if%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::count-values::t)))))
        (declare (not safe))
        (__make-promise __tmp146340)))
    (define gxc#apply-count-values
      (lambda (_%stx144858%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self144861%_
                (let ((__obj146306
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj146306))
               (__tmp146341
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144861%_ _%stx144858%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp146341
           gxc#current-compile-method
           _%self144861%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp146342 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp146342
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args144855%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args144855%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp146343
             (lambda ()
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#begin
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#begin-syntax
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#begin-foreign
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#begin-annotation
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#module
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#import
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#export
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#provide
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#extern
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#define-values
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#define-syntax
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#define-alias
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#declare
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#lambda
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#case-lambda
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#let-values
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#letrec-values
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#letrec*-values
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#quote
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#call
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#call-unchecked
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#if
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#ref
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#set!
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#struct-instance?
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#struct-direct-instance?
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#struct-ref
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#struct-set!
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#struct-direct-ref
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#struct-direct-set!
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#struct-unchecked-ref
                  gxc#generate-runtime-empty))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-empty::t
                  '%#struct-unchecked-set!
                  gxc#generate-runtime-empty)))))
        (declare (not safe))
        (__make-promise __tmp146343)))
    (define gxc#::generate-loader::t
      (let ((__tmp146345 (list gxc#::generate-runtime-empty::t))
            (__tmp146344 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp146345
         '()
         __tmp146344
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args144851%_
        (apply make-instance gxc#::generate-loader::t _%$args144851%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp146346
             (lambda ()
               (force gxc#::generate-runtime-empty-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-loader::t
                  '%#begin
                  gxc#generate-runtime-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-loader::t
                  '%#import
                  gxc#generate-runtime-loader-import%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::generate-loader::t)))))
        (declare (not safe))
        (__make-promise __tmp146346)))
    (define gxc#apply-generate-loader
      (lambda (_%stx144843%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self144846%_
                (let ((__obj146309
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj146309))
               (__tmp146347
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144846%_ _%stx144843%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp146347
           gxc#current-compile-method
           _%self144846%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp146348 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp146348
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args144840%_
        (apply make-instance gxc#::generate-runtime::t _%$args144840%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp146349
             (lambda ()
               (force gxc#::generate-runtime-empty-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#begin
                  gxc#generate-runtime-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#begin-foreign
                  gxc#generate-runtime-begin-foreign%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#begin-annotation
                  gxc#generate-runtime-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#define-values
                  gxc#generate-runtime-define-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#declare
                  gxc#generate-runtime-declare%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#lambda
                  gxc#generate-runtime-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#case-lambda
                  gxc#generate-runtime-case-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#let-values
                  gxc#generate-runtime-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#letrec-values
                  gxc#generate-runtime-letrec-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#letrec*-values
                  gxc#generate-runtime-letrec*-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#quote
                  gxc#generate-runtime-quote%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#quote-syntax
                  gxc#generate-runtime-quote-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#call
                  gxc#generate-runtime-call%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#call-unchecked
                  gxc#generate-runtime-call-unchecked%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#if
                  gxc#generate-runtime-if%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#ref
                  gxc#generate-runtime-ref%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#set!
                  gxc#generate-runtime-setq%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#struct-instance?
                  gxc#generate-runtime-struct-instancep%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#struct-direct-instance?
                  gxc#generate-runtime-struct-direct-instancep%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#struct-ref
                  gxc#generate-runtime-struct-ref%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#struct-set!
                  gxc#generate-runtime-struct-setq%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#struct-direct-ref
                  gxc#generate-runtime-struct-direct-ref%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#struct-direct-set!
                  gxc#generate-runtime-struct-direct-setq%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#struct-unchecked-ref
                  gxc#generate-runtime-struct-unchecked-ref%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime::t
                  '%#struct-unchecked-set!
                  gxc#generate-runtime-struct-unchecked-setq%)))))
        (declare (not safe))
        (__make-promise __tmp146349)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx144832%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self144835%_
                (let ((__obj146311
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj146311))
               (__tmp146350
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144835%_ _%stx144832%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp146350
           gxc#current-compile-method
           _%self144835%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp146352 (list gxc#::generate-runtime::t))
            (__tmp146351 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp146352
         '()
         __tmp146351
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args144829%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args144829%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp146353
             (lambda ()
               (force gxc#::generate-runtime-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-runtime-phi::t
                  '%#define-runtime
                  gxc#generate-runtime-phi-define-runtime%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::generate-runtime-phi::t)))))
        (declare (not safe))
        (__make-promise __tmp146353)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx144821%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self144824%_
                (let ((__obj146313
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj146313))
               (__tmp146354
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self144824%_ _%stx144821%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp146354
           gxc#current-compile-method
           _%self144824%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp146355 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp146355
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args144818%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args144818%_)))
    (define gxc#::collect-expression-refs-table
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::collect-expression-refs::t 'table)))
    (define gxc#::collect-expression-refs-table-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::collect-expression-refs::t 'table)))
    (define gxc#&::collect-expression-refs-table
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::collect-expression-refs::t
         'table)))
    (define gxc#&::collect-expression-refs-table-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::collect-expression-refs::t
         'table)))
    (define gxc#::collect-expression-refs-bind-methods!
      (let ((__tmp146356
             (lambda ()
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#begin
                  gxc#apply-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#begin-annotation
                  gxc#apply-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#lambda
                  gxc#apply-body-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#case-lambda
                  gxc#apply-body-case-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#let-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#letrec-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#letrec*-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#quote
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#quote-syntax
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#call
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#call-unchecked
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#if
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#ref
                  gxc#collect-refs-ref%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#set!
                  gxc#collect-refs-setq%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#struct-instance?
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#struct-direct-instance?
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#struct-ref
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#struct-set!
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#struct-direct-ref
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#struct-direct-set!
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#struct-unchecked-ref
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-expression-refs::t
                  '%#struct-unchecked-set!
                  gxc#apply-operands)))))
        (declare (not safe))
        (__make-promise __tmp146356)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords144792%_ _%table144789144793%_ _%stx144795%_)
        (let ((_%table144798%_
               (if (eq? _%table144789144793%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table144789144793%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self144800%_
                  (let ((__obj146315
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj146315
                       _%table144798%_
                       '1
                       '#f
                       '#f))
                    __obj146315))
                 (__tmp146357
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self144800%_ _%stx144795%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp146357
             gxc#current-compile-method
             _%self144800%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords144807%_ . _%args144808%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords144807%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords144807%_
                  'table:
                  absent-value))
               _%args144808%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args144790144814%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args144790144814%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp146359 (list gxc#::void-expression::t))
            (__tmp146358 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp146359
         '(state)
         __tmp146358
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args144785%_
        (apply make-instance gxc#::generate-meta::t _%$args144785%_)))
    (define gxc#::generate-meta-state
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::generate-meta::t 'state)))
    (define gxc#::generate-meta-state-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::generate-meta::t 'state)))
    (define gxc#&::generate-meta-state
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#::generate-meta::t 'state)))
    (define gxc#&::generate-meta-state-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#::generate-meta::t 'state)))
    (define gxc#::generate-meta-bind-methods!
      (let ((__tmp146360
             (lambda ()
               (force gxc#::void-expression-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta::t
                  '%#begin
                  gxc#generate-meta-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta::t
                  '%#begin-syntax
                  gxc#generate-meta-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta::t
                  '%#module
                  gxc#generate-meta-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta::t
                  '%#import
                  gxc#generate-meta-import%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta::t
                  '%#export
                  gxc#generate-meta-export%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta::t
                  '%#provide
                  gxc#generate-meta-provide%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta::t
                  '%#extern
                  gxc#generate-meta-extern%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta::t
                  '%#define-values
                  gxc#generate-meta-define-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta::t
                  '%#define-syntax
                  gxc#generate-meta-define-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta::t
                  '%#define-alias
                  gxc#generate-meta-define-alias%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta::t
                  '%#begin-foreign
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta::t
                  '%#declare
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::generate-meta::t)))))
        (declare (not safe))
        (__make-promise __tmp146360)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords144759%_ _%state144756144760%_ _%stx144762%_)
        (let ((_%state144765%_
               (if (eq? _%state144756144760%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state144756144760%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self144767%_
                  (let ((__obj146317
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj146317
                       _%state144765%_
                       '1
                       '#f
                       '#f))
                    __obj146317))
                 (__tmp146361
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self144767%_ _%stx144762%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp146361
             gxc#current-compile-method
             _%self144767%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords144774%_ . _%args144775%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords144774%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords144774%_
                  'state:
                  absent-value))
               _%args144775%_)))
    (define gxc#apply-generate-meta
      (lambda _%args144757144781%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args144757144781%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp146363 (list)) (__tmp146362 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp146363
         '(state)
         __tmp146362
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args144752%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args144752%_)))
    (define gxc#::generate-meta-phi-state
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::generate-meta-phi::t 'state)))
    (define gxc#::generate-meta-phi-state-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::generate-meta-phi::t 'state)))
    (define gxc#&::generate-meta-phi-state
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::generate-meta-phi::t
         'state)))
    (define gxc#&::generate-meta-phi-state-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::generate-meta-phi::t
         'state)))
    (define gxc#::generate-meta-phi-bind-methods!
      (let ((__tmp146364
             (lambda ()
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#begin
                  gxc#generate-meta-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#begin-syntax
                  gxc#generate-meta-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#define-syntax
                  gxc#generate-meta-define-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#define-alias
                  gxc#generate-meta-define-alias%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#define-values
                  gxc#generate-meta-phi-define-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#begin-annotation
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#lambda
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#case-lambda
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#let-values
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#letrec-values
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#letrec*-values
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#quote
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#quote-syntax
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#call
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#call-unchecked
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#if
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#ref
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#set!
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#struct-instance?
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#struct-direct-instance?
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#struct-ref
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#struct-set!
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#struct-direct-ref
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#struct-direct-set!
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#struct-unchecked-ref
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#struct-unchecked-set!
                  gxc#generate-meta-phi-expr))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-meta-phi::t
                  '%#declare
                  gxc#void-method))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::generate-meta-phi::t)))))
        (declare (not safe))
        (__make-promise __tmp146364)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords144726%_ _%state144723144727%_ _%stx144729%_)
        (let ((_%state144732%_
               (if (eq? _%state144723144727%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state144723144727%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self144734%_
                  (let ((__obj146319
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj146319
                       _%state144732%_
                       '1
                       '#f
                       '#f))
                    __obj146319))
                 (__tmp146365
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self144734%_ _%stx144729%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp146365
             gxc#current-compile-method
             _%self144734%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords144741%_ . _%args144742%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords144741%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords144741%_
                  'state:
                  absent-value))
               _%args144742%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args144724144748%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args144724144748%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self144652%_ _%stx144653%_)
        (let* ((_%g144655144672%_
                (lambda (_%g144656144669%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144656144669%_))))
               (_%g144654144719%_
                (lambda (_%g144656144675%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144656144675%_))
                      (let ((_%e144659144677%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144656144675%_))))
                        (let ((_%hd144660144680%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144659144677%_)))
                              (_%tl144661144682%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144659144677%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144661144682%_))
                              (let ((_%e144662144685%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144661144682%_))))
                                (let ((_%hd144663144688%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144662144685%_)))
                                      (_%tl144664144690%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144662144685%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl144664144690%_))
                                      (let ((_%e144665144693%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl144664144690%_))))
                                        (let ((_%hd144666144696%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144665144693%_)))
                                              (_%tl144667144698%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144665144693%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl144667144698%_))
                                              ((lambda (_%L144701%_
                                                        _%L144702%_)
                                                 (let ((__tmp146366
                                                        (lambda (_%bind144717%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind144717%_))
                      (gxc#add-module-binding! _%bind144717%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp146366
                                                    _%L144702%_)))
                                               _%hd144666144696%_
                                               _%hd144663144688%_)
                                              (_%g144655144672%_
                                               _%g144656144675%_))))
                                      (_%g144655144672%_ _%g144656144675%_))))
                              (_%g144655144672%_ _%g144656144675%_))))
                      (_%g144655144672%_ _%g144656144675%_)))))
          (_%g144654144719%_ _%stx144653%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self144584%_ _%stx144585%_)
        (let* ((_%g144587144604%_
                (lambda (_%g144588144601%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144588144601%_))))
               (_%g144586144649%_
                (lambda (_%g144588144607%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144588144607%_))
                      (let ((_%e144591144609%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144588144607%_))))
                        (let ((_%hd144592144612%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144591144609%_)))
                              (_%tl144593144614%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144591144609%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144593144614%_))
                              (let ((_%e144594144617%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144593144614%_))))
                                (let ((_%hd144595144620%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144594144617%_)))
                                      (_%tl144596144622%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144594144617%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl144596144622%_))
                                      (let ((_%e144597144625%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl144596144622%_))))
                                        (let ((_%hd144598144628%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144597144625%_)))
                                              (_%tl144599144630%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144597144625%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl144599144630%_))
                                              ((lambda (_%L144633%_
                                                        _%L144634%_)
                                                 (gxc#add-module-binding!
                                                  _%L144634%_
                                                  '#t))
                                               _%hd144598144628%_
                                               _%hd144595144620%_)
                                              (_%g144587144604%_
                                               _%g144588144607%_))))
                                      (_%g144587144604%_ _%g144588144607%_))))
                              (_%g144587144604%_ _%g144588144607%_))))
                      (_%g144587144604%_ _%g144588144607%_)))))
          (_%g144586144649%_ _%stx144585%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self144526%_ _%stx144527%_)
        (let* ((_%g144529144543%_
                (lambda (_%g144530144540%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144530144540%_))))
               (_%g144528144581%_
                (lambda (_%g144530144546%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144530144546%_))
                      (let ((_%e144533144548%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144530144546%_))))
                        (let ((_%hd144534144551%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144533144548%_)))
                              (_%tl144535144553%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144533144548%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144535144553%_))
                              (let ((_%e144536144556%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144535144553%_))))
                                (let ((_%hd144537144559%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144536144556%_)))
                                      (_%tl144538144561%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144536144556%_))))
                                  ((lambda (_%L144564%_ _%L144565%_)
                                     (let ((_%ctx144578%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%L144565%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self144526%_
                                           'modules))
                                        (cons _%ctx144578%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self144526%_
                                                        'modules)))))
                                       (let ((__tmp146367
                                              (lambda ()
                                                (let ((__tmp146368
                                                       (##structure-ref
                                                        _%ctx144578%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self144526%_
                                                   __tmp146368)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp146367
                                          gx#current-expander-context
                                          _%ctx144578%_))))
                                   _%tl144538144561%_
                                   _%hd144537144559%_)))
                              (_%g144529144543%_ _%g144530144546%_))))
                      (_%g144529144543%_ _%g144530144546%_)))))
          (_%g144528144581%_ _%stx144527%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls144479144481%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls144479144481%_
              (let ((_%decls144484%_ _%decls144479144481%_))
                (let _%lp144486%_ ((_%rest144488%_ _%decls144484%_))
                  (let* ((_%rest144489144497%_ _%rest144488%_)
                         (_%else144491144505%_ (lambda () '#f))
                         (_%K144493144514%_
                          (lambda (_%decls144508%_ _%decl144509%_)
                            (if (equal? _%decl144509%_ '(not safe))
                                '#t
                                (if (equal? _%decl144509%_ '(safe))
                                    '#f
                                    (_%lp144486%_ _%decls144508%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest144489144497%_))
                        (let ((_%hd144494144517%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest144489144497%_)))
                              (_%tl144495144519%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest144489144497%_))))
                          (let* ((_%decl144522%_ _%hd144494144517%_)
                                 (_%decls144524%_ _%tl144495144519%_))
                            (_%K144493144514%_
                             _%decls144524%_
                             _%decl144522%_)))
                        (_%else144491144505%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id144473%_ _%syntax?144474%_)
        (let ((_%eid144476%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id144473%_))
                '1
                gx#binding::t
                '#f))
              (_%ht144477%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid144476%_))
              '#!void
              (let ((__tmp146369
                     (let ((__tmp146370
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid144476%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp146370 _%syntax?144474%_))))
                (declare (not safe))
                (hash-put! _%ht144477%_ _%eid144476%_ __tmp146369))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id144471%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id144471%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key144426%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key144426%_))
            _%key144426%_
            (if (uninterned-symbol? _%key144426%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key144426%_))
                (let* ((_%key144430144437%_ _%key144426%_)
                       (_%E144432144441%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key144430144437%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K144433144459%_
                        (lambda (_%mark144444%_ _%eid144445%_)
                          (let ((_%$e144447%_
                                 (##structure-ref
                                  _%mark144444%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e144447%_
                                ((lambda (_%ht144450%_)
                                   (let ((_%$e144452%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht144450%_
                                             _%eid144445%_))))
                                     (if _%$e144452%_
                                         ((lambda (_%id144455%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id144455%_))
                                                _%id144455%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%id144455%_))))
                                          _%$e144452%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid144445%_))))
                                 _%$e144447%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid144445%_))))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%key144430144437%_))
                      (let ((_%hd144434144462%_
                             (let ()
                               (declare (not safe))
                               (##car _%key144430144437%_)))
                            (_%tl144435144464%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key144430144437%_))))
                        (let* ((_%eid144467%_ _%hd144434144462%_)
                               (_%mark144469%_ _%tl144435144464%_))
                          (_%K144433144459%_ _%mark144469%_ _%eid144467%_)))
                      (_%E144432144441%_)))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self144423%_ _%stx144424%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self144270%_ _%stx144271%_)
        (letrec ((_%simplify144273%_
                  (lambda (_%body144321%_)
                    (let _%lp144323%_ ((_%rest144325%_ _%body144321%_)
                                       (_%r144326%_ '()))
                      (let* ((_%rest144327144335%_ _%rest144325%_)
                             (_%else144329144343%_
                              (lambda () (reverse _%r144326%_)))
                             (_%K144331144411%_
                              (lambda (_%rest144346%_ _%hd144347%_)
                                (let* ((_%hd144348144364%_ _%hd144347%_)
                                       (_%else144352144372%_
                                        (lambda ()
                                          (_%lp144323%_
                                           _%rest144346%_
                                           (cons _%hd144347%_ _%r144326%_)))))
                                  (let ((_%K144360144401%_
                                         (lambda (_%exprs144399%_)
                                           (_%lp144323%_
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%rest144346%_
                                               _%exprs144399%_))
                                            _%r144326%_)))
                                        (_%K144355144385%_
                                         (lambda ()
                                           (if (null? _%rest144346%_)
                                               (_%lp144323%_
                                                _%rest144346%_
                                                (cons _%hd144347%_
                                                      _%r144326%_))
                                               (_%lp144323%_
                                                _%rest144346%_
                                                _%r144326%_))))
                                        (_%K144354144377%_
                                         (lambda ()
                                           (if (null? _%rest144346%_)
                                               (_%lp144323%_
                                                _%rest144346%_
                                                (cons _%hd144347%_
                                                      _%r144326%_))
                                               (_%lp144323%_
                                                _%rest144346%_
                                                _%r144326%_)))))
                                    (let ((_%try-match144351144380%_
                                           (lambda ()
                                             (if (symbol? _%hd144348144364%_)
                                                 (_%K144354144377%_)
                                                 (_%else144352144372%_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd144348144364%_))
                                          (let ((_%tl144362144406%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd144348144364%_)))
                                                (_%hd144361144404%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd144348144364%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd144361144404%_
                                                         'begin))
                                                (let ((_%exprs144409%_
                                                       _%tl144362144406%_))
                                                  (_%K144360144401%_
                                                   _%exprs144409%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd144361144404%_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _%tl144362144406%_))
                                                        (let ((_%tl144359144393%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl144362144406%_))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _%tl144359144393%_))
                      (_%K144355144385%_)
                      (_%try-match144351144380%_)))
                (_%try-match144351144380%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match144351144380%_))))
                                          (_%try-match144351144380%_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest144327144335%_))
                            (let ((_%hd144332144414%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest144327144335%_)))
                                  (_%tl144333144416%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest144327144335%_))))
                              (let* ((_%hd144419%_ _%hd144332144414%_)
                                     (_%rest144421%_ _%tl144333144416%_))
                                (_%K144331144411%_
                                 _%rest144421%_
                                 _%hd144419%_)))
                            (_%else144329144343%_)))))))
          (let* ((_%g144275144285%_
                  (lambda (_%g144276144282%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g144276144282%_))))
                 (_%g144274144318%_
                  (lambda (_%g144276144288%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g144276144288%_))
                        (let ((_%e144278144290%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g144276144288%_))))
                          (let ((_%hd144279144293%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144278144290%_)))
                                (_%tl144280144295%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144278144290%_))))
                            ((lambda (_%L144298%_)
                               (let* ((_%body144313%_
                                       (map (lambda (_%g144308144310%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self144270%_
                                                 _%g144308144310%_)))
                                            _%L144298%_))
                                      (_%body144315%_
                                       (_%simplify144273%_ _%body144313%_)))
                                 (if (let ((__tmp146371
                                            (length _%body144315%_)))
                                       (declare (not safe))
                                       (##fx= __tmp146371 '1))
                                     (car _%body144315%_)
                                     (cons 'begin _%body144315%_))))
                             _%tl144280144295%_)))
                        (_%g144275144285%_ _%g144276144288%_)))))
            (_%g144274144318%_ _%stx144271%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self144231%_ _%stx144232%_)
        (let* ((_%g144234144244%_
                (lambda (_%g144235144241%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144235144241%_))))
               (_%g144233144267%_
                (lambda (_%g144235144247%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144235144247%_))
                      (let ((_%e144237144249%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144235144247%_))))
                        (let ((_%hd144238144252%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144237144249%_)))
                              (_%tl144239144254%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144237144249%_))))
                          ((lambda (_%L144257%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%L144257%_))))
                           _%tl144239144254%_)))
                      (_%g144234144244%_ _%g144235144247%_)))))
          (_%g144233144267%_ _%stx144232%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self143995%_ _%stx143996%_)
        (let* ((_%__stx144961144962%_ _%stx143996%_)
               (_%g144000144052%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx144961144962%_)))))
          (let ((_%__kont144963144964%_
                 (lambda (_%L144213%_ _%L144214%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self143995%_ _%L144213%_))))
                (_%__kont144965144966%_
                 (lambda (_%L144161%_ _%L144162%_ _%L144163%_)
                   (if (let ((__tmp146372
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L144163%_))))
                         (declare (not safe))
                         (##memq __tmp146372 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self143995%_ _%L144161%_)))))
                (_%__kont144969144970%_
                 (lambda (_%L144081%_ _%L144082%_)
                   (let ((_%decls144097%_ (map gx#syntax->datum _%L144082%_)))
                     (let ((__tmp146375
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls144097%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self143995%_
                                                   _%L144081%_))
                                                '())))))
                           (__tmp146373
                            (let ((__tmp146374
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp146374 _%decls144097%_))))
                       (declare (not safe))
                       (__call-with-parameters
                        __tmp146375
                        gxc#current-compile-decls
                        __tmp146373))))))
            (let* ((_%__match145016145017%_
                    (lambda (_%e144016144105%_
                             _%hd144017144108%_
                             _%tl144018144110%_
                             _%e144019144113%_
                             _%hd144020144116%_
                             _%tl144021144118%_
                             _%e144022144121%_
                             _%hd144023144124%_
                             _%tl144024144126%_
                             _%__splice144967144968%_
                             _%target144025144129%_
                             _%tl144027144131%_)
                      (letrec ((_%loop144028144134%_
                                (lambda (_%hd144026144137%_
                                         _%param144032144139%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd144026144137%_))
                                      (let ((_%e144029144142%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd144026144137%_))))
                                        (let ((_%lp-tl144031144147%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144029144142%_)))
                                              (_%lp-hd144030144145%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144029144142%_))))
                                          (_%loop144028144134%_
                                           _%lp-tl144031144147%_
                                           (cons _%lp-hd144030144145%_
                                                 _%param144032144139%_))))
                                      (let ((_%param144033144150%_
                                             (reverse _%param144032144139%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl144021144118%_))
                                            (let ((_%e144034144153%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl144021144118%_))))
                                              (let ((_%tl144036144158%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e144034144153%_)))
                                                    (_%hd144035144156%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e144034144153%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl144036144158%_))
                                                    (let ((_%L144161%_
                                                           _%hd144035144156%_)
                                                          (_%L144162%_
                                                           _%param144033144150%_)
                                                          (_%L144163%_
                                                           _%hd144023144124%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%L144163%_))
                       (not (let ((__tmp146376
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L144163%_))))
                              (declare (not safe))
                              (##memq __tmp146376 gxc#gambit-annotations))))
                  (_%__kont144965144966%_ _%L144161%_ _%L144162%_ _%L144163%_)
                  (_%__kont144969144970%_
                   _%hd144035144156%_
                   _%hd144020144116%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g144000144052%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g144000144052%_))))))))
                        (_%loop144028144134%_ _%target144025144129%_ '()))))
                   (_%__match144990144991%_
                    (lambda (_%e144004144189%_
                             _%hd144005144192%_
                             _%tl144006144194%_
                             _%e144007144197%_
                             _%hd144008144200%_
                             _%tl144009144202%_
                             _%e144010144205%_
                             _%hd144011144208%_
                             _%tl144012144210%_)
                      (let ((_%L144213%_ _%hd144011144208%_)
                            (_%L144214%_ _%hd144008144200%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%L144214%_))
                            (_%__kont144963144964%_ _%L144213%_ _%L144214%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd144008144200%_))
                                (let ((_%e144022144121%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd144008144200%_))))
                                  (let ((_%tl144024144126%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e144022144121%_)))
                                        (_%hd144023144124%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e144022144121%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl144024144126%_))
                                        (let ((_%__splice144967144968%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl144024144126%_
                                                  '0))))
                                          (let ((_%tl144027144131%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice144967144968%_
                                                    '1)))
                                                (_%target144025144129%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice144967144968%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl144027144131%_))
                                                (_%__match145016145017%_
                                                 _%e144004144189%_
                                                 _%hd144005144192%_
                                                 _%tl144006144194%_
                                                 _%e144007144197%_
                                                 _%hd144008144200%_
                                                 _%tl144009144202%_
                                                 _%e144022144121%_
                                                 _%hd144023144124%_
                                                 _%tl144024144126%_
                                                 _%__splice144967144968%_
                                                 _%target144025144129%_
                                                 _%tl144027144131%_)
                                                (_%__kont144969144970%_
                                                 _%hd144011144208%_
                                                 _%hd144008144200%_))))
                                        (_%__kont144969144970%_
                                         _%hd144011144208%_
                                         _%hd144008144200%_))))
                                (_%__kont144969144970%_
                                 _%hd144011144208%_
                                 _%hd144008144200%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx144961144962%_))
                  (let ((_%e144004144189%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx144961144962%_))))
                    (let ((_%tl144006144194%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e144004144189%_)))
                          (_%hd144005144192%_
                           (let ()
                             (declare (not safe))
                             (##car _%e144004144189%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl144006144194%_))
                          (let ((_%e144007144197%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl144006144194%_))))
                            (let ((_%tl144009144202%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e144007144197%_)))
                                  (_%hd144008144200%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e144007144197%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl144009144202%_))
                                  (let ((_%e144010144205%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl144009144202%_))))
                                    (let ((_%tl144012144210%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e144010144205%_)))
                                          (_%hd144011144208%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e144010144205%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl144012144210%_))
                                          (_%__match144990144991%_
                                           _%e144004144189%_
                                           _%hd144005144192%_
                                           _%tl144006144194%_
                                           _%e144007144197%_
                                           _%hd144008144200%_
                                           _%tl144009144202%_
                                           _%e144010144205%_
                                           _%hd144011144208%_
                                           _%tl144012144210%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd144008144200%_))
                                              (let ((_%e144022144121%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd144008144200%_))))
                                                (let ((_%tl144024144126%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e144022144121%_)))
                                                      (_%hd144023144124%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e144022144121%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl144024144126%_))
                                                      (let ((_%__splice144967144968%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl144024144126%_ '0))))
                (let ((_%tl144027144131%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice144967144968%_ '1)))
                      (_%target144025144129%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice144967144968%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl144027144131%_))
                      (_%__match145016145017%_
                       _%e144004144189%_
                       _%hd144005144192%_
                       _%tl144006144194%_
                       _%e144007144197%_
                       _%hd144008144200%_
                       _%tl144009144202%_
                       _%e144022144121%_
                       _%hd144023144124%_
                       _%tl144024144126%_
                       _%__splice144967144968%_
                       _%target144025144129%_
                       _%tl144027144131%_)
                      (let () (declare (not safe)) (_%g144000144052%_)))))
              (let () (declare (not safe)) (_%g144000144052%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g144000144052%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd144008144200%_))
                                      (let ((_%e144022144121%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd144008144200%_))))
                                        (let ((_%tl144024144126%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144022144121%_)))
                                              (_%hd144023144124%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144022144121%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl144024144126%_))
                                              (let ((_%__splice144967144968%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl144024144126%_
                                                        '0))))
                                                (let ((_%tl144027144131%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice144967144968%_
                                                          '1)))
                                                      (_%target144025144129%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice144967144968%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl144027144131%_))
                                                      (_%__match145016145017%_
                                                       _%e144004144189%_
                                                       _%hd144005144192%_
                                                       _%tl144006144194%_
                                                       _%e144007144197%_
                                                       _%hd144008144200%_
                                                       _%tl144009144202%_
                                                       _%e144022144121%_
                                                       _%hd144023144124%_
                                                       _%tl144024144126%_
                                                       _%__splice144967144968%_
                                                       _%target144025144129%_
                                                       _%tl144027144131%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g144000144052%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g144000144052%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g144000144052%_))))))
                          (let () (declare (not safe)) (_%g144000144052%_)))))
                  (let () (declare (not safe)) (_%g144000144052%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self143954%_ _%stx143955%_)
        (let* ((_%g143957143967%_
                (lambda (_%g143958143964%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143958143964%_))))
               (_%g143956143992%_
                (lambda (_%g143958143970%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143958143970%_))
                      (let ((_%e143960143972%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143958143970%_))))
                        (let ((_%hd143961143975%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143960143972%_)))
                              (_%tl143962143977%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143960143972%_))))
                          ((lambda (_%L143980%_)
                             (let ((_%decls143990%_
                                    (map gx#syntax->datum _%L143980%_)))
                               (let ((__tmp146377
                                      (let ((__tmp146378
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp146378
                                         _%decls143990%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp146377))
                               (cons 'declare _%decls143990%_)))
                           _%tl143962143977%_)))
                      (_%g143957143967%_ _%g143958143970%_)))))
          (_%g143956143992%_ _%stx143955%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self143700%_ _%stx143701%_)
        (let* ((_%g143703143720%_
                (lambda (_%g143704143717%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143704143717%_))))
               (_%g143702143951%_
                (lambda (_%g143704143723%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143704143723%_))
                      (let ((_%e143707143725%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143704143723%_))))
                        (let ((_%hd143708143728%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143707143725%_)))
                              (_%tl143709143730%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143707143725%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143709143730%_))
                              (let ((_%e143710143733%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143709143730%_))))
                                (let ((_%hd143711143736%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143710143733%_)))
                                      (_%tl143712143738%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143710143733%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143712143738%_))
                                      (let ((_%e143713143741%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143712143738%_))))
                                        (let ((_%hd143714143744%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143713143741%_)))
                                              (_%tl143715143746%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143713143741%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143715143746%_))
                                              ((lambda (_%L143749%_
                                                        _%L143750%_)
                                                 (let* ((_%__stx145069145070%_
                                                         _%L143750%_)
                                                        (_%g143767143781%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx145069145070%_)))))
                                                   (let ((_%__kont145071145072%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self143700%_
                                                               _%L143749%_))))
                                                         (_%__kont145073145074%_
                                                          (lambda (_%L143913%_)
                                                            (let ((_%eid143922%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%L143913%_))))
                      (let ((_%lambda-expr143923143925%_
                             (gxc#apply-find-lambda-expression _%L143749%_)))
                        (if _%lambda-expr143923143925%_
                            (let* ((_%lambda-expr143928%_
                                    _%lambda-expr143923143925%_)
                                   (__tmp146379
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp146379
                               _%lambda-expr143928%_
                               _%eid143922%_))
                            '#f))
                      (cons 'define
                            (cons _%eid143922%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self143700%_
                                           _%L143749%_))
                                        '()))))))
                 (_%__kont145075145076%_
                  (lambda ()
                    (let* ((_%tmp143788%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body143897%_
                            (let _%lp143790%_ ((_%rest143792%_ _%L143750%_)
                                               (_%k143793%_ '0)
                                               (_%r143794%_ '()))
                              (let* ((_%__stx145039145040%_ _%rest143792%_)
                                     (_%g143799143816%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx145039145040%_)))))
                                (let ((_%__kont145041145042%_
                                       (lambda (_%L143884%_)
                                         (_%lp143790%_
                                          _%L143884%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k143793%_ '1))
                                          _%r143794%_)))
                                      (_%__kont145043145044%_
                                       (lambda (_%L143857%_ _%L143858%_)
                                         (_%lp143790%_
                                          _%L143857%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k143793%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%L143858%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp143788%_
                           _%k143793%_
                           _%L143857%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r143794%_))))
                                      (_%__kont145045145046%_
                                       (lambda (_%L143828%_)
                                         (let ((__tmp146380
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L143828%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp143788%_
                                 _%k143793%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp146380
                                            _%r143794%_))))
                                      (_%__kont145047145048%_
                                       (lambda () (reverse _%r143794%_))))
                                  (let ((_%g143797143844%_
                                         (lambda ()
                                           (let ((_%L143828%_
                                                  _%__stx145039145040%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%L143828%_))
                                                 (_%__kont145045145046%_
                                                  _%L143828%_)
                                                 (_%__kont145047145048%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx145039145040%_))
                                        (let ((_%e143802143873%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx145039145040%_))))
                                          (let ((_%tl143804143878%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143802143873%_)))
                                                (_%hd143803143876%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143802143873%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd143803143876%_))
                                                (let ((_%e143805143881%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd143803143876%_))))
                                                  (if (equal? _%e143805143881%_
                                                              '#f)
                                                      (_%__kont145041145042%_
                                                       _%tl143804143878%_)
                                                      (_%__kont145043145044%_
                                                       _%tl143804143878%_
                                                       _%hd143803143876%_)))
                                                (_%__kont145043145044%_
                                                 _%tl143804143878%_
                                                 _%hd143803143876%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g143797143844%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp143788%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self143700%_
                                                       _%L143749%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp143788%_
                                         _%L143750%_
                                         _%L143749%_)
                                        _%body143897%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx145069145070%_))
                                                         (let ((_%e143769143935%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx145069145070%_))))
                   (let ((_%tl143771143940%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e143769143935%_)))
                         (_%hd143770143938%_
                          (let ()
                            (declare (not safe))
                            (##car _%e143769143935%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd143770143938%_))
                         (let ((_%e143772143943%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd143770143938%_))))
                           (if (equal? _%e143772143943%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl143771143940%_))
                                   (_%__kont145071145072%_)
                                   (_%__kont145075145076%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl143771143940%_))
                                   (_%__kont145073145074%_ _%hd143770143938%_)
                                   (_%__kont145075145076%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl143771143940%_))
                             (_%__kont145073145074%_ _%hd143770143938%_)
                             (_%__kont145075145076%_)))))
                 (_%__kont145075145076%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd143714143744%_
                                               _%hd143711143736%_)
                                              (_%g143703143720%_
                                               _%g143704143723%_))))
                                      (_%g143703143720%_ _%g143704143723%_))))
                              (_%g143703143720%_ _%g143704143723%_))))
                      (_%g143703143720%_ _%g143704143723%_)))))
          (_%g143702143951%_ _%stx143701%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals143675%_ _%hd143676%_ _%expr143677%_)
        (let ((_%$e143679%_ (gxc#apply-count-values _%expr143677%_)))
          (if _%$e143679%_
              ((lambda (_%count143682%_)
                 (let ((_%len143684%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd143676%_)))
                       (_%cmp143685%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd143676%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len143684%_ '0))
                           (_%cmp143685%_ _%count143682%_ _%len143684%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr143677%_
                          _%hd143676%_)))))
               _%$e143679%_)
              (let* ((_%len143691%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd143676%_)))
                     (_%cmp143693%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd143676%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg143695%_
                      (let ((__tmp146382
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd143676%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp146381 (number->string _%len143691%_)))
                        (declare (not safe))
                        (##string-append __tmp146382 __tmp146381 '" values")))
                     (_%count143697%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (and (not (let ()
                                (declare (not safe))
                                (gx#stx-list? _%hd143676%_)))
                         (let ()
                           (declare (not safe))
                           (##fx= _%len143691%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count143697%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals143675%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp143693%_
                                (cons _%count143697%_
                                      (cons _%len143691%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp143693%_
                                                        (cons _%count143697%_
                                                              (cons _%len143691%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg143695%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count143697%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var143670%_)
        (letrec ((_%generate-inline143672%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var143670%_ '()))
                                (cons (cons '##vector-length
                                            (cons _%var143670%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline143672%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline143672%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var143663%_ _%i143664%_ _%rest143665%_)
        (letrec ((_%generate-inline143667%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i143664%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest143665%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var143663%_ '()))
                                    (cons (cons '##vector-ref
                                                (cons _%var143663%_
                                                      (cons '0 '())))
                                          (cons _%var143663%_ '()))))
                        (cons '##vector-ref
                              (cons _%var143663%_ (cons _%i143664%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline143667%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline143667%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var143657%_ _%i143658%_)
        (if (let () (declare (not safe)) (##fx= _%i143658%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var143657%_ '()))
                            (cons (cons '##vector->list
                                        (cons _%var143657%_ '()))
                                  (cons (cons 'list (cons _%var143657%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var143657%_
                                                                '()))
                                                    (cons (cons '##vector->list
                                                                (cons _%var143657%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var143657%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i143658%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var143657%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##vector->list
                                                        (cons _%var143657%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var143657%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##vector->list
                                        (cons _%var143657%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##vector->list (cons _%var143657%_ '()))
                                (cons _%i143658%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##vector->list
                                                              (cons _%var143657%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i143658%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self143589%_ _%stx143590%_)
        (let* ((_%g143592143609%_
                (lambda (_%g143593143606%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g143593143606%_))))
               (_%g143591143654%_
                (lambda (_%g143593143612%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g143593143612%_))
                      (let ((_%e143596143614%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g143593143612%_))))
                        (let ((_%hd143597143617%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143596143614%_)))
                              (_%tl143598143619%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143596143614%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl143598143619%_))
                              (let ((_%e143599143622%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl143598143619%_))))
                                (let ((_%hd143600143625%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143599143622%_)))
                                      (_%tl143601143627%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143599143622%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143601143627%_))
                                      (let ((_%e143602143630%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143601143627%_))))
                                        (let ((_%hd143603143633%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143602143630%_)))
                                              (_%tl143604143635%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143602143630%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143604143635%_))
                                              ((lambda (_%L143638%_
                                                        _%L143639%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self143589%_
                                                  _%L143639%_
                                                  _%L143638%_))
                                               _%hd143603143633%_
                                               _%hd143600143625%_)
                                              (_%g143592143609%_
                                               _%g143593143612%_))))
                                      (_%g143592143609%_ _%g143593143612%_))))
                              (_%g143592143609%_ _%g143593143612%_))))
                      (_%g143592143609%_ _%g143593143612%_)))))
          (_%g143591143654%_ _%stx143590%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self143548%_ _%hd143549%_ _%body143550%_)
        (let* ((_%hd143552%_ (gxc#generate-runtime-lambda-head _%hd143549%_))
               (_%body143554%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self143548%_ _%body143550%_)))
               (_%body143586%_
                (let* ((_%body143555143563%_ _%body143554%_)
                       (_%else143557143571%_
                        (lambda () (cons _%body143554%_ '())))
                       (_%K143559143576%_
                        (lambda (_%exprs143574%_) _%exprs143574%_)))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%body143555143563%_))
                      (let ((_%hd143560143579%_
                             (let ()
                               (declare (not safe))
                               (##car _%body143555143563%_)))
                            (_%tl143561143581%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body143555143563%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd143560143579%_ 'begin))
                            (let ((_%exprs143584%_ _%tl143561143581%_))
                              (_%K143559143576%_ _%exprs143584%_))
                            (_%else143557143571%_)))
                      (_%else143557143571%_)))))
          (cons 'lambda (cons _%hd143552%_ _%body143586%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd143546%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd143546%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self142085%_ _%stx142086%_)
        (letrec ((_%dispatch-case?142088%_
                  (lambda (_%hd142776%_ _%body142777%_)
                    (let* ((_%form142779%_
                            (cons _%hd142776%_ (cons _%body142777%_ '())))
                           (_%__stx145101145102%_ _%form142779%_)
                           (_%g142784142941%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx145101145102%_)))))
                      (let ((_%__kont145103145104%_
                             (lambda (_%L143466%_ _%L143467%_ _%L143468%_)
                               '#t))
                            (_%__kont145109145110%_
                             (lambda (_%L143254%_
                                      _%L143255%_
                                      _%L143256%_
                                      _%L143257%_
                                      _%L143258%_
                                      _%L143259%_)
                               '#t))
                            (_%__kont145115145116%_
                             (lambda (_%L143049%_
                                      _%L143050%_
                                      _%L143051%_
                                      _%L143052%_)
                               '#t))
                            (_%__kont145117145118%_ (lambda () '#f)))
                        (let* ((_%__match145242145243%_
                                (lambda (_%e142901142953%_
                                         _%hd142902142956%_
                                         _%tl142903142958%_
                                         _%e142904142961%_
                                         _%hd142905142964%_
                                         _%tl142906142966%_
                                         _%e142907142969%_
                                         _%hd142908142972%_
                                         _%tl142909142974%_
                                         _%e142910142977%_
                                         _%hd142911142980%_
                                         _%tl142912142982%_
                                         _%e142913142985%_
                                         _%hd142914142988%_
                                         _%tl142915142990%_
                                         _%e142916142993%_
                                         _%hd142917142996%_
                                         _%tl142918142998%_
                                         _%e142919143001%_
                                         _%hd142920143004%_
                                         _%tl142921143006%_
                                         _%e142922143009%_
                                         _%hd142923143012%_
                                         _%tl142924143014%_
                                         _%e142925143017%_
                                         _%hd142926143020%_
                                         _%tl142927143022%_
                                         _%e142928143025%_
                                         _%hd142929143028%_
                                         _%tl142930143030%_
                                         _%e142931143033%_
                                         _%hd142932143036%_
                                         _%tl142933143038%_
                                         _%e142934143041%_
                                         _%hd142935143044%_
                                         _%tl142936143046%_)
                                  (let ((_%L143049%_ _%hd142935143044%_)
                                        (_%L143050%_ _%hd142926143020%_)
                                        (_%L143051%_ _%hd142917142996%_)
                                        (_%L143052%_ _%hd142902142956%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L143052%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%L143051%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L143052%_
                                                _%L143049%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L143050%_
                                                     _%L143052%_))))
                                        (_%__kont145115145116%_
                                         _%L143049%_
                                         _%L143050%_
                                         _%L143051%_
                                         _%L143052%_)
                                        (_%__kont145117145118%_)))))
                               (_%__match145214145215%_
                                (lambda (_%e142901142953%_
                                         _%hd142902142956%_
                                         _%tl142903142958%_
                                         _%e142904142961%_
                                         _%hd142905142964%_
                                         _%tl142906142966%_
                                         _%e142907142969%_
                                         _%hd142908142972%_
                                         _%tl142909142974%_
                                         _%e142910142977%_
                                         _%hd142911142980%_
                                         _%tl142912142982%_
                                         _%e142913142985%_
                                         _%hd142914142988%_
                                         _%tl142915142990%_
                                         _%e142916142993%_
                                         _%hd142917142996%_
                                         _%tl142918142998%_
                                         _%e142919143001%_
                                         _%hd142920143004%_
                                         _%tl142921143006%_
                                         _%e142922143009%_
                                         _%hd142923143012%_
                                         _%tl142924143014%_
                                         _%e142925143017%_
                                         _%hd142926143020%_
                                         _%tl142927143022%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142921143006%_))
                                      (let ((_%e142928143025%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142921143006%_))))
                                        (let ((_%tl142930143030%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142928143025%_)))
                                              (_%hd142929143028%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142928143025%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd142929143028%_))
                                              (let ((_%e142931143033%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd142929143028%_))))
                                                (let ((_%tl142933143038%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142931143033%_)))
                                                      (_%hd142932143036%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142931143033%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd142932143036%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd142932143036%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl142933143038%_))
                      (let ((_%e142934143041%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl142933143038%_))))
                        (let ((_%tl142936143046%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142934143041%_)))
                              (_%hd142935143044%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142934143041%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl142936143046%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl142930143030%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl142906142966%_))
                                      (_%__match145242145243%_
                                       _%e142901142953%_
                                       _%hd142902142956%_
                                       _%tl142903142958%_
                                       _%e142904142961%_
                                       _%hd142905142964%_
                                       _%tl142906142966%_
                                       _%e142907142969%_
                                       _%hd142908142972%_
                                       _%tl142909142974%_
                                       _%e142910142977%_
                                       _%hd142911142980%_
                                       _%tl142912142982%_
                                       _%e142913142985%_
                                       _%hd142914142988%_
                                       _%tl142915142990%_
                                       _%e142916142993%_
                                       _%hd142917142996%_
                                       _%tl142918142998%_
                                       _%e142919143001%_
                                       _%hd142920143004%_
                                       _%tl142921143006%_
                                       _%e142922143009%_
                                       _%hd142923143012%_
                                       _%tl142924143014%_
                                       _%e142925143017%_
                                       _%hd142926143020%_
                                       _%tl142927143022%_
                                       _%e142928143025%_
                                       _%hd142929143028%_
                                       _%tl142930143030%_
                                       _%e142931143033%_
                                       _%hd142932143036%_
                                       _%tl142933143038%_
                                       _%e142934143041%_
                                       _%hd142935143044%_
                                       _%tl142936143046%_)
                                      (_%__kont145117145118%_))
                                  (_%__kont145117145118%_))
                              (_%__kont145117145118%_))))
                      (_%__kont145117145118%_))
                  (_%__kont145117145118%_))
              (_%__kont145117145118%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont145117145118%_))))
                                      (_%__kont145117145118%_))))
                               (_%__match145144145145%_
                                (lambda (_%e142837143094%_
                                         _%hd142838143097%_
                                         _%tl142839143099%_
                                         _%__splice145111145112%_
                                         _%target142840143102%_
                                         _%tl142842143104%_)
                                  (letrec ((_%loop142843143107%_
                                            (lambda (_%hd142841143110%_
                                                     _%arg142847143112%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd142841143110%_))
                                                  (let ((_%e142844143115%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd142841143110%_))))
                                                    (let ((_%lp-tl142846143120%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e142844143115%_)))
                                                          (_%lp-hd142845143118%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e142844143115%_))))
                                                      (_%loop142843143107%_
                                                       _%lp-tl142846143120%_
                                                       (cons _%lp-hd142845143118%_
                                                             _%arg142847143112%_))))
                                                  (let ((_%arg142848143123%_
                                                         (reverse _%arg142847143112%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl142839143099%_))
                                                        (let ((_%e142849143126%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl142839143099%_))))
                  (let ((_%tl142851143131%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e142849143126%_)))
                        (_%hd142850143129%_
                         (let ()
                           (declare (not safe))
                           (##car _%e142849143126%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd142850143129%_))
                        (let ((_%e142852143134%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd142850143129%_))))
                          (let ((_%tl142854143139%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142852143134%_)))
                                (_%hd142853143137%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142852143134%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd142853143137%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd142853143137%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl142854143139%_))
                                        (let ((_%e142855143142%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl142854143139%_))))
                                          (let ((_%tl142857143147%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142855143142%_)))
                                                (_%hd142856143145%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142855143142%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd142856143145%_))
                                                (let ((_%e142858143150%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd142856143145%_))))
                                                  (let ((_%tl142860143155%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e142858143150%_)))
                                                        (_%hd142859143153%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e142858143150%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd142859143153%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd142859143153%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl142860143155%_))
                        (let ((_%e142861143158%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl142860143155%_))))
                          (let ((_%tl142863143163%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142861143158%_)))
                                (_%hd142862143161%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142861143158%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl142863143163%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl142857143147%_))
                                    (let ((_%e142864143166%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl142857143147%_))))
                                      (let ((_%tl142866143171%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e142864143166%_)))
                                            (_%hd142865143169%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e142864143166%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd142865143169%_))
                                            (let ((_%e142867143174%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd142865143169%_))))
                                              (let ((_%tl142869143179%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e142867143174%_)))
                                                    (_%hd142868143177%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e142867143174%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd142868143177%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd142868143177%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl142869143179%_))
                                                            (let ((_%e142870143182%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl142869143179%_))))
                      (let ((_%tl142872143187%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e142870143182%_)))
                            (_%hd142871143185%_
                             (let ()
                               (declare (not safe))
                               (##car _%e142870143182%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl142872143187%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl142866143171%_))
                                (if (let ((__tmp146383
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl142866143171%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp146383 '1))
                                    (let ((_%__splice145113145114%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl142866143171%_
                                              '1))))
                                      (let ((_%tl142875143192%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice145113145114%_
                                                '1)))
                                            (_%target142873143190%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice145113145114%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl142875143192%_))
                                            (let ((_%e142882143195%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl142875143192%_))))
                                              (let ((_%tl142884143200%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e142882143195%_)))
                                                    (_%hd142883143198%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e142882143195%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd142883143198%_))
                                                    (let ((_%e142885143203%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd142883143198%_))))
                                                      (let ((_%tl142887143208%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e142885143203%_)))
                    (_%hd142886143206%_
                     (let () (declare (not safe)) (##car _%e142885143203%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd142886143206%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd142886143206%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl142887143208%_))
                            (let ((_%e142888143211%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl142887143208%_))))
                              (let ((_%tl142890143216%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e142888143211%_)))
                                    (_%hd142889143214%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e142888143211%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl142890143216%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl142884143200%_))
                                        (letrec ((_%loop142876143219%_
                                                  (lambda (_%hd142874143222%_
                                                           _%xarg142880143224%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd142874143222%_))
                                                        (let ((_%e142877143227%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd142874143222%_))))
                  (let ((_%lp-tl142879143232%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e142877143227%_)))
                        (_%lp-hd142878143230%_
                         (let ()
                           (declare (not safe))
                           (##car _%e142877143227%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd142878143230%_))
                        (let ((_%e142891143235%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd142878143230%_))))
                          (let ((_%tl142893143240%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142891143235%_)))
                                (_%hd142892143238%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142891143235%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd142892143238%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd142892143238%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl142893143240%_))
                                        (let ((_%e142894143243%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl142893143240%_))))
                                          (let ((_%tl142896143248%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142894143243%_)))
                                                (_%hd142895143246%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142894143243%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl142896143248%_))
                                                (_%loop142876143219%_
                                                 _%lp-tl142879143232%_
                                                 (cons _%hd142895143246%_
                                                       _%xarg142880143224%_))
                                                (_%__match145214145215%_
                                                 _%e142837143094%_
                                                 _%hd142838143097%_
                                                 _%tl142839143099%_
                                                 _%e142849143126%_
                                                 _%hd142850143129%_
                                                 _%tl142851143131%_
                                                 _%e142852143134%_
                                                 _%hd142853143137%_
                                                 _%tl142854143139%_
                                                 _%e142855143142%_
                                                 _%hd142856143145%_
                                                 _%tl142857143147%_
                                                 _%e142858143150%_
                                                 _%hd142859143153%_
                                                 _%tl142860143155%_
                                                 _%e142861143158%_
                                                 _%hd142862143161%_
                                                 _%tl142863143163%_
                                                 _%e142864143166%_
                                                 _%hd142865143169%_
                                                 _%tl142866143171%_
                                                 _%e142867143174%_
                                                 _%hd142868143177%_
                                                 _%tl142869143179%_
                                                 _%e142870143182%_
                                                 _%hd142871143185%_
                                                 _%tl142872143187%_))))
                                        (_%__match145214145215%_
                                         _%e142837143094%_
                                         _%hd142838143097%_
                                         _%tl142839143099%_
                                         _%e142849143126%_
                                         _%hd142850143129%_
                                         _%tl142851143131%_
                                         _%e142852143134%_
                                         _%hd142853143137%_
                                         _%tl142854143139%_
                                         _%e142855143142%_
                                         _%hd142856143145%_
                                         _%tl142857143147%_
                                         _%e142858143150%_
                                         _%hd142859143153%_
                                         _%tl142860143155%_
                                         _%e142861143158%_
                                         _%hd142862143161%_
                                         _%tl142863143163%_
                                         _%e142864143166%_
                                         _%hd142865143169%_
                                         _%tl142866143171%_
                                         _%e142867143174%_
                                         _%hd142868143177%_
                                         _%tl142869143179%_
                                         _%e142870143182%_
                                         _%hd142871143185%_
                                         _%tl142872143187%_))
                                    (_%__match145214145215%_
                                     _%e142837143094%_
                                     _%hd142838143097%_
                                     _%tl142839143099%_
                                     _%e142849143126%_
                                     _%hd142850143129%_
                                     _%tl142851143131%_
                                     _%e142852143134%_
                                     _%hd142853143137%_
                                     _%tl142854143139%_
                                     _%e142855143142%_
                                     _%hd142856143145%_
                                     _%tl142857143147%_
                                     _%e142858143150%_
                                     _%hd142859143153%_
                                     _%tl142860143155%_
                                     _%e142861143158%_
                                     _%hd142862143161%_
                                     _%tl142863143163%_
                                     _%e142864143166%_
                                     _%hd142865143169%_
                                     _%tl142866143171%_
                                     _%e142867143174%_
                                     _%hd142868143177%_
                                     _%tl142869143179%_
                                     _%e142870143182%_
                                     _%hd142871143185%_
                                     _%tl142872143187%_))
                                (_%__match145214145215%_
                                 _%e142837143094%_
                                 _%hd142838143097%_
                                 _%tl142839143099%_
                                 _%e142849143126%_
                                 _%hd142850143129%_
                                 _%tl142851143131%_
                                 _%e142852143134%_
                                 _%hd142853143137%_
                                 _%tl142854143139%_
                                 _%e142855143142%_
                                 _%hd142856143145%_
                                 _%tl142857143147%_
                                 _%e142858143150%_
                                 _%hd142859143153%_
                                 _%tl142860143155%_
                                 _%e142861143158%_
                                 _%hd142862143161%_
                                 _%tl142863143163%_
                                 _%e142864143166%_
                                 _%hd142865143169%_
                                 _%tl142866143171%_
                                 _%e142867143174%_
                                 _%hd142868143177%_
                                 _%tl142869143179%_
                                 _%e142870143182%_
                                 _%hd142871143185%_
                                 _%tl142872143187%_))))
                        (_%__match145214145215%_
                         _%e142837143094%_
                         _%hd142838143097%_
                         _%tl142839143099%_
                         _%e142849143126%_
                         _%hd142850143129%_
                         _%tl142851143131%_
                         _%e142852143134%_
                         _%hd142853143137%_
                         _%tl142854143139%_
                         _%e142855143142%_
                         _%hd142856143145%_
                         _%tl142857143147%_
                         _%e142858143150%_
                         _%hd142859143153%_
                         _%tl142860143155%_
                         _%e142861143158%_
                         _%hd142862143161%_
                         _%tl142863143163%_
                         _%e142864143166%_
                         _%hd142865143169%_
                         _%tl142866143171%_
                         _%e142867143174%_
                         _%hd142868143177%_
                         _%tl142869143179%_
                         _%e142870143182%_
                         _%hd142871143185%_
                         _%tl142872143187%_))))
                (let ((_%xarg142881143251%_ (reverse _%xarg142880143224%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl142851143131%_))
                      (let ((_%L143254%_ _%hd142889143214%_)
                            (_%L143255%_ _%xarg142881143251%_)
                            (_%L143256%_ _%hd142871143185%_)
                            (_%L143257%_ _%hd142862143161%_)
                            (_%L143258%_ _%tl142842143104%_)
                            (_%L143259%_ _%arg142848143123%_))
                        (if (and (let ((__tmp146384
                                        (let ((__tmp146385
                                               (lambda (_%g143302143305%_
                                                        _%g143303143307%_)
                                                 (cons _%g143302143305%_
                                                       _%g143303143307%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp146385
                                           '()
                                           _%L143259%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp146384))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L143258%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%L143257%_
                                    'apply))
                                 (let ((__tmp146388
                                        (length (let ((__tmp146389
                                                       (lambda (_%g143309143312%_
                                                                _%g143310143314%_)
                                                         (cons _%g143309143312%_
                                                               _%g143310143314%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp146389
                                                   '()
                                                   _%L143259%_))))
                                       (__tmp146386
                                        (length (let ((__tmp146387
                                                       (lambda (_%g143316143319%_
                                                                _%g143317143321%_)
                                                         (cons _%g143316143319%_
                                                               _%g143317143321%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp146387
                                                   '()
                                                   _%L143255%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp146388 __tmp146386))
                                 (let ((__tmp146392
                                        (let ((__tmp146393
                                               (lambda (_%g143323143326%_
                                                        _%g143324143328%_)
                                                 (cons _%g143323143326%_
                                                       _%g143324143328%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp146393
                                           '()
                                           _%L143259%_)))
                                       (__tmp146390
                                        (let ((__tmp146391
                                               (lambda (_%g143330143333%_
                                                        _%g143331143335%_)
                                                 (cons _%g143330143333%_
                                                       _%g143331143335%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp146391
                                           '()
                                           _%L143255%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp146392
                                    __tmp146390))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L143258%_
                                    _%L143254%_))
                                 (not (let ((__tmp146397
                                             (lambda (_%g143337143339%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g143337143339%_
                                                  _%L143256%_))))
                                            (__tmp146394
                                             (let ((__tmp146396
                                                    (lambda (_%g143341143344%_
                                                             _%g143342143346%_)
                                                      (cons _%g143341143344%_
                                                            _%g143342143346%_)))
                                                   (__tmp146395
                                                    (cons _%L143258%_ '())))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp146396
                                                __tmp146395
                                                _%L143259%_))))
                                        (declare (not safe))
                                        (__find __tmp146397 __tmp146394))))
                            (_%__kont145109145110%_
                             _%L143254%_
                             _%L143255%_
                             _%L143256%_
                             _%L143257%_
                             _%L143258%_
                             _%L143259%_)
                            (_%__match145214145215%_
                             _%e142837143094%_
                             _%hd142838143097%_
                             _%tl142839143099%_
                             _%e142849143126%_
                             _%hd142850143129%_
                             _%tl142851143131%_
                             _%e142852143134%_
                             _%hd142853143137%_
                             _%tl142854143139%_
                             _%e142855143142%_
                             _%hd142856143145%_
                             _%tl142857143147%_
                             _%e142858143150%_
                             _%hd142859143153%_
                             _%tl142860143155%_
                             _%e142861143158%_
                             _%hd142862143161%_
                             _%tl142863143163%_
                             _%e142864143166%_
                             _%hd142865143169%_
                             _%tl142866143171%_
                             _%e142867143174%_
                             _%hd142868143177%_
                             _%tl142869143179%_
                             _%e142870143182%_
                             _%hd142871143185%_
                             _%tl142872143187%_)))
                      (_%__match145214145215%_
                       _%e142837143094%_
                       _%hd142838143097%_
                       _%tl142839143099%_
                       _%e142849143126%_
                       _%hd142850143129%_
                       _%tl142851143131%_
                       _%e142852143134%_
                       _%hd142853143137%_
                       _%tl142854143139%_
                       _%e142855143142%_
                       _%hd142856143145%_
                       _%tl142857143147%_
                       _%e142858143150%_
                       _%hd142859143153%_
                       _%tl142860143155%_
                       _%e142861143158%_
                       _%hd142862143161%_
                       _%tl142863143163%_
                       _%e142864143166%_
                       _%hd142865143169%_
                       _%tl142866143171%_
                       _%e142867143174%_
                       _%hd142868143177%_
                       _%tl142869143179%_
                       _%e142870143182%_
                       _%hd142871143185%_
                       _%tl142872143187%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop142876143219%_
                                           _%target142873143190%_
                                           '()))
                                        (_%__match145214145215%_
                                         _%e142837143094%_
                                         _%hd142838143097%_
                                         _%tl142839143099%_
                                         _%e142849143126%_
                                         _%hd142850143129%_
                                         _%tl142851143131%_
                                         _%e142852143134%_
                                         _%hd142853143137%_
                                         _%tl142854143139%_
                                         _%e142855143142%_
                                         _%hd142856143145%_
                                         _%tl142857143147%_
                                         _%e142858143150%_
                                         _%hd142859143153%_
                                         _%tl142860143155%_
                                         _%e142861143158%_
                                         _%hd142862143161%_
                                         _%tl142863143163%_
                                         _%e142864143166%_
                                         _%hd142865143169%_
                                         _%tl142866143171%_
                                         _%e142867143174%_
                                         _%hd142868143177%_
                                         _%tl142869143179%_
                                         _%e142870143182%_
                                         _%hd142871143185%_
                                         _%tl142872143187%_))
                                    (_%__match145214145215%_
                                     _%e142837143094%_
                                     _%hd142838143097%_
                                     _%tl142839143099%_
                                     _%e142849143126%_
                                     _%hd142850143129%_
                                     _%tl142851143131%_
                                     _%e142852143134%_
                                     _%hd142853143137%_
                                     _%tl142854143139%_
                                     _%e142855143142%_
                                     _%hd142856143145%_
                                     _%tl142857143147%_
                                     _%e142858143150%_
                                     _%hd142859143153%_
                                     _%tl142860143155%_
                                     _%e142861143158%_
                                     _%hd142862143161%_
                                     _%tl142863143163%_
                                     _%e142864143166%_
                                     _%hd142865143169%_
                                     _%tl142866143171%_
                                     _%e142867143174%_
                                     _%hd142868143177%_
                                     _%tl142869143179%_
                                     _%e142870143182%_
                                     _%hd142871143185%_
                                     _%tl142872143187%_))))
                            (_%__match145214145215%_
                             _%e142837143094%_
                             _%hd142838143097%_
                             _%tl142839143099%_
                             _%e142849143126%_
                             _%hd142850143129%_
                             _%tl142851143131%_
                             _%e142852143134%_
                             _%hd142853143137%_
                             _%tl142854143139%_
                             _%e142855143142%_
                             _%hd142856143145%_
                             _%tl142857143147%_
                             _%e142858143150%_
                             _%hd142859143153%_
                             _%tl142860143155%_
                             _%e142861143158%_
                             _%hd142862143161%_
                             _%tl142863143163%_
                             _%e142864143166%_
                             _%hd142865143169%_
                             _%tl142866143171%_
                             _%e142867143174%_
                             _%hd142868143177%_
                             _%tl142869143179%_
                             _%e142870143182%_
                             _%hd142871143185%_
                             _%tl142872143187%_))
                        (_%__match145214145215%_
                         _%e142837143094%_
                         _%hd142838143097%_
                         _%tl142839143099%_
                         _%e142849143126%_
                         _%hd142850143129%_
                         _%tl142851143131%_
                         _%e142852143134%_
                         _%hd142853143137%_
                         _%tl142854143139%_
                         _%e142855143142%_
                         _%hd142856143145%_
                         _%tl142857143147%_
                         _%e142858143150%_
                         _%hd142859143153%_
                         _%tl142860143155%_
                         _%e142861143158%_
                         _%hd142862143161%_
                         _%tl142863143163%_
                         _%e142864143166%_
                         _%hd142865143169%_
                         _%tl142866143171%_
                         _%e142867143174%_
                         _%hd142868143177%_
                         _%tl142869143179%_
                         _%e142870143182%_
                         _%hd142871143185%_
                         _%tl142872143187%_))
                    (_%__match145214145215%_
                     _%e142837143094%_
                     _%hd142838143097%_
                     _%tl142839143099%_
                     _%e142849143126%_
                     _%hd142850143129%_
                     _%tl142851143131%_
                     _%e142852143134%_
                     _%hd142853143137%_
                     _%tl142854143139%_
                     _%e142855143142%_
                     _%hd142856143145%_
                     _%tl142857143147%_
                     _%e142858143150%_
                     _%hd142859143153%_
                     _%tl142860143155%_
                     _%e142861143158%_
                     _%hd142862143161%_
                     _%tl142863143163%_
                     _%e142864143166%_
                     _%hd142865143169%_
                     _%tl142866143171%_
                     _%e142867143174%_
                     _%hd142868143177%_
                     _%tl142869143179%_
                     _%e142870143182%_
                     _%hd142871143185%_
                     _%tl142872143187%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match145214145215%_
                                                     _%e142837143094%_
                                                     _%hd142838143097%_
                                                     _%tl142839143099%_
                                                     _%e142849143126%_
                                                     _%hd142850143129%_
                                                     _%tl142851143131%_
                                                     _%e142852143134%_
                                                     _%hd142853143137%_
                                                     _%tl142854143139%_
                                                     _%e142855143142%_
                                                     _%hd142856143145%_
                                                     _%tl142857143147%_
                                                     _%e142858143150%_
                                                     _%hd142859143153%_
                                                     _%tl142860143155%_
                                                     _%e142861143158%_
                                                     _%hd142862143161%_
                                                     _%tl142863143163%_
                                                     _%e142864143166%_
                                                     _%hd142865143169%_
                                                     _%tl142866143171%_
                                                     _%e142867143174%_
                                                     _%hd142868143177%_
                                                     _%tl142869143179%_
                                                     _%e142870143182%_
                                                     _%hd142871143185%_
                                                     _%tl142872143187%_))))
                                            (_%__match145214145215%_
                                             _%e142837143094%_
                                             _%hd142838143097%_
                                             _%tl142839143099%_
                                             _%e142849143126%_
                                             _%hd142850143129%_
                                             _%tl142851143131%_
                                             _%e142852143134%_
                                             _%hd142853143137%_
                                             _%tl142854143139%_
                                             _%e142855143142%_
                                             _%hd142856143145%_
                                             _%tl142857143147%_
                                             _%e142858143150%_
                                             _%hd142859143153%_
                                             _%tl142860143155%_
                                             _%e142861143158%_
                                             _%hd142862143161%_
                                             _%tl142863143163%_
                                             _%e142864143166%_
                                             _%hd142865143169%_
                                             _%tl142866143171%_
                                             _%e142867143174%_
                                             _%hd142868143177%_
                                             _%tl142869143179%_
                                             _%e142870143182%_
                                             _%hd142871143185%_
                                             _%tl142872143187%_))))
                                    (_%__match145214145215%_
                                     _%e142837143094%_
                                     _%hd142838143097%_
                                     _%tl142839143099%_
                                     _%e142849143126%_
                                     _%hd142850143129%_
                                     _%tl142851143131%_
                                     _%e142852143134%_
                                     _%hd142853143137%_
                                     _%tl142854143139%_
                                     _%e142855143142%_
                                     _%hd142856143145%_
                                     _%tl142857143147%_
                                     _%e142858143150%_
                                     _%hd142859143153%_
                                     _%tl142860143155%_
                                     _%e142861143158%_
                                     _%hd142862143161%_
                                     _%tl142863143163%_
                                     _%e142864143166%_
                                     _%hd142865143169%_
                                     _%tl142866143171%_
                                     _%e142867143174%_
                                     _%hd142868143177%_
                                     _%tl142869143179%_
                                     _%e142870143182%_
                                     _%hd142871143185%_
                                     _%tl142872143187%_))
                                (_%__match145214145215%_
                                 _%e142837143094%_
                                 _%hd142838143097%_
                                 _%tl142839143099%_
                                 _%e142849143126%_
                                 _%hd142850143129%_
                                 _%tl142851143131%_
                                 _%e142852143134%_
                                 _%hd142853143137%_
                                 _%tl142854143139%_
                                 _%e142855143142%_
                                 _%hd142856143145%_
                                 _%tl142857143147%_
                                 _%e142858143150%_
                                 _%hd142859143153%_
                                 _%tl142860143155%_
                                 _%e142861143158%_
                                 _%hd142862143161%_
                                 _%tl142863143163%_
                                 _%e142864143166%_
                                 _%hd142865143169%_
                                 _%tl142866143171%_
                                 _%e142867143174%_
                                 _%hd142868143177%_
                                 _%tl142869143179%_
                                 _%e142870143182%_
                                 _%hd142871143185%_
                                 _%tl142872143187%_))
                            (_%__kont145117145118%_))))
                    (_%__kont145117145118%_))
                (_%__kont145117145118%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont145117145118%_))))
                                            (_%__kont145117145118%_))))
                                    (_%__kont145117145118%_))
                                (_%__kont145117145118%_))))
                        (_%__kont145117145118%_))
                    (_%__kont145117145118%_))
                (_%__kont145117145118%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont145117145118%_))))
                                        (_%__kont145117145118%_))
                                    (_%__kont145117145118%_))
                                (_%__kont145117145118%_))))
                        (_%__kont145117145118%_))))
                (_%__kont145117145118%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop142843143107%_
                                     _%target142840143102%_
                                     '()))))
                               (_%__match145132145133%_
                                (lambda (_%e142789143354%_
                                         _%hd142790143357%_
                                         _%tl142791143359%_
                                         _%__splice145105145106%_
                                         _%target142792143362%_
                                         _%tl142794143364%_)
                                  (letrec ((_%loop142795143367%_
                                            (lambda (_%hd142793143370%_
                                                     _%arg142799143372%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd142793143370%_))
                                                  (let ((_%e142796143375%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd142793143370%_))))
                                                    (let ((_%lp-tl142798143380%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e142796143375%_)))
                                                          (_%lp-hd142797143378%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e142796143375%_))))
                                                      (_%loop142795143367%_
                                                       _%lp-tl142798143380%_
                                                       (cons _%lp-hd142797143378%_
                                                             _%arg142799143372%_))))
                                                  (let ((_%arg142800143383%_
                                                         (reverse _%arg142799143372%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl142791143359%_))
                                                        (let ((_%e142801143386%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl142791143359%_))))
                  (let ((_%tl142803143391%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e142801143386%_)))
                        (_%hd142802143389%_
                         (let ()
                           (declare (not safe))
                           (##car _%e142801143386%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd142802143389%_))
                        (let ((_%e142804143394%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd142802143389%_))))
                          (let ((_%tl142806143399%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142804143394%_)))
                                (_%hd142805143397%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142804143394%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd142805143397%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd142805143397%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl142806143399%_))
                                        (let ((_%e142807143402%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl142806143399%_))))
                                          (let ((_%tl142809143407%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142807143402%_)))
                                                (_%hd142808143405%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142807143402%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd142808143405%_))
                                                (let ((_%e142810143410%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd142808143405%_))))
                                                  (let ((_%tl142812143415%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e142810143410%_)))
                                                        (_%hd142811143413%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e142810143410%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd142811143413%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd142811143413%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl142812143415%_))
                        (let ((_%e142813143418%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl142812143415%_))))
                          (let ((_%tl142815143423%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142813143418%_)))
                                (_%hd142814143421%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142813143418%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl142815143423%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl142809143407%_))
                                    (let ((_%__splice145107145108%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl142809143407%_
                                              '0))))
                                      (let ((_%tl142818143428%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice145107145108%_
                                                '1)))
                                            (_%target142816143426%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice145107145108%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl142818143428%_))
                                            (letrec ((_%loop142819143431%_
                                                      (lambda (_%hd142817143434%_
                                                               _%xarg142823143436%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd142817143434%_))
                                                            (let ((_%e142820143439%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd142817143434%_))))
                      (let ((_%lp-tl142822143444%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e142820143439%_)))
                            (_%lp-hd142821143442%_
                             (let ()
                               (declare (not safe))
                               (##car _%e142820143439%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd142821143442%_))
                            (let ((_%e142825143447%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd142821143442%_))))
                              (let ((_%tl142827143452%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e142825143447%_)))
                                    (_%hd142826143450%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e142825143447%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd142826143450%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd142826143450%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl142827143452%_))
                                            (let ((_%e142828143455%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl142827143452%_))))
                                              (let ((_%tl142830143460%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e142828143455%_)))
                                                    (_%hd142829143458%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e142828143455%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl142830143460%_))
                                                    (_%loop142819143431%_
                                                     _%lp-tl142822143444%_
                                                     (cons _%hd142829143458%_
                                                           _%xarg142823143436%_))
                                                    (_%__match145144145145%_
                                                     _%e142789143354%_
                                                     _%hd142790143357%_
                                                     _%tl142791143359%_
                                                     _%__splice145105145106%_
                                                     _%target142792143362%_
                                                     _%tl142794143364%_))))
                                            (_%__match145144145145%_
                                             _%e142789143354%_
                                             _%hd142790143357%_
                                             _%tl142791143359%_
                                             _%__splice145105145106%_
                                             _%target142792143362%_
                                             _%tl142794143364%_))
                                        (_%__match145144145145%_
                                         _%e142789143354%_
                                         _%hd142790143357%_
                                         _%tl142791143359%_
                                         _%__splice145105145106%_
                                         _%target142792143362%_
                                         _%tl142794143364%_))
                                    (_%__match145144145145%_
                                     _%e142789143354%_
                                     _%hd142790143357%_
                                     _%tl142791143359%_
                                     _%__splice145105145106%_
                                     _%target142792143362%_
                                     _%tl142794143364%_))))
                            (_%__match145144145145%_
                             _%e142789143354%_
                             _%hd142790143357%_
                             _%tl142791143359%_
                             _%__splice145105145106%_
                             _%target142792143362%_
                             _%tl142794143364%_))))
                    (let ((_%xarg142824143463%_
                           (reverse _%xarg142823143436%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl142803143391%_))
                          (let ((_%L143466%_ _%xarg142824143463%_)
                                (_%L143467%_ _%hd142814143421%_)
                                (_%L143468%_ _%arg142800143383%_))
                            (if (and (let ((__tmp146398
                                            (let ((__tmp146399
                                                   (lambda (_%g143496143499%_
                                                            _%g143497143501%_)
                                                     (cons _%g143496143499%_
                                                           _%g143497143501%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp146399
                                               '()
                                               _%L143468%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp146398))
                                     (let ((__tmp146402
                                            (length (let ((__tmp146403
                                                           (lambda (_%g143503143506%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g143504143508%_)
                     (cons _%g143503143506%_ _%g143504143508%_))))
              (declare (not safe))
              (__foldr1 __tmp146403 '() _%L143468%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp146400
                                            (length (let ((__tmp146401
                                                           (lambda (_%g143510143513%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g143511143515%_)
                     (cons _%g143510143513%_ _%g143511143515%_))))
              (declare (not safe))
              (__foldr1 __tmp146401 '() _%L143466%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp146402 __tmp146400))
                                     (let ((__tmp146406
                                            (let ((__tmp146407
                                                   (lambda (_%g143517143520%_
                                                            _%g143518143522%_)
                                                     (cons _%g143517143520%_
                                                           _%g143518143522%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp146407
                                               '()
                                               _%L143468%_)))
                                           (__tmp146404
                                            (let ((__tmp146405
                                                   (lambda (_%g143524143527%_
                                                            _%g143525143529%_)
                                                     (cons _%g143524143527%_
                                                           _%g143525143529%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp146405
                                               '()
                                               _%L143466%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp146406
                                        __tmp146404))
                                     (not (let ((__tmp146410
                                                 (lambda (_%g143531143533%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g143531143533%_
                                                      _%L143467%_))))
                                                (__tmp146408
                                                 (let ((__tmp146409
                                                        (lambda (_%g143535143538%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g143536143540%_)
                  (cons _%g143535143538%_ _%g143536143540%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp146409
                                                    '()
                                                    _%L143468%_))))
                                            (declare (not safe))
                                            (__find __tmp146410 __tmp146408))))
                                (_%__kont145103145104%_
                                 _%L143466%_
                                 _%L143467%_
                                 _%L143468%_)
                                (_%__match145144145145%_
                                 _%e142789143354%_
                                 _%hd142790143357%_
                                 _%tl142791143359%_
                                 _%__splice145105145106%_
                                 _%target142792143362%_
                                 _%tl142794143364%_)))
                          (_%__match145144145145%_
                           _%e142789143354%_
                           _%hd142790143357%_
                           _%tl142791143359%_
                           _%__splice145105145106%_
                           _%target142792143362%_
                           _%tl142794143364%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop142819143431%_
                                               _%target142816143426%_
                                               '()))
                                            (_%__match145144145145%_
                                             _%e142789143354%_
                                             _%hd142790143357%_
                                             _%tl142791143359%_
                                             _%__splice145105145106%_
                                             _%target142792143362%_
                                             _%tl142794143364%_))))
                                    (_%__match145144145145%_
                                     _%e142789143354%_
                                     _%hd142790143357%_
                                     _%tl142791143359%_
                                     _%__splice145105145106%_
                                     _%target142792143362%_
                                     _%tl142794143364%_))
                                (_%__match145144145145%_
                                 _%e142789143354%_
                                 _%hd142790143357%_
                                 _%tl142791143359%_
                                 _%__splice145105145106%_
                                 _%target142792143362%_
                                 _%tl142794143364%_))))
                        (_%__match145144145145%_
                         _%e142789143354%_
                         _%hd142790143357%_
                         _%tl142791143359%_
                         _%__splice145105145106%_
                         _%target142792143362%_
                         _%tl142794143364%_))
                    (_%__match145144145145%_
                     _%e142789143354%_
                     _%hd142790143357%_
                     _%tl142791143359%_
                     _%__splice145105145106%_
                     _%target142792143362%_
                     _%tl142794143364%_))
                (_%__match145144145145%_
                 _%e142789143354%_
                 _%hd142790143357%_
                 _%tl142791143359%_
                 _%__splice145105145106%_
                 _%target142792143362%_
                 _%tl142794143364%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match145144145145%_
                                                 _%e142789143354%_
                                                 _%hd142790143357%_
                                                 _%tl142791143359%_
                                                 _%__splice145105145106%_
                                                 _%target142792143362%_
                                                 _%tl142794143364%_))))
                                        (_%__match145144145145%_
                                         _%e142789143354%_
                                         _%hd142790143357%_
                                         _%tl142791143359%_
                                         _%__splice145105145106%_
                                         _%target142792143362%_
                                         _%tl142794143364%_))
                                    (_%__match145144145145%_
                                     _%e142789143354%_
                                     _%hd142790143357%_
                                     _%tl142791143359%_
                                     _%__splice145105145106%_
                                     _%target142792143362%_
                                     _%tl142794143364%_))
                                (_%__match145144145145%_
                                 _%e142789143354%_
                                 _%hd142790143357%_
                                 _%tl142791143359%_
                                 _%__splice145105145106%_
                                 _%target142792143362%_
                                 _%tl142794143364%_))))
                        (_%__match145144145145%_
                         _%e142789143354%_
                         _%hd142790143357%_
                         _%tl142791143359%_
                         _%__splice145105145106%_
                         _%target142792143362%_
                         _%tl142794143364%_))))
                (_%__match145144145145%_
                 _%e142789143354%_
                 _%hd142790143357%_
                 _%tl142791143359%_
                 _%__splice145105145106%_
                 _%target142792143362%_
                 _%tl142794143364%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop142795143367%_
                                     _%target142792143362%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx145101145102%_))
                              (let ((_%e142789143354%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx145101145102%_))))
                                (let ((_%tl142791143359%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142789143354%_)))
                                      (_%hd142790143357%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142789143354%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd142790143357%_))
                                      (let ((_%__splice145105145106%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd142790143357%_
                                                '0))))
                                        (let ((_%tl142794143364%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice145105145106%_
                                                  '1)))
                                              (_%target142792143362%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice145105145106%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142794143364%_))
                                              (_%__match145132145133%_
                                               _%e142789143354%_
                                               _%hd142790143357%_
                                               _%tl142791143359%_
                                               _%__splice145105145106%_
                                               _%target142792143362%_
                                               _%tl142794143364%_)
                                              (_%__match145144145145%_
                                               _%e142789143354%_
                                               _%hd142790143357%_
                                               _%tl142791143359%_
                                               _%__splice145105145106%_
                                               _%target142792143362%_
                                               _%tl142794143364%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl142791143359%_))
                                          (let ((_%e142904142961%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl142791143359%_))))
                                            (let ((_%tl142906142966%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e142904142961%_)))
                                                  (_%hd142905142964%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e142904142961%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd142905142964%_))
                                                  (let ((_%e142907142969%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd142905142964%_))))
                                                    (let ((_%tl142909142974%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e142907142969%_)))
                                                          (_%hd142908142972%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e142907142969%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd142908142972%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd142908142972%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl142909142974%_))
                          (let ((_%e142910142977%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl142909142974%_))))
                            (let ((_%tl142912142982%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e142910142977%_)))
                                  (_%hd142911142980%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e142910142977%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd142911142980%_))
                                  (let ((_%e142913142985%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd142911142980%_))))
                                    (let ((_%tl142915142990%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e142913142985%_)))
                                          (_%hd142914142988%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e142913142985%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd142914142988%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd142914142988%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl142915142990%_))
                                                  (let ((_%e142916142993%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl142915142990%_))))
                                                    (let ((_%tl142918142998%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e142916142993%_)))
                                                          (_%hd142917142996%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e142916142993%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl142918142998%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl142912142982%_))
                      (let ((_%e142919143001%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl142912142982%_))))
                        (let ((_%tl142921143006%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142919143001%_)))
                              (_%hd142920143004%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142919143001%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd142920143004%_))
                              (let ((_%e142922143009%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd142920143004%_))))
                                (let ((_%tl142924143014%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142922143009%_)))
                                      (_%hd142923143012%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142922143009%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd142923143012%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd142923143012%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl142924143014%_))
                                              (let ((_%e142925143017%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl142924143014%_))))
                                                (let ((_%tl142927143022%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142925143017%_)))
                                                      (_%hd142926143020%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142925143017%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl142927143022%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl142921143006%_))
                                                          (let ((_%e142928143025%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl142921143006%_))))
                    (let ((_%tl142930143030%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e142928143025%_)))
                          (_%hd142929143028%_
                           (let ()
                             (declare (not safe))
                             (##car _%e142928143025%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd142929143028%_))
                          (let ((_%e142931143033%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd142929143028%_))))
                            (let ((_%tl142933143038%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e142931143033%_)))
                                  (_%hd142932143036%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e142931143033%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd142932143036%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd142932143036%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl142933143038%_))
                                          (let ((_%e142934143041%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl142933143038%_))))
                                            (let ((_%tl142936143046%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e142934143041%_)))
                                                  (_%hd142935143044%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e142934143041%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl142936143046%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl142930143030%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl142906142966%_))
                                                          (_%__match145242145243%_
                                                           _%e142789143354%_
                                                           _%hd142790143357%_
                                                           _%tl142791143359%_
                                                           _%e142904142961%_
                                                           _%hd142905142964%_
                                                           _%tl142906142966%_
                                                           _%e142907142969%_
                                                           _%hd142908142972%_
                                                           _%tl142909142974%_
                                                           _%e142910142977%_
                                                           _%hd142911142980%_
                                                           _%tl142912142982%_
                                                           _%e142913142985%_
                                                           _%hd142914142988%_
                                                           _%tl142915142990%_
                                                           _%e142916142993%_
                                                           _%hd142917142996%_
                                                           _%tl142918142998%_
                                                           _%e142919143001%_
                                                           _%hd142920143004%_
                                                           _%tl142921143006%_
                                                           _%e142922143009%_
                                                           _%hd142923143012%_
                                                           _%tl142924143014%_
                                                           _%e142925143017%_
                                                           _%hd142926143020%_
                                                           _%tl142927143022%_
                                                           _%e142928143025%_
                                                           _%hd142929143028%_
                                                           _%tl142930143030%_
                                                           _%e142931143033%_
                                                           _%hd142932143036%_
                                                           _%tl142933143038%_
                                                           _%e142934143041%_
                                                           _%hd142935143044%_
                                                           _%tl142936143046%_)
                                                          (_%__kont145117145118%_))
                                                      (_%__kont145117145118%_))
                                                  (_%__kont145117145118%_))))
                                          (_%__kont145117145118%_))
                                      (_%__kont145117145118%_))
                                  (_%__kont145117145118%_))))
                          (_%__kont145117145118%_))))
                  (_%__kont145117145118%_))
              (_%__kont145117145118%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont145117145118%_))
                                          (_%__kont145117145118%_))
                                      (_%__kont145117145118%_))))
                              (_%__kont145117145118%_))))
                      (_%__kont145117145118%_))
                  (_%__kont145117145118%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont145117145118%_))
                                              (_%__kont145117145118%_))
                                          (_%__kont145117145118%_))))
                                  (_%__kont145117145118%_))))
                          (_%__kont145117145118%_))
                      (_%__kont145117145118%_))
                  (_%__kont145117145118%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont145117145118%_))))
                                          (_%__kont145117145118%_)))))
                              (_%__kont145117145118%_)))))))
                 (_%dispatch-case-e142089%_
                  (lambda (_%hd142240%_ _%body142241%_)
                    (let* ((_%form142243%_
                            (cons _%hd142240%_ (cons _%body142241%_ '())))
                           (_%__stx145245145246%_ _%form142243%_)
                           (_%g142247142371%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx145245145246%_)))))
                      (let ((_%__kont145247145248%_
                             (lambda (_%L142742%_ _%L142743%_ _%L142744%_)
                               (let ((__tmp146411
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L142743%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self142085%_
                                  __tmp146411))))
                            (_%__kont145253145254%_
                             (lambda (_%L142590%_
                                      _%L142591%_
                                      _%L142592%_
                                      _%L142593%_)
                               (let ((__tmp146412
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L142590%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self142085%_
                                  __tmp146412))))
                            (_%__kont145257145258%_
                             (lambda (_%L142456%_ _%L142457%_ _%L142458%_)
                               (let ((__tmp146413
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L142456%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self142085%_
                                  __tmp146413)))))
                        (let* ((_%__match145354145355%_
                                (lambda (_%e142337142376%_
                                         _%hd142338142379%_
                                         _%tl142339142381%_
                                         _%e142340142384%_
                                         _%hd142341142387%_
                                         _%tl142342142389%_
                                         _%e142343142392%_
                                         _%hd142344142395%_
                                         _%tl142345142397%_
                                         _%e142346142400%_
                                         _%hd142347142403%_
                                         _%tl142348142405%_
                                         _%e142349142408%_
                                         _%hd142350142411%_
                                         _%tl142351142413%_
                                         _%e142352142416%_
                                         _%hd142353142419%_
                                         _%tl142354142421%_
                                         _%e142355142424%_
                                         _%hd142356142427%_
                                         _%tl142357142429%_
                                         _%e142358142432%_
                                         _%hd142359142435%_
                                         _%tl142360142437%_
                                         _%e142361142440%_
                                         _%hd142362142443%_
                                         _%tl142363142445%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl142357142429%_))
                                      (let ((_%e142364142448%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl142357142429%_))))
                                        (let ((_%tl142366142453%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e142364142448%_)))
                                              (_%hd142365142451%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e142364142448%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142366142453%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl142342142389%_))
                                                  (_%__kont145257145258%_
                                                   _%hd142362142443%_
                                                   _%hd142353142419%_
                                                   _%hd142338142379%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g142247142371%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g142247142371%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g142247142371%_)))))
                               (_%__match145284145285%_
                                (lambda (_%e142298142494%_
                                         _%hd142299142497%_
                                         _%tl142300142499%_
                                         _%__splice145255145256%_
                                         _%target142301142502%_
                                         _%tl142303142504%_)
                                  (letrec ((_%loop142304142507%_
                                            (lambda (_%hd142302142510%_
                                                     _%arg142308142512%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd142302142510%_))
                                                  (let ((_%e142305142515%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd142302142510%_))))
                                                    (let ((_%lp-tl142307142520%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e142305142515%_)))
                                                          (_%lp-hd142306142518%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e142305142515%_))))
                                                      (_%loop142304142507%_
                                                       _%lp-tl142307142520%_
                                                       (cons _%lp-hd142306142518%_
                                                             _%arg142308142512%_))))
                                                  (let ((_%arg142309142523%_
                                                         (reverse _%arg142308142512%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl142300142499%_))
                                                        (let ((_%e142310142526%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl142300142499%_))))
                  (let ((_%tl142312142531%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e142310142526%_)))
                        (_%hd142311142529%_
                         (let ()
                           (declare (not safe))
                           (##car _%e142310142526%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd142311142529%_))
                        (let ((_%e142313142534%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd142311142529%_))))
                          (let ((_%tl142315142539%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142313142534%_)))
                                (_%hd142314142537%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142313142534%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd142314142537%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd142314142537%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl142315142539%_))
                                        (let ((_%e142316142542%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl142315142539%_))))
                                          (let ((_%tl142318142547%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142316142542%_)))
                                                (_%hd142317142545%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142316142542%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd142317142545%_))
                                                (let ((_%e142319142550%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd142317142545%_))))
                                                  (let ((_%tl142321142555%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e142319142550%_)))
                                                        (_%hd142320142553%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e142319142550%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd142320142553%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd142320142553%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl142321142555%_))
                        (let ((_%e142322142558%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl142321142555%_))))
                          (let ((_%tl142324142563%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142322142558%_)))
                                (_%hd142323142561%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142322142558%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl142324142563%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl142318142547%_))
                                    (let ((_%e142325142566%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl142318142547%_))))
                                      (let ((_%tl142327142571%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e142325142566%_)))
                                            (_%hd142326142569%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e142325142566%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd142326142569%_))
                                            (let ((_%e142328142574%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd142326142569%_))))
                                              (let ((_%tl142330142579%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e142328142574%_)))
                                                    (_%hd142329142577%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e142328142574%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd142329142577%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd142329142577%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl142330142579%_))
                                                            (let ((_%e142331142582%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl142330142579%_))))
                      (let ((_%tl142333142587%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e142331142582%_)))
                            (_%hd142332142585%_
                             (let ()
                               (declare (not safe))
                               (##car _%e142331142582%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl142333142587%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl142312142531%_))
                                (_%__kont145253145254%_
                                 _%hd142332142585%_
                                 _%hd142323142561%_
                                 _%tl142303142504%_
                                 _%arg142309142523%_)
                                (_%__match145354145355%_
                                 _%e142298142494%_
                                 _%hd142299142497%_
                                 _%tl142300142499%_
                                 _%e142310142526%_
                                 _%hd142311142529%_
                                 _%tl142312142531%_
                                 _%e142313142534%_
                                 _%hd142314142537%_
                                 _%tl142315142539%_
                                 _%e142316142542%_
                                 _%hd142317142545%_
                                 _%tl142318142547%_
                                 _%e142319142550%_
                                 _%hd142320142553%_
                                 _%tl142321142555%_
                                 _%e142322142558%_
                                 _%hd142323142561%_
                                 _%tl142324142563%_
                                 _%e142325142566%_
                                 _%hd142326142569%_
                                 _%tl142327142571%_
                                 _%e142328142574%_
                                 _%hd142329142577%_
                                 _%tl142330142579%_
                                 _%e142331142582%_
                                 _%hd142332142585%_
                                 _%tl142333142587%_))
                            (let ()
                              (declare (not safe))
                              (_%g142247142371%_)))))
                    (let () (declare (not safe)) (_%g142247142371%_)))
                (let () (declare (not safe)) (_%g142247142371%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g142247142371%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g142247142371%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g142247142371%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g142247142371%_)))))
                        (let () (declare (not safe)) (_%g142247142371%_)))
                    (let () (declare (not safe)) (_%g142247142371%_)))
                (let () (declare (not safe)) (_%g142247142371%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g142247142371%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g142247142371%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g142247142371%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g142247142371%_)))))
                        (let () (declare (not safe)) (_%g142247142371%_)))))
                (let () (declare (not safe)) (_%g142247142371%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop142304142507%_
                                     _%target142301142502%_
                                     '()))))
                               (_%__match145272145273%_
                                (lambda (_%e142252142630%_
                                         _%hd142253142633%_
                                         _%tl142254142635%_
                                         _%__splice145249145250%_
                                         _%target142255142638%_
                                         _%tl142257142640%_)
                                  (letrec ((_%loop142258142643%_
                                            (lambda (_%hd142256142646%_
                                                     _%arg142262142648%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd142256142646%_))
                                                  (let ((_%e142259142651%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd142256142646%_))))
                                                    (let ((_%lp-tl142261142656%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e142259142651%_)))
                                                          (_%lp-hd142260142654%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e142259142651%_))))
                                                      (_%loop142258142643%_
                                                       _%lp-tl142261142656%_
                                                       (cons _%lp-hd142260142654%_
                                                             _%arg142262142648%_))))
                                                  (let ((_%arg142263142659%_
                                                         (reverse _%arg142262142648%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl142254142635%_))
                                                        (let ((_%e142264142662%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl142254142635%_))))
                  (let ((_%tl142266142667%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e142264142662%_)))
                        (_%hd142265142665%_
                         (let ()
                           (declare (not safe))
                           (##car _%e142264142662%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd142265142665%_))
                        (let ((_%e142267142670%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd142265142665%_))))
                          (let ((_%tl142269142675%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142267142670%_)))
                                (_%hd142268142673%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142267142670%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd142268142673%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd142268142673%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl142269142675%_))
                                        (let ((_%e142270142678%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl142269142675%_))))
                                          (let ((_%tl142272142683%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142270142678%_)))
                                                (_%hd142271142681%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142270142678%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd142271142681%_))
                                                (let ((_%e142273142686%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd142271142681%_))))
                                                  (let ((_%tl142275142691%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e142273142686%_)))
                                                        (_%hd142274142689%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e142273142686%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd142274142689%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd142274142689%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl142275142691%_))
                        (let ((_%e142276142694%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl142275142691%_))))
                          (let ((_%tl142278142699%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142276142694%_)))
                                (_%hd142277142697%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142276142694%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl142278142699%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl142272142683%_))
                                    (let ((_%__splice145251145252%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl142272142683%_
                                              '0))))
                                      (let ((_%tl142281142704%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice145251145252%_
                                                '1)))
                                            (_%target142279142702%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice145251145252%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl142281142704%_))
                                            (letrec ((_%loop142282142707%_
                                                      (lambda (_%hd142280142710%_
                                                               _%xarg142286142712%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd142280142710%_))
                                                            (let ((_%e142283142715%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd142280142710%_))))
                      (let ((_%lp-tl142285142720%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e142283142715%_)))
                            (_%lp-hd142284142718%_
                             (let ()
                               (declare (not safe))
                               (##car _%e142283142715%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd142284142718%_))
                            (let ((_%e142288142723%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd142284142718%_))))
                              (let ((_%tl142290142728%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e142288142723%_)))
                                    (_%hd142289142726%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e142288142723%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd142289142726%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd142289142726%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl142290142728%_))
                                            (let ((_%e142291142731%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl142290142728%_))))
                                              (let ((_%tl142293142736%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e142291142731%_)))
                                                    (_%hd142292142734%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e142291142731%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl142293142736%_))
                                                    (_%loop142282142707%_
                                                     _%lp-tl142285142720%_
                                                     (cons _%hd142292142734%_
                                                           _%xarg142286142712%_))
                                                    (_%__match145284145285%_
                                                     _%e142252142630%_
                                                     _%hd142253142633%_
                                                     _%tl142254142635%_
                                                     _%__splice145249145250%_
                                                     _%target142255142638%_
                                                     _%tl142257142640%_))))
                                            (_%__match145284145285%_
                                             _%e142252142630%_
                                             _%hd142253142633%_
                                             _%tl142254142635%_
                                             _%__splice145249145250%_
                                             _%target142255142638%_
                                             _%tl142257142640%_))
                                        (_%__match145284145285%_
                                         _%e142252142630%_
                                         _%hd142253142633%_
                                         _%tl142254142635%_
                                         _%__splice145249145250%_
                                         _%target142255142638%_
                                         _%tl142257142640%_))
                                    (_%__match145284145285%_
                                     _%e142252142630%_
                                     _%hd142253142633%_
                                     _%tl142254142635%_
                                     _%__splice145249145250%_
                                     _%target142255142638%_
                                     _%tl142257142640%_))))
                            (_%__match145284145285%_
                             _%e142252142630%_
                             _%hd142253142633%_
                             _%tl142254142635%_
                             _%__splice145249145250%_
                             _%target142255142638%_
                             _%tl142257142640%_))))
                    (let ((_%xarg142287142739%_
                           (reverse _%xarg142286142712%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl142266142667%_))
                          (_%__kont145247145248%_
                           _%xarg142287142739%_
                           _%hd142277142697%_
                           _%arg142263142659%_)
                          (_%__match145284145285%_
                           _%e142252142630%_
                           _%hd142253142633%_
                           _%tl142254142635%_
                           _%__splice145249145250%_
                           _%target142255142638%_
                           _%tl142257142640%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop142282142707%_
                                               _%target142279142702%_
                                               '()))
                                            (_%__match145284145285%_
                                             _%e142252142630%_
                                             _%hd142253142633%_
                                             _%tl142254142635%_
                                             _%__splice145249145250%_
                                             _%target142255142638%_
                                             _%tl142257142640%_))))
                                    (_%__match145284145285%_
                                     _%e142252142630%_
                                     _%hd142253142633%_
                                     _%tl142254142635%_
                                     _%__splice145249145250%_
                                     _%target142255142638%_
                                     _%tl142257142640%_))
                                (_%__match145284145285%_
                                 _%e142252142630%_
                                 _%hd142253142633%_
                                 _%tl142254142635%_
                                 _%__splice145249145250%_
                                 _%target142255142638%_
                                 _%tl142257142640%_))))
                        (_%__match145284145285%_
                         _%e142252142630%_
                         _%hd142253142633%_
                         _%tl142254142635%_
                         _%__splice145249145250%_
                         _%target142255142638%_
                         _%tl142257142640%_))
                    (_%__match145284145285%_
                     _%e142252142630%_
                     _%hd142253142633%_
                     _%tl142254142635%_
                     _%__splice145249145250%_
                     _%target142255142638%_
                     _%tl142257142640%_))
                (_%__match145284145285%_
                 _%e142252142630%_
                 _%hd142253142633%_
                 _%tl142254142635%_
                 _%__splice145249145250%_
                 _%target142255142638%_
                 _%tl142257142640%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match145284145285%_
                                                 _%e142252142630%_
                                                 _%hd142253142633%_
                                                 _%tl142254142635%_
                                                 _%__splice145249145250%_
                                                 _%target142255142638%_
                                                 _%tl142257142640%_))))
                                        (_%__match145284145285%_
                                         _%e142252142630%_
                                         _%hd142253142633%_
                                         _%tl142254142635%_
                                         _%__splice145249145250%_
                                         _%target142255142638%_
                                         _%tl142257142640%_))
                                    (_%__match145284145285%_
                                     _%e142252142630%_
                                     _%hd142253142633%_
                                     _%tl142254142635%_
                                     _%__splice145249145250%_
                                     _%target142255142638%_
                                     _%tl142257142640%_))
                                (_%__match145284145285%_
                                 _%e142252142630%_
                                 _%hd142253142633%_
                                 _%tl142254142635%_
                                 _%__splice145249145250%_
                                 _%target142255142638%_
                                 _%tl142257142640%_))))
                        (_%__match145284145285%_
                         _%e142252142630%_
                         _%hd142253142633%_
                         _%tl142254142635%_
                         _%__splice145249145250%_
                         _%target142255142638%_
                         _%tl142257142640%_))))
                (_%__match145284145285%_
                 _%e142252142630%_
                 _%hd142253142633%_
                 _%tl142254142635%_
                 _%__splice145249145250%_
                 _%target142255142638%_
                 _%tl142257142640%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop142258142643%_
                                     _%target142255142638%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx145245145246%_))
                              (let ((_%e142252142630%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx145245145246%_))))
                                (let ((_%tl142254142635%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142252142630%_)))
                                      (_%hd142253142633%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142252142630%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd142253142633%_))
                                      (let ((_%__splice145249145250%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd142253142633%_
                                                '0))))
                                        (let ((_%tl142257142640%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice145249145250%_
                                                  '1)))
                                              (_%target142255142638%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice145249145250%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142257142640%_))
                                              (_%__match145272145273%_
                                               _%e142252142630%_
                                               _%hd142253142633%_
                                               _%tl142254142635%_
                                               _%__splice145249145250%_
                                               _%target142255142638%_
                                               _%tl142257142640%_)
                                              (_%__match145284145285%_
                                               _%e142252142630%_
                                               _%hd142253142633%_
                                               _%tl142254142635%_
                                               _%__splice145249145250%_
                                               _%target142255142638%_
                                               _%tl142257142640%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl142254142635%_))
                                          (let ((_%e142340142384%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl142254142635%_))))
                                            (let ((_%tl142342142389%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e142340142384%_)))
                                                  (_%hd142341142387%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e142340142384%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd142341142387%_))
                                                  (let ((_%e142343142392%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd142341142387%_))))
                                                    (let ((_%tl142345142397%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e142343142392%_)))
                                                          (_%hd142344142395%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e142343142392%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd142344142395%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd142344142395%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl142345142397%_))
                          (let ((_%e142346142400%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl142345142397%_))))
                            (let ((_%tl142348142405%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e142346142400%_)))
                                  (_%hd142347142403%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e142346142400%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd142347142403%_))
                                  (let ((_%e142349142408%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd142347142403%_))))
                                    (let ((_%tl142351142413%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e142349142408%_)))
                                          (_%hd142350142411%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e142349142408%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd142350142411%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd142350142411%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl142351142413%_))
                                                  (let ((_%e142352142416%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl142351142413%_))))
                                                    (let ((_%tl142354142421%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e142352142416%_)))
                                                          (_%hd142353142419%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e142352142416%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl142354142421%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl142348142405%_))
                      (let ((_%e142355142424%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl142348142405%_))))
                        (let ((_%tl142357142429%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e142355142424%_)))
                              (_%hd142356142427%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e142355142424%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd142356142427%_))
                              (let ((_%e142358142432%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd142356142427%_))))
                                (let ((_%tl142360142437%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142358142432%_)))
                                      (_%hd142359142435%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142358142432%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd142359142435%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd142359142435%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl142360142437%_))
                                              (let ((_%e142361142440%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl142360142437%_))))
                                                (let ((_%tl142363142445%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e142361142440%_)))
                                                      (_%hd142362142443%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e142361142440%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl142363142445%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl142357142429%_))
                                                          (let ((_%e142364142448%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl142357142429%_))))
                    (let ((_%tl142366142453%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e142364142448%_)))
                          (_%hd142365142451%_
                           (let ()
                             (declare (not safe))
                             (##car _%e142364142448%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl142366142453%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl142342142389%_))
                              (_%__kont145257145258%_
                               _%hd142362142443%_
                               _%hd142353142419%_
                               _%hd142253142633%_)
                              (let ()
                                (declare (not safe))
                                (_%g142247142371%_)))
                          (let () (declare (not safe)) (_%g142247142371%_)))))
                  (let () (declare (not safe)) (_%g142247142371%_)))
              (let () (declare (not safe)) (_%g142247142371%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g142247142371%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g142247142371%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g142247142371%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g142247142371%_)))))
                      (let () (declare (not safe)) (_%g142247142371%_)))
                  (let () (declare (not safe)) (_%g142247142371%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g142247142371%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g142247142371%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g142247142371%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g142247142371%_)))))
                          (let () (declare (not safe)) (_%g142247142371%_)))
                      (let () (declare (not safe)) (_%g142247142371%_)))
                  (let () (declare (not safe)) (_%g142247142371%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g142247142371%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g142247142371%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g142247142371%_))))))))
                 (_%generate1142090%_
                  (lambda (_%args142225%_
                           _%arglen142226%_
                           _%hd142227%_
                           _%body142228%_)
                    (let* ((_%len142230%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd142227%_)))
                           (_%condition142235%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd142227%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen142226%_
                                                (cons _%len142230%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen142226%_ (cons _%len142230%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len142230%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen142226%_
                                                    (cons _%len142230%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen142226%_ (cons _%len142230%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch142237%_
                            (if (_%dispatch-case?142088%_
                                 _%hd142227%_
                                 _%body142228%_)
                                (_%dispatch-case-e142089%_
                                 _%hd142227%_
                                 _%body142228%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self142085%_
                                 _%hd142227%_
                                 _%body142228%_))))
                      (cons _%condition142235%_
                            (cons (cons 'apply
                                        (cons _%dispatch142237%_
                                              (cons _%args142225%_ '())))
                                  '()))))))
          (let* ((_%g142092142120%_
                  (lambda (_%g142093142117%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g142093142117%_))))
                 (_%g142091142222%_
                  (lambda (_%g142093142123%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g142093142123%_))
                        (let ((_%e142096142125%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g142093142123%_))))
                          (let ((_%hd142097142128%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142096142125%_)))
                                (_%tl142098142130%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142096142125%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl142098142130%_))
                                (let ((_g146414_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl142098142130%_
                                          '0))))
                                  (begin
                                    (let ((_g146415_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g146414_)
                                                 (##vector-length _g146414_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g146415_ 2)))
                                          (error "Context expects 2 values"
                                                 _g146415_)))
                                    (let ((_%target142099142133%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g146414_ 0)))
                                          (_%tl142101142135%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g146414_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl142101142135%_))
                                          (letrec ((_%loop142102142138%_
                                                    (lambda (_%hd142100142141%_
                                                             _%body142106142143%_
                                                             _%hd142107142145%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd142100142141%_))
                                                          (let ((_%e142103142148%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd142100142141%_))))
                    (let ((_%lp-hd142104142151%_
                           (let ()
                             (declare (not safe))
                             (##car _%e142103142148%_)))
                          (_%lp-tl142105142153%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e142103142148%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd142104142151%_))
                          (let ((_%e142110142156%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd142104142151%_))))
                            (let ((_%hd142111142159%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e142110142156%_)))
                                  (_%tl142112142161%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e142110142156%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl142112142161%_))
                                  (let ((_%e142113142164%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl142112142161%_))))
                                    (let ((_%hd142114142167%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e142113142164%_)))
                                          (_%tl142115142169%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e142113142164%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl142115142169%_))
                                          (_%loop142102142138%_
                                           _%lp-tl142105142153%_
                                           (cons _%hd142114142167%_
                                                 _%body142106142143%_)
                                           (cons _%hd142111142159%_
                                                 _%hd142107142145%_))
                                          (_%g142092142120%_
                                           _%g142093142123%_))))
                                  (_%g142092142120%_ _%g142093142123%_))))
                          (_%g142092142120%_ _%g142093142123%_))))
                  (let ((_%body142108142172%_ (reverse _%body142106142143%_))
                        (_%hd142109142174%_ (reverse _%hd142107142145%_)))
                    ((lambda (_%L142177%_ _%L142178%_)
                       (let ((_%args142197%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen142198%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name142199%_
                              (let ((_%$e142194%_
                                     (let ((__tmp146416
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp146416 _%stx142086%_))))
                                (if _%$e142194%_
                                    _%$e142194%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args142197%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen142198%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args142197%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args142197%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp146420
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name142199%_
                                                                (cons _%args142197%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp146417
                                  (map (lambda (_%g142200142203%_
                                                _%g142201142205%_)
                                         (_%generate1142090%_
                                          _%args142197%_
                                          _%arglen142198%_
                                          _%g142200142203%_
                                          _%g142201142205%_))
                                       (let ((__tmp146418
                                              (lambda (_%g142207142210%_
                                                       _%g142208142212%_)
                                                (cons _%g142207142210%_
                                                      _%g142208142212%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp146418
                                          '()
                                          _%L142178%_))
                                       (let ((__tmp146419
                                              (lambda (_%g142214142217%_
                                                       _%g142215142219%_)
                                                (cons _%g142214142217%_
                                                      _%g142215142219%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp146419
                                          '()
                                          _%L142177%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp146420 __tmp146417)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body142108142172%_
                     _%hd142109142174%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop142102142138%_
                                             _%target142099142133%_
                                             '()
                                             '()))
                                          (_%g142092142120%_
                                           _%g142093142123%_)))))
                                (_%g142092142120%_ _%g142093142123%_))))
                        (_%g142092142120%_ _%g142093142123%_)))))
            (_%g142091142222%_ _%stx142086%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self141322%_ _%stx141323%_ _%compiled-body?141324%_)
        (letrec ((_%generate-simple141326%_
                  (lambda (_%hd142070%_ _%body142071%_)
                    (_%coalesce-boolean141327%_
                     (_%simplify-let141328%_
                      (gxc#generate-runtime-simple-let
                       _%self141322%_
                       'let
                       _%hd142070%_
                       _%body142071%_
                       _%compiled-body?141324%_)))))
                 (_%coalesce-boolean141327%_
                  (lambda (_%code141931%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code141932141958%_ _%code141931%_)
                               (_%else141934141966%_
                                (lambda () _%code141931%_))
                               (_%K141936142003%_
                                (lambda (_%expr2141969%_
                                         _%expr1141970%_
                                         _%id141971%_)
                                  (let* ((_%expr2141972141980%_
                                          _%expr2141969%_)
                                         (_%else141974141988%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1141970%_
                                                        (cons _%expr2141969%_
                                                              '())))))
                                         (_%K141976141993%_
                                          (lambda (_%exprs141991%_)
                                            (cons 'or
                                                  (cons _%expr1141970%_
                                                        _%exprs141991%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%expr2141972141980%_))
                                        (let ((_%hd141977141996%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2141972141980%_)))
                                              (_%tl141978141998%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2141972141980%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd141977141996%_ 'or))
                                              (let ((_%exprs142001%_
                                                     _%tl141978141998%_))
                                                (_%K141976141993%_
                                                 _%exprs142001%_))
                                              (_%else141974141988%_)))
                                        (_%else141974141988%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%code141932141958%_))
                              (let ((_%hd141937142006%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code141932141958%_)))
                                    (_%tl141938142008%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code141932141958%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd141937142006%_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%tl141938142008%_))
                                        (let ((_%hd141939142011%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl141938142008%_)))
                                              (_%tl141940142013%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl141938142008%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%hd141939142011%_))
                                              (let ((_%hd141951142016%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd141939142011%_)))
                                                    (_%tl141952142018%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd141939142011%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%hd141951142016%_))
                                                    (let ((_%hd141953142021%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd141951142016%_)))
                                                          (_%tl141954142023%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd141951142016%_))))
                                                      (let ((_%id142026%_
                                                             _%hd141953142021%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _%tl141954142023%_))
                                                            (let ((_%hd141955142028%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl141954142023%_)))
                          (_%tl141956142030%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl141954142023%_))))
                      (let ((_%expr1142033%_ _%hd141955142028%_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _%tl141956142030%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _%tl141952142018%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl141940142013%_))
                                    (let ((_%hd141941142035%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl141940142013%_)))
                                          (_%tl141942142037%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl141940142013%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd141941142035%_))
                                          (let ((_%hd141943142040%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd141941142035%_)))
                                                (_%tl141944142042%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd141941142035%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd141943142040%_
                                                         'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl141944142042%_))
                                                    (let ((_%hd141945142045%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl141944142042%_)))
                                                          (_%tl141946142047%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl141944142042%_))))
                                                      (if ((lambda (_%g142049142051%_)
                                                             (eq? _%g142049142051%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id142026%_))
                   _%hd141945142045%_)
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%tl141946142047%_))
                      (let ((_%hd141947142054%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl141946142047%_)))
                            (_%tl141948142056%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl141946142047%_))))
                        (if ((lambda (_%g142058142060%_)
                               (eq? _%g142058142060%_ _%id142026%_))
                             _%hd141947142054%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl141948142056%_))
                                (let ((_%hd141949142063%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl141948142056%_)))
                                      (_%tl141950142065%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl141948142056%_))))
                                  (let ((_%expr2142068%_ _%hd141949142063%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl141950142065%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%tl141942142037%_))
                                            (_%K141936142003%_
                                             _%expr2142068%_
                                             _%expr1142033%_
                                             _%id142026%_)
                                            (_%else141934141966%_))
                                        (_%else141934141966%_))))
                                (_%else141934141966%_))
                            (_%else141934141966%_)))
                      (_%else141934141966%_))
                  (_%else141934141966%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else141934141966%_))
                                                (_%else141934141966%_)))
                                          (_%else141934141966%_)))
                                    (_%else141934141966%_))
                                (_%else141934141966%_))
                            (_%else141934141966%_))))
                    (_%else141934141966%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else141934141966%_)))
                                              (_%else141934141966%_)))
                                        (_%else141934141966%_))
                                    (_%else141934141966%_)))
                              (_%else141934141966%_)))
                        _%code141931%_)))
                 (_%simplify-let141328%_
                  (lambda (_%code141630%_)
                    (let* ((_%code141631141703%_ _%code141630%_)
                           (_%else141636141711%_ (lambda () _%code141630%_)))
                      (let ((_%K141695141911%_
                             (lambda (_%expr141909%_) _%expr141909%_))
                            (_%K141678141857%_
                             (lambda (_%body141853%_
                                      _%expr141854%_
                                      _%id141855%_)
                               (cons 'let
                                     (cons (cons (cons _%id141855%_
                                                       (cons _%expr141854%_
                                                             '()))
                                                 '())
                                           _%body141853%_))))
                            (_%K141655141781%_
                             (lambda (_%body141775%_
                                      _%expr2141776%_
                                      _%id2141777%_
                                      _%expr1141778%_
                                      _%id1141779%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1141779%_
                                                       (cons _%expr1141778%_
                                                             '()))
                                                 (cons (cons _%id2141777%_
                                                             (cons _%expr2141776%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body141775%_))))
                            (_%K141638141720%_
                             (lambda (_%body141715%_
                                      _%bind141716%_
                                      _%expr1141717%_
                                      _%id1141718%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1141718%_
                                                       (cons _%expr1141717%_
                                                             '()))
                                                 _%bind141716%_)
                                           _%body141715%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%code141631141703%_))
                            (let ((_%tl141697141916%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code141631141703%_)))
                                  (_%hd141696141914%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code141631141703%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd141696141914%_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl141697141916%_))
                                      (let ((_%tl141699141921%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl141697141916%_)))
                                            (_%hd141698141919%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl141697141916%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%hd141698141919%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%tl141699141921%_))
                                                (let ((_%tl141701141926%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl141699141921%_)))
                                                      (_%hd141700141924%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl141699141921%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##null? _%tl141701141926%_))
                                                      (let ((_%expr141929%_
                                                             _%hd141700141924%_))
                                                        (_%K141695141911%_
                                                         _%expr141929%_))
                                                      (_%else141636141711%_)))
                                                (_%else141636141711%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd141698141919%_))
                                                (let ((_%tl141690141872%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd141698141919%_)))
                                                      (_%hd141689141870%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd141698141919%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd141689141870%_))
                                                      (let ((_%tl141692141877%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd141689141870%_)))
                    (_%hd141691141875%_
                     (let () (declare (not safe)) (##car _%hd141689141870%_))))
                (if (let () (declare (not safe)) (##pair? _%tl141692141877%_))
                    (let ((_%tl141694141884%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl141692141877%_)))
                          (_%hd141693141882%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl141692141877%_))))
                      (if (let ()
                            (declare (not safe))
                            (##null? _%tl141694141884%_))
                          (if (let ()
                                (declare (not safe))
                                (##null? _%tl141690141872%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl141699141921%_))
                                  (let ((_%tl141684141891%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl141699141921%_)))
                                        (_%hd141683141889%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl141699141921%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%hd141683141889%_))
                                        (let ((_%tl141686141896%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd141683141889%_)))
                                              (_%hd141685141894%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd141683141889%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd141685141894%_
                                                       'let))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl141686141896%_))
                                                  (let ((_%tl141688141901%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl141686141896%_)))
                                                        (_%hd141687141899%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl141686141896%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _%hd141687141899%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##null? _%tl141684141891%_))
                                                            (let ((_%id141880%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd141691141875%_)
                          (_%expr141887%_ _%hd141693141882%_)
                          (_%body141904%_ _%tl141688141901%_))
                      (_%K141678141857%_
                       _%body141904%_
                       _%expr141887%_
                       _%id141880%_))
                    (_%else141636141711%_))
                (if (let () (declare (not safe)) (##pair? _%hd141687141899%_))
                    (let ((_%tl141667141830%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd141687141899%_)))
                          (_%hd141666141828%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd141687141899%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd141666141828%_))
                          (let ((_%tl141669141835%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd141666141828%_)))
                                (_%hd141668141833%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd141666141828%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl141669141835%_))
                                (let ((_%tl141671141842%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl141669141835%_)))
                                      (_%hd141670141840%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl141669141835%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl141671141842%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl141667141830%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _%tl141684141891%_))
                                              (let ((_%id1141804%_
                                                     _%hd141691141875%_)
                                                    (_%expr1141811%_
                                                     _%hd141693141882%_)
                                                    (_%id2141838%_
                                                     _%hd141668141833%_)
                                                    (_%expr2141845%_
                                                     _%hd141670141840%_)
                                                    (_%body141847%_
                                                     _%tl141688141901%_))
                                                (_%K141655141781%_
                                                 _%body141847%_
                                                 _%expr2141845%_
                                                 _%id2141838%_
                                                 _%expr1141811%_
                                                 _%id1141804%_))
                                              (_%else141636141711%_))
                                          (_%else141636141711%_))
                                      (_%else141636141711%_)))
                                (_%else141636141711%_)))
                          (_%else141636141711%_)))
                    (_%else141636141711%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else141636141711%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd141685141894%_
                                                           'let*))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%tl141686141896%_))
                                                      (let ((_%tl141648141764%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl141686141896%_)))
                    (_%hd141647141762%_
                     (let () (declare (not safe)) (##car _%tl141686141896%_))))
                (if (let () (declare (not safe)) (##null? _%tl141684141891%_))
                    (let ((_%id1141743%_ _%hd141691141875%_)
                          (_%expr1141750%_ _%hd141693141882%_)
                          (_%bind141767%_ _%hd141647141762%_)
                          (_%body141769%_ _%tl141648141764%_))
                      (_%K141638141720%_
                       _%body141769%_
                       _%bind141767%_
                       _%expr1141750%_
                       _%id1141743%_))
                    (_%else141636141711%_)))
              (_%else141636141711%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else141636141711%_))))
                                        (_%else141636141711%_)))
                                  (_%else141636141711%_))
                              (_%else141636141711%_))
                          (_%else141636141711%_)))
                    (_%else141636141711%_)))
              (_%else141636141711%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else141636141711%_))))
                                      (_%else141636141711%_))
                                  (_%else141636141711%_)))
                            (_%else141636141711%_))))))
                 (_%generate-values141329%_
                  (lambda (_%hd141443%_ _%body141444%_)
                    (let _%lp141446%_ ((_%rest141448%_ _%hd141443%_)
                                       (_%bind141449%_ '())
                                       (_%check141450%_ '())
                                       (_%post141451%_ '()))
                      (let* ((_%__stx145574145575%_ _%rest141448%_)
                             (_%g141454141465%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx145574145575%_)))))
                        (let ((_%__kont145576145577%_
                               (lambda (_%L141492%_ _%L141493%_)
                                 (let* ((_%__stx145530145531%_ _%L141493%_)
                                        (_%g141508141533%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx145530145531%_)))))
                                   (let ((_%__kont145532145533%_
                                          (lambda (_%L141606%_ _%L141607%_)
                                            (let ((_%eid141621%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L141607%_)))
                                                  (_%expr141622%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self141322%_
                                                      _%L141606%_))))
                                              (_%lp141446%_
                                               _%L141492%_
                                               (cons (cons _%eid141621%_
                                                           (cons _%expr141622%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind141449%_)
                                               _%check141450%_
                                               _%post141451%_))))
                                         (_%__kont145534145535%_
                                          (lambda (_%L141554%_ _%L141555%_)
                                            (let* ((_%vals141568%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values141570%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals141568%_
                                                     _%L141555%_
                                                     _%L141554%_))
                                                   (_%refs141572%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals141568%_
                                                     _%L141555%_))
                                                   (_%expr141574%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self141322%_
                                                       _%L141554%_))))
                                              (_%lp141446%_
                                               _%L141492%_
                                               (cons (cons _%vals141568%_
                                                           (cons _%expr141574%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind141449%_)
                                               (cons _%check-values141570%_
                                                     _%check141450%_)
                                               (cons _%refs141572%_
                                                     _%post141451%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx145530145531%_))
                                         (let ((_%e141512141582%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx145530145531%_))))
                                           (let ((_%tl141514141587%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e141512141582%_)))
                                                 (_%hd141513141585%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e141512141582%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd141513141585%_))
                                                 (let ((_%e141515141590%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd141513141585%_))))
                                                   (let ((_%tl141517141595%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e141515141590%_)))
                                                         (_%hd141516141593%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e141515141590%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl141517141595%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl141514141587%_))
                     (let ((_%e141518141598%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl141514141587%_))))
                       (let ((_%tl141520141603%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e141518141598%_)))
                             (_%hd141519141601%_
                              (let ()
                                (declare (not safe))
                                (##car _%e141518141598%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl141520141603%_))
                             (_%__kont145532145533%_
                              _%hd141519141601%_
                              _%hd141516141593%_)
                             (let ()
                               (declare (not safe))
                               (_%g141508141533%_)))))
                     (let () (declare (not safe)) (_%g141508141533%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl141514141587%_))
                     (let ((_%e141526141546%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl141514141587%_))))
                       (let ((_%tl141528141551%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e141526141546%_)))
                             (_%hd141527141549%_
                              (let ()
                                (declare (not safe))
                                (##car _%e141526141546%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl141528141551%_))
                             (_%__kont145534145535%_
                              _%hd141527141549%_
                              _%hd141513141585%_)
                             (let ()
                               (declare (not safe))
                               (_%g141508141533%_)))))
                     (let () (declare (not safe)) (_%g141508141533%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl141514141587%_))
                                                     (let ((_%e141526141546%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl141514141587%_))))
                                                       (let ((_%tl141528141551%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e141526141546%_)))
                     (_%hd141527141549%_
                      (let () (declare (not safe)) (##car _%e141526141546%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl141528141551%_))
                     (_%__kont145534145535%_
                      _%hd141527141549%_
                      _%hd141513141585%_)
                     (let () (declare (not safe)) (_%g141508141533%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g141508141533%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g141508141533%_)))))))
                              (_%__kont145578145579%_
                               (lambda ()
                                 (let* ((_%body141472%_
                                         (if _%compiled-body?141324%_
                                             _%body141444%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self141322%_
                                                _%body141444%_))))
                                        (_%body141474%_
                                         (_%generate-values-post141330%_
                                          _%post141451%_
                                          _%body141472%_))
                                        (_%body141476%_
                                         (_%generate-values-check141331%_
                                          _%check141450%_
                                          _%body141474%_)))
                                   (cons 'let
                                         (cons (reverse _%bind141449%_)
                                               (cons _%body141476%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx145574145575%_))
                              (let ((_%e141458141484%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx145574145575%_))))
                                (let ((_%tl141460141489%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141458141484%_)))
                                      (_%hd141459141487%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141458141484%_))))
                                  (_%__kont145576145577%_
                                   _%tl141460141489%_
                                   _%hd141459141487%_)))
                              (_%__kont145578145579%_)))))))
                 (_%generate-values-post141330%_
                  (lambda (_%post141402%_ _%body141403%_)
                    (let _%lp141405%_ ((_%rest141407%_ _%post141402%_)
                                       (_%body141408%_ _%body141403%_))
                      (let* ((_%rest141409141417%_ _%rest141407%_)
                             (_%else141411141425%_ (lambda () _%body141408%_))
                             (_%K141413141431%_
                              (lambda (_%rest141428%_ _%bind141429%_)
                                (_%lp141405%_
                                 _%rest141428%_
                                 (cons 'let
                                       (cons _%bind141429%_
                                             (cons _%body141408%_ '())))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest141409141417%_))
                            (let ((_%hd141414141434%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest141409141417%_)))
                                  (_%tl141415141436%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest141409141417%_))))
                              (let* ((_%bind141439%_ _%hd141414141434%_)
                                     (_%rest141441%_ _%tl141415141436%_))
                                (_%K141413141431%_
                                 _%rest141441%_
                                 _%bind141439%_)))
                            (_%else141411141425%_))))))
                 (_%generate-values-check141331%_
                  (lambda (_%check141399%_ _%body141400%_)
                    (cons 'begin
                          (let ((__tmp146422 (cons _%body141400%_ '()))
                                (__tmp146421 (reverse _%check141399%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp146422 __tmp146421))))))
          (let* ((_%g141333141350%_
                  (lambda (_%g141334141347%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g141334141347%_))))
                 (_%g141332141396%_
                  (lambda (_%g141334141353%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g141334141353%_))
                        (let ((_%e141337141355%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g141334141353%_))))
                          (let ((_%hd141338141358%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141337141355%_)))
                                (_%tl141339141360%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141337141355%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl141339141360%_))
                                (let ((_%e141340141363%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl141339141360%_))))
                                  (let ((_%hd141341141366%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e141340141363%_)))
                                        (_%tl141342141368%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e141340141363%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141342141368%_))
                                        (let ((_%e141343141371%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141342141368%_))))
                                          (let ((_%hd141344141374%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141343141371%_)))
                                                (_%tl141345141376%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141343141371%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl141345141376%_))
                                                ((lambda (_%L141379%_
                                                          _%L141380%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L141380%_)
                                                       (_%generate-simple141326%_
                                                        _%L141380%_
                                                        _%L141379%_)
                                                       (_%generate-values141329%_
                                                        _%L141380%_
                                                        _%L141379%_)))
                                                 _%hd141344141374%_
                                                 _%hd141341141366%_)
                                                (_%g141333141350%_
                                                 _%g141334141353%_))))
                                        (_%g141333141350%_
                                         _%g141334141353%_))))
                                (_%g141333141350%_ _%g141334141353%_))))
                        (_%g141333141350%_ _%g141334141353%_)))))
            (_%g141332141396%_ _%stx141323%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self142076%_ _%stx142077%_)
        (let ((_%compiled-body?142079%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self142076%_
           _%stx142077%_
           _%compiled-body?142079%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g146424_
        (let ((_g146423_ (let () (declare (not safe)) (##length _g146424_))))
          (cond ((let () (declare (not safe)) (##fx= _g146423_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g146424_))
                ((let () (declare (not safe)) (##fx= _g146423_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g146424_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g146424_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals141216%_ _%hd141217%_)
        (let _%lp141219%_ ((_%rest141221%_ _%hd141217%_)
                           (_%k141222%_ '0)
                           (_%r141223%_ '()))
          (let* ((_%__stx145588145589%_ _%rest141221%_)
                 (_%g141228141245%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx145588145589%_)))))
            (let ((_%__kont145590145591%_
                   (lambda (_%L141308%_)
                     (_%lp141219%_
                      _%L141308%_
                      (let () (declare (not safe)) (##fx+ _%k141222%_ '1))
                      _%r141223%_)))
                  (_%__kont145592145593%_
                   (lambda (_%L141281%_ _%L141282%_)
                     (_%lp141219%_
                      _%L141281%_
                      (let () (declare (not safe)) (##fx+ _%k141222%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%L141282%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals141216%_
                                         _%k141222%_
                                         _%L141281%_)
                                        '()))
                            _%r141223%_))))
                  (_%__kont145594145595%_
                   (lambda (_%L141257%_)
                     (let ((__tmp146425
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L141257%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals141216%_
                                               _%k141222%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp146425 _%r141223%_))))
                  (_%__kont145596145597%_ (lambda () (reverse _%r141223%_))))
              (let ((_%g141226141268%_
                     (lambda ()
                       (let ((_%L141257%_ _%__stx145588145589%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%L141257%_))
                             (_%__kont145594145595%_ _%L141257%_)
                             (_%__kont145596145597%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx145588145589%_))
                    (let ((_%e141231141297%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx145588145589%_))))
                      (let ((_%tl141233141302%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141231141297%_)))
                            (_%hd141232141300%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141231141297%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd141232141300%_))
                            (let ((_%e141234141305%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd141232141300%_))))
                              (if (equal? _%e141234141305%_ '#f)
                                  (_%__kont145590145591%_ _%tl141233141302%_)
                                  (_%__kont145592145593%_
                                   _%tl141233141302%_
                                   _%hd141232141300%_)))
                            (_%__kont145592145593%_
                             _%tl141233141302%_
                             _%hd141232141300%_))))
                    (let () (declare (not safe)) (_%g141226141268%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self140895%_ _%stx140896%_ _%compiled-body?140897%_)
        (letrec ((_%generate-simple140899%_
                  (lambda (_%hd141201%_ _%body141202%_)
                    (gxc#generate-runtime-simple-let
                     _%self140895%_
                     'letrec
                     _%hd141201%_
                     _%body141202%_
                     _%compiled-body?140897%_)))
                 (_%generate-values140900%_
                  (lambda (_%hd140980%_ _%body140981%_)
                    (let _%lp140983%_ ((_%rest140985%_ _%hd140980%_)
                                       (_%bind140986%_ '())
                                       (_%check140987%_ '())
                                       (_%post140988%_ '()))
                      (let* ((_%__stx145662145663%_ _%rest140985%_)
                             (_%g140991141002%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx145662145663%_)))))
                        (let ((_%__kont145664145665%_
                               (lambda (_%L141029%_ _%L141030%_)
                                 (let* ((_%__stx145618145619%_ _%L141030%_)
                                        (_%g141045141070%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx145618145619%_)))))
                                   (let ((_%__kont145620145621%_
                                          (lambda (_%L141177%_ _%L141178%_)
                                            (let ((_%eid141192%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L141178%_)))
                                                  (_%expr141193%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self140895%_
                                                      _%L141177%_))))
                                              (_%lp140983%_
                                               _%L141029%_
                                               (cons (cons _%eid141192%_
                                                           (cons _%expr141193%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind140986%_)
                                               _%check140987%_
                                               _%post140988%_))))
                                         (_%__kont145622145623%_
                                          (lambda (_%L141091%_ _%L141092%_)
                                            (let* ((_%vals141105%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values141107%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals141105%_
                                                     _%L141092%_
                                                     _%L141091%_))
                                                   (_%refs141109%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals141105%_
                                                     _%L141092%_))
                                                   (_%expr141111%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self140895%_
                                                       _%L141091%_))))
                                              (_%lp140983%_
                                               _%L141029%_
                                               (let ((__tmp146427
                                                      (cons (cons _%vals141105%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr141111%_ '()))
                    _%bind140986%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp146426
                                                      (map (lambda (_%e141113141115%_)
                                                             (let* ((_%g141117141126%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e141113141115%_)
                            (_%E141119141130%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%g141117141126%_
                                        '([eid _])))
                               '#!void))
                            (_%K141120141135%_
                             (lambda (_%eid141133%_)
                               (cons _%eid141133%_ (cons '#!void '())))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%g141117141126%_))
                           (let ((_%hd141121141138%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g141117141126%_)))
                                 (_%tl141122141140%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g141117141126%_))))
                             (let ((_%eid141143%_ _%hd141121141138%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _%tl141122141140%_))
                                   (let ((_%tl141124141145%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl141122141140%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _%tl141124141145%_))
                                         (_%K141120141135%_ _%eid141143%_)
                                         (_%E141119141130%_)))
                                   (_%E141119141130%_))))
                           (_%E141119141130%_))))
                   _%refs141109%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  __tmp146427
                                                  __tmp146426))
                                               (cons _%check-values141107%_
                                                     _%check140987%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  _%refs141109%_
                                                  _%post140988%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx145618145619%_))
                                         (let ((_%e141049141153%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx145618145619%_))))
                                           (let ((_%tl141051141158%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e141049141153%_)))
                                                 (_%hd141050141156%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e141049141153%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd141050141156%_))
                                                 (let ((_%e141052141161%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd141050141156%_))))
                                                   (let ((_%tl141054141166%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e141052141161%_)))
                                                         (_%hd141053141164%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e141052141161%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl141054141166%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl141051141158%_))
                     (let ((_%e141055141169%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl141051141158%_))))
                       (let ((_%tl141057141174%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e141055141169%_)))
                             (_%hd141056141172%_
                              (let ()
                                (declare (not safe))
                                (##car _%e141055141169%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl141057141174%_))
                             (_%__kont145620145621%_
                              _%hd141056141172%_
                              _%hd141053141164%_)
                             (let ()
                               (declare (not safe))
                               (_%g141045141070%_)))))
                     (let () (declare (not safe)) (_%g141045141070%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl141051141158%_))
                     (let ((_%e141063141083%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl141051141158%_))))
                       (let ((_%tl141065141088%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e141063141083%_)))
                             (_%hd141064141086%_
                              (let ()
                                (declare (not safe))
                                (##car _%e141063141083%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl141065141088%_))
                             (_%__kont145622145623%_
                              _%hd141064141086%_
                              _%hd141050141156%_)
                             (let ()
                               (declare (not safe))
                               (_%g141045141070%_)))))
                     (let () (declare (not safe)) (_%g141045141070%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl141051141158%_))
                                                     (let ((_%e141063141083%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl141051141158%_))))
                                                       (let ((_%tl141065141088%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e141063141083%_)))
                     (_%hd141064141086%_
                      (let () (declare (not safe)) (##car _%e141063141083%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl141065141088%_))
                     (_%__kont145622145623%_
                      _%hd141064141086%_
                      _%hd141050141156%_)
                     (let () (declare (not safe)) (_%g141045141070%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g141045141070%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g141045141070%_)))))))
                              (_%__kont145666145667%_
                               (lambda ()
                                 (let* ((_%body141009%_
                                         (if _%compiled-body?140897%_
                                             _%body140981%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self140895%_
                                                _%body140981%_))))
                                        (_%body141011%_
                                         (_%generate-values-post140902%_
                                          _%post140988%_
                                          _%body141009%_))
                                        (_%body141013%_
                                         (_%generate-values-check140901%_
                                          _%check140987%_
                                          _%body141011%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind140986%_)
                                               (cons _%body141013%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx145662145663%_))
                              (let ((_%e140995141021%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx145662145663%_))))
                                (let ((_%tl140997141026%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140995141021%_)))
                                      (_%hd140996141024%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140995141021%_))))
                                  (_%__kont145664145665%_
                                   _%tl140997141026%_
                                   _%hd140996141024%_)))
                              (_%__kont145666145667%_)))))))
                 (_%generate-values-check140901%_
                  (lambda (_%check140977%_ _%body140978%_)
                    (cons 'begin
                          (let ((__tmp146429 (cons _%body140978%_ '()))
                                (__tmp146428 (reverse _%check140977%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp146429 __tmp146428)))))
                 (_%generate-values-post140902%_
                  (lambda (_%post140970%_ _%body140971%_)
                    (cons 'begin
                          (let ((__tmp146433 (cons _%body140971%_ '()))
                                (__tmp146430
                                 (let ((__tmp146432
                                        (lambda (_%g140972140974%_)
                                          (cons 'set! _%g140972140974%_)))
                                       (__tmp146431 (reverse _%post140970%_)))
                                   (declare (not safe))
                                   (##map __tmp146432 __tmp146431))))
                            (declare (not safe))
                            (__foldr1 cons __tmp146433 __tmp146430))))))
          (let* ((_%g140904140921%_
                  (lambda (_%g140905140918%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140905140918%_))))
                 (_%g140903140967%_
                  (lambda (_%g140905140924%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140905140924%_))
                        (let ((_%e140908140926%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140905140924%_))))
                          (let ((_%hd140909140929%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140908140926%_)))
                                (_%tl140910140931%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140908140926%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140910140931%_))
                                (let ((_%e140911140934%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140910140931%_))))
                                  (let ((_%hd140912140937%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140911140934%_)))
                                        (_%tl140913140939%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140911140934%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140913140939%_))
                                        (let ((_%e140914140942%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140913140939%_))))
                                          (let ((_%hd140915140945%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140914140942%_)))
                                                (_%tl140916140947%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140914140942%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl140916140947%_))
                                                ((lambda (_%L140950%_
                                                          _%L140951%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L140951%_)
                                                       (_%generate-simple140899%_
                                                        _%L140951%_
                                                        _%L140950%_)
                                                       (_%generate-values140900%_
                                                        _%L140951%_
                                                        _%L140950%_)))
                                                 _%hd140915140945%_
                                                 _%hd140912140937%_)
                                                (_%g140904140921%_
                                                 _%g140905140924%_))))
                                        (_%g140904140921%_
                                         _%g140905140924%_))))
                                (_%g140904140921%_ _%g140905140924%_))))
                        (_%g140904140921%_ _%g140905140924%_)))))
            (_%g140903140967%_ _%stx140896%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self141207%_ _%stx141208%_)
        (let ((_%compiled-body?141210%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self141207%_
           _%stx141208%_
           _%compiled-body?141210%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g146435_
        (let ((_g146434_ (let () (declare (not safe)) (##length _g146435_))))
          (cond ((let () (declare (not safe)) (##fx= _g146434_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g146435_))
                ((let () (declare (not safe)) (##fx= _g146434_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g146435_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g146435_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self140476%_ _%stx140477%_)
        (letrec ((_%generate-values140479%_
                  (lambda (_%hd140722%_ _%body140723%_)
                    (let _%lp140725%_ ((_%rest140727%_ _%hd140722%_)
                                       (_%bind140728%_ '()))
                      (let* ((_%rest140729140737%_ _%rest140727%_)
                             (_%else140731140748%_
                              (lambda ()
                                (let ((_%bind140745%_ (reverse _%bind140728%_))
                                      (_%body140746%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self140476%_
                                          _%body140723%_))))
                                  (cons 'letrec*
                                        (cons _%bind140745%_
                                              (cons _%body140746%_ '()))))))
                             (_%K140733140882%_
                              (lambda (_%rest140751%_ _%hd-bind140752%_)
                                (let* ((_%__stx145676145677%_
                                        _%hd-bind140752%_)
                                       (_%g140755140780%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx145676145677%_)))))
                                  (let ((_%__kont145678145679%_
                                         (lambda (_%L140861%_ _%L140862%_)
                                           (let ((_%eid140876%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%L140862%_)))
                                                 (_%expr140877%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self140476%_
                                                     _%L140861%_))))
                                             (_%lp140725%_
                                              _%rest140751%_
                                              (cons (cons _%eid140876%_
                                                          (cons _%expr140877%_
                                                                '()))
                                                    _%bind140728%_)))))
                                        (_%__kont145680145681%_
                                         (lambda (_%L140801%_ _%L140802%_)
                                           (let* ((_%vals140821%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp140823%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values140825%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp140823%_
                                                    _%L140802%_
                                                    _%L140801%_))
                                                  (_%refs140827%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals140821%_
                                                    _%L140802%_))
                                                  (_%expr140829%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self140476%_
                                                      _%L140801%_))))
                                             (_%lp140725%_
                                              _%rest140751%_
                                              (let ((__tmp146436
                                                     (cons (cons _%vals140821%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp140823%_
                                                       (cons _%expr140829%_
                                                             '()))
                                                 '())
                                           (cons _%check-values140825%_
                                                 (cons _%tmp140823%_ '()))))
                               '()))
                   _%bind140728%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp146436
                                                 _%refs140827%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx145676145677%_))
                                        (let ((_%e140759140837%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx145676145677%_))))
                                          (let ((_%tl140761140842%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140759140837%_)))
                                                (_%hd140760140840%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140759140837%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd140760140840%_))
                                                (let ((_%e140762140845%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd140760140840%_))))
                                                  (let ((_%tl140764140850%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e140762140845%_)))
                                                        (_%hd140763140848%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e140762140845%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl140764140850%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl140761140842%_))
                                                            (let ((_%e140765140853%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl140761140842%_))))
                      (let ((_%tl140767140858%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e140765140853%_)))
                            (_%hd140766140856%_
                             (let ()
                               (declare (not safe))
                               (##car _%e140765140853%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl140767140858%_))
                            (_%__kont145678145679%_
                             _%hd140766140856%_
                             _%hd140763140848%_)
                            (let ()
                              (declare (not safe))
                              (_%g140755140780%_)))))
                    (let () (declare (not safe)) (_%g140755140780%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl140761140842%_))
                    (let ((_%e140773140793%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl140761140842%_))))
                      (let ((_%tl140775140798%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e140773140793%_)))
                            (_%hd140774140796%_
                             (let ()
                               (declare (not safe))
                               (##car _%e140773140793%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl140775140798%_))
                            (_%__kont145680145681%_
                             _%hd140774140796%_
                             _%hd140760140840%_)
                            (let ()
                              (declare (not safe))
                              (_%g140755140780%_)))))
                    (let () (declare (not safe)) (_%g140755140780%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl140761140842%_))
                                                    (let ((_%e140773140793%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl140761140842%_))))
                                                      (let ((_%tl140775140798%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e140773140793%_)))
                    (_%hd140774140796%_
                     (let () (declare (not safe)) (##car _%e140773140793%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl140775140798%_))
                    (_%__kont145680145681%_
                     _%hd140774140796%_
                     _%hd140760140840%_)
                    (let () (declare (not safe)) (_%g140755140780%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g140755140780%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g140755140780%_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest140729140737%_))
                            (let ((_%hd140734140885%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest140729140737%_)))
                                  (_%tl140735140887%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest140729140737%_))))
                              (let* ((_%hd-bind140890%_ _%hd140734140885%_)
                                     (_%rest140892%_ _%tl140735140887%_))
                                (_%K140733140882%_
                                 _%rest140892%_
                                 _%hd-bind140890%_)))
                            (_%else140731140748%_))))))
                 (_%generate-letrec?140480%_
                  (lambda (_%hd140612%_)
                    (let _%lp140614%_ ((_%rest140616%_ _%hd140612%_))
                      (let* ((_%rest140617140625%_ _%rest140616%_)
                             (_%else140619140633%_ (lambda () '#t))
                             (_%K140621140710%_
                              (lambda (_%rest140636%_ _%hd-bind140637%_)
                                (let* ((_%g140639140656%_
                                        (lambda (_%g140640140653%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g140640140653%_))))
                                       (_%g140638140707%_
                                        (lambda (_%g140640140659%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g140640140659%_))
                                              (let ((_%e140643140661%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g140640140659%_))))
                                                (let ((_%hd140644140664%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e140643140661%_)))
                                                      (_%tl140645140666%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e140643140661%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd140644140664%_))
                                                      (let ((_%e140646140669%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd140644140664%_))))
                (let ((_%hd140647140672%_
                       (let () (declare (not safe)) (##car _%e140646140669%_)))
                      (_%tl140648140674%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e140646140669%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl140648140674%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl140645140666%_))
                          (let ((_%e140649140677%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl140645140666%_))))
                            (let ((_%hd140650140680%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e140649140677%_)))
                                  (_%tl140651140682%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e140649140677%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl140651140682%_))
                                  ((lambda (_%L140685%_ _%L140686%_)
                                     (if (_%is-lambda-expr?140481%_
                                          _%L140685%_)
                                         (_%lp140614%_ _%rest140636%_)
                                         '#f))
                                   _%hd140650140680%_
                                   _%hd140647140672%_)
                                  (_%g140639140656%_ _%g140640140659%_))))
                          (_%g140639140656%_ _%g140640140659%_))
                      (_%g140639140656%_ _%g140640140659%_))))
              (_%g140639140656%_ _%g140640140659%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g140639140656%_
                                               _%g140640140659%_)))))
                                  (_%g140638140707%_ _%hd-bind140637%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest140617140625%_))
                            (let ((_%hd140622140713%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest140617140625%_)))
                                  (_%tl140623140715%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest140617140625%_))))
                              (let* ((_%hd-bind140718%_ _%hd140622140713%_)
                                     (_%rest140720%_ _%tl140623140715%_))
                                (_%K140621140710%_
                                 _%rest140720%_
                                 _%hd-bind140718%_)))
                            (_%else140619140633%_))))))
                 (_%is-lambda-expr?140481%_
                  (lambda (_%expr140549%_)
                    (let* ((_%__stx145720145721%_ _%expr140549%_)
                           (_%g140552140566%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx145720145721%_)))))
                      (let ((_%__kont145722145723%_
                             (lambda (_%L140594%_ _%L140595%_) '#t))
                            (_%__kont145724145725%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx145720145721%_))
                            (let ((_%e140556140578%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx145720145721%_))))
                              (let ((_%tl140558140583%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e140556140578%_)))
                                    (_%hd140557140581%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e140556140578%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd140557140581%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd140557140581%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl140558140583%_))
                                            (let ((_%e140559140586%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl140558140583%_))))
                                              (let ((_%tl140561140591%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e140559140586%_)))
                                                    (_%hd140560140589%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e140559140586%_))))
                                                (_%__kont145722145723%_
                                                 _%tl140561140591%_
                                                 _%hd140560140589%_)))
                                            (_%__kont145724145725%_))
                                        (_%__kont145724145725%_))
                                    (_%__kont145724145725%_))))
                            (_%__kont145724145725%_)))))))
          (let* ((_%g140483140500%_
                  (lambda (_%g140484140497%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140484140497%_))))
                 (_%g140482140546%_
                  (lambda (_%g140484140503%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140484140503%_))
                        (let ((_%e140487140505%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140484140503%_))))
                          (let ((_%hd140488140508%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140487140505%_)))
                                (_%tl140489140510%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140487140505%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140489140510%_))
                                (let ((_%e140490140513%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140489140510%_))))
                                  (let ((_%hd140491140516%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140490140513%_)))
                                        (_%tl140492140518%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140490140513%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl140492140518%_))
                                        (let ((_%e140493140521%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl140492140518%_))))
                                          (let ((_%hd140494140524%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140493140521%_)))
                                                (_%tl140495140526%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140493140521%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl140495140526%_))
                                                ((lambda (_%L140529%_
                                                          _%L140530%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L140530%_)
                                                       (if (_%generate-letrec?140480%_
                                                            _%L140530%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self140476%_
                                                            'letrec
                                                            _%L140530%_
                                                            _%L140529%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self140476%_
                                                            'letrec*
                                                            _%L140530%_
                                                            _%L140529%_
                                                            '#f))
                                                       (_%generate-values140479%_
                                                        _%L140530%_
                                                        _%L140529%_)))
                                                 _%hd140494140524%_
                                                 _%hd140491140516%_)
                                                (_%g140483140500%_
                                                 _%g140484140503%_))))
                                        (_%g140483140500%_
                                         _%g140484140503%_))))
                                (_%g140483140500%_ _%g140484140503%_))))
                        (_%g140483140500%_ _%g140484140503%_)))))
            (_%g140482140546%_ _%stx140477%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd140413%_)
        (let _%lp140415%_ ((_%rest140417%_ _%hd140413%_))
          (let* ((_%rest140418140434%_ _%rest140417%_)
                 (_%else140421140442%_ (lambda () '#f)))
            (let ((_%K140424140455%_
                   (lambda (_%rest140453%_) (_%lp140415%_ _%rest140453%_)))
                  (_%K140423140447%_ (lambda () '#t)))
              (let ((_%try-match140420140450%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest140418140434%_))
                           (_%K140423140447%_)
                           (_%else140421140442%_)))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest140418140434%_))
                    (let ((_%tl140426140460%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest140418140434%_)))
                          (_%hd140425140458%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest140418140434%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd140425140458%_))
                          (let ((_%tl140428140465%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd140425140458%_)))
                                (_%hd140427140463%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd140425140458%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd140427140463%_))
                                (let ((_%tl140432140468%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd140427140463%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl140432140468%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl140428140465%_))
                                          (let ((_%tl140430140471%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl140428140465%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _%tl140430140471%_))
                                                (let ((_%rest140474%_
                                                       _%tl140426140460%_))
                                                  (_%lp140415%_
                                                   _%rest140474%_))
                                                (_%else140421140442%_)))
                                          (_%else140421140442%_))
                                      (_%else140421140442%_)))
                                (_%else140421140442%_)))
                          (_%else140421140442%_)))
                    (_%try-match140420140450%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self140324%_
               _%form140325%_
               _%hd140326%_
               _%body140327%_
               _%compiled-body?140328%_)
        (letrec ((_%generate1140330%_
                  (lambda (_%bind140369%_)
                    (let* ((_%bind140370140381%_ _%bind140369%_)
                           (_%E140372140385%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind140370140381%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K140373140391%_
                            (lambda (_%expr140388%_ _%id140389%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id140389%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self140324%_
                                             _%expr140388%_))
                                          '())))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%bind140370140381%_))
                          (let ((_%hd140374140394%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind140370140381%_)))
                                (_%tl140375140396%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind140370140381%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd140374140394%_))
                                (let ((_%hd140378140399%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd140374140394%_)))
                                      (_%tl140379140401%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd140374140394%_))))
                                  (let ((_%id140404%_ _%hd140378140399%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl140379140401%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl140375140396%_))
                                            (let ((_%hd140376140406%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl140375140396%_)))
                                                  (_%tl140377140408%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl140375140396%_))))
                                              (let ((_%expr140411%_
                                                     _%hd140376140406%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl140377140408%_))
                                                    (_%K140373140391%_
                                                     _%expr140411%_
                                                     _%id140404%_)
                                                    (_%E140372140385%_))))
                                            (_%E140372140385%_))
                                        (_%E140372140385%_))))
                                (_%E140372140385%_)))
                          (_%E140372140385%_))))))
          (let* ((_%bind140332%_ (map _%generate1140330%_ _%hd140326%_))
                 (_%body140334%_
                  (if _%compiled-body?140328%_
                      _%body140327%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self140324%_ _%body140327%_))))
                 (_%body140366%_
                  (let* ((_%body140335140343%_ _%body140334%_)
                         (_%else140337140351%_
                          (lambda () (cons _%body140334%_ '())))
                         (_%K140339140356%_
                          (lambda (_%exprs140354%_) _%exprs140354%_)))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%body140335140343%_))
                        (let ((_%hd140340140359%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body140335140343%_)))
                              (_%tl140341140361%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body140335140343%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd140340140359%_ 'begin))
                              (let ((_%exprs140364%_ _%tl140341140361%_))
                                (_%K140339140356%_ _%exprs140364%_))
                              (_%else140337140351%_)))
                        (_%else140337140351%_)))))
            (cons _%form140325%_ (cons _%bind140332%_ _%body140366%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self140224%_ _%stx140225%_)
        (letrec ((_%generate1140227%_
                  (lambda (_%datum140279%_)
                    (if (or (null? _%datum140279%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum140279%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum140279%_))
                            (eof-object? _%datum140279%_))
                        _%datum140279%_
                        (if (uninterned-symbol? _%datum140279%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum140279%_
                               '#t))
                            (if (pair? _%datum140279%_)
                                (cons (_%generate1140227%_
                                       (car _%datum140279%_))
                                      (_%generate1140227%_
                                       (cdr _%datum140279%_)))
                                (if (box? _%datum140279%_)
                                    (box (_%generate1140227%_
                                          (unbox _%datum140279%_)))
                                    (if (vector? _%datum140279%_)
                                        (vector-map
                                         _%generate1140227%_
                                         _%datum140279%_)
                                        (if (or (s8vector? _%datum140279%_)
                                                (u8vector? _%datum140279%_)
                                                (s16vector? _%datum140279%_)
                                                (u16vector? _%datum140279%_)
                                                (s32vector? _%datum140279%_)
                                                (u32vector? _%datum140279%_)
                                                (s64vector? _%datum140279%_)
                                                (u64vector? _%datum140279%_)
                                                (f32vector? _%datum140279%_)
                                                (f64vector? _%datum140279%_))
                                            _%datum140279%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx140225%_)))))))))))
          (let* ((_%g140229140242%_
                  (lambda (_%g140230140239%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140230140239%_))))
                 (_%g140228140276%_
                  (lambda (_%g140230140245%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140230140245%_))
                        (let ((_%e140232140247%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140230140245%_))))
                          (let ((_%hd140233140250%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140232140247%_)))
                                (_%tl140234140252%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140232140247%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140234140252%_))
                                (let ((_%e140235140255%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140234140252%_))))
                                  (let ((_%hd140236140258%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140235140255%_)))
                                        (_%tl140237140260%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140235140255%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl140237140260%_))
                                        ((lambda (_%L140263%_)
                                           (cons 'quote
                                                 (cons (_%generate1140227%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%L140263%_)))
                                                       '())))
                                         _%hd140236140258%_)
                                        (_%g140229140242%_
                                         _%g140230140245%_))))
                                (_%g140229140242%_ _%g140230140245%_))))
                        (_%g140229140242%_ _%g140230140245%_)))))
            (_%g140228140276%_ _%stx140225%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self139665%_ _%stx139666%_)
        (letrec ((_%compile-call139668%_
                  (lambda (_%rator139957%_ _%rands139958%_)
                    (let ((_%rator139964%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self139665%_
                              _%rator139957%_)))
                          (_%rands139965%_
                           (map (lambda (_%g139959139961%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self139665%_
                                     _%g139959139961%_)))
                                _%rands139958%_)))
                      (let* ((_%__stx145767145768%_ _%rator139964%_)
                             (_%g139968140020%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx145767145768%_)))))
                        (let ((_%__kont145769145770%_
                               (lambda (_%L140144%_
                                        _%L140145%_
                                        _%L140146%_
                                        _%L140147%_)
                                 (if (let ((__tmp146439
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands139965%_)))
                                           (__tmp146437
                                            (length (let ((__tmp146438
                                                           (lambda (_%g140183140186%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g140184140188%_)
                     (cons _%g140183140186%_ _%g140184140188%_))))
              (declare (not safe))
              (__foldr1 __tmp146438 '() _%L140146%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp146439 __tmp146437))
                                     (let* ((_%id140191%_ _%L140147%_)
                                            (_%args140200%_
                                             (let ((__tmp146440
                                                    (lambda (_%g140192140195%_
                                                             _%g140193140197%_)
                                                      (cons _%g140192140195%_
                                                            _%g140193140197%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp146440
                                                '()
                                                _%L140146%_)))
                                            (_%body140209%_
                                             (let ((__tmp146441
                                                    (lambda (_%g140201140204%_
                                                             _%g140202140206%_)
                                                      (cons _%g140201140204%_
                                                            _%g140202140206%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp146441
                                                '()
                                                _%L140145%_)))
                                            (_%init140211%_
                                             (map list
                                                  _%args140200%_
                                                  _%rands139965%_)))
                                       (cons 'let
                                             (cons _%id140191%_
                                                   (cons _%init140211%_
                                                         _%body140209%_))))
                                     (let ((__tmp146442
                                            (let ((__tmp146443
                                                   (lambda (_%g140213140216%_
                                                            _%g140214140218%_)
                                                     (cons _%g140213140216%_
                                                           _%g140214140218%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp146443
                                               '()
                                               _%L140146%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx139666%_
                                        __tmp146442
                                        _%rands139965%_)))))
                              (_%__kont145775145776%_
                               (lambda ()
                                 (cons _%rator139964%_ _%rands139965%_))))
                          (let ((_%__match145834145835%_
                                 (lambda (_%e139974140032%_
                                          _%hd139975140035%_
                                          _%tl139976140037%_
                                          _%e139977140040%_
                                          _%hd139978140043%_
                                          _%tl139979140045%_
                                          _%e139980140048%_
                                          _%hd139981140051%_
                                          _%tl139982140053%_
                                          _%e139983140056%_
                                          _%hd139984140059%_
                                          _%tl139985140061%_
                                          _%e139986140064%_
                                          _%hd139987140067%_
                                          _%tl139988140069%_
                                          _%e139989140072%_
                                          _%hd139990140075%_
                                          _%tl139991140077%_
                                          _%e139992140080%_
                                          _%hd139993140083%_
                                          _%tl139994140085%_
                                          _%__splice145771145772%_
                                          _%target139995140088%_
                                          _%tl139997140090%_)
                                   (letrec ((_%loop139998140093%_
                                             (lambda (_%hd139996140096%_
                                                      _%arg140002140098%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd139996140096%_))
                                                   (let ((_%e139999140101%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd139996140096%_))))
                                                     (let ((_%lp-tl140001140106%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e139999140101%_)))
                                                           (_%lp-hd140000140104%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e139999140101%_))))
                                                       (_%loop139998140093%_
                                                        _%lp-tl140001140106%_
                                                        (cons _%lp-hd140000140104%_
                                                              _%arg140002140098%_))))
                                                   (let ((_%arg140003140109%_
                                                          (reverse _%arg140002140098%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl139994140085%_))
                                                         (let ((_%__splice145773145774%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl139994140085%_ '0))))
                   (let ((_%tl140006140114%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice145773145774%_ '1)))
                         (_%target140004140112%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice145773145774%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl140006140114%_))
                         (letrec ((_%loop140007140117%_
                                   (lambda (_%hd140005140120%_
                                            _%body140011140122%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd140005140120%_))
                                         (let ((_%e140008140125%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd140005140120%_))))
                                           (let ((_%lp-tl140010140130%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e140008140125%_)))
                                                 (_%lp-hd140009140128%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e140008140125%_))))
                                             (_%loop140007140117%_
                                              _%lp-tl140010140130%_
                                              (cons _%lp-hd140009140128%_
                                                    _%body140011140122%_))))
                                         (let ((_%body140012140133%_
                                                (reverse _%body140011140122%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl139988140069%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl139982140053%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl139979140045%_))
                                                       (let ((_%e140013140136%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl139979140045%_))))
                 (let ((_%tl140015140141%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e140013140136%_)))
                       (_%hd140014140139%_
                        (let ()
                          (declare (not safe))
                          (##car _%e140013140136%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl140015140141%_))
                       (let ((_%L140144%_ _%hd140014140139%_)
                             (_%L140145%_ _%body140012140133%_)
                             (_%L140146%_ _%arg140003140109%_)
                             (_%L140147%_ _%hd139984140059%_))
                         (if (eq? _%L140147%_ _%L140144%_)
                             (_%__kont145769145770%_
                              _%L140144%_
                              _%L140145%_
                              _%L140146%_
                              _%L140147%_)
                             (_%__kont145775145776%_)))
                       (_%__kont145775145776%_))))
               (_%__kont145775145776%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont145775145776%_))
                                               (_%__kont145775145776%_)))))))
                           (_%loop140007140117%_ _%target140004140112%_ '()))
                         (_%__kont145775145776%_))))
                 (_%__kont145775145776%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop139998140093%_
                                      _%target139995140088%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx145767145768%_))
                                (let ((_%e139974140032%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx145767145768%_))))
                                  (let ((_%tl139976140037%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139974140032%_)))
                                        (_%hd139975140035%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139974140032%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd139975140035%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd139975140035%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl139976140037%_))
                                                (let ((_%e139977140040%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl139976140037%_))))
                                                  (let ((_%tl139979140045%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e139977140040%_)))
                                                        (_%hd139978140043%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e139977140040%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd139978140043%_))
                                                        (let ((_%e139980140048%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd139978140043%_))))
                  (let ((_%tl139982140053%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e139980140048%_)))
                        (_%hd139981140051%_
                         (let ()
                           (declare (not safe))
                           (##car _%e139980140048%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd139981140051%_))
                        (let ((_%e139983140056%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd139981140051%_))))
                          (let ((_%tl139985140061%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139983140056%_)))
                                (_%hd139984140059%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139983140056%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139985140061%_))
                                (let ((_%e139986140064%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139985140061%_))))
                                  (let ((_%tl139988140069%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139986140064%_)))
                                        (_%hd139987140067%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139986140064%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd139987140067%_))
                                        (let ((_%e139989140072%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd139987140067%_))))
                                          (let ((_%tl139991140077%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139989140072%_)))
                                                (_%hd139990140075%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139989140072%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd139990140075%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd139990140075%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl139991140077%_))
                                                        (let ((_%e139992140080%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl139991140077%_))))
                  (let ((_%tl139994140085%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e139992140080%_)))
                        (_%hd139993140083%_
                         (let ()
                           (declare (not safe))
                           (##car _%e139992140080%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd139993140083%_))
                        (let ((_%__splice145771145772%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%hd139993140083%_
                                  '0))))
                          (let ((_%tl139997140090%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice145771145772%_ '1)))
                                (_%target139995140088%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice145771145772%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl139997140090%_))
                                (_%__match145834145835%_
                                 _%e139974140032%_
                                 _%hd139975140035%_
                                 _%tl139976140037%_
                                 _%e139977140040%_
                                 _%hd139978140043%_
                                 _%tl139979140045%_
                                 _%e139980140048%_
                                 _%hd139981140051%_
                                 _%tl139982140053%_
                                 _%e139983140056%_
                                 _%hd139984140059%_
                                 _%tl139985140061%_
                                 _%e139986140064%_
                                 _%hd139987140067%_
                                 _%tl139988140069%_
                                 _%e139989140072%_
                                 _%hd139990140075%_
                                 _%tl139991140077%_
                                 _%e139992140080%_
                                 _%hd139993140083%_
                                 _%tl139994140085%_
                                 _%__splice145771145772%_
                                 _%target139995140088%_
                                 _%tl139997140090%_)
                                (_%__kont145775145776%_))))
                        (_%__kont145775145776%_))))
                (_%__kont145775145776%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont145775145776%_))
                                                (_%__kont145775145776%_))))
                                        (_%__kont145775145776%_))))
                                (_%__kont145775145776%_))))
                        (_%__kont145775145776%_))))
                (_%__kont145775145776%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont145775145776%_))
                                            (_%__kont145775145776%_))
                                        (_%__kont145775145776%_))))
                                (_%__kont145775145776%_)))))))))
          (let* ((_%g139670139693%_
                  (lambda (_%g139671139690%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139671139690%_))))
                 (_%g139669139954%_
                  (lambda (_%g139671139696%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139671139696%_))
                        (let ((_%e139674139698%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139671139696%_))))
                          (let ((_%hd139675139701%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139674139698%_)))
                                (_%tl139676139703%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139674139698%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139676139703%_))
                                (let ((_%e139677139706%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139676139703%_))))
                                  (let ((_%hd139678139709%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139677139706%_)))
                                        (_%tl139679139711%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139677139706%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl139679139711%_))
                                        (let ((_g146444_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl139679139711%_
                                                  '0))))
                                          (begin
                                            (let ((_g146445_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g146444_)
                                                         (##vector-length
                                                          _g146444_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g146445_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g146445_)))
                                            (let ((_%target139680139714%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g146444_
                                                      0)))
                                                  (_%tl139682139716%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g146444_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl139682139716%_))
                                                  (letrec ((_%loop139683139719%_
                                                            (lambda (_%hd139681139722%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand139687139724%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd139681139722%_))
                          (let ((_%e139684139727%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd139681139722%_))))
                            (let ((_%lp-hd139685139730%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e139684139727%_)))
                                  (_%lp-tl139686139732%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e139684139727%_))))
                              (_%loop139683139719%_
                               _%lp-tl139686139732%_
                               (cons _%lp-hd139685139730%_
                                     _%rand139687139724%_))))
                          (let ((_%rand139688139735%_
                                 (reverse _%rand139687139724%_)))
                            ((lambda (_%L139738%_ _%L139739%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call139668%_
                                    _%L139739%_
                                    (let ((__tmp146446
                                           (lambda (_%g139756139759%_
                                                    _%g139757139761%_)
                                             (cons _%g139756139759%_
                                                   _%g139757139761%_))))
                                      (declare (not safe))
                                      (__foldr1 __tmp146446 '() _%L139738%_)))
                                   (let* ((_%__stx145883145884%_ _%L139739%_)
                                          (_%g139765139777%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx145883145884%_)))))
                                     (let ((_%__kont145885145886%_
                                            (lambda ()
                                              (let ((_%f139814%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self139665%_
                                                        _%L139739%_))))
                                                (if (and (let ((__tmp146447
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f139814%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp146447))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f139814%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp139816%_ ((_%rest139819%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp146449
                                                (lambda (_%g139936139939%_
                                                         _%g139937139941%_)
                                                  (cons _%g139936139939%_
                                                        _%g139937139941%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp146449
                                            '()
                                            _%L139738%_))))
                               (_%bind139821%_ '())
                               (_%args139822%_ '()))
              (let* ((_%rest139823139831%_ _%rest139819%_)
                     (_%else139825139839%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind139821%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f139814%_
                                                      _%args139822%_)
                                                '()))))))
                     (_%K139827139925%_
                      (lambda (_%rest139842%_ _%e139843%_)
                        (let* ((_%__stx145837145838%_ _%e139843%_)
                               (_%g139848139866%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx145837145838%_)))))
                          (let ((_%__kont145839145840%_
                                 (lambda ()
                                   (_%lp139816%_
                                    _%rest139842%_
                                    _%bind139821%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e139843%_))
                                          _%args139822%_))))
                                (_%__kont145841145842%_
                                 (lambda ()
                                   (_%lp139816%_
                                    _%rest139842%_
                                    _%bind139821%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e139843%_))
                                          _%args139822%_))))
                                (_%__kont145843145844%_
                                 (lambda ()
                                   (let ((_%tmp139873%_
                                          (let ((__tmp146448
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp146448))))
                                     (_%lp139816%_
                                      _%rest139842%_
                                      (cons (cons _%tmp139873%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e139843%_))
                                                        '()))
                                            _%bind139821%_)
                                      (cons _%tmp139873%_ _%args139822%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx145837145838%_))
                                (let ((_%e139850139904%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx145837145838%_))))
                                  (let ((_%tl139852139909%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139850139904%_)))
                                        (_%hd139851139907%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139850139904%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd139851139907%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd139851139907%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl139852139909%_))
                                                (let ((_%e139853139912%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl139852139909%_))))
                                                  (let ((_%tl139855139917%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e139853139912%_)))
                                                        (_%hd139854139915%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e139853139912%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl139855139917%_))
                                                        (_%__kont145839145840%_)
                                                        (_%__kont145843145844%_))))
                                                (_%__kont145843145844%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd139851139907%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl139852139909%_))
                                                    (let ((_%e139859139889%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl139852139909%_))))
                                                      (let ((_%tl139861139894%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e139859139889%_)))
                    (_%hd139860139892%_
                     (let () (declare (not safe)) (##car _%e139859139889%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl139861139894%_))
                    (_%__kont145841145842%_)
                    (_%__kont145843145844%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont145843145844%_))
                                                (_%__kont145843145844%_)))
                                        (_%__kont145843145844%_))))
                                (_%__kont145843145844%_)))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest139823139831%_))
                    (let ((_%hd139828139928%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest139823139831%_)))
                          (_%tl139829139930%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest139823139831%_))))
                      (let* ((_%e139933%_ _%hd139828139928%_)
                             (_%rest139935%_ _%tl139829139930%_))
                        (_%K139827139925%_ _%rest139935%_ _%e139933%_)))
                    (_%else139825139839%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call139668%_
                                                     _%L139739%_
                                                     (let ((__tmp146450
                                                            (lambda (_%g139943139946%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g139944139948%_)
                      (cons _%g139943139946%_ _%g139944139948%_))))
               (declare (not safe))
               (__foldr1 __tmp146450 '() _%L139738%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont145887145888%_
                                            (lambda ()
                                              (_%compile-call139668%_
                                               _%L139739%_
                                               (let ((__tmp146451
                                                      (lambda (_%g139783139786%_
                                                               _%g139784139788%_)
                                                        (cons _%g139783139786%_
                                                              _%g139784139788%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp146451
                                                  '()
                                                  _%L139738%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx145883145884%_))
                                           (let ((_%e139767139796%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx145883145884%_))))
                                             (let ((_%tl139769139801%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e139767139796%_)))
                                                   (_%hd139768139799%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e139767139796%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd139768139799%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd139768139799%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl139769139801%_))
                                                           (let ((_%e139770139804%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl139769139801%_))))
                     (let ((_%tl139772139809%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e139770139804%_)))
                           (_%hd139771139807%_
                            (let ()
                              (declare (not safe))
                              (##car _%e139770139804%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl139772139809%_))
                           (_%__kont145885145886%_)
                           (_%__kont145887145888%_))))
                   (_%__kont145887145888%_))
               (_%__kont145887145888%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont145887145888%_))))
                                           (_%__kont145887145888%_))))))
                             _%rand139688139735%_
                             _%hd139678139709%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop139683139719%_
                                                     _%target139680139714%_
                                                     '()))
                                                  (_%g139670139693%_
                                                   _%g139671139696%_)))))
                                        (_%g139670139693%_
                                         _%g139671139696%_))))
                                (_%g139670139693%_ _%g139671139696%_))))
                        (_%g139670139693%_ _%g139671139696%_)))))
            (_%g139669139954%_ _%stx139666%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self139408%_ _%stx139409%_)
        (let* ((_%__stx145955145956%_ _%stx139409%_)
               (_%g139412139441%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx145955145956%_)))))
          (let ((_%__kont145957145958%_
                 (lambda (_%L139509%_ _%L139510%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self139408%_
                        _%stx139409%_)
                       (let ((_%f139532%_
                              (let ((__tmp146452
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%L139510%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self139408%_
                                 __tmp146452))))
                         (let _%lp139534%_ ((_%rest139537%_
                                             (reverse (let ((__tmp146454
                                                             (lambda (_%g139654139657%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g139655139659%_)
                       (cons _%g139654139657%_ _%g139655139659%_))))
                (declare (not safe))
                (__foldr1 __tmp146454 '() _%L139509%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind139539%_ '())
                                            (_%args139540%_ '()))
                           (let* ((_%rest139541139549%_ _%rest139537%_)
                                  (_%else139543139557%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind139539%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f139532%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args139540%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K139545139643%_
                                   (lambda (_%rest139560%_ _%e139561%_)
                                     (let* ((_%__stx145909145910%_ _%e139561%_)
                                            (_%g139566139584%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx145909145910%_)))))
                                       (let ((_%__kont145911145912%_
                                              (lambda ()
                                                (_%lp139534%_
                                                 _%rest139560%_
                                                 _%bind139539%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e139561%_))
                                                       _%args139540%_))))
                                             (_%__kont145913145914%_
                                              (lambda ()
                                                (_%lp139534%_
                                                 _%rest139560%_
                                                 _%bind139539%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e139561%_))
                                                       _%args139540%_))))
                                             (_%__kont145915145916%_
                                              (lambda ()
                                                (let ((_%tmp139591%_
                                                       (let ((__tmp146453
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp146453))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp139534%_
                                                   _%rest139560%_
                                                   (cons (cons _%tmp139591%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e139561%_))
                             '()))
                 _%bind139539%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp139591%_
                                                         _%args139540%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx145909145910%_))
                                             (let ((_%e139568139622%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx145909145910%_))))
                                               (let ((_%tl139570139627%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e139568139622%_)))
                                                     (_%hd139569139625%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e139568139622%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd139569139625%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd139569139625%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl139570139627%_))
                     (let ((_%e139571139630%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl139570139627%_))))
                       (let ((_%tl139573139635%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e139571139630%_)))
                             (_%hd139572139633%_
                              (let ()
                                (declare (not safe))
                                (##car _%e139571139630%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl139573139635%_))
                             (_%__kont145911145912%_)
                             (_%__kont145915145916%_))))
                     (_%__kont145915145916%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd139569139625%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl139570139627%_))
                         (let ((_%e139577139607%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl139570139627%_))))
                           (let ((_%tl139579139612%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e139577139607%_)))
                                 (_%hd139578139610%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e139577139607%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl139579139612%_))
                                 (_%__kont145913145914%_)
                                 (_%__kont145915145916%_))))
                         (_%__kont145915145916%_))
                     (_%__kont145915145916%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont145915145916%_))))
                                             (_%__kont145915145916%_)))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%rest139541139549%_))
                                 (let ((_%hd139546139646%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest139541139549%_)))
                                       (_%tl139547139648%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest139541139549%_))))
                                   (let* ((_%e139651%_ _%hd139546139646%_)
                                          (_%rest139653%_ _%tl139547139648%_))
                                     (_%K139545139643%_
                                      _%rest139653%_
                                      _%e139651%_)))
                                 (_%else139543139557%_))))))))
                (_%__kont145961145962%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self139408%_ _%stx139409%_))))
            (let ((_%__match146000146001%_
                   (lambda (_%e139416139453%_
                            _%hd139417139456%_
                            _%tl139418139458%_
                            _%e139419139461%_
                            _%hd139420139464%_
                            _%tl139421139466%_
                            _%e139422139469%_
                            _%hd139423139472%_
                            _%tl139424139474%_
                            _%e139425139477%_
                            _%hd139426139480%_
                            _%tl139427139482%_
                            _%__splice145959145960%_
                            _%target139428139485%_
                            _%tl139430139487%_)
                     (letrec ((_%loop139431139490%_
                               (lambda (_%hd139429139493%_
                                        _%rand139435139495%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd139429139493%_))
                                     (let ((_%e139432139498%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd139429139493%_))))
                                       (let ((_%lp-tl139434139503%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e139432139498%_)))
                                             (_%lp-hd139433139501%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e139432139498%_))))
                                         (_%loop139431139490%_
                                          _%lp-tl139434139503%_
                                          (cons _%lp-hd139433139501%_
                                                _%rand139435139495%_))))
                                     (let ((_%rand139436139506%_
                                            (reverse _%rand139435139495%_)))
                                       (_%__kont145957145958%_
                                        _%rand139436139506%_
                                        _%hd139426139480%_))))))
                       (_%loop139431139490%_ _%target139428139485%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx145955145956%_))
                  (let ((_%e139416139453%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx145955145956%_))))
                    (let ((_%tl139418139458%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e139416139453%_)))
                          (_%hd139417139456%_
                           (let ()
                             (declare (not safe))
                             (##car _%e139416139453%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl139418139458%_))
                          (let ((_%e139419139461%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl139418139458%_))))
                            (let ((_%tl139421139466%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e139419139461%_)))
                                  (_%hd139420139464%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e139419139461%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd139420139464%_))
                                  (let ((_%e139422139469%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd139420139464%_))))
                                    (let ((_%tl139424139474%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e139422139469%_)))
                                          (_%hd139423139472%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e139422139469%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd139423139472%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd139423139472%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl139424139474%_))
                                                  (let ((_%e139425139477%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl139424139474%_))))
                                                    (let ((_%tl139427139482%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e139425139477%_)))
                                                          (_%hd139426139480%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e139425139477%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl139427139482%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl139421139466%_))
                      (let ((_%__splice145959145960%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl139421139466%_
                                '0))))
                        (let ((_%tl139430139487%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice145959145960%_ '1)))
                              (_%target139428139485%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice145959145960%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl139430139487%_))
                              (_%__match146000146001%_
                               _%e139416139453%_
                               _%hd139417139456%_
                               _%tl139418139458%_
                               _%e139419139461%_
                               _%hd139420139464%_
                               _%tl139421139466%_
                               _%e139422139469%_
                               _%hd139423139472%_
                               _%tl139424139474%_
                               _%e139425139477%_
                               _%hd139426139480%_
                               _%tl139427139482%_
                               _%__splice145959145960%_
                               _%target139428139485%_
                               _%tl139430139487%_)
                              (_%__kont145961145962%_))))
                      (_%__kont145961145962%_))
                  (_%__kont145961145962%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont145961145962%_))
                                              (_%__kont145961145962%_))
                                          (_%__kont145961145962%_))))
                                  (_%__kont145961145962%_))))
                          (_%__kont145961145962%_))))
                  (_%__kont145961145962%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self139220%_ _%stx139221%_)
        (letrec ((_%simplify139223%_
                  (lambda (_%code139308%_)
                    (let* ((_%code139309139327%_ _%code139308%_)
                           (_%else139311139335%_ (lambda () _%code139308%_))
                           (_%K139313139371%_
                            (lambda (_%expr139338%_ _%test139339%_)
                              (let* ((_%expr139340139348%_ _%expr139338%_)
                                     (_%else139342139356%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test139339%_
                                                    (cons _%expr139338%_
                                                          '())))))
                                     (_%K139344139361%_
                                      (lambda (_%exprs139359%_)
                                        (cons 'and
                                              (cons _%test139339%_
                                                    _%exprs139359%_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%expr139340139348%_))
                                    (let ((_%hd139345139364%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr139340139348%_)))
                                          (_%tl139346139366%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr139340139348%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd139345139364%_ 'and))
                                          (let ((_%exprs139369%_
                                                 _%tl139346139366%_))
                                            (_%K139344139361%_
                                             _%exprs139369%_))
                                          (_%else139342139356%_)))
                                    (_%else139342139356%_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%code139309139327%_))
                          (let ((_%hd139314139374%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code139309139327%_)))
                                (_%tl139315139376%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code139309139327%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd139314139374%_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl139315139376%_))
                                    (let ((_%hd139316139379%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl139315139376%_)))
                                          (_%tl139317139381%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl139315139376%_))))
                                      (let ((_%test139384%_
                                             _%hd139316139379%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl139317139381%_))
                                            (let ((_%hd139318139386%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl139317139381%_)))
                                                  (_%tl139319139388%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl139317139381%_))))
                                              (let ((_%expr139391%_
                                                     _%hd139318139386%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl139319139388%_))
                                                    (let ((_%hd139320139393%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl139319139388%_)))
                                                          (_%tl139321139395%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl139319139388%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _%hd139320139393%_))
                                                          (let ((_%hd139322139398%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd139320139393%_)))
                        (_%tl139323139400%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd139320139393%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd139322139398%_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl139323139400%_))
                            (let ((_%hd139324139403%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl139323139400%_)))
                                  (_%tl139325139405%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl139323139400%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd139324139403%_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl139325139405%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl139321139395%_))
                                          (_%K139313139371%_
                                           _%expr139391%_
                                           _%test139384%_)
                                          (_%else139311139335%_))
                                      (_%else139311139335%_))
                                  (_%else139311139335%_)))
                            (_%else139311139335%_))
                        (_%else139311139335%_)))
                  (_%else139311139335%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else139311139335%_))))
                                            (_%else139311139335%_))))
                                    (_%else139311139335%_))
                                (_%else139311139335%_)))
                          (_%else139311139335%_))))))
          (let* ((_%g139225139246%_
                  (lambda (_%g139226139243%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139226139243%_))))
                 (_%g139224139305%_
                  (lambda (_%g139226139249%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139226139249%_))
                        (let ((_%e139230139251%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139226139249%_))))
                          (let ((_%hd139231139254%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139230139251%_)))
                                (_%tl139232139256%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139230139251%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139232139256%_))
                                (let ((_%e139233139259%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139232139256%_))))
                                  (let ((_%hd139234139262%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139233139259%_)))
                                        (_%tl139235139264%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139233139259%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl139235139264%_))
                                        (let ((_%e139236139267%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl139235139264%_))))
                                          (let ((_%hd139237139270%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139236139267%_)))
                                                (_%tl139238139272%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139236139267%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl139238139272%_))
                                                (let ((_%e139239139275%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl139238139272%_))))
                                                  (let ((_%hd139240139278%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e139239139275%_)))
                                                        (_%tl139241139280%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e139239139275%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl139241139280%_))
                                                        ((lambda (_%L139283%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L139284%_
                          _%L139285%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify139223%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self139220%_
                                       _%L139285%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self139220%_
                                             _%L139284%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self139220%_
                                                   _%L139283%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp146455
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self139220%_
                                               _%L139285%_)))))
                                     (declare (not safe))
                                     (__call-with-parameters
                                      __tmp146455
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self139220%_
                                            _%L139284%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self139220%_
                                                  _%L139283%_))
                                               '()))))))
                 _%hd139240139278%_
                 _%hd139237139270%_
                 _%hd139234139262%_)
                (_%g139225139246%_ _%g139226139249%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g139225139246%_
                                                 _%g139226139249%_))))
                                        (_%g139225139246%_
                                         _%g139226139249%_))))
                                (_%g139225139246%_ _%g139226139249%_))))
                        (_%g139225139246%_ _%g139226139249%_)))))
            (_%g139224139305%_ _%stx139221%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self139168%_ _%stx139169%_)
        (let* ((_%g139171139184%_
                (lambda (_%g139172139181%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139172139181%_))))
               (_%g139170139217%_
                (lambda (_%g139172139187%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139172139187%_))
                      (let ((_%e139174139189%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139172139187%_))))
                        (let ((_%hd139175139192%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139174139189%_)))
                              (_%tl139176139194%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139174139189%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139176139194%_))
                              (let ((_%e139177139197%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139176139194%_))))
                                (let ((_%hd139178139200%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139177139197%_)))
                                      (_%tl139179139202%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139177139197%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl139179139202%_))
                                      ((lambda (_%L139205%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%L139205%_)))
                                       _%hd139178139200%_)
                                      (_%g139171139184%_ _%g139172139187%_))))
                              (_%g139171139184%_ _%g139172139187%_))))
                      (_%g139171139184%_ _%g139172139187%_)))))
          (_%g139170139217%_ _%stx139169%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self139100%_ _%stx139101%_)
        (let* ((_%g139103139120%_
                (lambda (_%g139104139117%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139104139117%_))))
               (_%g139102139165%_
                (lambda (_%g139104139123%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139104139123%_))
                      (let ((_%e139107139125%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139104139123%_))))
                        (let ((_%hd139108139128%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139107139125%_)))
                              (_%tl139109139130%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139107139125%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139109139130%_))
                              (let ((_%e139110139133%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139109139130%_))))
                                (let ((_%hd139111139136%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139110139133%_)))
                                      (_%tl139112139138%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139110139133%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139112139138%_))
                                      (let ((_%e139113139141%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139112139138%_))))
                                        (let ((_%hd139114139144%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139113139141%_)))
                                              (_%tl139115139146%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139113139141%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl139115139146%_))
                                              ((lambda (_%L139149%_
                                                        _%L139150%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%L139150%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self139100%_ _%L139149%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd139114139144%_
                                               _%hd139111139136%_)
                                              (_%g139103139120%_
                                               _%g139104139123%_))))
                                      (_%g139103139120%_ _%g139104139123%_))))
                              (_%g139103139120%_ _%g139104139123%_))))
                      (_%g139103139120%_ _%g139104139123%_)))))
          (_%g139102139165%_ _%stx139101%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self138911%_ _%stx138912%_)
        (let* ((_%g138914138931%_
                (lambda (_%g138915138928%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138915138928%_))))
               (_%g138913139097%_
                (lambda (_%g138915138934%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138915138934%_))
                      (let ((_%e138918138936%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138915138934%_))))
                        (let ((_%hd138919138939%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138918138936%_)))
                              (_%tl138920138941%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138918138936%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138920138941%_))
                              (let ((_%e138921138944%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138920138941%_))))
                                (let ((_%hd138922138947%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138921138944%_)))
                                      (_%tl138923138949%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138921138944%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138923138949%_))
                                      (let ((_%e138924138952%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138923138949%_))))
                                        (let ((_%hd138925138955%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138924138952%_)))
                                              (_%tl138926138957%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138924138952%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138926138957%_))
                                              ((lambda (_%L138960%_
                                                        _%L138961%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self138911%_ _%L138960%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self138911%_ _%L138961%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp138976%_ ((_%rest138979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L138961%_ (cons _%L138960%_ '())))
                                (_%bind138981%_ '())
                                (_%args138982%_ '()))
               (let* ((_%rest138983138991%_ _%rest138979%_)
                      (_%else138985138999%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind138981%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args138982%_)
                                                 '()))))))
                      (_%K138987139085%_
                       (lambda (_%rest139002%_ _%e139003%_)
                         (let* ((_%__stx146003146004%_ _%e139003%_)
                                (_%g139008139026%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx146003146004%_)))))
                           (let ((_%__kont146005146006%_
                                  (lambda ()
                                    (_%lp138976%_
                                     _%rest139002%_
                                     _%bind138981%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e139003%_))
                                           _%args138982%_))))
                                 (_%__kont146007146008%_
                                  (lambda ()
                                    (_%lp138976%_
                                     _%rest139002%_
                                     _%bind138981%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e139003%_))
                                           _%args138982%_))))
                                 (_%__kont146009146010%_
                                  (lambda ()
                                    (let ((_%tmp139033%_
                                           (let ((__tmp146456
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp146456))))
                                      (_%lp138976%_
                                       _%rest139002%_
                                       (cons (cons _%tmp139033%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e139003%_))
                                                         '()))
                                             _%bind138981%_)
                                       (cons _%tmp139033%_ _%args138982%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx146003146004%_))
                                 (let ((_%e139010139064%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx146003146004%_))))
                                   (let ((_%tl139012139069%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e139010139064%_)))
                                         (_%hd139011139067%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e139010139064%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd139011139067%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd139011139067%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl139012139069%_))
                                                 (let ((_%e139013139072%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl139012139069%_))))
                                                   (let ((_%tl139015139077%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e139013139072%_)))
                                                         (_%hd139014139075%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e139013139072%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl139015139077%_))
                                                         (_%__kont146005146006%_)
                                                         (_%__kont146009146010%_))))
                                                 (_%__kont146009146010%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd139011139067%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl139012139069%_))
                                                     (let ((_%e139019139049%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl139012139069%_))))
                                                       (let ((_%tl139021139054%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e139019139049%_)))
                     (_%hd139020139052%_
                      (let () (declare (not safe)) (##car _%e139019139049%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl139021139054%_))
                     (_%__kont146007146008%_)
                     (_%__kont146009146010%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont146009146010%_))
                                                 (_%__kont146009146010%_)))
                                         (_%__kont146009146010%_))))
                                 (_%__kont146009146010%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest138983138991%_))
                     (let ((_%hd138988139088%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest138983138991%_)))
                           (_%tl138989139090%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest138983138991%_))))
                       (let* ((_%e139093%_ _%hd138988139088%_)
                              (_%rest139095%_ _%tl138989139090%_))
                         (_%K138987139085%_ _%rest139095%_ _%e139093%_)))
                     (_%else138985138999%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd138925138955%_
                                               _%hd138922138947%_)
                                              (_%g138914138931%_
                                               _%g138915138934%_))))
                                      (_%g138914138931%_ _%g138915138934%_))))
                              (_%g138914138931%_ _%g138915138934%_))))
                      (_%g138914138931%_ _%g138915138934%_)))))
          (_%g138913139097%_ _%stx138912%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self138722%_ _%stx138723%_)
        (let* ((_%g138725138742%_
                (lambda (_%g138726138739%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138726138739%_))))
               (_%g138724138908%_
                (lambda (_%g138726138745%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138726138745%_))
                      (let ((_%e138729138747%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138726138745%_))))
                        (let ((_%hd138730138750%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138729138747%_)))
                              (_%tl138731138752%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138729138747%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138731138752%_))
                              (let ((_%e138732138755%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138731138752%_))))
                                (let ((_%hd138733138758%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138732138755%_)))
                                      (_%tl138734138760%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138732138755%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138734138760%_))
                                      (let ((_%e138735138763%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138734138760%_))))
                                        (let ((_%hd138736138766%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138735138763%_)))
                                              (_%tl138737138768%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138735138763%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138737138768%_))
                                              ((lambda (_%L138771%_
                                                        _%L138772%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self138722%_ _%L138771%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self138722%_ _%L138772%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp138787%_ ((_%rest138790%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L138772%_ (cons _%L138771%_ '())))
                                (_%bind138792%_ '())
                                (_%args138793%_ '()))
               (let* ((_%rest138794138802%_ _%rest138790%_)
                      (_%else138796138810%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind138792%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args138793%_)
                                                 '()))))))
                      (_%K138798138896%_
                       (lambda (_%rest138813%_ _%e138814%_)
                         (let* ((_%__stx146049146050%_ _%e138814%_)
                                (_%g138819138837%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx146049146050%_)))))
                           (let ((_%__kont146051146052%_
                                  (lambda ()
                                    (_%lp138787%_
                                     _%rest138813%_
                                     _%bind138792%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e138814%_))
                                           _%args138793%_))))
                                 (_%__kont146053146054%_
                                  (lambda ()
                                    (_%lp138787%_
                                     _%rest138813%_
                                     _%bind138792%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e138814%_))
                                           _%args138793%_))))
                                 (_%__kont146055146056%_
                                  (lambda ()
                                    (let ((_%tmp138844%_
                                           (let ((__tmp146457
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp146457))))
                                      (_%lp138787%_
                                       _%rest138813%_
                                       (cons (cons _%tmp138844%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e138814%_))
                                                         '()))
                                             _%bind138792%_)
                                       (cons _%tmp138844%_ _%args138793%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx146049146050%_))
                                 (let ((_%e138821138875%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx146049146050%_))))
                                   (let ((_%tl138823138880%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e138821138875%_)))
                                         (_%hd138822138878%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e138821138875%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd138822138878%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd138822138878%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl138823138880%_))
                                                 (let ((_%e138824138883%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl138823138880%_))))
                                                   (let ((_%tl138826138888%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e138824138883%_)))
                                                         (_%hd138825138886%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e138824138883%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl138826138888%_))
                                                         (_%__kont146051146052%_)
                                                         (_%__kont146055146056%_))))
                                                 (_%__kont146055146056%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd138822138878%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl138823138880%_))
                                                     (let ((_%e138830138860%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl138823138880%_))))
                                                       (let ((_%tl138832138865%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e138830138860%_)))
                     (_%hd138831138863%_
                      (let () (declare (not safe)) (##car _%e138830138860%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl138832138865%_))
                     (_%__kont146053146054%_)
                     (_%__kont146055146056%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont146055146056%_))
                                                 (_%__kont146055146056%_)))
                                         (_%__kont146055146056%_))))
                                 (_%__kont146055146056%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest138794138802%_))
                     (let ((_%hd138799138899%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest138794138802%_)))
                           (_%tl138800138901%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest138794138802%_))))
                       (let* ((_%e138904%_ _%hd138799138899%_)
                              (_%rest138906%_ _%tl138800138901%_))
                         (_%K138798138896%_ _%rest138906%_ _%e138904%_)))
                     (_%else138796138810%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd138736138766%_
                                               _%hd138733138758%_)
                                              (_%g138725138742%_
                                               _%g138726138745%_))))
                                      (_%g138725138742%_ _%g138726138745%_))))
                              (_%g138725138742%_ _%g138726138745%_))))
                      (_%g138725138742%_ _%g138726138745%_)))))
          (_%g138724138908%_ _%stx138723%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self138638%_ _%stx138639%_)
        (let* ((_%g138641138662%_
                (lambda (_%g138642138659%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138642138659%_))))
               (_%g138640138719%_
                (lambda (_%g138642138665%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138642138665%_))
                      (let ((_%e138646138667%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138642138665%_))))
                        (let ((_%hd138647138670%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138646138667%_)))
                              (_%tl138648138672%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138646138667%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138648138672%_))
                              (let ((_%e138649138675%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138648138672%_))))
                                (let ((_%hd138650138678%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138649138675%_)))
                                      (_%tl138651138680%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138649138675%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138651138680%_))
                                      (let ((_%e138652138683%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138651138680%_))))
                                        (let ((_%hd138653138686%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138652138683%_)))
                                              (_%tl138654138688%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138652138683%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl138654138688%_))
                                              (let ((_%e138655138691%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl138654138688%_))))
                                                (let ((_%hd138656138694%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e138655138691%_)))
                                                      (_%tl138657138696%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e138655138691%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl138657138696%_))
                                                      ((lambda (_%L138699%_
                                                                _%L138700%_
                                                                _%L138701%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self138638%_ _%L138699%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self138638%_
                                      _%L138700%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self138638%_
                                            _%L138701%_))
                                         (cons ''#f '()))))))
               _%hd138656138694%_
               _%hd138653138686%_
               _%hd138650138678%_)
              (_%g138641138662%_ _%g138642138665%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g138641138662%_
                                               _%g138642138665%_))))
                                      (_%g138641138662%_ _%g138642138665%_))))
                              (_%g138641138662%_ _%g138642138665%_))))
                      (_%g138641138662%_ _%g138642138665%_)))))
          (_%g138640138719%_ _%stx138639%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self138538%_ _%stx138539%_)
        (let* ((_%g138541138566%_
                (lambda (_%g138542138563%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138542138563%_))))
               (_%g138540138635%_
                (lambda (_%g138542138569%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138542138569%_))
                      (let ((_%e138547138571%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138542138569%_))))
                        (let ((_%hd138548138574%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138547138571%_)))
                              (_%tl138549138576%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138547138571%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138549138576%_))
                              (let ((_%e138550138579%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138549138576%_))))
                                (let ((_%hd138551138582%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138550138579%_)))
                                      (_%tl138552138584%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138550138579%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138552138584%_))
                                      (let ((_%e138553138587%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138552138584%_))))
                                        (let ((_%hd138554138590%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138553138587%_)))
                                              (_%tl138555138592%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138553138587%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl138555138592%_))
                                              (let ((_%e138556138595%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl138555138592%_))))
                                                (let ((_%hd138557138598%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e138556138595%_)))
                                                      (_%tl138558138600%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e138556138595%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl138558138600%_))
                                                      (let ((_%e138559138603%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl138558138600%_))))
                (let ((_%hd138560138606%_
                       (let () (declare (not safe)) (##car _%e138559138603%_)))
                      (_%tl138561138608%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e138559138603%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl138561138608%_))
                      ((lambda (_%L138611%_
                                _%L138612%_
                                _%L138613%_
                                _%L138614%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self138538%_
                                        _%L138612%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self138538%_
                                              _%L138611%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self138538%_
                                                    _%L138613%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self138538%_
                                                          _%L138614%_))
                                                       (cons ''#f '())))))))
                       _%hd138560138606%_
                       _%hd138557138598%_
                       _%hd138554138590%_
                       _%hd138551138582%_)
                      (_%g138541138566%_ _%g138542138569%_))))
              (_%g138541138566%_ _%g138542138569%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g138541138566%_
                                               _%g138542138569%_))))
                                      (_%g138541138566%_ _%g138542138569%_))))
                              (_%g138541138566%_ _%g138542138569%_))))
                      (_%g138541138566%_ _%g138542138569%_)))))
          (_%g138540138635%_ _%stx138539%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self138454%_ _%stx138455%_)
        (let* ((_%g138457138478%_
                (lambda (_%g138458138475%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138458138475%_))))
               (_%g138456138535%_
                (lambda (_%g138458138481%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138458138481%_))
                      (let ((_%e138462138483%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138458138481%_))))
                        (let ((_%hd138463138486%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138462138483%_)))
                              (_%tl138464138488%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138462138483%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138464138488%_))
                              (let ((_%e138465138491%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138464138488%_))))
                                (let ((_%hd138466138494%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138465138491%_)))
                                      (_%tl138467138496%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138465138491%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138467138496%_))
                                      (let ((_%e138468138499%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138467138496%_))))
                                        (let ((_%hd138469138502%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138468138499%_)))
                                              (_%tl138470138504%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138468138499%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl138470138504%_))
                                              (let ((_%e138471138507%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl138470138504%_))))
                                                (let ((_%hd138472138510%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e138471138507%_)))
                                                      (_%tl138473138512%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e138471138507%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl138473138512%_))
                                                      ((lambda (_%L138515%_
                                                                _%L138516%_
                                                                _%L138517%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self138454%_ _%L138515%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self138454%_
                                      _%L138516%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self138454%_
                                            _%L138517%_))
                                         (cons ''#f '()))))))
               _%hd138472138510%_
               _%hd138469138502%_
               _%hd138466138494%_)
              (_%g138457138478%_ _%g138458138481%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g138457138478%_
                                               _%g138458138481%_))))
                                      (_%g138457138478%_ _%g138458138481%_))))
                              (_%g138457138478%_ _%g138458138481%_))))
                      (_%g138457138478%_ _%g138458138481%_)))))
          (_%g138456138535%_ _%stx138455%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self138354%_ _%stx138355%_)
        (let* ((_%g138357138382%_
                (lambda (_%g138358138379%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138358138379%_))))
               (_%g138356138451%_
                (lambda (_%g138358138385%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138358138385%_))
                      (let ((_%e138363138387%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138358138385%_))))
                        (let ((_%hd138364138390%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138363138387%_)))
                              (_%tl138365138392%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138363138387%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138365138392%_))
                              (let ((_%e138366138395%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138365138392%_))))
                                (let ((_%hd138367138398%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138366138395%_)))
                                      (_%tl138368138400%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138366138395%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138368138400%_))
                                      (let ((_%e138369138403%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138368138400%_))))
                                        (let ((_%hd138370138406%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138369138403%_)))
                                              (_%tl138371138408%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138369138403%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl138371138408%_))
                                              (let ((_%e138372138411%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl138371138408%_))))
                                                (let ((_%hd138373138414%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e138372138411%_)))
                                                      (_%tl138374138416%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e138372138411%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl138374138416%_))
                                                      (let ((_%e138375138419%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl138374138416%_))))
                (let ((_%hd138376138422%_
                       (let () (declare (not safe)) (##car _%e138375138419%_)))
                      (_%tl138377138424%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e138375138419%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl138377138424%_))
                      ((lambda (_%L138427%_
                                _%L138428%_
                                _%L138429%_
                                _%L138430%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self138354%_
                                        _%L138428%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self138354%_
                                              _%L138427%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self138354%_
                                                    _%L138429%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self138354%_
                                                          _%L138430%_))
                                                       (cons ''#f '())))))))
                       _%hd138376138422%_
                       _%hd138373138414%_
                       _%hd138370138406%_
                       _%hd138367138398%_)
                      (_%g138357138382%_ _%g138358138385%_))))
              (_%g138357138382%_ _%g138358138385%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g138357138382%_
                                               _%g138358138385%_))))
                                      (_%g138357138382%_ _%g138358138385%_))))
                              (_%g138357138382%_ _%g138358138385%_))))
                      (_%g138357138382%_ _%g138358138385%_)))))
          (_%g138356138451%_ _%stx138355%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self138149%_ _%stx138150%_)
        (let* ((_%g138152138173%_
                (lambda (_%g138153138170%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138153138170%_))))
               (_%g138151138351%_
                (lambda (_%g138153138176%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138153138176%_))
                      (let ((_%e138157138178%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138153138176%_))))
                        (let ((_%hd138158138181%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138157138178%_)))
                              (_%tl138159138183%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138157138178%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138159138183%_))
                              (let ((_%e138160138186%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138159138183%_))))
                                (let ((_%hd138161138189%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138160138186%_)))
                                      (_%tl138162138191%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138160138186%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138162138191%_))
                                      (let ((_%e138163138194%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138162138191%_))))
                                        (let ((_%hd138164138197%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138163138194%_)))
                                              (_%tl138165138199%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138163138194%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl138165138199%_))
                                              (let ((_%e138166138202%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl138165138199%_))))
                                                (let ((_%hd138167138205%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e138166138202%_)))
                                                      (_%tl138168138207%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e138166138202%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl138168138207%_))
                                                      ((lambda (_%L138210%_
                                                                _%L138211%_
                                                                _%L138212%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self138149%_
                                    _%L138210%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self138149%_
                                          _%L138211%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp138230%_ ((_%rest138233%_
                                         (cons _%L138211%_
                                               (cons _%L138210%_ '())))
                                        (_%bind138235%_ '())
                                        (_%args138236%_ '()))
                       (let* ((_%rest138237138245%_ _%rest138233%_)
                              (_%else138239138253%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind138235%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp146458
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp146458 _%args138236%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K138241138339%_
                               (lambda (_%rest138256%_ _%e138257%_)
                                 (let* ((_%__stx146095146096%_ _%e138257%_)
                                        (_%g138262138280%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx146095146096%_)))))
                                   (let ((_%__kont146097146098%_
                                          (lambda ()
                                            (_%lp138230%_
                                             _%rest138256%_
                                             _%bind138235%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e138257%_))
                                                   _%args138236%_))))
                                         (_%__kont146099146100%_
                                          (lambda ()
                                            (_%lp138230%_
                                             _%rest138256%_
                                             _%bind138235%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e138257%_))
                                                   _%args138236%_))))
                                         (_%__kont146101146102%_
                                          (lambda ()
                                            (let ((_%tmp138287%_
                                                   (let ((__tmp146459
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp146459))))
                                              (_%lp138230%_
                                               _%rest138256%_
                                               (cons (cons _%tmp138287%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e138257%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind138235%_)
                                               (cons _%tmp138287%_
                                                     _%args138236%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx146095146096%_))
                                         (let ((_%e138264138318%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx146095146096%_))))
                                           (let ((_%tl138266138323%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e138264138318%_)))
                                                 (_%hd138265138321%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e138264138318%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd138265138321%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd138265138321%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl138266138323%_))
                                                         (let ((_%e138267138326%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl138266138323%_))))
                   (let ((_%tl138269138331%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e138267138326%_)))
                         (_%hd138268138329%_
                          (let ()
                            (declare (not safe))
                            (##car _%e138267138326%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl138269138331%_))
                         (_%__kont146097146098%_)
                         (_%__kont146101146102%_))))
                 (_%__kont146101146102%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd138265138321%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl138266138323%_))
                     (let ((_%e138273138303%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl138266138323%_))))
                       (let ((_%tl138275138308%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e138273138303%_)))
                             (_%hd138274138306%_
                              (let ()
                                (declare (not safe))
                                (##car _%e138273138303%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl138275138308%_))
                             (_%__kont146099146100%_)
                             (_%__kont146101146102%_))))
                     (_%__kont146101146102%_))
                 (_%__kont146101146102%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont146101146102%_))))
                                         (_%__kont146101146102%_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rest138237138245%_))
                             (let ((_%hd138242138342%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest138237138245%_)))
                                   (_%tl138243138344%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest138237138245%_))))
                               (let* ((_%e138347%_ _%hd138242138342%_)
                                      (_%rest138349%_ _%tl138243138344%_))
                                 (_%K138241138339%_
                                  _%rest138349%_
                                  _%e138347%_)))
                             (_%else138239138253%_))))))
               _%hd138167138205%_
               _%hd138164138197%_
               _%hd138161138189%_)
              (_%g138152138173%_ _%g138153138176%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g138152138173%_
                                               _%g138153138176%_))))
                                      (_%g138152138173%_ _%g138153138176%_))))
                              (_%g138152138173%_ _%g138153138176%_))))
                      (_%g138152138173%_ _%g138153138176%_)))))
          (_%g138151138351%_ _%stx138150%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self137928%_ _%stx137929%_)
        (let* ((_%g137931137956%_
                (lambda (_%g137932137953%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137932137953%_))))
               (_%g137930138146%_
                (lambda (_%g137932137959%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137932137959%_))
                      (let ((_%e137937137961%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137932137959%_))))
                        (let ((_%hd137938137964%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137937137961%_)))
                              (_%tl137939137966%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137937137961%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137939137966%_))
                              (let ((_%e137940137969%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137939137966%_))))
                                (let ((_%hd137941137972%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137940137969%_)))
                                      (_%tl137942137974%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137940137969%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137942137974%_))
                                      (let ((_%e137943137977%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137942137974%_))))
                                        (let ((_%hd137944137980%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137943137977%_)))
                                              (_%tl137945137982%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137943137977%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl137945137982%_))
                                              (let ((_%e137946137985%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl137945137982%_))))
                                                (let ((_%hd137947137988%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e137946137985%_)))
                                                      (_%tl137948137990%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e137946137985%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl137948137990%_))
                                                      (let ((_%e137949137993%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl137948137990%_))))
                (let ((_%hd137950137996%_
                       (let () (declare (not safe)) (##car _%e137949137993%_)))
                      (_%tl137951137998%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e137949137993%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl137951137998%_))
                      ((lambda (_%L138001%_
                                _%L138002%_
                                _%L138003%_
                                _%L138004%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self137928%_
                                            _%L138002%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self137928%_
                                                  _%L138001%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self137928%_
                                                        _%L138003%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp138025%_ ((_%rest138028%_
                                                 (cons _%L138003%_
                                                       (cons _%L138001%_
                                                             (cons _%L138002%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind138030%_ '())
                                                (_%args138031%_ '()))
                               (let* ((_%rest138032138040%_ _%rest138028%_)
                                      (_%else138034138048%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind138030%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp146460 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp146460 _%args138031%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K138036138134%_
                                       (lambda (_%rest138051%_ _%e138052%_)
                                         (let* ((_%__stx146141146142%_
                                                 _%e138052%_)
                                                (_%g138057138075%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx146141146142%_)))))
                                           (let ((_%__kont146143146144%_
                                                  (lambda ()
                                                    (_%lp138025%_
                                                     _%rest138051%_
                                                     _%bind138030%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e138052%_))
                                                           _%args138031%_))))
                                                 (_%__kont146145146146%_
                                                  (lambda ()
                                                    (_%lp138025%_
                                                     _%rest138051%_
                                                     _%bind138030%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e138052%_))
                                                           _%args138031%_))))
                                                 (_%__kont146147146148%_
                                                  (lambda ()
                                                    (let ((_%tmp138082%_
                                                           (let ((__tmp146461
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp146461))))
              (_%lp138025%_
               _%rest138051%_
               (cons (cons _%tmp138082%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e138052%_))
                                 '()))
                     _%bind138030%_)
               (cons _%tmp138082%_ _%args138031%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx146141146142%_))
                                                 (let ((_%e138059138113%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx146141146142%_))))
                                                   (let ((_%tl138061138118%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e138059138113%_)))
                                                         (_%hd138060138116%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e138059138113%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd138060138116%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd138060138116%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl138061138118%_))
                         (let ((_%e138062138121%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl138061138118%_))))
                           (let ((_%tl138064138126%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e138062138121%_)))
                                 (_%hd138063138124%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e138062138121%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl138064138126%_))
                                 (_%__kont146143146144%_)
                                 (_%__kont146147146148%_))))
                         (_%__kont146147146148%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd138060138116%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl138061138118%_))
                             (let ((_%e138068138098%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl138061138118%_))))
                               (let ((_%tl138070138103%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e138068138098%_)))
                                     (_%hd138069138101%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e138068138098%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl138070138103%_))
                                     (_%__kont146145146146%_)
                                     (_%__kont146147146148%_))))
                             (_%__kont146147146148%_))
                         (_%__kont146147146148%_)))
                 (_%__kont146147146148%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont146147146148%_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _%rest138032138040%_))
                                     (let ((_%hd138037138137%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest138032138040%_)))
                                           (_%tl138038138139%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest138032138040%_))))
                                       (let* ((_%e138142%_ _%hd138037138137%_)
                                              (_%rest138144%_
                                               _%tl138038138139%_))
                                         (_%K138036138134%_
                                          _%rest138144%_
                                          _%e138142%_)))
                                     (_%else138034138048%_))))))
                       _%hd137950137996%_
                       _%hd137947137988%_
                       _%hd137944137980%_
                       _%hd137941137972%_)
                      (_%g137931137956%_ _%g137932137959%_))))
              (_%g137931137956%_ _%g137932137959%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g137931137956%_
                                               _%g137932137959%_))))
                                      (_%g137931137956%_ _%g137932137959%_))))
                              (_%g137931137956%_ _%g137932137959%_))))
                      (_%g137931137956%_ _%g137932137959%_)))))
          (_%g137930138146%_ _%stx137929%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self137767%_ _%stx137768%_)
        (letrec ((_%import-set-template137770%_
                  (lambda (_%in137873%_ _%phi137874%_)
                    (let ((_%iphi137876%_
                           (fx+ _%phi137874%_
                                (##direct-structure-ref
                                 _%in137873%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports137877%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in137873%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp137879%_ ((_%rest137881%_ _%imports137877%_)
                                         (_%r137882%_ '()))
                        (let* ((_%rest137883137891%_ _%rest137881%_)
                               (_%else137885137899%_ (lambda () _%r137882%_))
                               (_%K137887137916%_
                                (lambda (_%rest137902%_ _%in137903%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in137903%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi137876%_))
                                          (_%lp137879%_
                                           _%rest137902%_
                                           (cons _%in137903%_ _%r137882%_))
                                          (_%lp137879%_
                                           _%rest137902%_
                                           _%r137882%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in137903%_
                                             'gx#module-import::t))
                                          (let ((_%iphi137907%_
                                                 (fx+ _%phi137874%_
                                                      (##direct-structure-ref
                                                       _%in137903%_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi137907%_))
                                                (_%lp137879%_
                                                 _%rest137902%_
                                                 (cons (##direct-structure-ref
                                                        (##direct-structure-ref
                                                         _%in137903%_
                                                         '1
                                                         gx#module-import::t
                                                         '#f)
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r137882%_))
                                                (_%lp137879%_
                                                 _%rest137902%_
                                                 _%r137882%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in137903%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi137910%_
                                                     (fx+ _%iphi137876%_
                                                          (##direct-structure-ref
                                                           _%in137903%_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi137910%_))
                                                    (_%lp137879%_
                                                     _%rest137902%_
                                                     (cons (##direct-structure-ref
                                                            _%in137903%_
                                                            '1
                                                            gx#import-set::t
                                                            '#f)
                                                           _%r137882%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi137910%_))
                                                        (_%lp137879%_
                                                         _%rest137902%_
                                                         (let ((__tmp146462
                                                                (_%import-set-template137770%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in137903%_
                         _%iphi137876%_)))
                   (declare (not safe))
                   (__foldl1 cons _%r137882%_ __tmp146462)))
                (_%lp137879%_ _%rest137902%_ _%r137882%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp137879%_
                                               _%rest137902%_
                                               _%r137882%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest137883137891%_))
                              (let ((_%hd137888137919%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest137883137891%_)))
                                    (_%tl137889137921%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest137883137891%_))))
                                (let* ((_%in137924%_ _%hd137888137919%_)
                                       (_%rest137926%_ _%tl137889137921%_))
                                  (_%K137887137916%_
                                   _%rest137926%_
                                   _%in137924%_)))
                              (_%else137885137899%_))))))))
          (let* ((_%g137772137782%_
                  (lambda (_%g137773137779%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137773137779%_))))
                 (_%g137771137870%_
                  (lambda (_%g137773137785%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137773137785%_))
                        (let ((_%e137775137787%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137773137785%_))))
                          (let ((_%hd137776137790%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137775137787%_)))
                                (_%tl137777137792%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137775137787%_))))
                            ((lambda (_%L137795%_)
                               (let ((_%ht137806%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp137808%_ ((_%rest137810%_
                                                     _%L137795%_)
                                                    (_%loads137811%_ '()))
                                   (letrec ((_%K137813%_
                                             (lambda (_%ctx137863%_
                                                      _%rest137864%_)
                                               (let ((_%id137866%_
                                                      (##structure-ref
                                                       _%ctx137863%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (hash-get
                                                        _%ht137806%_
                                                        _%id137866%_))
                                                     (_%lp137808%_
                                                      _%rest137864%_
                                                      _%loads137811%_)
                                                     (let ((_%rt137868%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id137866%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _%ht137806%_
                                                          _%id137866%_
                                                          _%rt137868%_))
                                                       (_%lp137808%_
                                                        _%rest137864%_
                                                        (cons _%rt137868%_
                                                              _%loads137811%_))))))))
                                     (let* ((_%rest137814137822%_
                                             _%rest137810%_)
                                            (_%else137816137834%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp146464
                                                            (lambda (_%g137829137831%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g137829137831%_)))
                   (__tmp146463 (reverse _%loads137811%_)))
               (declare (not safe))
               (##map __tmp146464 __tmp146463)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K137818137851%_
                                             (lambda (_%rest137837%_
                                                      _%in137838%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in137838%_
                                                      'gx#module-context::t))
                                                   (_%K137813%_
                                                    _%in137838%_
                                                    _%rest137837%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in137838%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in137838%_
                             '3
                             gx#module-import::t
                             '#f))
                   (_%K137813%_
                    (##direct-structure-ref
                     (##direct-structure-ref
                      _%in137838%_
                      '1
                      gx#module-import::t
                      '#f)
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest137837%_)
                   (_%lp137808%_ _%rest137837%_ _%loads137811%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in137838%_
                      'gx#import-set::t))
                   (let ((_%phi137843%_
                          (##direct-structure-ref
                           _%in137838%_
                           '2
                           gx#import-set::t
                           '#f)))
                     (if (fxzero? _%phi137843%_)
                         (_%K137813%_
                          (##direct-structure-ref
                           _%in137838%_
                           '1
                           gx#import-set::t
                           '#f)
                          _%rest137837%_)
                         (if (fxpositive? _%phi137843%_)
                             (let ((_%deps137847%_
                                    (_%import-set-template137770%_
                                     _%in137838%_
                                     '0)))
                               (_%lp137808%_
                                (let ()
                                  (declare (not safe))
                                  (__foldl1
                                   cons
                                   _%rest137837%_
                                   _%deps137847%_))
                                _%loads137811%_))
                             (_%lp137808%_ _%rest137837%_ _%loads137811%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx137768%_
                      _%in137838%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _%rest137814137822%_))
                                           (let ((_%hd137819137854%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest137814137822%_)))
                                                 (_%tl137820137856%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest137814137822%_))))
                                             (let* ((_%in137859%_
                                                     _%hd137819137854%_)
                                                    (_%rest137861%_
                                                     _%tl137820137856%_))
                                               (_%K137818137851%_
                                                _%rest137861%_
                                                _%in137859%_)))
                                           (_%else137816137834%_)))))))
                             _%tl137777137792%_)))
                        (_%g137772137782%_ _%g137773137785%_)))))
            (_%g137771137870%_ _%stx137768%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self137580%_ _%stx137581%_)
        (letrec ((_%add-lift!137583%_
                  (lambda (_%expr137765%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr137765%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote137584%_
                  (lambda (_%id137762%_ _%marks137763%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id137762%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks137763%_
                                                        '()))))))))
                 (_%generate-simple137585%_
                  (lambda (_%stxq137757%_)
                    (let ((_%gid137759%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid137760%_
                           (gxc#generate-runtime-identifier _%stxq137757%_)))
                      (_%add-lift!137583%_
                       (cons 'define
                             (cons _%gid137759%_
                                   (cons (_%generate-syntax-quote137584%_
                                          _%qid137760%_
                                          ''())
                                         '()))))
                      (let ((__tmp146465
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp146465 _%stxq137757%_ _%gid137759%_))
                      _%gid137759%_)))
                 (_%generate-serialized137586%_
                  (lambda (_%stxq137747%_ _%marks137748%_)
                    (let* ((_%mark-refs137750%_
                            (map _%generate-mark137587%_ _%marks137748%_))
                           (_%gid137752%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid137754%_
                            (gxc#generate-runtime-identifier _%stxq137747%_)))
                      (_%add-lift!137583%_
                       (cons 'define
                             (cons _%gid137752%_
                                   (cons (_%generate-syntax-quote137584%_
                                          _%qid137754%_
                                          (cons 'list _%mark-refs137750%_))
                                         '()))))
                      (let ((__tmp146466
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp146466 _%stxq137747%_ _%gid137752%_))
                      _%gid137752%_)))
                 (_%generate-mark137587%_
                  (lambda (_%mark137732%_)
                    (let ((_%$e137734%_
                           (let ((__tmp146467
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp146467 _%mark137732%_))))
                      (if _%$e137734%_
                          (values _%$e137734%_)
                          (let* ((_%gid137738%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr137740%_
                                  (_%serialize-mark137588%_ _%mark137732%_))
                                 (_%ctx137742%_
                                  (let ((__tmp146468
                                         (##structure-ref
                                          _%mark137732%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp146468)))
                                 (_%ctx-ref137744%_
                                  (if (eq? _%ctx137742%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref137589%_
                                                               _%ctx137742%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp146469
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp146469
                               _%mark137732%_
                               _%gid137738%_))
                            (_%add-lift!137583%_
                             (cons 'define
                                   (cons _%gid137738%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr137740%_ '()))
                   (cons _%ctx-ref137744%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid137738%_)))))
                 (_%serialize-mark137588%_
                  (lambda (_%mark137679%_)
                    (letrec ((_%quote-e137681%_
                              (lambda (_%sym137730%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym137730%_))
                                    _%sym137730%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym137730%_))))))
                      (let* ((_%mark137682137691%_ _%mark137679%_)
                             (_%E137684137695%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark137682137691%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K137685137707%_
                              (lambda (_%trace137698%_
                                       _%phi137699%_
                                       _%ctx137700%_
                                       _%subst137701%_)
                                (let ((_%subs137703%_
                                       (if _%subst137701%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst137701%_))
                                           '())))
                                  (cons _%phi137699%_
                                        (map (lambda (_%pair137705%_)
                                               (cons (_%quote-e137681%_
                                                      (car _%pair137705%_))
                                                     (_%quote-e137681%_
                                                      (cdr _%pair137705%_))))
                                             _%subs137703%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark137682137691%_
                               'gx#expander-mark::t))
                            (let* ((_%e137686137710%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark137682137691%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst137713%_ _%e137686137710%_)
                                   (_%e137687137715%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark137682137691%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx137718%_ _%e137687137715%_)
                                   (_%e137688137720%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark137682137691%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi137723%_ _%e137688137720%_)
                                   (_%e137689137725%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark137682137691%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace137728%_ _%e137689137725%_))
                              (_%K137685137707%_
                               _%trace137728%_
                               _%phi137723%_
                               _%ctx137718%_
                               _%subst137713%_))
                            (_%E137684137695%_))))))
                 (_%context-ref137589%_
                  (lambda (_%ctx137666%_)
                    (if (let ((__tmp146470
                               (##structure-ref
                                _%ctx137666%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp146470
                           'gx#module-context::t))
                        (let ((_%ctx-ref137668%_
                               (_%context-ref-nested137591%_ _%ctx137666%_))
                              (_%ctx-origin137669%_
                               (_%context-ref-origin137590%_ _%ctx137666%_))
                              (_%origin137670%_
                               (_%context-ref-origin137590%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin137670%_ _%ctx-origin137669%_)
                              (let ((_%ref137672%_
                                     (_%context-ref-nested137591%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp137674%_ ((_%ref137676%_
                                                    (cdr _%ref137672%_))
                                                   (_%ctx-ref137677%_
                                                    (cdr _%ctx-ref137668%_)))
                                  (if (and (pair? _%ref137676%_)
                                           (eq? (car _%ref137676%_)
                                                (car _%ctx-ref137677%_)))
                                      (_%lp137674%_
                                       (cdr _%ref137676%_)
                                       (cdr _%ctx-ref137677%_))
                                      (cons '#f _%ctx-ref137677%_))))
                              _%ctx-ref137668%_))
                        (let ((__tmp146471
                               (##structure-ref
                                _%ctx137666%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp146471)))))
                 (_%context-ref-origin137590%_
                  (lambda (_%ctx137658%_)
                    (let _%lp137660%_ ((_%ctx137662%_ _%ctx137658%_))
                      (let ((_%super137664%_
                             (##structure-ref
                              _%ctx137662%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super137664%_
                               'gx#module-context::t))
                            (_%lp137660%_ _%super137664%_)
                            _%ctx137662%_)))))
                 (_%context-ref-nested137591%_
                  (lambda (_%ctx137649%_)
                    (let _%lp137651%_ ((_%ctx137653%_ _%ctx137649%_)
                                       (_%r137654%_ '()))
                      (let ((_%super137656%_
                             (##structure-ref
                              _%ctx137653%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super137656%_
                               'gx#module-context::t))
                            (_%lp137651%_
                             _%super137656%_
                             (cons (car (##structure-ref
                                         _%ctx137653%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r137654%_))
                            (cons (let ((__tmp146472
                                         (##structure-ref
                                          _%ctx137653%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp146472))
                                  _%r137654%_)))))))
          (let* ((_%g137593137606%_
                  (lambda (_%g137594137603%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137594137603%_))))
                 (_%g137592137646%_
                  (lambda (_%g137594137609%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137594137609%_))
                        (let ((_%e137596137611%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137594137609%_))))
                          (let ((_%hd137597137614%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137596137611%_)))
                                (_%tl137598137616%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137596137611%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl137598137616%_))
                                (let ((_%e137599137619%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl137598137616%_))))
                                  (let ((_%hd137600137622%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e137599137619%_)))
                                        (_%tl137601137624%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e137599137619%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl137601137624%_))
                                        ((lambda (_%L137627%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _%L137627%_))
                                               (let ((_%$e137640%_
                                                      (let ((__tmp146473
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp146473 _%L137627%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e137640%_
                                                     (values _%$e137640%_)
                                                     (let ((_%marks137644%_
                                                            (##direct-structure-ref
                                                             _%L137627%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks137644%_)
                                                           (_%generate-simple137585%_
                                                            _%L137627%_)
                                                           (_%generate-serialized137586%_
                                                            _%L137627%_
                                                            _%marks137644%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%L137627%_))))
                                         _%hd137600137622%_)
                                        (_%g137593137606%_
                                         _%g137594137609%_))))
                                (_%g137593137606%_ _%g137594137609%_))))
                        (_%g137593137606%_ _%g137594137609%_)))))
            (_%g137592137646%_ _%stx137581%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self137512%_ _%stx137513%_)
        (let* ((_%g137515137532%_
                (lambda (_%g137516137529%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137516137529%_))))
               (_%g137514137577%_
                (lambda (_%g137516137535%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137516137535%_))
                      (let ((_%e137519137537%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137516137535%_))))
                        (let ((_%hd137520137540%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137519137537%_)))
                              (_%tl137521137542%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137519137537%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137521137542%_))
                              (let ((_%e137522137545%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137521137542%_))))
                                (let ((_%hd137523137548%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137522137545%_)))
                                      (_%tl137524137550%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137522137545%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137524137550%_))
                                      (let ((_%e137525137553%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137524137550%_))))
                                        (let ((_%hd137526137556%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137525137553%_)))
                                              (_%tl137527137558%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137525137553%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137527137558%_))
                                              ((lambda (_%L137561%_
                                                        _%L137562%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L137562%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self137512%_ _%L137561%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137526137556%_
                                               _%hd137523137548%_)
                                              (_%g137515137532%_
                                               _%g137516137535%_))))
                                      (_%g137515137532%_ _%g137516137535%_))))
                              (_%g137515137532%_ _%g137516137535%_))))
                      (_%g137515137532%_ _%g137516137535%_)))))
          (_%g137514137577%_ _%stx137513%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self137461%_ _%stx137462%_)
        (let* ((_%g137464137474%_
                (lambda (_%g137465137471%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137465137471%_))))
               (_%g137463137509%_
                (lambda (_%g137465137477%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137465137477%_))
                      (let ((_%e137467137479%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137465137477%_))))
                        (let ((_%hd137468137482%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137467137479%_)))
                              (_%tl137469137484%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137467137479%_))))
                          ((lambda (_%L137487%_)
                             (let* ((_%c-body137501%_
                                     (map (lambda (_%g137496137498%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self137461%_
                                               _%g137496137498%_)))
                                          _%L137487%_))
                                    (_%c-body137506%_
                                     (let ((__tmp146474
                                            (lambda (_%$obj137503%_)
                                              (not (eq? _%$obj137503%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp146474
                                        _%c-body137501%_))))
                               (cons '%#begin _%c-body137506%_)))
                           _%tl137469137484%_)))
                      (_%g137464137474%_ _%g137465137477%_)))))
          (_%g137463137509%_ _%stx137462%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self137366%_ _%stx137367%_)
        (let* ((_%g137369137379%_
                (lambda (_%g137370137376%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137370137376%_))))
               (_%g137368137458%_
                (lambda (_%g137370137382%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137370137382%_))
                      (let ((_%e137372137384%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137370137382%_))))
                        (let ((_%hd137373137387%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137372137384%_)))
                              (_%tl137374137389%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137372137384%_))))
                          ((lambda (_%L137392%_)
                             (let* ((_%phi137402%_
                                     (let ((__tmp146475
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp146475 '1)))
                                    (_%block137404%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self137366%_ 'state))
                                      _%phi137402%_))
                                    (_%compiled137407%_
                                     (let ((__tmp146476
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self137366%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%L137392%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp146476
                                        gx#current-expander-phi
                                        _%phi137402%_)))
                                    (_%g137410137420%_
                                     (lambda (_%g137411137417%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g137411137417%_))))
                                    (_%g137409137455%_
                                     (lambda (_%g137411137423%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g137411137423%_))
                                           (let ((_%e137413137425%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g137411137423%_))))
                                             (let ((_%hd137414137428%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e137413137425%_)))
                                                   (_%tl137415137430%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e137413137425%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd137414137428%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd137414137428%_))
                                                       ((lambda (_%L137433%_)
                                                          (let ((_%c-body137450%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj137447%_)
                                   (not (eq? _%$obj137447%_ '#!void)))
                                 _%L137433%_)))
                    (if _%block137404%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block137404%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body137450%_))
                        (if (null? _%c-body137450%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body137450%_)))))
                _%tl137415137430%_)
               (_%g137410137420%_ _%g137411137423%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g137410137420%_
                                                    _%g137411137423%_))))
                                           (_%g137410137420%_
                                            _%g137411137423%_)))))
                               (_%g137409137455%_ _%compiled137407%_)))
                           _%tl137374137389%_)))
                      (_%g137369137379%_ _%g137370137382%_)))))
          (_%g137368137458%_ _%stx137367%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self137297%_ _%stx137298%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self137297%_ 'state)))
        (let* ((_%g137300137314%_
                (lambda (_%g137301137311%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137301137311%_))))
               (_%g137299137363%_
                (lambda (_%g137301137317%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137301137317%_))
                      (let ((_%e137304137319%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137301137317%_))))
                        (let ((_%hd137305137322%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137304137319%_)))
                              (_%tl137306137324%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137304137319%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137306137324%_))
                              (let ((_%e137307137327%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137306137324%_))))
                                (let ((_%hd137308137330%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137307137327%_)))
                                      (_%tl137309137332%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137307137327%_))))
                                  ((lambda (_%L137335%_ _%L137336%_)
                                     (let ((_%key137349%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%L137336%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key137349%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx137298%_
                                              _%L137336%_
                                              _%key137349%_)))
                                       (let* ((_%ctx137351%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%L137336%_)))
                                              (_%code137354%_
                                               (let ((__tmp146477
                                                      (lambda ()
                                                        (let ((__tmp146478
                                                               (##structure-ref
                                                                _%ctx137351%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self137297%_
                                                           __tmp146478)))))
                                                 (declare (not safe))
                                                 (__call-with-parameters
                                                  __tmp146477
                                                  gx#current-expander-context
                                                  _%ctx137351%_)))
                                              (_%rt137356%_
                                               (let ((__tmp146479
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp146479
                                                  _%ctx137351%_)))
                                              (_%loader137358%_
                                               (if _%rt137356%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt137356%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid137360%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L137336%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self137297%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid137360%_
                                                     (cons _%code137354%_
                                                           _%loader137358%_))))))
                                   _%tl137309137332%_
                                   _%hd137308137330%_)))
                              (_%g137300137314%_ _%g137301137317%_))))
                      (_%g137300137314%_ _%g137301137317%_)))))
          (_%g137299137363%_ _%stx137298%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx137284%_ _%context-chain137285%_)
        (let _%lp137287%_ ((_%ctx137289%_ _%ctx137284%_) (_%path137290%_ '()))
          (let ((_%super137292%_
                 (##structure-ref _%ctx137289%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super137292%_ _%context-chain137285%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx137289%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path137290%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super137292%_
                       'gx#module-context::t))
                    (_%lp137287%_
                     _%super137292%_
                     (cons (car (##structure-ref
                                 _%ctx137289%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path137290%_))
                    (cons (let ((__tmp146480
                                 (##structure-ref
                                  _%ctx137289%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp146480))
                          _%path137290%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp137277%_ ((_%ctx137279%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r137280%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx137279%_ 'gx#module-context::t))
              (_%lp137277%_
               (##structure-ref _%ctx137279%_ '3 gx#phi-context::t '#f)
               (cons _%ctx137279%_ _%r137280%_))
              _%r137280%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self137040%_ _%stx137041%_)
        (letrec* ((_%context-chain137043%_ (gxc#current-context-chain))
                  (_%make-import-spec137044%_
                   (lambda (_%in137213%_)
                     (let* ((_%in137214137226%_ _%in137213%_)
                            (_%E137216137230%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in137214137226%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K137217137240%_
                             (lambda (_%phi137233%_
                                      _%name137234%_
                                      _%src-name137235%_
                                      _%src-phi137236%_
                                      _%src-key137237%_
                                      _%src-ctx137238%_)
                               (cons _%phi137233%_
                                     (cons (gxc#generate-runtime-identifier-key
                                            _%name137234%_)
                                           (cons _%src-phi137236%_
                                                 (cons (gxc#generate-runtime-identifier-key
                                                        _%src-name137235%_)
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in137214137226%_
                              'gx#module-import::t))
                           (let ((_%e137218137243%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in137214137226%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e137218137243%_
                                    'gx#module-export::t))
                                 (let* ((_%e137221137246%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e137218137243%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx137249%_ _%e137221137246%_)
                                        (_%e137222137251%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e137218137243%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key137254%_ _%e137222137251%_)
                                        (_%e137223137256%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e137218137243%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi137259%_ _%e137223137256%_)
                                        (_%e137224137261%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e137218137243%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name137264%_ _%e137224137261%_)
                                        (_%e137219137266%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in137214137226%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name137269%_ _%e137219137266%_)
                                        (_%e137220137271%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in137214137226%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi137274%_ _%e137220137271%_))
                                   (_%K137217137240%_
                                    _%phi137274%_
                                    _%name137269%_
                                    _%src-name137264%_
                                    _%src-phi137259%_
                                    _%src-key137254%_
                                    _%src-ctx137249%_))
                                 (_%E137216137230%_)))
                           (_%E137216137230%_)))))
                  (_%make-import-path137045%_
                   (lambda (_%ctx137211%_)
                     (gxc#generate-meta-import-path
                      _%ctx137211%_
                      _%context-chain137043%_)))
                  (_%make-import-spec-in137046%_
                   (lambda (_%ctx137208%_ _%in137209%_)
                     (cons 'spec:
                           (cons (_%make-import-path137045%_ _%ctx137208%_)
                                 (reverse _%in137209%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self137040%_ 'state)))
          (let* ((_%g137048137058%_
                  (lambda (_%g137049137055%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137049137055%_))))
                 (_%g137047137205%_
                  (lambda (_%g137049137061%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137049137061%_))
                        (let ((_%e137051137063%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137049137061%_))))
                          (let ((_%hd137052137066%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137051137063%_)))
                                (_%tl137053137068%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137051137063%_))))
                            ((lambda (_%L137071%_)
                               (let _%lp137082%_ ((_%rest137084%_ _%L137071%_)
                                                  (_%current-src137085%_ '#f)
                                                  (_%current-in137086%_ '())
                                                  (_%r137087%_ '()))
                                 (let* ((_%rest137088137096%_ _%rest137084%_)
                                        (_%else137090137106%_
                                         (lambda ()
                                           (let ((_%r137104%_
                                                  (if _%current-src137085%_
                                                      (cons (_%make-import-spec-in137046%_
                                                             _%current-src137085%_
                                                             _%current-in137086%_)
                                                            _%r137087%_)
                                                      _%r137087%_)))
                                             (cons '%#import
                                                   (reverse _%r137104%_)))))
                                        (_%K137092137193%_
                                         (lambda (_%rest137109%_ _%in137110%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in137110%_
                                                  'gx#module-import::t))
                                               (let* ((_%in137112137119%_
                                                       _%in137110%_)
                                                      (_%E137114137123%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in137112137119%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K137115137131%_
               (lambda (_%src-ctx137126%_)
                 (if (eq? _%current-src137085%_ _%src-ctx137126%_)
                     (_%lp137082%_
                      _%rest137109%_
                      _%current-src137085%_
                      (cons (_%make-import-spec137044%_ _%in137110%_)
                            _%current-in137086%_)
                      _%r137087%_)
                     (if _%current-src137085%_
                         (_%lp137082%_
                          _%rest137109%_
                          _%src-ctx137126%_
                          (cons (_%make-import-spec137044%_ _%in137110%_) '())
                          (cons (_%make-import-spec-in137046%_
                                 _%current-src137085%_
                                 _%current-in137086%_)
                                _%r137087%_))
                         (_%lp137082%_
                          _%rest137109%_
                          _%src-ctx137126%_
                          (cons (_%make-import-spec137044%_ _%in137110%_) '())
                          _%r137087%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%in137112137119%_
                                                        'gx#module-import::t))
                                                     (let ((_%e137116137134%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in137112137119%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              _%e137116137134%_
                                                              'gx#module-export::t))
                                                           (let* ((_%e137117137137%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%e137116137134%_
                              '1
                              '#f
                              '#f)))
                          (_%src-ctx137140%_ _%e137117137137%_))
                     (_%K137115137131%_ _%src-ctx137140%_))
                   (_%E137114137123%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E137114137123%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in137110%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi137143%_
                                                           (##direct-structure-ref
                                                            _%in137110%_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_%src137145%_
                                                           (##direct-structure-ref
                                                            _%in137110%_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_%src-in137185%_
                                                           (let* ((_%g137146137155%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path137045%_ _%src137145%_))
                          (_%E137149137159%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g137146137155%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K137151137175%_
                            (lambda (_%path137173%_) _%path137173%_))
                           (_%K137150137165%_
                            (lambda (_%path137163%_)
                              (cons 'in: _%path137163%_))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%g137146137155%_))
                           (let ((_%tl137153137180%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g137146137155%_)))
                                 (_%hd137152137178%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g137146137155%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _%tl137153137180%_))
                                 (let ((_%path137183%_ _%hd137152137178%_))
                                   (_%K137151137175%_ _%path137183%_))
                                 (let ((_%path137168%_ _%g137146137155%_))
                                   (_%K137150137165%_ _%path137168%_))))
                           (let ((_%path137168%_ _%g137146137155%_))
                             (_%K137150137165%_ _%path137168%_))))))
                  (_%r137187%_
                   (if _%current-src137085%_
                       (cons (_%make-import-spec-in137046%_
                              _%current-src137085%_
                              _%current-in137086%_)
                             _%r137087%_)
                       _%r137087%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp137082%_
                                                      _%rest137109%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi137143%_)
                                                                _%src-in137185%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi137143%_
                                    (cons _%src-in137185%_ '()))))
                    _%r137187%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in137110%_
                                                          'gx#module-context::t))
                                                       (let ((_%r137191%_
                                                              (if _%current-src137085%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in137046%_
                                 _%current-src137085%_
                                 _%current-in137086%_)
                                _%r137087%_)
                          _%r137087%_)))
                 (_%lp137082%_
                  _%rest137109%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path137045%_ _%in137110%_))
                        _%r137191%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest137088137096%_))
                                       (let ((_%hd137093137196%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest137088137096%_)))
                                             (_%tl137094137198%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest137088137096%_))))
                                         (let* ((_%in137201%_
                                                 _%hd137093137196%_)
                                                (_%rest137203%_
                                                 _%tl137094137198%_))
                                           (_%K137092137193%_
                                            _%rest137203%_
                                            _%in137201%_)))
                                       (_%else137090137106%_)))))
                             _%tl137053137068%_)))
                        (_%g137048137058%_ _%g137049137061%_)))))
            (_%g137047137205%_ _%stx137041%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self136850%_ _%stx136851%_)
        (letrec* ((_%context-chain136853%_ (gxc#current-context-chain))
                  (_%make-import-path136854%_
                   (lambda (_%ctx137038%_)
                     (gxc#generate-meta-import-path
                      _%ctx137038%_
                      _%context-chain136853%_))))
          (let* ((_%g136856136866%_
                  (lambda (_%g136857136863%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136857136863%_))))
                 (_%g136855137035%_
                  (lambda (_%g136857136869%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136857136869%_))
                        (let ((_%e136859136871%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136857136869%_))))
                          (let ((_%hd136860136874%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136859136871%_)))
                                (_%tl136861136876%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136859136871%_))))
                            ((lambda (_%L136879%_)
                               (let _%lp136890%_ ((_%rest136892%_ _%L136879%_)
                                                  (_%r136893%_ '()))
                                 (let* ((_%rest136894136902%_ _%rest136892%_)
                                        (_%else136896136910%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r136893%_))))
                                        (_%K136898137023%_
                                         (lambda (_%rest136913%_ _%out136914%_)
                                           (let* ((_%out136915136928%_
                                                   _%out136914%_)
                                                  (_%E136918136932%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out136915136928%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K136922137002%_
                                                    (lambda (_%name136998%_
                                                             _%phi136999%_
                                                             _%key137000%_)
                                                      (_%lp136890%_
                                                       _%rest136913%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi136999%_
                                 (cons (gxc#generate-runtime-identifier-key
                                        _%key137000%_)
                                       (cons (gxc#generate-runtime-identifier-key
                                              _%name136998%_)
                                             '()))))
                     _%r136893%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K136919136982%_
                                                    (lambda (_%phi136936%_
                                                             _%src136937%_)
                                                      (let* ((_%out136977%_
                                                              (if _%src136937%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g136938136947%_
                                              (_%make-import-path136854%_
                                               _%src136937%_))
                                             (_%E136941136951%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g136938136947%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K136943136967%_
                                               (lambda (_%path136965%_)
                                                 _%path136965%_))
                                              (_%K136942136957%_
                                               (lambda (_%path136955%_)
                                                 (cons 'in: _%path136955%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%g136938136947%_))
                                              (let ((_%tl136945136972%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g136938136947%_)))
                                                    (_%hd136944136970%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g136938136947%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl136945136972%_))
                                                    (let ((_%path136975%_
                                                           _%hd136944136970%_))
                                                      (_%K136943136967%_
                                                       _%path136975%_))
                                                    (let ((_%path136960%_
                                                           _%g136938136947%_))
                                                      (_%K136942136957%_
                                                       _%path136960%_))))
                                              (let ((_%path136960%_
                                                     _%g136938136947%_))
                                                (_%K136942136957%_
                                                 _%path136960%_)))))
                                      '()))
                          '#t))
                     (_%out136979%_
                      (if (fxzero? _%phi136936%_)
                          _%out136977%_
                          (cons 'phi:
                                (cons _%phi136936%_
                                      (cons _%out136977%_ '()))))))
                (_%lp136890%_
                 _%rest136913%_
                 (cons _%out136979%_ _%r136893%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match136917136995%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out136915136928%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e136920136985%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out136915136928%_
                               '1
                               '#f
                               '#f)))
                           (_%e136921136990%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out136915136928%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src136988%_ _%e136920136985%_)
                            (_%phi136993%_ _%e136921136990%_))
                        (_%K136919136982%_ _%phi136993%_ _%src136988%_)))
                    (_%E136918136932%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out136915136928%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e136923137005%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out136915136928%_
                        '1
                        '#f
                        '#f)))
                    (_%e136924137008%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out136915136928%_
                        '2
                        '#f
                        '#f)))
                    (_%e136925137013%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out136915136928%_
                        '3
                        '#f
                        '#f)))
                    (_%e136926137018%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out136915136928%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key137011%_ _%e136924137008%_)
                     (_%phi137016%_ _%e136925137013%_)
                     (_%name137021%_ _%e136926137018%_))
                 (_%K136922137002%_
                  _%name137021%_
                  _%phi137016%_
                  _%key137011%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match136917136995%_))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest136894136902%_))
                                       (let ((_%hd136899137026%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest136894136902%_)))
                                             (_%tl136900137028%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest136894136902%_))))
                                         (let* ((_%out137031%_
                                                 _%hd136899137026%_)
                                                (_%rest137033%_
                                                 _%tl136900137028%_))
                                           (_%K136898137023%_
                                            _%rest137033%_
                                            _%out137031%_)))
                                       (_%else136896136910%_)))))
                             _%tl136861136876%_)))
                        (_%g136856136866%_ _%g136857136869%_)))))
            (_%g136855137035%_ _%stx136851%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self136811%_ _%stx136812%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self136811%_ 'state)))
        (let* ((_%g136814136824%_
                (lambda (_%g136815136821%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136815136821%_))))
               (_%g136813136847%_
                (lambda (_%g136815136827%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136815136827%_))
                      (let ((_%e136817136829%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136815136827%_))))
                        (let ((_%hd136818136832%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136817136829%_)))
                              (_%tl136819136834%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136817136829%_))))
                          ((lambda (_%L136837%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%L136837%_)))
                           _%tl136819136834%_)))
                      (_%g136814136824%_ _%g136815136827%_)))))
          (_%g136813136847%_ _%stx136812%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self136682%_ _%stx136683%_)
        (letrec ((_%generate1136685%_
                  (lambda (_%id136806%_ _%eid136807%_)
                    (let ((_%eid136809%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid136807%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid136809%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx136683%_
                             _%eid136809%_)))
                      (cons (gxc#generate-runtime-identifier _%id136806%_)
                            (cons _%eid136809%_ '()))))))
          (let* ((_%g136687136715%_
                  (lambda (_%g136688136712%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136688136712%_))))
                 (_%g136686136803%_
                  (lambda (_%g136688136718%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136688136718%_))
                        (let ((_%e136691136720%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136688136718%_))))
                          (let ((_%hd136692136723%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136691136720%_)))
                                (_%tl136693136725%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136691136720%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl136693136725%_))
                                (let ((_g146481_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl136693136725%_
                                          '0))))
                                  (begin
                                    (let ((_g146482_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g146481_)
                                                 (##vector-length _g146481_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g146482_ 2)))
                                          (error "Context expects 2 values"
                                                 _g146482_)))
                                    (let ((_%target136694136728%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g146481_ 0)))
                                          (_%tl136696136730%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g146481_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl136696136730%_))
                                          (letrec ((_%loop136697136733%_
                                                    (lambda (_%hd136695136736%_
                                                             _%eid136701136738%_
                                                             _%id136702136740%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd136695136736%_))
                                                          (let ((_%e136698136743%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd136695136736%_))))
                    (let ((_%lp-hd136699136746%_
                           (let ()
                             (declare (not safe))
                             (##car _%e136698136743%_)))
                          (_%lp-tl136700136748%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e136698136743%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd136699136746%_))
                          (let ((_%e136705136751%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd136699136746%_))))
                            (let ((_%hd136706136754%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e136705136751%_)))
                                  (_%tl136707136756%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e136705136751%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl136707136756%_))
                                  (let ((_%e136708136759%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl136707136756%_))))
                                    (let ((_%hd136709136762%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e136708136759%_)))
                                          (_%tl136710136764%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e136708136759%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl136710136764%_))
                                          (_%loop136697136733%_
                                           _%lp-tl136700136748%_
                                           (cons _%hd136709136762%_
                                                 _%eid136701136738%_)
                                           (cons _%hd136706136754%_
                                                 _%id136702136740%_))
                                          (_%g136687136715%_
                                           _%g136688136718%_))))
                                  (_%g136687136715%_ _%g136688136718%_))))
                          (_%g136687136715%_ _%g136688136718%_))))
                  (let ((_%eid136703136767%_ (reverse _%eid136701136738%_))
                        (_%id136704136769%_ (reverse _%id136702136740%_)))
                    ((lambda (_%L136772%_ _%L136773%_)
                       (cons '%#extern
                             (map _%generate1136685%_
                                  (let ((__tmp146483
                                         (lambda (_%g136788136791%_
                                                  _%g136789136793%_)
                                           (cons _%g136788136791%_
                                                 _%g136789136793%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp146483 '() _%L136773%_))
                                  (let ((__tmp146484
                                         (lambda (_%g136795136798%_
                                                  _%g136796136800%_)
                                           (cons _%g136795136798%_
                                                 _%g136796136800%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp146484 '() _%L136772%_)))))
                     _%eid136703136767%_
                     _%id136704136769%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop136697136733%_
                                             _%target136694136728%_
                                             '()
                                             '()))
                                          (_%g136687136715%_
                                           _%g136688136718%_)))))
                                (_%g136687136715%_ _%g136688136718%_))))
                        (_%g136687136715%_ _%g136688136718%_)))))
            (_%g136686136803%_ _%stx136683%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self136472%_ _%stx136473%_)
        (letrec ((_%generate1136475%_
                  (lambda (_%id136677%_)
                    (let ((_%eid136679%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id136677%_)))
                          (_%ident136680%_
                           (gxc#generate-runtime-identifier _%id136677%_)))
                      (cons '%#define-runtime
                            (cons _%ident136680%_ (cons _%eid136679%_ '()))))))
                 (_%generate*136476%_
                  (lambda (_%all136645%_)
                    (let* ((_%all136646136654%_ _%all136645%_)
                           (_%else136648136662%_
                            (lambda () (cons '%#begin _%all136645%_)))
                           (_%K136650136667%_
                            (lambda (_%one136665%_) _%one136665%_)))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%all136646136654%_))
                          (let ((_%hd136651136670%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all136646136654%_)))
                                (_%tl136652136672%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all136646136654%_))))
                            (let ((_%one136675%_ _%hd136651136670%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _%tl136652136672%_))
                                  (_%K136650136667%_ _%one136675%_)
                                  (_%else136648136662%_))))
                          (_%else136648136662%_))))))
          (let* ((_%g136478136495%_
                  (lambda (_%g136479136492%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g136479136492%_))))
                 (_%g136477136642%_
                  (lambda (_%g136479136498%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g136479136498%_))
                        (let ((_%e136482136500%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g136479136498%_))))
                          (let ((_%hd136483136503%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e136482136500%_)))
                                (_%tl136484136505%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e136482136500%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl136484136505%_))
                                (let ((_%e136485136508%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl136484136505%_))))
                                  (let ((_%hd136486136511%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e136485136508%_)))
                                        (_%tl136487136513%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e136485136508%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl136487136513%_))
                                        (let ((_%e136488136516%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl136487136513%_))))
                                          (let ((_%hd136489136519%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e136488136516%_)))
                                                (_%tl136490136521%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e136488136516%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl136490136521%_))
                                                ((lambda (_%L136524%_
                                                          _%L136525%_)
                                                   (let _%lp136541%_ ((_%rest136543%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%L136525%_)
                              (_%r136544%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx146220146221%_
                                                             _%rest136543%_)
                                                            (_%g136549136566%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx146220146221%_)))))
               (let ((_%__kont146222146223%_
                      (lambda (_%L136629%_)
                        (_%lp136541%_ _%L136629%_ _%r136544%_)))
                     (_%__kont146224146225%_
                      (lambda (_%L136602%_ _%L136603%_)
                        (_%lp136541%_
                         _%L136602%_
                         (cons (_%generate1136475%_ _%L136603%_)
                               _%r136544%_))))
                     (_%__kont146226146227%_
                      (lambda (_%L136578%_)
                        (_%generate*136476%_
                         (let ((__tmp146485
                                (cons (_%generate1136475%_ _%L136578%_) '())))
                           (declare (not safe))
                           (__foldl1 cons __tmp146485 _%r136544%_)))))
                     (_%__kont146228146229%_
                      (lambda () (_%generate*136476%_ (reverse _%r136544%_)))))
                 (let ((_%g136547136589%_
                        (lambda ()
                          (let ((_%L136578%_ _%__stx146220146221%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L136578%_))
                                (_%__kont146226146227%_ _%L136578%_)
                                (_%__kont146228146229%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx146220146221%_))
                       (let ((_%e136552136618%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx146220146221%_))))
                         (let ((_%tl136554136623%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e136552136618%_)))
                               (_%hd136553136621%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e136552136618%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd136553136621%_))
                               (let ((_%e136555136626%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd136553136621%_))))
                                 (if (equal? _%e136555136626%_ '#f)
                                     (_%__kont146222146223%_
                                      _%tl136554136623%_)
                                     (_%__kont146224146225%_
                                      _%tl136554136623%_
                                      _%hd136553136621%_)))
                               (_%__kont146224146225%_
                                _%tl136554136623%_
                                _%hd136553136621%_))))
                       (let () (declare (not safe)) (_%g136547136589%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd136489136519%_
                                                 _%hd136486136511%_)
                                                (_%g136478136495%_
                                                 _%g136479136498%_))))
                                        (_%g136478136495%_
                                         _%g136479136498%_))))
                                (_%g136478136495%_ _%g136479136498%_))))
                        (_%g136478136495%_ _%g136479136498%_)))))
            (_%g136477136642%_ _%stx136473%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self136369%_ _%stx136370%_)
        (let* ((_%g136372136389%_
                (lambda (_%g136373136386%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136373136386%_))))
               (_%g136371136469%_
                (lambda (_%g136373136392%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136373136392%_))
                      (let ((_%e136376136394%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136373136392%_))))
                        (let ((_%hd136377136397%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136376136394%_)))
                              (_%tl136378136399%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136376136394%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136378136399%_))
                              (let ((_%e136379136402%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136378136399%_))))
                                (let ((_%hd136380136405%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136379136402%_)))
                                      (_%tl136381136407%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136379136402%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136381136407%_))
                                      (let ((_%e136382136410%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136381136407%_))))
                                        (let ((_%hd136383136413%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136382136410%_)))
                                              (_%tl136384136415%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136382136410%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136384136415%_))
                                              ((lambda (_%L136418%_
                                                        _%L136419%_)
                                                 (let* ((_%eid136434%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%L136419%_)))
                                                        (_%phi136436%_
                                                         (let ((__tmp146486
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp146486 '1)))
                (_%block136438%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self136369%_ 'state))
                  _%phi136436%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g136441136448%_
                                                           (lambda (_%g136442136445%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g136442136445%_))))
                  (_%g136440136466%_
                   (lambda (_%g136442136451%_)
                     ((lambda (_%L136453%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self136369%_ 'state))
                         _%phi136436%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%L136453%_ (cons _%L136418%_ '())))))
                      _%g136442136451%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g136440136466%_
                                                      _%eid136434%_))
                                                   (if _%block136438%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block136438%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _%L136419%_)
                                             (cons _%eid136434%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _%L136419%_)
                           (cons _%eid136434%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd136383136413%_
                                               _%hd136380136405%_)
                                              (_%g136372136389%_
                                               _%g136373136392%_))))
                                      (_%g136372136389%_ _%g136373136392%_))))
                              (_%g136372136389%_ _%g136373136392%_))))
                      (_%g136372136389%_ _%g136373136392%_)))))
          (_%g136371136469%_ _%stx136370%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self136301%_ _%stx136302%_)
        (let* ((_%g136304136321%_
                (lambda (_%g136305136318%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136305136318%_))))
               (_%g136303136366%_
                (lambda (_%g136305136324%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136305136324%_))
                      (let ((_%e136308136326%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136305136324%_))))
                        (let ((_%hd136309136329%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136308136326%_)))
                              (_%tl136310136331%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136308136326%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136310136331%_))
                              (let ((_%e136311136334%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136310136331%_))))
                                (let ((_%hd136312136337%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136311136334%_)))
                                      (_%tl136313136339%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136311136334%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136313136339%_))
                                      (let ((_%e136314136342%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136313136339%_))))
                                        (let ((_%hd136315136345%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136314136342%_)))
                                              (_%tl136316136347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136314136342%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136316136347%_))
                                              ((lambda (_%L136350%_
                                                        _%L136351%_)
                                                 (cons '%#define-alias
                                                       (cons (gxc#generate-runtime-identifier
                                                              _%L136351%_)
                                                             (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L136350%_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd136315136345%_
                                               _%hd136312136337%_)
                                              (_%g136304136321%_
                                               _%g136305136324%_))))
                                      (_%g136304136321%_ _%g136305136324%_))))
                              (_%g136304136321%_ _%g136305136324%_))))
                      (_%g136304136321%_ _%g136305136324%_)))))
          (_%g136303136366%_ _%stx136302%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self136298%_ _%stx136299%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self136298%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx136299%_)
        (gxc#generate-meta-define-values% _%self136298%_ _%stx136299%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self136295%_ _%stx136296%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self136295%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx136296%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp146488 (list)) (__tmp146487 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp146488
         '(src n open blocks)
         __tmp146487
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args136292%_
        (apply make-instance gxc#meta-state::t _%$args136292%_)))
    (define gxc#meta-state-src
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#meta-state::t 'src)))
    (define gxc#meta-state-n
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#meta-state::t 'n)))
    (define gxc#meta-state-open
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#meta-state::t 'open)))
    (define gxc#meta-state-blocks
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#meta-state::t 'blocks)))
    (define gxc#meta-state-src-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#meta-state::t 'src)))
    (define gxc#meta-state-n-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#meta-state::t 'n)))
    (define gxc#meta-state-open-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#meta-state::t 'open)))
    (define gxc#meta-state-blocks-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#meta-state::t 'blocks)))
    (define gxc#&meta-state-src
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#meta-state::t 'src)))
    (define gxc#&meta-state-n
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#meta-state::t 'n)))
    (define gxc#&meta-state-open
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#meta-state::t 'open)))
    (define gxc#&meta-state-blocks
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#meta-state::t 'blocks)))
    (define gxc#&meta-state-src-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#meta-state::t 'src)))
    (define gxc#&meta-state-n-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#meta-state::t 'n)))
    (define gxc#&meta-state-open-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#meta-state::t 'open)))
    (define gxc#&meta-state-blocks-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#meta-state::t 'blocks)))
    (define gxc#meta-state:::init!
      (lambda (_%self135637136276%_ _%ctx136278%_)
        (let* ((_%self136280%_ _%self135637136276%_)
               (_%self136282%_ _%self136280%_))
          (if (let ((__tmp146489
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self136282%_))))
                (declare (not safe))
                (##fx< '4 __tmp146489))
              (begin
                (let ((__tmp146490
                       (let ((__tmp146491
                              (##structure-ref
                               _%ctx136278%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp146491))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self136282%_
                   __tmp146490
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self136282%_ '1 '2 '#f '#f))
                (let ((__tmp146492
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self136282%_
                   __tmp146492
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self136282%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp146493
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self136282%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self136282%_
                       '4
                       __tmp146493))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp146495 (list)) (__tmp146494 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp146495
         '(ctx phi n code)
         __tmp146494
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args136151%_
        (apply make-instance gxc#meta-state-block::t _%$args136151%_)))
    (define gxc#meta-state-block-ctx
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#meta-state-block::t 'ctx)))
    (define gxc#meta-state-block-phi
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#meta-state-block::t 'phi)))
    (define gxc#meta-state-block-n
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#meta-state-block::t 'n)))
    (define gxc#meta-state-block-code
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#meta-state-block::t 'code)))
    (define gxc#meta-state-block-ctx-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#meta-state-block::t 'ctx)))
    (define gxc#meta-state-block-phi-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#meta-state-block::t 'phi)))
    (define gxc#meta-state-block-n-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#meta-state-block::t 'n)))
    (define gxc#meta-state-block-code-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#meta-state-block::t 'code)))
    (define gxc#&meta-state-block-ctx
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#meta-state-block::t 'ctx)))
    (define gxc#&meta-state-block-phi
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#meta-state-block::t 'phi)))
    (define gxc#&meta-state-block-n
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#meta-state-block::t 'n)))
    (define gxc#&meta-state-block-code
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#meta-state-block::t 'code)))
    (define gxc#&meta-state-block-ctx-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#meta-state-block::t 'ctx)))
    (define gxc#&meta-state-block-phi-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#meta-state-block::t 'phi)))
    (define gxc#&meta-state-block-n-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#meta-state-block::t 'n)))
    (define gxc#&meta-state-block-code-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#meta-state-block::t 'code)))
    (define gxc#meta-state-begin-phi!
      (lambda (_%state136110%_ _%phi136111%_)
        (let* ((_%state136112136120%_ _%state136110%_)
               (_%E136114136124%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state136112136120%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K136115136133%_
                (lambda (_%open136127%_ _%n136128%_ _%src136129%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open136127%_ _%phi136111%_))
                      '#f
                      (let ((_%block-ref136131%_
                             (let ((__tmp146496 (number->string _%n136128%_)))
                               (declare (not safe))
                               (##string-append
                                _%src136129%_
                                '"~"
                                __tmp146496))))
                        (##structure-set!
                         _%state136110%_
                         (let () (declare (not safe)) (##fx+ _%n136128%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp146497
                               (let ((__tmp146498
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp146498
                                  _%phi136111%_
                                  _%n136128%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open136127%_ _%phi136111%_ __tmp146497))
                        _%block-ref136131%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state136112136120%_
                 'gxc#meta-state::t))
              (let* ((_%e136116136136%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state136112136120%_
                         '1
                         '#f
                         '#f)))
                     (_%src136139%_ _%e136116136136%_)
                     (_%e136117136141%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state136112136120%_
                         '2
                         '#f
                         '#f)))
                     (_%n136144%_ _%e136117136141%_)
                     (_%e136118136146%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state136112136120%_
                         '3
                         '#f
                         '#f)))
                     (_%open136149%_ _%e136118136146%_))
                (_%K136115136133%_ _%open136149%_ _%n136144%_ _%src136139%_))
              (_%E136114136124%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state136104%_ _%phi136105%_ _%stx136106%_)
        (let ((_%block136108%_
               (let ((__tmp146499
                      (##structure-ref
                       _%state136104%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp146499 _%phi136105%_))))
          (##structure-set!
           _%block136108%_
           (cons _%stx136106%_
                 (##structure-ref
                  _%block136108%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state136098%_)
        (##structure-set!
         _%state136098%_
         (let ((__tmp146502
                (lambda (_%_136100%_ _%block136101%_ _%r136102%_)
                  (cons _%block136101%_ _%r136102%_)))
               (__tmp146501
                (##structure-ref _%state136098%_ '4 gxc#meta-state::t '#f))
               (__tmp146500
                (##structure-ref _%state136098%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp146502 __tmp146501 __tmp146500))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state136098%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state136050%_)
        (gxc#meta-state-end-phi! _%state136050%_)
        (let ((__tmp146504
               (lambda (_%block136052%_ _%r136053%_)
                 (let* ((_%block136054136063%_ _%block136052%_)
                        (_%E136056136067%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block136054136063%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K136057136075%_
                         (lambda (_%code136070%_
                                  _%n136071%_
                                  _%phi136072%_
                                  _%ctx136073%_)
                           (if (null? _%code136070%_)
                               _%r136053%_
                               (cons (cons _%ctx136073%_
                                           (cons _%phi136072%_
                                                 (cons _%n136071%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code136070%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r136053%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block136054136063%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e136058136078%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block136054136063%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx136081%_ _%e136058136078%_)
                              (_%e136059136083%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block136054136063%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi136086%_ _%e136059136083%_)
                              (_%e136060136088%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block136054136063%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n136091%_ _%e136060136088%_)
                              (_%e136061136093%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block136054136063%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code136096%_ _%e136061136093%_))
                         (_%K136057136075%_
                          _%code136096%_
                          _%n136091%_
                          _%phi136086%_
                          _%ctx136081%_))
                       (_%E136056136067%_)))))
              (__tmp146503
               (##structure-ref _%state136050%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp146504 '() __tmp146503))))
    (define gxc#collect-expression-refs
      (lambda (_%stx136046%_)
        (let ((_%ht136048%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht136048%_ _%stx136046%_)
          _%ht136048%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self135989%_ _%stx135990%_)
        (let* ((_%g135992136005%_
                (lambda (_%g135993136002%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135993136002%_))))
               (_%g135991136043%_
                (lambda (_%g135993136008%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135993136008%_))
                      (let ((_%e135995136010%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135993136008%_))))
                        (let ((_%hd135996136013%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135995136010%_)))
                              (_%tl135997136015%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135995136010%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135997136015%_))
                              (let ((_%e135998136018%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135997136015%_))))
                                (let ((_%hd135999136021%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135998136018%_)))
                                      (_%tl136000136023%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135998136018%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl136000136023%_))
                                      ((lambda (_%L136026%_)
                                         (let* ((_%bind136038%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%L136026%_)))
                                                (_%eid136040%_
                                                 (if _%bind136038%_
                                                     (##structure-ref
                                                      _%bind136038%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%L136026%_))))
                                                (__tmp146505
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self135989%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp146505
                                            _%eid136040%_
                                            _%eid136040%_)))
                                       _%hd135999136021%_)
                                      (_%g135992136005%_ _%g135993136008%_))))
                              (_%g135992136005%_ _%g135993136008%_))))
                      (_%g135992136005%_ _%g135993136008%_)))))
          (_%g135991136043%_ _%stx135990%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self135916%_ _%stx135917%_)
        (let* ((_%g135919135936%_
                (lambda (_%g135920135933%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135920135933%_))))
               (_%g135918135986%_
                (lambda (_%g135920135939%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135920135939%_))
                      (let ((_%e135923135941%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135920135939%_))))
                        (let ((_%hd135924135944%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135923135941%_)))
                              (_%tl135925135946%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135923135941%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135925135946%_))
                              (let ((_%e135926135949%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135925135946%_))))
                                (let ((_%hd135927135952%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135926135949%_)))
                                      (_%tl135928135954%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135926135949%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135928135954%_))
                                      (let ((_%e135929135957%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135928135954%_))))
                                        (let ((_%hd135930135960%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135929135957%_)))
                                              (_%tl135931135962%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135929135957%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl135931135962%_))
                                              ((lambda (_%L135965%_
                                                        _%L135966%_)
                                                 (let* ((_%bind135981%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%L135966%_)))
                                                        (_%eid135983%_
                                                         (if _%bind135981%_
                                                             (##structure-ref
                                                              _%bind135981%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L135966%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp146506
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self135916%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp146506
                                                      _%eid135983%_
                                                      _%eid135983%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self135916%_
                                                      _%L135965%_))))
                                               _%hd135930135960%_
                                               _%hd135927135952%_)
                                              (_%g135919135936%_
                                               _%g135920135939%_))))
                                      (_%g135919135936%_ _%g135920135939%_))))
                              (_%g135919135936%_ _%g135920135939%_))))
                      (_%g135919135936%_ _%g135920135939%_)))))
          (_%g135918135986%_ _%stx135917%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self135873%_ _%stx135874%_)
        (let* ((_%g135876135886%_
                (lambda (_%g135877135883%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135877135883%_))))
               (_%g135875135913%_
                (lambda (_%g135877135889%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135877135889%_))
                      (let ((_%e135879135891%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135877135889%_))))
                        (let ((_%hd135880135894%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135879135891%_)))
                              (_%tl135881135896%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135879135891%_))))
                          ((lambda (_%L135899%_)
                             (let ((__tmp146507
                                    (lambda (_%g135908135910%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self135873%_
                                         _%g135908135910%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp146507 _%L135899%_)))
                           _%tl135881135896%_)))
                      (_%g135876135886%_ _%g135877135889%_)))))
          (_%g135875135913%_ _%stx135874%_))))
    (define gxc#count-values-single%
      (lambda (_%self135870%_ _%stx135871%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self135736%_ _%stx135737%_)
        (let* ((_%__stx146250146251%_ _%stx135737%_)
               (_%g135740135769%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx146250146251%_)))))
          (let ((_%__kont146252146253%_
                 (lambda (_%L135837%_ _%L135838%_)
                   (length (let ((__tmp146508
                                  (lambda (_%g135859135862%_ _%g135860135864%_)
                                    (cons _%g135859135862%_
                                          _%g135860135864%_))))
                             (declare (not safe))
                             (__foldr1 __tmp146508 '() _%L135837%_)))))
                (_%__kont146256146257%_ (lambda () '#f)))
            (let ((_%__match146295146296%_
                   (lambda (_%e135744135781%_
                            _%hd135745135784%_
                            _%tl135746135786%_
                            _%e135747135789%_
                            _%hd135748135792%_
                            _%tl135749135794%_
                            _%e135750135797%_
                            _%hd135751135800%_
                            _%tl135752135802%_
                            _%e135753135805%_
                            _%hd135754135808%_
                            _%tl135755135810%_
                            _%__splice146254146255%_
                            _%target135756135813%_
                            _%tl135758135815%_)
                     (letrec ((_%loop135759135818%_
                               (lambda (_%hd135757135821%_
                                        _%rand135763135823%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd135757135821%_))
                                     (let ((_%e135760135826%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd135757135821%_))))
                                       (let ((_%lp-tl135762135831%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e135760135826%_)))
                                             (_%lp-hd135761135829%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e135760135826%_))))
                                         (_%loop135759135818%_
                                          _%lp-tl135762135831%_
                                          (cons _%lp-hd135761135829%_
                                                _%rand135763135823%_))))
                                     (let ((_%rand135764135834%_
                                            (reverse _%rand135763135823%_)))
                                       (let ((_%L135837%_ _%rand135764135834%_)
                                             (_%L135838%_ _%hd135754135808%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L135838%_
                                                'values))
                                             (_%__kont146252146253%_
                                              _%L135837%_
                                              _%L135838%_)
                                             (_%__kont146256146257%_))))))))
                       (_%loop135759135818%_ _%target135756135813%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx146250146251%_))
                  (let ((_%e135744135781%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx146250146251%_))))
                    (let ((_%tl135746135786%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e135744135781%_)))
                          (_%hd135745135784%_
                           (let ()
                             (declare (not safe))
                             (##car _%e135744135781%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl135746135786%_))
                          (let ((_%e135747135789%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl135746135786%_))))
                            (let ((_%tl135749135794%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e135747135789%_)))
                                  (_%hd135748135792%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e135747135789%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd135748135792%_))
                                  (let ((_%e135750135797%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd135748135792%_))))
                                    (let ((_%tl135752135802%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e135750135797%_)))
                                          (_%hd135751135800%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e135750135797%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd135751135800%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd135751135800%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl135752135802%_))
                                                  (let ((_%e135753135805%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl135752135802%_))))
                                                    (let ((_%tl135755135810%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e135753135805%_)))
                                                          (_%hd135754135808%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e135753135805%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl135755135810%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl135749135794%_))
                      (let ((_%__splice146254146255%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl135749135794%_
                                '0))))
                        (let ((_%tl135758135815%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice146254146255%_ '1)))
                              (_%target135756135813%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice146254146255%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl135758135815%_))
                              (_%__match146295146296%_
                               _%e135744135781%_
                               _%hd135745135784%_
                               _%tl135746135786%_
                               _%e135747135789%_
                               _%hd135748135792%_
                               _%tl135749135794%_
                               _%e135750135797%_
                               _%hd135751135800%_
                               _%tl135752135802%_
                               _%e135753135805%_
                               _%hd135754135808%_
                               _%tl135755135810%_
                               _%__splice146254146255%_
                               _%target135756135813%_
                               _%tl135758135815%_)
                              (_%__kont146256146257%_))))
                      (_%__kont146256146257%_))
                  (_%__kont146256146257%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont146256146257%_))
                                              (_%__kont146256146257%_))
                                          (_%__kont146256146257%_))))
                                  (_%__kont146256146257%_))))
                          (_%__kont146256146257%_))))
                  (_%__kont146256146257%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self135639%_ _%stx135640%_)
        (let* ((_%g135642135663%_
                (lambda (_%g135643135660%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g135643135660%_))))
               (_%g135641135733%_
                (lambda (_%g135643135666%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g135643135666%_))
                      (let ((_%e135647135668%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g135643135666%_))))
                        (let ((_%hd135648135671%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e135647135668%_)))
                              (_%tl135649135673%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e135647135668%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl135649135673%_))
                              (let ((_%e135650135676%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl135649135673%_))))
                                (let ((_%hd135651135679%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e135650135676%_)))
                                      (_%tl135652135681%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e135650135676%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl135652135681%_))
                                      (let ((_%e135653135684%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl135652135681%_))))
                                        (let ((_%hd135654135687%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e135653135684%_)))
                                              (_%tl135655135689%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e135653135684%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl135655135689%_))
                                              (let ((_%e135656135692%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl135655135689%_))))
                                                (let ((_%hd135657135695%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e135656135692%_)))
                                                      (_%tl135658135697%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e135656135692%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl135658135697%_))
                                                      ((lambda (_%L135700%_
                                                                _%L135701%_
                                                                _%L135702%_)
                                                         (let ((_%c1135719135721%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self135639%_ _%L135701%_))))
                   (if _%c1135719135721%_
                       (let* ((_%c1135724%_ _%c1135719135721%_)
                              (_%c2135725135727%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self135639%_
                                  _%L135700%_))))
                         (if _%c2135725135727%_
                             (let ((_%c2135730%_ _%c2135725135727%_))
                               (if (fx= _%c1135724%_ _%c2135730%_)
                                   _%c1135724%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd135657135695%_
               _%hd135654135687%_
               _%hd135651135679%_)
              (_%g135642135663%_ _%g135643135666%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g135642135663%_
                                               _%g135643135666%_))))
                                      (_%g135642135663%_ _%g135643135666%_))))
                              (_%g135642135663%_ _%g135643135666%_))))
                      (_%g135642135663%_ _%g135643135666%_)))))
          (_%g135641135733%_ _%stx135640%_))))))
